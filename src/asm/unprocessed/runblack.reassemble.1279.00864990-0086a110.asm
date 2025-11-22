.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x0044cf90
.extern _jmp_addr_0x0044e9f0
.extern _jmp_addr_0x004605f0
.extern _jmp_addr_0x00518bf0
.extern ?FastNormalize@LHPoint@@QAEXXZ
.extern _jmp_addr_0x005d6410
.extern _jmp_addr_0x005d6430
.extern _jmp_addr_0x0067e8a0
.extern _jmp_addr_0x006a3e20
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007acc60
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007bdfc0
.extern @GetSegmentData__6LHFileFPvUll@20
.extern _atexit
.extern ??2@YAPAXI@Z
.extern _fopen
.extern _fclose
.extern _fgetc
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x007fb5c0
.extern _jmp_addr_0x007feaa0
.extern _jmp_addr_0x007fead0
.extern _jmp_addr_0x00829610
.extern _jmp_addr_0x00838500
.extern _jmp_addr_0x00838af0
.extern _jmp_addr_0x00838eb0
.extern _jmp_addr_0x008398a0
.extern ?Empty@RPHolder@@QAEXXZ
.extern @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32
.extern _jmp_addr_0x00841170
.extern @SetDest__8RPFollowFRC7Point2Dffff@28
.extern _jmp_addr_0x00864190
.extern ?Time2SkyType@LH3DSky@@QAEMM@Z
.extern ??_DRPlan@@QAEXXZ
.extern ?GetHeading@Point2D@@QBEMXZ
.extern @GetNormSq__7Point2DFv2@4
.extern @GetRange__7Point2DCFRC7Point2D@12

.globl ?MoveAlongRoute@RPFollow@@QAEXXZ
.globl @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.globl _jmp_addr_0x00864d30
.globl _jmp_addr_0x00865000
.globl _jmp_addr_0x00865020
.globl _jmp_addr_0x00866640
.globl _jmp_addr_0x00866a90
.globl _jmp_addr_0x00866ba0
.globl _jmp_addr_0x00866d00
.globl _jmp_addr_0x00867040
.globl _jmp_addr_0x00867400
.globl _jmp_addr_0x00867740
.globl _jmp_addr_0x00867b50
.globl @ReadBinary__13MeshIntersectFP6LHFile@12
.globl _jmp_addr_0x00867d10
.globl _jmp_addr_0x00867fe0
.globl _jmp_addr_0x008683c0
.globl _jmp_addr_0x00868c80
.globl _jmp_addr_0x00869020
.globl @PointIsTotallyInside__7RPAvoidFRC7Point2Df@16
.globl @__ct__9RouteNodeFP9RouteNode@12
.globl @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32
.globl @GetLength__9RouteNodeFP7RPAvoid@12
.globl @GetArcLength__9RouteNodeFP7RPAvoid@12
.globl _jmp_addr_0x00869330
.globl ??0Route@@QAE@XZ 
.globl @__ct__5RouteFP5Route@12
.globl ??_DRoute@@QAEXXZ
.globl _jmp_addr_0x00869670
.globl _jmp_addr_0x00869850
.globl ?SetDayNightTimes@LH3DSky@@SAXMMMM@Z
.globl _jmp_addr_0x00869fd0

.globl _globl_ct_0x00864fc0
.globl _globl_ct_0x00864fe0
.globl _globl_ct_0x00866e80
.globl _globl_ct_0x00866ea0
.globl _globl_ct_0x00868fc0
.globl _globl_ct_0x00868ff0
.globl _globl_ct_0x00869600
.globl _globl_ct_0x00869630
.globl _globl_ct_0x00869650

start_0x00864990_0x0086a110:
// Snippet: asm, [0x00864990, 0x0086a0fc)
?MoveAlongRoute@RPFollow@@QAEXXZ:
                                   {disp32} fld       dword ptr [rdata_bytes + 0xfabbc]             // 0x00864990    d905bc3b9a00
                         push               ebx                                           // 0x00864996    53
                         push               ebp                                           // 0x00864997    55
                         push               esi                                           // 0x00864998    56
                         mov.s              esi, ecx                                      // 0x00864999    8bf1
                         {disp32} fmul      dword ptr [esi + 0x00064034]                  // 0x0086499b    d88e34400600
                         push               edi                                           // 0x008649a1    57
                         xor.s              ebp, ebp                                      // 0x008649a2    33ed
                         {disp32} fst       dword ptr [esi + 0x00064050]                  // 0x008649a4    d99650400600
                         {disp32} fadd      dword ptr [esi + 0x00064038]                  // 0x008649aa    d88638400600
                         {disp32} fstp      dword ptr [esi + 0x00064038]                  // 0x008649b0    d99e38400600
_jmp_addr_0x008649b6:    {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x008649b6    8b8e70400600
                         cmp.s              ecx, ebp                                      // 0x008649bc    3bcd
                         {disp32} je        _jmp_addr_0x00864b08                          // 0x008649be    0f8444010000
                         push               esi                                           // 0x008649c4    56
                         call               @GetLength__9RouteNodeFP7RPAvoid@12           // 0x008649c5    e8d6470000
                         {disp32} fcom      dword ptr [esi + 0x00064038]                  // 0x008649ca    d89638400600
                         fnstsw             ax                                            // 0x008649d0    dfe0
                         test               ah, 0x01                                      // 0x008649d2    f6c401
                         {disp32} je        _jmp_addr_0x00864b06                          // 0x008649d5    0f842b010000
                         {disp32} fld       dword ptr [esi + 0x00064038]                  // 0x008649db    d98638400600
                         {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x008649e1    8b86b8400600
                         cmp.s              eax, ebp                                      // 0x008649e7    3bc5
                         fsub               st, st(1)                                     // 0x008649e9    d8e1
                         {disp32} fstp      dword ptr [esi + 0x00064038]                  // 0x008649eb    d99e38400600
                         fstp               st(0)                                         // 0x008649f1    ddd8
                         {disp32} je        _jmp_addr_0x00864aae                          // 0x008649f3    0f84b5000000
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x008649f9    8b8670400600
                         cmp                dword ptr [esi + 0x000640a4], eax             // 0x008649ff    3986a4400600
                         {disp32} jne       _jmp_addr_0x00864aae                          // 0x00864a05    0f85a3000000
                         cmp                dword ptr [eax + 0x24], ebp                   // 0x00864a0b    396824
                         {disp32} je        _jmp_addr_0x00864aae                          // 0x00864a0e    0f849a000000
                         {disp32} mov       edi, dword ptr [esi + 0x00064090]             // 0x00864a14    8bbe90400600
                         cmp.s              edi, ebp                                      // 0x00864a1a    3bfd
                         {disp32} lea       ebx, dword ptr [esi + 0x00064090]             // 0x00864a1c    8d9e90400600
                         {disp8} je         _jmp_addr_0x00864a34                          // 0x00864a22    7410
                         mov.s              ecx, edi                                      // 0x00864a24    8bcf
                         call               ??_DRPlan@@QAEXXZ                             // 0x00864a26    e8c5960000
                         push               edi                                           // 0x00864a2b    57
                         call               ??3@YAXPAX@Z                                  // 0x00864a2c    e867a4f4ff
                         add                esp, 0x04                                     // 0x00864a31    83c404
_jmp_addr_0x00864a34:    {disp32} mov       edi, dword ptr [esi + 0x000640b8]             // 0x00864a34    8bbeb8400600
                         dec                edi                                           // 0x00864a3a    4f
                         mov.s              eax, edi                                      // 0x00864a3b    8bc7
                         xor.s              ecx, ecx                                      // 0x00864a3d    33c9
                         cmp.s              eax, ebp                                      // 0x00864a3f    3bc5
                         {disp32} mov       dword ptr [esi + 0x000640b8], edi             // 0x00864a41    89beb8400600
                         {disp8} jle        _jmp_addr_0x00864a64                          // 0x00864a47    7e1b
                         mov.s              eax, ebx                                      // 0x00864a49    8bc3
_jmp_addr_0x00864a4b:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00864a4b    8b5004
                         mov                dword ptr [eax], edx                          // 0x00864a4e    8910
                         {disp8} mov        edx, dword ptr [eax + 0x18]                   // 0x00864a50    8b5018
                         {disp8} mov        dword ptr [eax + 0x14], edx                   // 0x00864a53    895014
                         {disp32} mov       edx, dword ptr [esi + 0x000640b8]             // 0x00864a56    8b96b8400600
                         inc                ecx                                           // 0x00864a5c    41
                         add                eax, 0x04                                     // 0x00864a5d    83c004
                         cmp.s              ecx, edx                                      // 0x00864a60    3bca
                         {disp8} jl         _jmp_addr_0x00864a4b                          // 0x00864a62    7ce7
_jmp_addr_0x00864a64:    cmp                dword ptr [esi + 0x000640b8], ebp             // 0x00864a64    39aeb8400600
                         {disp8} jne        _jmp_addr_0x00864aae                          // 0x00864a6a    7542
                         cmp                dword ptr [esi + 0x00064058], ebp             // 0x00864a6c    39ae58400600
                         {disp32} mov       dword ptr [esi + 0x00064054], 0x00000003      // 0x00864a72    c7865440060003000000
                         {disp8} je         _jmp_addr_0x00864aae                          // 0x00864a7c    7430
                         {disp32} mov       eax, dword ptr [esi + 0x00064084]             // 0x00864a7e    8b8684400600
                         {disp32} mov       ecx, dword ptr [esi + 0x0006404c]             // 0x00864a84    8b8e4c400600
                         {disp32} mov       edx, dword ptr [esi + 0x00064080]             // 0x00864a8a    8b9680400600
                         push               eax                                           // 0x00864a90    50
                         {disp32} mov       eax, dword ptr [esi + 0x0006407c]             // 0x00864a91    8b867c400600
                         push               ecx                                           // 0x00864a97    51
                         push               edx                                           // 0x00864a98    52
                         push               eax                                           // 0x00864a99    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00064074]             // 0x00864a9a    8d8e74400600
                         push               ecx                                           // 0x00864aa0    51
                         mov.s              ecx, esi                                      // 0x00864aa1    8bce
                         {disp32} mov       dword ptr [esi + 0x00064058], ebp             // 0x00864aa3    89ae58400600
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x00864aa9    e8c2f0ffff
_jmp_addr_0x00864aae:    {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864aae    8b8670400600
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00864ab4    8b4828
                         cmp.s              ecx, ebp                                      // 0x00864ab7    3bcd
                         {disp8} je         _jmp_addr_0x00864af2                          // 0x00864ab9    7437
                         {disp8} mov        dword ptr [eax + 0x28], ebp                   // 0x00864abb    896828
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x00864abe    8b968c400600
                         {disp8} mov        eax, dword ptr [edx + 0x68]                   // 0x00864ac4    8b4268
                         {disp32} mov       edx, dword ptr [esi + 0x00064070]             // 0x00864ac7    8b9670400600
                         mov                dword ptr [eax], edx                          // 0x00864acd    8910
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864acf    8b8670400600
                         {disp8} mov        dword ptr [eax + 0x1c], ebp                   // 0x00864ad5    89681c
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864ad8    8b8670400600
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00864ade    8b5008
                         mov                dword ptr [eax], edx                          // 0x00864ae1    8910
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x00864ae3    8b500c
                         push               ecx                                           // 0x00864ae6    51
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00864ae7    895004
                         call               ??3@YAXPAX@Z                                  // 0x00864aea    e8a9a3f4ff
                         add                esp, 0x04                                     // 0x00864aef    83c404
_jmp_addr_0x00864af2:    {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864af2    8b8670400600
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00864af8    8b4824
                         {disp32} mov       dword ptr [esi + 0x00064070], ecx             // 0x00864afb    898e70400600
                         {disp32} jmp       _jmp_addr_0x008649b6                          // 0x00864b01    e9b0feffff
_jmp_addr_0x00864b06:    fstp               st(0)                                         // 0x00864b06    ddd8
_jmp_addr_0x00864b08:    cmp                dword ptr [esi + 0x00064070], ebp             // 0x00864b08    39ae70400600
                         {disp8} je         _jmp_addr_0x00864b31                          // 0x00864b0e    7421
                         {disp32} mov       edx, dword ptr [esi + 0x00064038]             // 0x00864b10    8b9638400600
                         push               edx                                           // 0x00864b16    52
                         {disp32} lea       eax, dword ptr [esi + 0x00064040]             // 0x00864b17    8d8640400600
                         push               eax                                           // 0x00864b1d    50
                         {disp32} lea       ecx, dword ptr [esi + 0x0006402c]             // 0x00864b1e    8d8e2c400600
                         push               ecx                                           // 0x00864b24    51
                         mov.s              ecx, esi                                      // 0x00864b25    8bce
                         call               @FillPosAndHeading__8RPFollowFR7Point2DRff@20 // 0x00864b27    e874000000
                         pop                edi                                           // 0x00864b2c    5f
                         pop                esi                                           // 0x00864b2d    5e
                         pop                ebp                                           // 0x00864b2e    5d
                         pop                ebx                                           // 0x00864b2f    5b
                         ret                                                              // 0x00864b30    c3
_jmp_addr_0x00864b31:    {disp32} mov       edi, dword ptr [esi + 0x0006408c]             // 0x00864b31    8bbe8c400600
                         cmp.s              edi, ebp                                      // 0x00864b37    3bfd
                         {disp8} je         _jmp_addr_0x00864b4b                          // 0x00864b39    7410
                         mov.s              ecx, edi                                      // 0x00864b3b    8bcf
                         call               ??_DRPlan@@QAEXXZ                             // 0x00864b3d    e8ae950000
                         push               edi                                           // 0x00864b42    57
                         call               ??3@YAXPAX@Z                                  // 0x00864b43    e850a3f4ff
                         add                esp, 0x04                                     // 0x00864b48    83c404
_jmp_addr_0x00864b4b:    {disp32} mov       dword ptr [esi + 0x0006408c], ebp             // 0x00864b4b    89ae8c400600
                         {disp32} mov       edx, dword ptr [esi + 0x00064044]             // 0x00864b51    8b9644400600
                         {disp32} mov       dword ptr [esi + 0x0006402c], edx             // 0x00864b57    89962c400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064048]             // 0x00864b5d    8b8648400600
                         {disp32} mov       dword ptr [esi + 0x00064030], eax             // 0x00864b63    898630400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064054]             // 0x00864b69    8b8654400600
                         sub                eax, 0x03                                     // 0x00864b6f    83e803
                         {disp8} je         _jmp_addr_0x00864b86                          // 0x00864b72    7412
                         dec                eax                                           // 0x00864b74    48
                         {disp8} jne        _jmp_addr_0x00864b97                          // 0x00864b75    7520
                         pop                edi                                           // 0x00864b77    5f
                         {disp32} mov       dword ptr [esi + 0x00064054], 0x00000002      // 0x00864b78    c7865440060002000000
                         pop                esi                                           // 0x00864b82    5e
                         pop                ebp                                           // 0x00864b83    5d
                         pop                ebx                                           // 0x00864b84    5b
                         ret                                                              // 0x00864b85    c3
_jmp_addr_0x00864b86:    mov.s              ecx, esi                                      // 0x00864b86    8bce
                         call               ?Empty@RPHolder@@QAEXXZ                       // 0x00864b88    e8a367fdff
                         {disp32} mov       dword ptr [esi + 0x00064054], 0x00000001      // 0x00864b8d    c7865440060001000000
_jmp_addr_0x00864b97:    pop                edi                                           // 0x00864b97    5f
                         pop                esi                                           // 0x00864b98    5e
                         pop                ebp                                           // 0x00864b99    5d
                         pop                ebx                                           // 0x00864b9a    5b
                         ret                                                              // 0x00864b9b    c3
                         nop                                                              // 0x00864b9c    90
                         nop                                                              // 0x00864b9d    90
                         nop                                                              // 0x00864b9e    90
                         nop                                                              // 0x00864b9f    90
@FillPosAndHeading__8RPFollowFR7Point2DRff@20:    sub                esp, 0x10                                     // 0x00864ba0    83ec10
                         push               esi                                           // 0x00864ba3    56
                         mov.s              esi, ecx                                      // 0x00864ba4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00064070]             // 0x00864ba6    8b8670400600
                         cmp                dword ptr [eax + 0x1c], 0x01                  // 0x00864bac    83781c01
                         {disp8} jne        _jmp_addr_0x00864bc6                          // 0x00864bb0    7514
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00864bb2    8b4828
                         test               ecx, ecx                                      // 0x00864bb5    85c9
                         {disp8} je         _jmp_addr_0x00864bbf                          // 0x00864bb7    7406
                         cmp                dword ptr [ecx + 0x10], -0x01                 // 0x00864bb9    837910ff
                         {disp8} jne        _jmp_addr_0x00864bc6                          // 0x00864bbd    7507
_jmp_addr_0x00864bbf:    {disp8} mov        dword ptr [eax + 0x1c], 0x00000000            // 0x00864bbf    c7401c00000000
_jmp_addr_0x00864bc6:    {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x00864bc6    8b8e70400600
                         push               esi                                           // 0x00864bcc    56
                         call               @GetLength__9RouteNodeFP7RPAvoid@12           // 0x00864bcd    e8ce450000
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x00864bd2    d9542404
                         {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x00864bd6    8b8e70400600
                         cmp                dword ptr [ecx + 0x1c], 0x01                  // 0x00864bdc    83791c01
                         {disp32} jne       _jmp_addr_0x00864cbd                          // 0x00864be0    0f85d7000000
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00864be6    8b4128
                         fld                dword ptr [ecx]                               // 0x00864be9    d901
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x00864beb    8b5010
                         lea                edx, dword ptr [edx + edx * 0x4]              // 0x00864bee    8d1492
                         {disp8} fsub       dword ptr [esi + edx * 0x4 + 0x08]            // 0x00864bf1    d8649608
                         lea                edx, dword ptr [esi + edx * 0x4]              // 0x00864bf5    8d1496
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00864bf8    8b7104
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00864bfb    89742410
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00864bff    d9442410
                         {disp8} fsub       dword ptr [edx + 0x0c]                        // 0x00864c03    d8620c
                         {disp8} mov        esi, dword ptr [ecx + 0x08]                   // 0x00864c06    8b7108
                         {disp8} mov        ecx, dword ptr [ecx + 0x0c]                   // 0x00864c09    8b490c
                         {disp8} mov        dword ptr [esp + 0x04], esi                   // 0x00864c0c    89742404
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00864c10    d9442404
                         {disp8} fsub       dword ptr [edx + 0x08]                        // 0x00864c14    d86208
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00864c17    894c2408
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x00864c1b    8b4814
                         cmp                ecx, 0x02                                     // 0x00864c1e    83f902
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00864c21    d95c240c
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00864c25    d9442408
                         {disp8} fsub       dword ptr [edx + 0x0c]                        // 0x00864c29    d8620c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00864c2c    d95c2410
                         fxch               st(1)                                         // 0x00864c30    d9c9
                         fpatan                                                           // 0x00864c32    d9f3
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00864c34    d9442410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00864c38    d944240c
                         fpatan                                                           // 0x00864c3c    d9f3
                         {disp8} jne        _jmp_addr_0x00864c55                          // 0x00864c3e    7515
                         fcom               st(1)                                         // 0x00864c40    d8d1
                         fnstsw             ax                                            // 0x00864c42    dfe0
                         test               ah, 0x01                                      // 0x00864c44    f6c401
                         {disp8} je         _jmp_addr_0x00864c6a                          // 0x00864c47    7421
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabb8]             // 0x00864c49    d905b83b9a00
                         fadd.s             st(0), st(0)                                  // 0x00864c4f    dcc0
                         faddp              st(1), st                                     // 0x00864c51    dec1
                         {disp8} jmp        _jmp_addr_0x00864c6a                          // 0x00864c53    eb15
_jmp_addr_0x00864c55:    fld                st(1)                                         // 0x00864c55    d9c1
                         fcomp              st(1)                                         // 0x00864c57    d8d9
                         fnstsw             ax                                            // 0x00864c59    dfe0
                         test               ah, 0x01                                      // 0x00864c5b    f6c401
                         {disp8} je         _jmp_addr_0x00864c6a                          // 0x00864c5e    740a
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabb8]             // 0x00864c60    d905b83b9a00
                         fadd.s             st(0), st(0)                                  // 0x00864c66    dcc0
                         faddp              st(2), st                                     // 0x00864c68    dec2
_jmp_addr_0x00864c6a:    cmp                ecx, 0x02                                     // 0x00864c6a    83f902
                         fsub               st, st(1)                                     // 0x00864c6d    d8e1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00864c6f    d9442420
                         fdivrp             st(3), st                                     // 0x00864c73    def3
                         fxch               st(2)                                         // 0x00864c75    d9ca
                         fmul               st, st(2)                                     // 0x00864c77    d8ca
                         fadd               st, st(1)                                     // 0x00864c79    d8c1
                         fxch               st(2)                                         // 0x00864c7b    d9ca
                         fstp               st(0)                                         // 0x00864c7d    ddd8
                         fstp               st(0)                                         // 0x00864c7f    ddd8
                         {disp8} jne        _jmp_addr_0x00864c93                          // 0x00864c81    7510
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabb8]             // 0x00864c83    d905b83b9a00
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00864c89    8b44241c
                         fadd               st, st(1)                                     // 0x00864c8d    d8c1
                         fstp               dword ptr [eax]                               // 0x00864c8f    d918
                         {disp8} jmp        _jmp_addr_0x00864c9b                          // 0x00864c91    eb08
_jmp_addr_0x00864c93:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00864c93    8b4c241c
                         fld                st(0)                                         // 0x00864c97    d9c0
                         fstp               dword ptr [ecx]                               // 0x00864c99    d919
_jmp_addr_0x00864c9b:    fld                st(0)                                         // 0x00864c9b    d9c0
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00864c9d    8b442418
                         fcos                                                             // 0x00864ca1    d9ff
                         pop                esi                                           // 0x00864ca3    5e
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x00864ca4    d84a10
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x00864ca7    d84208
                         fstp               dword ptr [eax]                               // 0x00864caa    d918
                         fsin                                                             // 0x00864cac    d9fe
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x00864cae    d84a10
                         {disp8} fadd       dword ptr [edx + 0x0c]                        // 0x00864cb1    d8420c
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00864cb4    d95804
                         add                esp, 0x10                                     // 0x00864cb7    83c410
                         ret                0x000c                                        // 0x00864cba    c20c00
_jmp_addr_0x00864cbd:    {disp32} fcomp     dword ptr [_rdata_float0p001]                 // 0x00864cbd    d81db0a38a00
                         fnstsw             ax                                            // 0x00864cc3    dfe0
                         test               ah, 0x41                                      // 0x00864cc5    f6c441
                         {disp8} jne        _jmp_addr_0x00864d20                          // 0x00864cc8    7556
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x00864cca    d9410c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00864ccd    8b442418
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x00864cd1    d86104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00864cd4    d94108
                         fsub               dword ptr [ecx]                               // 0x00864cd7    d821
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00864cd9    d95c240c
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00864cdd    d9542410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00864ce1    d9442420
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x00864ce5    d8742404
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00864ce9    d944240c
                         fmul               st, st(1)                                     // 0x00864ced    d8c9
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00864cef    d95c2404
                         fxch               st(1)                                         // 0x00864cf3    d9c9
                         fmul               st, st(1)                                     // 0x00864cf5    d8c9
                         fxch               st(1)                                         // 0x00864cf7    d9c9
                         fstp               st(0)                                         // 0x00864cf9    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00864cfb    d9442404
                         fadd               dword ptr [ecx]                               // 0x00864cff    d801
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00864d01    d95c2404
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x00864d05    d84104
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00864d08    8d4c240c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00864d0c    d9442404
                         fstp               dword ptr [eax]                               // 0x00864d10    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00864d12    d95804
                         call               ?GetHeading@Point2D@@QBEMXZ                   // 0x00864d15    e8e6af0000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00864d1a    8b54241c
                         fstp               dword ptr [edx]                               // 0x00864d1e    d91a
_jmp_addr_0x00864d20:    pop                esi                                           // 0x00864d20    5e
                         add                esp, 0x10                                     // 0x00864d21    83c410
                         ret                0x000c                                        // 0x00864d24    c20c00
                         nop                                                              // 0x00864d27    90
                         nop                                                              // 0x00864d28    90
                         nop                                                              // 0x00864d29    90
                         nop                                                              // 0x00864d2a    90
                         nop                                                              // 0x00864d2b    90
                         nop                                                              // 0x00864d2c    90
                         nop                                                              // 0x00864d2d    90
                         nop                                                              // 0x00864d2e    90
                         nop                                                              // 0x00864d2f    90
_jmp_addr_0x00864d30:    push               ecx                                           // 0x00864d30    51
                         push               ebx                                           // 0x00864d31    53
                         push               ebp                                           // 0x00864d32    55
                         push               esi                                           // 0x00864d33    56
                         mov.s              esi, ecx                                      // 0x00864d34    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00064054]             // 0x00864d36    8b8e54400600
                         cmp                ecx, 0x01                                     // 0x00864d3c    83f901
                         push               edi                                           // 0x00864d3f    57
                         {disp32} je        _jmp_addr_0x00864fac                          // 0x00864d40    0f8466020000
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00864d46    8b6c2418
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x00864d4a    d94508
                         {disp8} fadd       dword ptr [ebp + 0x10]                        // 0x00864d4d    d84510
                         {disp32} fild      dword ptr [esi + 0x0005000c]                  // 0x00864d50    db860c000500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabb4]             // 0x00864d56    d80db43b9a00
                         fcompp                                                           // 0x00864d5c    ded9
                         fnstsw             ax                                            // 0x00864d5e    dfe0
                         test               ah, 0x41                                      // 0x00864d60    f6c441
                         {disp32} je        _jmp_addr_0x00864fac                          // 0x00864d63    0f8443020000
                         {disp32} mov       eax, dword ptr [esi + 0x00050014]             // 0x00864d69    8b8614000500
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x00864d6f    d94508
                         {disp8} fsub       dword ptr [ebp + 0x10]                        // 0x00864d72    d86510
                         inc                eax                                           // 0x00864d75    40
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00864d76    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00864d7a    db442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabb4]             // 0x00864d7e    d80db43b9a00
                         fcompp                                                           // 0x00864d84    ded9
                         fnstsw             ax                                            // 0x00864d86    dfe0
                         test               ah, 0x01                                      // 0x00864d88    f6c401
                         {disp32} jne       _jmp_addr_0x00864fac                          // 0x00864d8b    0f851b020000
                         {disp8} fld        dword ptr [ebp + 0x0c]                        // 0x00864d91    d9450c
                         {disp8} fadd       dword ptr [ebp + 0x10]                        // 0x00864d94    d84510
                         {disp32} fild      dword ptr [esi + 0x00050010]                  // 0x00864d97    db8610000500
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabb4]             // 0x00864d9d    d80db43b9a00
                         fcompp                                                           // 0x00864da3    ded9
                         fnstsw             ax                                            // 0x00864da5    dfe0
                         test               ah, 0x41                                      // 0x00864da7    f6c441
                         {disp32} je        _jmp_addr_0x00864fac                          // 0x00864daa    0f84fc010000
                         {disp32} mov       edx, dword ptr [esi + 0x00050018]             // 0x00864db0    8b9618000500
                         {disp8} fld        dword ptr [ebp + 0x0c]                        // 0x00864db6    d9450c
                         {disp8} fsub       dword ptr [ebp + 0x10]                        // 0x00864db9    d86510
                         inc                edx                                           // 0x00864dbc    42
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00864dbd    89542418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00864dc1    db442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabb4]             // 0x00864dc5    d80db43b9a00
                         fcompp                                                           // 0x00864dcb    ded9
                         fnstsw             ax                                            // 0x00864dcd    dfe0
                         test               ah, 0x01                                      // 0x00864dcf    f6c401
                         {disp32} jne       _jmp_addr_0x00864fac                          // 0x00864dd2    0f85d4010000
                         mov.s              eax, ecx                                      // 0x00864dd8    8bc1
                         xor.s              edi, edi                                      // 0x00864dda    33ff
                         sub.s              eax, edi                                      // 0x00864ddc    2bc7
                         {disp32} je        _jmp_addr_0x00864fac                          // 0x00864dde    0f84c8010000
                         sub                eax, 0x03                                     // 0x00864de4    83e803
                         {disp32} je        _jmp_addr_0x00864f3f                          // 0x00864de7    0f8452010000
                         dec                eax                                           // 0x00864ded    48
                         {disp32} jne       _jmp_addr_0x00864e83                          // 0x00864dee    0f858f000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x00864df4    8b8e70400600
                         {disp32} mov       edx, dword ptr [esi + 0x0006408c]             // 0x00864dfa    8b968c400600
                         {disp32} lea       eax, dword ptr [esi + 0x0006402c]             // 0x00864e00    8d862c400600
                         push               eax                                           // 0x00864e06    50
                         push               esi                                           // 0x00864e07    56
                         push               ecx                                           // 0x00864e08    51
                         {disp8} mov        ecx, dword ptr [edx + 0x68]                   // 0x00864e09    8b4a68
                         push               ebp                                           // 0x00864e0c    55
                         call               _jmp_addr_0x008694a0                          // 0x00864e0d    e88e460000
                         test               eax, eax                                      // 0x00864e12    85c0
                         {disp8} je         _jmp_addr_0x00864e83                          // 0x00864e14    746d
                         {disp32} mov       eax, dword ptr [esi + 0x0006408c]             // 0x00864e16    8b868c400600
                         {disp8} mov        ecx, dword ptr [eax + 0x68]                   // 0x00864e1c    8b4868
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00864e1f    8b4104
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00864e22    8b5008
                         add                eax, 0x08                                     // 0x00864e25    83c008
                         {disp32} mov       dword ptr [esi + 0x00064044], edx             // 0x00864e28    899644400600
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00864e2e    8b4004
                         {disp32} mov       dword ptr [esi + 0x00064048], eax             // 0x00864e31    898648400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064054]             // 0x00864e37    8b8654400600
                         dec                eax                                           // 0x00864e3d    48
                         mov.s              ecx, esi                                      // 0x00864e3e    8bce
                         {disp32} mov       dword ptr [esi + 0x00064054], eax             // 0x00864e40    898654400600
                         call               _jmp_addr_0x00864190                          // 0x00864e46    e845f3ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00064084]             // 0x00864e4b    8b8e84400600
                         {disp32} mov       edx, dword ptr [esi + 0x0006404c]             // 0x00864e51    8b964c400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064080]             // 0x00864e57    8b8680400600
                         push               ecx                                           // 0x00864e5d    51
                         {disp32} mov       ecx, dword ptr [esi + 0x0006407c]             // 0x00864e5e    8b8e7c400600
                         push               edx                                           // 0x00864e64    52
                         push               eax                                           // 0x00864e65    50
                         push               ecx                                           // 0x00864e66    51
                         {disp32} lea       edx, dword ptr [esi + 0x00064074]             // 0x00864e67    8d9674400600
                         push               edx                                           // 0x00864e6d    52
                         mov.s              ecx, esi                                      // 0x00864e6e    8bce
                         {disp32} mov       dword ptr [esi + 0x00064058], edi             // 0x00864e70    89be58400600
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x00864e76    e8f5ecffff
                         pop                edi                                           // 0x00864e7b    5f
                         pop                esi                                           // 0x00864e7c    5e
                         pop                ebp                                           // 0x00864e7d    5d
                         pop                ebx                                           // 0x00864e7e    5b
                         pop                ecx                                           // 0x00864e7f    59
                         ret                0x0004                                        // 0x00864e80    c20400
_jmp_addr_0x00864e83:    cmp                dword ptr [esi + 0x000640b8], edi             // 0x00864e83    39beb8400600
                         mov                bl, 0x01                                      // 0x00864e89    b301
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00864e8b    897c2410
                         {disp32} jle       _jmp_addr_0x00864fac                          // 0x00864e8f    0f8e17010000
                         {disp32} lea       eax, dword ptr [esi + 0x00064090]             // 0x00864e95    8d8690400600
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00864e9b    89442418
_jmp_addr_0x00864e9f:    test               bl, bl                                        // 0x00864e9f    84db
                         {disp8} je         _jmp_addr_0x00864ef6                          // 0x00864ea1    7453
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00864ea3    8b4c2418
                         mov                edx, dword ptr [ecx]                          // 0x00864ea7    8b11
                         {disp8} mov        edi, dword ptr [edx + 0x60]                   // 0x00864ea9    8b7a60
_jmp_addr_0x00864eac:    test               edi, edi                                      // 0x00864eac    85ff
                         {disp8} je         _jmp_addr_0x00864ed0                          // 0x00864eae    7420
                         mov                ecx, dword ptr [edi]                          // 0x00864eb0    8b0f
                         {disp32} lea       eax, dword ptr [esi + 0x0006402c]             // 0x00864eb2    8d862c400600
                         push               eax                                           // 0x00864eb8    50
                         push               esi                                           // 0x00864eb9    56
                         push               ecx                                           // 0x00864eba    51
                         push               ebp                                           // 0x00864ebb    55
                         mov.s              ecx, edi                                      // 0x00864ebc    8bcf
                         call               _jmp_addr_0x008694a0                          // 0x00864ebe    e8dd450000
                         test               eax, eax                                      // 0x00864ec3    85c0
                         {disp8} je         _jmp_addr_0x00864ec9                          // 0x00864ec5    7402
                         xor.s              bl, bl                                        // 0x00864ec7    32db
_jmp_addr_0x00864ec9:    test               bl, bl                                        // 0x00864ec9    84db
                         {disp8} mov        edi, dword ptr [edi + 0x08]                   // 0x00864ecb    8b7f08
                         {disp8} jne        _jmp_addr_0x00864eac                          // 0x00864ece    75dc
_jmp_addr_0x00864ed0:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00864ed0    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00864ed4    8b542418
                         {disp32} mov       ecx, dword ptr [esi + 0x000640b8]             // 0x00864ed8    8b8eb8400600
                         inc                eax                                           // 0x00864ede    40
                         add                edx, 0x04                                     // 0x00864edf    83c204
                         cmp.s              eax, ecx                                      // 0x00864ee2    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00864ee4    89442410
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00864ee8    89542418
                         {disp8} jl         _jmp_addr_0x00864e9f                          // 0x00864eec    7cb1
                         test               bl, bl                                        // 0x00864eee    84db
                         {disp32} jne       _jmp_addr_0x00864fac                          // 0x00864ef0    0f85b6000000
_jmp_addr_0x00864ef6:    dec                dword ptr [esi + 0x00064054]                  // 0x00864ef6    ff8e54400600
                         mov.s              ecx, esi                                      // 0x00864efc    8bce
                         call               _jmp_addr_0x00864190                          // 0x00864efe    e88df2ffff
                         {disp32} mov       edx, dword ptr [esi + 0x00064084]             // 0x00864f03    8b9684400600
                         {disp32} mov       eax, dword ptr [esi + 0x0006404c]             // 0x00864f09    8b864c400600
                         {disp32} mov       ecx, dword ptr [esi + 0x00064080]             // 0x00864f0f    8b8e80400600
                         push               edx                                           // 0x00864f15    52
                         {disp32} mov       edx, dword ptr [esi + 0x0006407c]             // 0x00864f16    8b967c400600
                         push               eax                                           // 0x00864f1c    50
                         push               ecx                                           // 0x00864f1d    51
                         push               edx                                           // 0x00864f1e    52
                         {disp32} lea       eax, dword ptr [esi + 0x00064074]             // 0x00864f1f    8d8674400600
                         push               eax                                           // 0x00864f25    50
                         mov.s              ecx, esi                                      // 0x00864f26    8bce
                         {disp32} mov       dword ptr [esi + 0x00064058], 0x00000000      // 0x00864f28    c7865840060000000000
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x00864f32    e839ecffff
                         pop                edi                                           // 0x00864f37    5f
                         pop                esi                                           // 0x00864f38    5e
                         pop                ebp                                           // 0x00864f39    5d
                         pop                ebx                                           // 0x00864f3a    5b
                         pop                ecx                                           // 0x00864f3b    59
                         ret                0x0004                                        // 0x00864f3c    c20400
_jmp_addr_0x00864f3f:    {disp32} mov       edx, dword ptr [esi + 0x00064070]             // 0x00864f3f    8b9670400600
                         {disp32} mov       eax, dword ptr [esi + 0x0006408c]             // 0x00864f45    8b868c400600
                         {disp32} lea       ecx, dword ptr [esi + 0x0006402c]             // 0x00864f4b    8d8e2c400600
                         push               ecx                                           // 0x00864f51    51
                         {disp8} mov        ecx, dword ptr [eax + 0x68]                   // 0x00864f52    8b4868
                         push               esi                                           // 0x00864f55    56
                         push               edx                                           // 0x00864f56    52
                         push               ebp                                           // 0x00864f57    55
                         call               _jmp_addr_0x008694a0                          // 0x00864f58    e843450000
                         test               eax, eax                                      // 0x00864f5d    85c0
                         {disp8} je         _jmp_addr_0x00864fac                          // 0x00864f5f    744b
                         {disp32} mov       ecx, dword ptr [esi + 0x0006408c]             // 0x00864f61    8b8e8c400600
                         {disp8} mov        edx, dword ptr [ecx + 0x68]                   // 0x00864f67    8b5168
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00864f6a    8b4204
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00864f6d    8b4808
                         add                eax, 0x08                                     // 0x00864f70    83c008
                         {disp32} mov       dword ptr [esi + 0x00064044], ecx             // 0x00864f73    898e44400600
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00864f79    8b5004
                         {disp32} mov       dword ptr [esi + 0x00064048], edx             // 0x00864f7c    899648400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064084]             // 0x00864f82    8b8684400600
                         {disp32} mov       ecx, dword ptr [esi + 0x0006404c]             // 0x00864f88    8b8e4c400600
                         {disp32} mov       edx, dword ptr [esi + 0x00064080]             // 0x00864f8e    8b9680400600
                         push               eax                                           // 0x00864f94    50
                         {disp32} mov       eax, dword ptr [esi + 0x0006407c]             // 0x00864f95    8b867c400600
                         push               ecx                                           // 0x00864f9b    51
                         push               edx                                           // 0x00864f9c    52
                         push               eax                                           // 0x00864f9d    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00064074]             // 0x00864f9e    8d8e74400600
                         push               ecx                                           // 0x00864fa4    51
                         mov.s              ecx, esi                                      // 0x00864fa5    8bce
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x00864fa7    e8c4ebffff
_jmp_addr_0x00864fac:    pop                edi                                           // 0x00864fac    5f
                         pop                esi                                           // 0x00864fad    5e
                         pop                ebp                                           // 0x00864fae    5d
                         pop                ebx                                           // 0x00864faf    5b
                         pop                ecx                                           // 0x00864fb0    59
                         ret                0x0004                                        // 0x00864fb1    c20400
                         nop                                                              // 0x00864fb4    90
                         nop                                                              // 0x00864fb5    90
                         nop                                                              // 0x00864fb6    90
                         nop                                                              // 0x00864fb7    90
                         nop                                                              // 0x00864fb8    90
                         nop                                                              // 0x00864fb9    90
                         nop                                                              // 0x00864fba    90
                         nop                                                              // 0x00864fbb    90
                         nop                                                              // 0x00864fbc    90
                         nop                                                              // 0x00864fbd    90
                         nop                                                              // 0x00864fbe    90
                         nop                                                              // 0x00864fbf    90
_globl_ct_0x00864fc0:    {disp32} jmp       _jmp_addr_0x00864fd0                          // 0x00864fc0    e90b000000
                         nop                                                              // 0x00864fc5    90
                         nop                                                              // 0x00864fc6    90
                         nop                                                              // 0x00864fc7    90
                         nop                                                              // 0x00864fc8    90
                         nop                                                              // 0x00864fc9    90
                         nop                                                              // 0x00864fca    90
                         nop                                                              // 0x00864fcb    90
                         nop                                                              // 0x00864fcc    90
                         nop                                                              // 0x00864fcd    90
                         nop                                                              // 0x00864fce    90
                         nop                                                              // 0x00864fcf    90
_jmp_addr_0x00864fd0:    ret                                                              // 0x00864fd0    c3
                         nop                                                              // 0x00864fd1    90
                         nop                                                              // 0x00864fd2    90
                         nop                                                              // 0x00864fd3    90
                         nop                                                              // 0x00864fd4    90
                         nop                                                              // 0x00864fd5    90
                         nop                                                              // 0x00864fd6    90
                         nop                                                              // 0x00864fd7    90
                         nop                                                              // 0x00864fd8    90
                         nop                                                              // 0x00864fd9    90
                         nop                                                              // 0x00864fda    90
                         nop                                                              // 0x00864fdb    90
                         nop                                                              // 0x00864fdc    90
                         nop                                                              // 0x00864fdd    90
                         nop                                                              // 0x00864fde    90
                         nop                                                              // 0x00864fdf    90
_globl_ct_0x00864fe0:    {disp32} jmp       _jmp_addr_0x00864ff0                          // 0x00864fe0    e90b000000
                         nop                                                              // 0x00864fe5    90
                         nop                                                              // 0x00864fe6    90
                         nop                                                              // 0x00864fe7    90
                         nop                                                              // 0x00864fe8    90
                         nop                                                              // 0x00864fe9    90
                         nop                                                              // 0x00864fea    90
                         nop                                                              // 0x00864feb    90
                         nop                                                              // 0x00864fec    90
                         nop                                                              // 0x00864fed    90
                         nop                                                              // 0x00864fee    90
                         nop                                                              // 0x00864fef    90
_jmp_addr_0x00864ff0:    ret                                                              // 0x00864ff0    c3
                         nop                                                              // 0x00864ff1    90
                         nop                                                              // 0x00864ff2    90
                         nop                                                              // 0x00864ff3    90
                         nop                                                              // 0x00864ff4    90
                         nop                                                              // 0x00864ff5    90
                         nop                                                              // 0x00864ff6    90
                         nop                                                              // 0x00864ff7    90
                         nop                                                              // 0x00864ff8    90
                         nop                                                              // 0x00864ff9    90
                         nop                                                              // 0x00864ffa    90
                         nop                                                              // 0x00864ffb    90
                         nop                                                              // 0x00864ffc    90
                         nop                                                              // 0x00864ffd    90
                         nop                                                              // 0x00864ffe    90
                         nop                                                              // 0x00864fff    90
_jmp_addr_0x00865000:    {disp32} mov       dword ptr [data_bytes + 0x5dc3d0], 0x00f963c0 // 0x00865000    c705d023fa00c063f900
                         {disp32} mov       dword ptr [data_bytes + 0x5dc3d4], 0x00f8a3c0 // 0x0086500a    c705d423fa00c0a3f800
                         {disp32} mov       dword ptr [data_bytes + 0x5dc3d8], 0x00000000 // 0x00865014    c705d823fa0000000000
                         ret                                                              // 0x0086501e    c3
                         nop                                                              // 0x0086501f    90
_jmp_addr_0x00865020:    sub                esp, 0x000000f0                               // 0x00865020    81ecf0000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000f4]             // 0x00865026    8b8424f4000000
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x0086502d    8b400c
                         push               ebp                                           // 0x00865030    55
                         xor.s              edx, edx                                      // 0x00865031    33d2
                         xor.s              ebp, ebp                                      // 0x00865033    33ed
                         test               eax, eax                                      // 0x00865035    85c0
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00865037    8954241c
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x0086503b    89842480000000
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                   // 0x00865042    896c243c
                         {disp32} jle       _jmp_addr_0x00865a0e                          // 0x00865046    0f8ec2090000
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x0086504c    d9842480000000
                         push               ebx                                           // 0x00865053    53
                         push               esi                                           // 0x00865054    56
                         push               edi                                           // 0x00865055    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000108]             // 0x00865056    8bbc2408010000
_jmp_addr_0x0086505d:    {disp32} mov       edx, dword ptr [esp + 0x00000104]             // 0x0086505d    8b942404010000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                   // 0x00865064    8b5210
                         {disp32} mov       bl, byte ptr [esp + 0x00000114]               // 0x00865067    8a9c2414010000
                         test               bl, bl                                        // 0x0086506e    84db
                         mov                edx, dword ptr [edx + ebp * 0x4]              // 0x00865070    8b14aa
                         {disp32} mov       dword ptr [esp + 0x000000c8], edx             // 0x00865073    899424c8000000
                         {disp8} je         _jmp_addr_0x0086508b                          // 0x0086507a    740f
                         mov                ebx, dword ptr [edx]                          // 0x0086507c    8b1a
                         shr                ebx, 0xd                                      // 0x0086507e    c1eb0d
                         test               bl, 0x01                                      // 0x00865081    f6c301
                         {disp8} jne        _jmp_addr_0x00865097                          // 0x00865084    7511
                         {disp32} jmp       _jmp_addr_0x008659ee                          // 0x00865086    e963090000
_jmp_addr_0x0086508b:    test               dword ptr [edx], 0x20000000                   // 0x0086508b    f70200000020
                         {disp32} je        _jmp_addr_0x008659ee                          // 0x00865091    0f8457090000
_jmp_addr_0x00865097:    {disp8} mov        ebx, dword ptr [edx + 0x04]                   // 0x00865097    8b5a04
                         xor.s              esi, esi                                      // 0x0086509a    33f6
                         test               ebx, ebx                                      // 0x0086509c    85db
                         {disp32} mov       dword ptr [esp + 0x000000c0], ebx             // 0x0086509e    899c24c0000000
                         {disp8} mov        dword ptr [esp + 0x4c], esi                   // 0x008650a5    8974244c
                         {disp32} jle       _jmp_addr_0x008659ee                          // 0x008650a9    0f8e3f090000
                         {disp8} jmp        _jmp_addr_0x008650b8                          // 0x008650af    eb07
_jmp_addr_0x008650b1:    {disp32} mov       edx, dword ptr [esp + 0x000000c8]             // 0x008650b1    8b9424c8000000
_jmp_addr_0x008650b8:    {disp8} mov        eax, dword ptr [edx + 0x08]                   // 0x008650b8    8b4208
                         mov                ebp, dword ptr [eax + esi * 0x4]              // 0x008650bb    8b2cb0
                         {disp32} mov       edx, dword ptr [esp + 0x00000104]             // 0x008650be    8b942404010000
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x008650c5    8b7204
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                   // 0x008650c8    8b4514
                         xor.s              ebx, ebx                                      // 0x008650cb    33db
                         test               esi, 0x00000100                               // 0x008650cd    f7c600010000
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x008650d3    895c2414
                         {disp8} mov        dword ptr [esp + 0x7c], ebp                   // 0x008650d7    896c247c
                         {disp8} mov        dword ptr [esp + 0x5c], eax                   // 0x008650db    8944245c
                         {disp32} je        _jmp_addr_0x008651e5                          // 0x008650df    0f8400010000
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x008650e5    8b4520
                         xor.s              esi, esi                                      // 0x008650e8    33f6
                         test               eax, eax                                      // 0x008650ea    85c0
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x008650ec    89742424
                         {disp32} jle       _jmp_addr_0x00865260                          // 0x008650f0    0f8e6a010000
_jmp_addr_0x008650f6:    {disp8} mov        eax, dword ptr [ebp + 0x24]                   // 0x008650f6    8b4524
                         lea                edx, dword ptr [eax + esi * 0x4]              // 0x008650f9    8d14b0
                         xor.s              eax, eax                                      // 0x008650fc    33c0
                         {disp8} mov        ax, word ptr [edx + 0x02]                     // 0x008650fe    668b4202
                         {disp8} mov        dword ptr [esp + 0x78], edx                   // 0x00865102    89542478
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00865106    c744241000000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0086510e    8d0440
                         shl                eax, 4                                        // 0x00865111    c1e004
                         add.s              eax, edi                                      // 0x00865114    03c7
                         cmp                word ptr [edx], 0x00                          // 0x00865116    66833a00
                         {disp32} jbe       _jmp_addr_0x008651d3                          // 0x0086511a    0f86b3000000
                         lea                edx, dword ptr [ebx + ebx * 0x2]              // 0x00865120    8d145b
                         {disp32} lea       esi, dword ptr [edx * 0x4 + 0x00f963c8]       // 0x00865123    8d3495c863f900
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x0086512a    8b54245c
                         {disp32} lea       ebp, dword ptr [ebx * 0x4 + 0x00f863c0]       // 0x0086512e    8d2c9dc063f800
                         shl                ebx, 5                                        // 0x00865135    c1e305
                         {disp8} lea        edx, dword ptr [ebx + edx * 0x1 + 0x08]       // 0x00865138    8d541308
                         {disp8} jmp        _jmp_addr_0x00865142                          // 0x0086513c    eb04
_jmp_addr_0x0086513e:    {disp8} mov        ebp, dword ptr [esp + 0x44]                   // 0x0086513e    8b6c2444
_jmp_addr_0x00865142:    {disp8} fld        dword ptr [edx + -0x08]                       // 0x00865142    d942f8
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x00865145    8b5c2424
                         {disp8} fld        dword ptr [edx + -0x04]                       // 0x00865149    d942fc
                         add                ebp, 0x04                                     // 0x0086514c    83c504
                         fld                dword ptr [edx]                               // 0x0086514f    d902
                         add                edx, 0x20                                     // 0x00865151    83c220
                         fld                st(2)                                         // 0x00865154    d9c2
                         add                esi, 0x0c                                     // 0x00865156    83c60c
                         fmul               dword ptr [eax]                               // 0x00865159    d808
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0086515b    896c2444
                         fld                st(1)                                         // 0x0086515f    d9c1
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00865161    d84818
                         faddp              st(1), st                                     // 0x00865164    dec1
                         fld                st(2)                                         // 0x00865166    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00865168    d8480c
                         faddp              st(1), st                                     // 0x0086516b    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0086516d    d84024
                         {disp8} fstp       dword ptr [esi + -0x14]                       // 0x00865170    d95eec
                         fld                st(2)                                         // 0x00865173    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00865175    d84804
                         fld                st(1)                                         // 0x00865178    d9c1
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0086517a    d8481c
                         faddp              st(1), st                                     // 0x0086517d    dec1
                         fld                st(2)                                         // 0x0086517f    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00865181    d84810
                         faddp              st(1), st                                     // 0x00865184    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00865186    d84028
                         {disp8} fstp       dword ptr [esi + -0x10]                       // 0x00865189    d95ef0
                         fxch               st(2)                                         // 0x0086518c    d9ca
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0086518e    d84808
                         fxch               st(2)                                         // 0x00865191    d9ca
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00865193    d84820
                         faddp              st(2), st                                     // 0x00865196    dec2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00865198    d84814
                         faddp              st(1), st                                     // 0x0086519b    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0086519d    d8402c
                         {disp8} mov        dword ptr [ebp + -0x04], ebx                  // 0x008651a0    895dfc
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x008651a3    8b5c2414
                         {disp8} mov        ebp, dword ptr [esp + 0x78]                   // 0x008651a7    8b6c2478
                         inc                ebx                                           // 0x008651ab    43
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x008651ac    d95ef4
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x008651af    895c2414
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x008651b3    ff442410
                         xor.s              ebx, ebx                                      // 0x008651b7    33db
                         {disp8} mov        bx, word ptr [ebp + 0x00]                     // 0x008651b9    668b5d00
                         cmp                dword ptr [esp + 0x10], ebx                   // 0x008651bd    395c2410
                         {disp32} jl        _jmp_addr_0x0086513e                          // 0x008651c1    0f8c77ffffff
                         {disp8} mov        ebp, dword ptr [esp + 0x7c]                   // 0x008651c7    8b6c247c
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x008651cb    8b5c2414
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x008651cf    8b742424
_jmp_addr_0x008651d3:    {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x008651d3    8b4520
                         inc                esi                                           // 0x008651d6    46
                         cmp.s              esi, eax                                      // 0x008651d7    3bf0
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x008651d9    89742424
                         {disp32} jl        _jmp_addr_0x008650f6                          // 0x008651dd    0f8c13ffffff
                         {disp8} jmp        _jmp_addr_0x00865260                          // 0x008651e3    eb7b
_jmp_addr_0x008651e5:    {disp8} mov        edx, dword ptr [ebp + 0x10]                   // 0x008651e5    8b5510
                         test               edx, edx                                      // 0x008651e8    85d2
                         {disp8} jle        _jmp_addr_0x00865260                          // 0x008651ea    7e74
                         mov                esi, 0x00f863c0                               // 0x008651ec    bec063f800
                         mov                edx, 0x00f963c8                               // 0x008651f1    bac863f900
                         add                eax, 0x08                                     // 0x008651f6    83c008
_jmp_addr_0x008651f9:    {disp8} fld        dword ptr [eax + -0x08]                       // 0x008651f9    d940f8
                         inc                ebx                                           // 0x008651fc    43
                         {disp8} fld        dword ptr [eax + -0x04]                       // 0x008651fd    d940fc
                         add                eax, 0x20                                     // 0x00865200    83c020
                         {disp8} fld        dword ptr [eax + -0x20]                       // 0x00865203    d940e0
                         add                edx, 0x0c                                     // 0x00865206    83c20c
                         fld                st(0)                                         // 0x00865209    d9c0
                         add                esi, 0x04                                     // 0x0086520b    83c604
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x0086520e    d84f18
                         fld                st(2)                                         // 0x00865211    d9c2
                         {disp8} fmul       dword ptr [edi + 0x0c]                        // 0x00865213    d84f0c
                         faddp              st(1), st                                     // 0x00865216    dec1
                         fld                st(3)                                         // 0x00865218    d9c3
                         fmul               dword ptr [edi]                               // 0x0086521a    d80f
                         faddp              st(1), st                                     // 0x0086521c    dec1
                         {disp8} fadd       dword ptr [edi + 0x24]                        // 0x0086521e    d84724
                         {disp8} fstp       dword ptr [edx + -0x14]                       // 0x00865221    d95aec
                         fld                st(0)                                         // 0x00865224    d9c0
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x00865226    d84f1c
                         fld                st(2)                                         // 0x00865229    d9c2
                         {disp8} fmul       dword ptr [edi + 0x10]                        // 0x0086522b    d84f10
                         faddp              st(1), st                                     // 0x0086522e    dec1
                         fld                st(3)                                         // 0x00865230    d9c3
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00865232    d84f04
                         faddp              st(1), st                                     // 0x00865235    dec1
                         {disp8} fadd       dword ptr [edi + 0x28]                        // 0x00865237    d84728
                         {disp8} fstp       dword ptr [edx + -0x10]                       // 0x0086523a    d95af0
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x0086523d    d84f20
                         fxch               st(1)                                         // 0x00865240    d9c9
                         {disp8} fmul       dword ptr [edi + 0x14]                        // 0x00865242    d84f14
                         faddp              st(1), st                                     // 0x00865245    dec1
                         fxch               st(1)                                         // 0x00865247    d9c9
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00865249    d84f08
                         faddp              st(1), st                                     // 0x0086524c    dec1
                         {disp8} fadd       dword ptr [edi + 0x2c]                        // 0x0086524e    d8472c
                         {disp8} mov        dword ptr [esi + -0x04], 0x00000000           // 0x00865251    c746fc00000000
                         {disp8} fstp       dword ptr [edx + -0x0c]                       // 0x00865258    d95af4
                         cmp                ebx, dword ptr [ebp + 0x10]                   // 0x0086525b    3b5d10
                         {disp8} jl         _jmp_addr_0x008651f9                          // 0x0086525e    7c99
_jmp_addr_0x00865260:    {disp8} mov        eax, dword ptr [ebp + 0x18]                   // 0x00865260    8b4518
                         xor.s              edx, edx                                      // 0x00865263    33d2
                         cmp.s              eax, edx                                      // 0x00865265    3bc2
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00865267    89542444
                         {disp32} jle       _jmp_addr_0x008659cb                          // 0x0086526b    0f8e5a070000
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x00865271    8954245c
_jmp_addr_0x00865275:    add                edx, dword ptr [ebp + 0x1c]                   // 0x00865275    03551c
                         xor.s              eax, eax                                      // 0x00865278    33c0
                         mov                ax, word ptr [edx]                            // 0x0086527a    668b02
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0086527d    8d0440
                         {disp32} mov       esi, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x00865280    8b3485c063f900
                         {disp32} lea       eax, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x00865287    8d0485c063f900
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x0086528e    8974242c
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00865292    8b7004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00865295    8b4008
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00865298    89442434
                         xor.s              eax, eax                                      // 0x0086529c    33c0
                         {disp8} mov        ax, word ptr [edx + 0x02]                     // 0x0086529e    668b4202
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x008652a2    89742430
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x008652a6    8d0440
                         {disp32} mov       esi, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x008652a9    8b3485c063f900
                         {disp32} lea       eax, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x008652b0    8d0485c063f900
                         {disp32} mov       dword ptr [esp + 0x00000080], esi             // 0x008652b7    89b42480000000
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x008652be    d9842480000000
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x008652c5    d864242c
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x008652c9    8b7004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x008652cc    8b4008
                         {disp32} mov       dword ptr [esp + 0x00000088], eax             // 0x008652cf    89842488000000
                         {disp8} fst        dword ptr [esp + 0x78]                        // 0x008652d6    d9542478
                         xor.s              eax, eax                                      // 0x008652da    33c0
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x008652dc    d95c2460
                         {disp8} mov        ax, word ptr [edx + 0x04]                     // 0x008652e0    668b4204
                         {disp32} mov       dword ptr [esp + 0x00000084], esi             // 0x008652e4    89b42484000000
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x008652eb    d9842484000000
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x008652f2    d8642430
                         {disp32} fst       dword ptr [esp + 0x000000cc]                  // 0x008652f6    d99424cc000000
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x008652fd    d95c2464
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x00865301    d9842488000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00865308    8d0440
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0086530b    d8642434
                         {disp32} mov       esi, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x0086530f    8b3485c063f900
                         {disp32} lea       eax, dword ptr [eax * 0x4 + 0x00f963c0]       // 0x00865316    8d0485c063f900
                         {disp8} mov        dword ptr [esp + 0x50], esi                   // 0x0086531d    89742450
                         {disp32} fst       dword ptr [esp + 0x000000c4]                  // 0x00865321    d99424c4000000
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00865328    8b7004
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0086532b    d9442450
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0086532f    8b4008
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00865332    d864242c
                         {disp8} mov        dword ptr [esp + 0x54], esi                   // 0x00865336    89742454
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0086533a    89442458
                         {disp8} fstp       dword ptr [esp + 0x6c]                        // 0x0086533e    d95c246c
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00865342    d9442454
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00865346    d8642430
                         {disp8} fstp       dword ptr [esp + 0x70]                        // 0x0086534a    d95c2470
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0086534e    d9442458
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x00865352    d8642434
                         fld                st(0)                                         // 0x00865356    d9c0
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x00865358    d84c2464
                         fld                st(2)                                         // 0x0086535c    d9c2
                         {disp8} fmul       dword ptr [esp + 0x70]                        // 0x0086535e    d84c2470
                         fsubp              st(1), st                                     // 0x00865362    dee9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00865364    d95c2418
                         fxch               st(1)                                         // 0x00865368    d9c9
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x0086536a    d84c246c
                         fxch               st(1)                                         // 0x0086536e    d9c9
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x00865370    d84c2460
                         fsubp              st(1), st                                     // 0x00865374    dee9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00865376    d95c241c
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0086537a    d9442470
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x0086537e    d84c2460
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00865382    d95c2414
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x00865386    d9442464
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x0086538a    d84c246c
                         {disp8} fsubr      dword ptr [esp + 0x14]                        // 0x0086538e    d86c2414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00865392    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00865396    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086539a    d81d98a38a00
                         fnstsw             ax                                            // 0x008653a0    dfe0
                         test               ah, 0x40                                      // 0x008653a2    f6c440
                         {disp8} je         _jmp_addr_0x008653c9                          // 0x008653a5    7422
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008653a7    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008653ab    d81d98a38a00
                         fnstsw             ax                                            // 0x008653b1    dfe0
                         test               ah, 0x40                                      // 0x008653b3    f6c440
                         {disp8} je         _jmp_addr_0x008653c9                          // 0x008653b6    7411
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x008653b8    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008653bc    d81d98a38a00
                         fnstsw             ax                                            // 0x008653c2    dfe0
                         test               ah, 0x40                                      // 0x008653c4    f6c440
                         {disp8} jne        _jmp_addr_0x00865409                          // 0x008653c7    7540
_jmp_addr_0x008653c9:    {disp8} fld        dword ptr [esp + 0x20]                        // 0x008653c9    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x008653cd    d84c2420
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008653d1    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x008653d5    d84c241c
                         faddp              st(1), st                                     // 0x008653d9    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x008653db    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x008653df    d84c2418
                         faddp              st(1), st                                     // 0x008653e3    dec1
                         fsqrt                                                            // 0x008653e5    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x008653e7    d83d90a38a00
                         fld                st(0)                                         // 0x008653ed    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x008653ef    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x008653f3    d95c2418
                         fld                st(0)                                         // 0x008653f7    d9c0
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x008653f9    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x008653fd    d95c241c
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865401    d84c2420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00865405    d95c2420
_jmp_addr_0x00865409:    {disp8} fld        dword ptr [esp + 0x34]                        // 0x00865409    d9442434
                         {disp32} mov       ebx, dword ptr [esp + 0x00000110]             // 0x0086540d    8b9c2410010000
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865414    d84c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00865418    d9442430
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086541c    d84c241c
                         faddp              st(1), st                                     // 0x00865420    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00865422    d944242c
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00865426    d84c2418
                         faddp              st(1), st                                     // 0x0086542a    dec1
                         fld                dword ptr [ebx]                               // 0x0086542c    d903
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0086542e    d94304
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x00865431    d94308
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865434    d84c2420
                         fxch               st(1)                                         // 0x00865438    d9c9
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086543a    d84c241c
                         faddp              st(1), st                                     // 0x0086543e    dec1
                         fxch               st(1)                                         // 0x00865440    d9c9
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00865442    d84c2418
                         faddp              st(1), st                                     // 0x00865446    dec1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00865448    d95c2410
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabc4]             // 0x0086544c    d905c43b9a00
                         fchs                                                             // 0x00865452    d9e0
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00865454    d85c2410
                         fnstsw             ax                                            // 0x00865458    dfe0
                         test               ah, 0x41                                      // 0x0086545a    f6c441
                         {disp8} je         _jmp_addr_0x00865474                          // 0x0086545d    7415
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086545f    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xfabc4]             // 0x00865463    d81dc43b9a00
                         fnstsw             ax                                            // 0x00865469    dfe0
                         test               ah, 0x41                                      // 0x0086546b    f6c441
                         {disp32} jne       _jmp_addr_0x008659aa                          // 0x0086546e    0f8536050000
_jmp_addr_0x00865474:    {disp32} mov       esi, dword ptr [esp + 0x0000010c]             // 0x00865474    8bb4240c010000
                         fld                dword ptr [esi]                               // 0x0086547b    d906
                         {disp32} mov       al, byte ptr [esp + 0x00000120]               // 0x0086547d    8a842420010000
                         test               al, al                                        // 0x00865484    84c0
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00865486    d94604
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00865489    d94608
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0086548c    d84c2420
                         fxch               st(1)                                         // 0x00865490    d9c9
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00865492    d84c241c
                         faddp              st(1), st                                     // 0x00865496    dec1
                         fxch               st(1)                                         // 0x00865498    d9c9
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0086549a    d84c2418
                         faddp              st(1), st                                     // 0x0086549e    dec1
                         fsubr              st, st(1)                                     // 0x008654a0    d8e9
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x008654a2    d8742410
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x008654a6    d95c2424
                         fstp               st(0)                                         // 0x008654aa    ddd8
                         {disp8} jne        _jmp_addr_0x008654c3                          // 0x008654ac    7515
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008654ae    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008654b2    d81d98a38a00
                         fnstsw             ax                                            // 0x008654b8    dfe0
                         test               ah, 0x41                                      // 0x008654ba    f6c441
                         {disp32} jne       _jmp_addr_0x008659ac                          // 0x008654bd    0f85e9040000
_jmp_addr_0x008654c3:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x008654c3    d9442424
                         {disp8} mov        eax, dword ptr [esp + 0x78]                   // 0x008654c7    8b442478
                         fmul               dword ptr [ebx]                               // 0x008654cb    d80b
                         {disp32} mov       dword ptr [esp + 0x0000009c], eax             // 0x008654cd    8984249c000000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008654d4    d9442424
                         {disp32} mov       eax, dword ptr [esp + 0x000000cc]             // 0x008654d8    8b8424cc000000
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x008654df    d84b04
                         {disp32} mov       dword ptr [esp + 0x000000a0], eax             // 0x008654e2    898424a0000000
                         {disp32} fstp      dword ptr [esp + 0x000000d4]                  // 0x008654e9    d99c24d4000000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008654f0    d9442424
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x008654f4    d84b08
                         {disp32} fstp      dword ptr [esp + 0x000000d8]                  // 0x008654f7    d99c24d8000000
                         fadd               dword ptr [esi]                               // 0x008654fe    d806
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00865500    d95c2438
                         {disp32} fld       dword ptr [esp + 0x000000d4]                  // 0x00865504    d98424d4000000
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0086550b    d84604
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0086550e    d95c243c
                         {disp32} fld       dword ptr [esp + 0x000000d8]                  // 0x00865512    d98424d8000000
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00865519    d84608
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0086551c    d95c2440
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00865520    d9442438
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00865524    d864242c
                         {disp32} fst       dword ptr [esp + 0x00000090]                  // 0x00865528    d9942490000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0086552f    d944243c
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00865533    d8642430
                         {disp8} fst        dword ptr [esp + 0x7c]                        // 0x00865537    d954247c
                         {disp32} fstp      dword ptr [esp + 0x00000094]                  // 0x0086553b    d99c2494000000
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x00865542    d944247c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00865546    d9442440
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0086554a    d8642434
                         {disp32} fld       dword ptr [esp + 0x000000c4]                  // 0x0086554e    d98424c4000000
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x00865555    d98424a0000000
                         fmul               st, st(2)                                     // 0x0086555c    d8ca
                         fld                st(1)                                         // 0x0086555e    d9c1
                         fmul               st, st(4)                                     // 0x00865560    d8cc
                         fsubp              st(1), st                                     // 0x00865562    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000e8]                  // 0x00865564    d99c24e8000000
                         fmul               st, st(3)                                     // 0x0086556b    d8cb
                         fxch               st(1)                                         // 0x0086556d    d9c9
                         {disp32} fmul      dword ptr [esp + 0x0000009c]                  // 0x0086556f    d88c249c000000
                         fsubp              st(1), st                                     // 0x00865576    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000ec]                  // 0x00865578    d99c24ec000000
                         {disp32} fmul      dword ptr [esp + 0x0000009c]                  // 0x0086557f    d88c249c000000
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x00865586    d98424a0000000
                         fmul               st, st(2)                                     // 0x0086558d    d8ca
                         fsubp              st(1), st                                     // 0x0086558f    dee9
                         fstp               st(1)                                         // 0x00865591    ddd9
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865593    d84c2420
                         {disp32} fld       dword ptr [esp + 0x000000ec]                  // 0x00865597    d98424ec000000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086559e    d84c241c
                         faddp              st(1), st                                     // 0x008655a2    dec1
                         {disp32} fld       dword ptr [esp + 0x000000e8]                  // 0x008655a4    d98424e8000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x008655ab    d84c2418
                         faddp              st(1), st                                     // 0x008655af    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008655b1    d81d98a38a00
                         fnstsw             ax                                            // 0x008655b7    dfe0
                         test               ah, 0x41                                      // 0x008655b9    f6c441
                         {disp8} jne        _jmp_addr_0x008655c5                          // 0x008655bc    7507
                         mov                ebx, 0x00000001                               // 0x008655be    bb01000000
                         {disp8} jmp        _jmp_addr_0x008655c7                          // 0x008655c3    eb02
_jmp_addr_0x008655c5:    xor.s              ebx, ebx                                      // 0x008655c5    33db
_jmp_addr_0x008655c7:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x008655c7    d9442438
                         {disp32} fsub      dword ptr [esp + 0x00000080]                  // 0x008655cb    d8a42480000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x008655d2    d944243c
                         {disp32} fsub      dword ptr [esp + 0x00000084]                  // 0x008655d6    d8a42484000000
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x008655dd    d9442440
                         {disp32} fsub      dword ptr [esp + 0x00000088]                  // 0x008655e1    d8a42488000000
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x008655e8    d9442450
                         {disp32} fsub      dword ptr [esp + 0x00000080]                  // 0x008655ec    d8a42480000000
                         {disp32} fstp      dword ptr [esp + 0x000000a8]                  // 0x008655f3    d99c24a8000000
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x008655fa    d9442454
                         {disp32} fsub      dword ptr [esp + 0x00000084]                  // 0x008655fe    d8a42484000000
                         {disp32} fstp      dword ptr [esp + 0x000000ac]                  // 0x00865605    d99c24ac000000
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0086560c    d9442458
                         {disp32} fsub      dword ptr [esp + 0x00000088]                  // 0x00865610    d8a42488000000
                         {disp32} fld       dword ptr [esp + 0x000000ac]                  // 0x00865617    d98424ac000000
                         fmul               st, st(2)                                     // 0x0086561e    d8ca
                         fld                st(1)                                         // 0x00865620    d9c1
                         fmul               st, st(4)                                     // 0x00865622    d8cc
                         fsubp              st(1), st                                     // 0x00865624    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000dc]                  // 0x00865626    d99c24dc000000
                         fmul               st, st(3)                                     // 0x0086562d    d8cb
                         fxch               st(1)                                         // 0x0086562f    d9c9
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00865631    d88c24a8000000
                         fsubp              st(1), st                                     // 0x00865638    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000e0]                  // 0x0086563a    d99c24e0000000
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00865641    d88c24a8000000
                         {disp32} fld       dword ptr [esp + 0x000000ac]                  // 0x00865648    d98424ac000000
                         fmul               st, st(2)                                     // 0x0086564f    d8ca
                         fsubp              st(1), st                                     // 0x00865651    dee9
                         fstp               st(1)                                         // 0x00865653    ddd9
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865655    d84c2420
                         {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x00865659    d98424e0000000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00865660    d84c241c
                         faddp              st(1), st                                     // 0x00865664    dec1
                         {disp32} fld       dword ptr [esp + 0x000000dc]                  // 0x00865666    d98424dc000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0086566d    d84c2418
                         faddp              st(1), st                                     // 0x00865671    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00865673    d81d98a38a00
                         fnstsw             ax                                            // 0x00865679    dfe0
                         test               ah, 0x41                                      // 0x0086567b    f6c441
                         {disp8} jne        _jmp_addr_0x00865687                          // 0x0086567e    7507
                         mov                esi, 0x00000001                               // 0x00865680    be01000000
                         {disp8} jmp        _jmp_addr_0x00865689                          // 0x00865685    eb02
_jmp_addr_0x00865687:    xor.s              esi, esi                                      // 0x00865687    33f6
_jmp_addr_0x00865689:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x00865689    d9442438
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0086568d    d8642450
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00865691    d944243c
                         {disp8} fsub       dword ptr [esp + 0x54]                        // 0x00865695    d8642454
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00865699    d9442440
                         {disp8} fsub       dword ptr [esp + 0x58]                        // 0x0086569d    d8642458
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x008656a1    d944242c
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x008656a5    d8642450
                         {disp32} fstp      dword ptr [esp + 0x000000b4]                  // 0x008656a9    d99c24b4000000
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008656b0    d9442430
                         {disp8} fsub       dword ptr [esp + 0x54]                        // 0x008656b4    d8642454
                         {disp32} fstp      dword ptr [esp + 0x000000b8]                  // 0x008656b8    d99c24b8000000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x008656bf    d9442434
                         {disp8} fsub       dword ptr [esp + 0x58]                        // 0x008656c3    d8642458
                         {disp32} fld       dword ptr [esp + 0x000000b8]                  // 0x008656c7    d98424b8000000
                         fmul               st, st(2)                                     // 0x008656ce    d8ca
                         fld                st(1)                                         // 0x008656d0    d9c1
                         fmul               st, st(4)                                     // 0x008656d2    d8cc
                         fsubp              st(1), st                                     // 0x008656d4    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000f4]                  // 0x008656d6    d99c24f4000000
                         fmul               st, st(3)                                     // 0x008656dd    d8cb
                         fxch               st(1)                                         // 0x008656df    d9c9
                         {disp32} fmul      dword ptr [esp + 0x000000b4]                  // 0x008656e1    d88c24b4000000
                         fsubp              st(1), st                                     // 0x008656e8    dee9
                         {disp32} fstp      dword ptr [esp + 0x000000f8]                  // 0x008656ea    d99c24f8000000
                         {disp32} fmul      dword ptr [esp + 0x000000b4]                  // 0x008656f1    d88c24b4000000
                         {disp32} fld       dword ptr [esp + 0x000000b8]                  // 0x008656f8    d98424b8000000
                         fmul               st, st(2)                                     // 0x008656ff    d8ca
                         fsubp              st(1), st                                     // 0x00865701    dee9
                         fstp               st(1)                                         // 0x00865703    ddd9
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865705    d84c2420
                         {disp32} fld       dword ptr [esp + 0x000000f8]                  // 0x00865709    d98424f8000000
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00865710    d84c241c
                         faddp              st(1), st                                     // 0x00865714    dec1
                         {disp32} fld       dword ptr [esp + 0x000000f4]                  // 0x00865716    d98424f4000000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0086571d    d84c2418
                         faddp              st(1), st                                     // 0x00865721    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00865723    d81d98a38a00
                         fnstsw             ax                                            // 0x00865729    dfe0
                         test               ah, 0x41                                      // 0x0086572b    f6c441
                         {disp8} jne        _jmp_addr_0x00865737                          // 0x0086572e    7507
                         mov                eax, 0x00000001                               // 0x00865730    b801000000
                         {disp8} jmp        _jmp_addr_0x00865739                          // 0x00865735    eb02
_jmp_addr_0x00865737:    xor.s              eax, eax                                      // 0x00865737    33c0
_jmp_addr_0x00865739:    add.s              eax, esi                                      // 0x00865739    03c6
                         add.s              eax, ebx                                      // 0x0086573b    03c3
                         {disp8} je         _jmp_addr_0x00865748                          // 0x0086573d    7409
                         cmp                eax, 0x03                                     // 0x0086573f    83f803
                         {disp32} jne       _jmp_addr_0x008659ac                          // 0x00865742    0f8564020000
_jmp_addr_0x00865748:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00865748    8b442428
                         test               eax, eax                                      // 0x0086574c    85c0
                         {disp8} je         _jmp_addr_0x00865761                          // 0x0086574e    7411
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00865750    d9442424
                         fcomp              st(1)                                         // 0x00865754    d8d9
                         fnstsw             ax                                            // 0x00865756    dfe0
                         test               ah, 0x01                                      // 0x00865758    f6c401
                         {disp32} je        _jmp_addr_0x008659ac                          // 0x0086575b    0f844b020000
_jmp_addr_0x00865761:    {disp8} mov        ebx, dword ptr [esp + 0x40]                   // 0x00865761    8b5c2440
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00865765    8b442438
                         {disp8} mov        esi, dword ptr [esp + 0x3c]                   // 0x00865769    8b74243c
                         {disp32} mov       dword ptr [data_bytes + 0x5dc3c8], ebx        // 0x0086576d    891dc823fa00
                         {disp32} mov       ebx, dword ptr [esp + 0x00000118]             // 0x00865773    8b9c2418010000
                         test               ebx, ebx                                      // 0x0086577a    85db
                         {disp32} mov       dword ptr [data_bytes + 0x5dc3c0], eax        // 0x0086577c    a3c023fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc3c4], esi        // 0x00865781    8935c423fa00
                         {disp32} je        _jmp_addr_0x0086580e                          // 0x00865787    0f8481000000
                         {disp32} mov       ebx, dword ptr [esp + 0x0000011c]             // 0x0086578d    8b9c241c010000
                         test               ebx, ebx                                      // 0x00865794    85db
                         {disp8} je         _jmp_addr_0x0086580e                          // 0x00865796    7476
                         {disp32} mov       edx, dword ptr [esp + 0x00000118]             // 0x00865798    8b942418010000
                         fstp               st(0)                                         // 0x0086579f    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008657a1    d9442410
                         mov                dword ptr [edx], eax                          // 0x008657a5    8902
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008657a7    d81d98a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x008657ad    8b442440
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x008657b1    897204
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x008657b4    894208
                         fnstsw             ax                                            // 0x008657b7    dfe0
                         test               ah, 0x41                                      // 0x008657b9    f6c441
                         {disp8} jne        _jmp_addr_0x008657e3                          // 0x008657bc    7525
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x008657be    8b542418
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008657c2    d9442424
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x008657c6    8b44241c
                         mov                dword ptr [ebx], edx                          // 0x008657ca    8913
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x008657cc    8b542420
                         {disp8} mov        dword ptr [ebx + 0x04], eax                   // 0x008657d0    894304
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x008657d3    895308
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x008657d6    c744242801000000
                         {disp32} jmp       _jmp_addr_0x008659ac                          // 0x008657de    e9c9010000
_jmp_addr_0x008657e3:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x008657e3    d9442418
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x008657e7    c744242801000000
                         fchs                                                             // 0x008657ef    d9e0
                         fstp               dword ptr [ebx]                               // 0x008657f1    d91b
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008657f3    d944241c
                         fchs                                                             // 0x008657f7    d9e0
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x008657f9    d95b04
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x008657fc    d9442420
                         fchs                                                             // 0x00865800    d9e0
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x00865802    d95b08
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00865805    d9442424
                         {disp32} jmp       _jmp_addr_0x008659ac                          // 0x00865809    e99e010000
_jmp_addr_0x0086580e:    {disp8} fld        dword ptr [esp + 0x6c]                        // 0x0086580e    d944246c
                         fabs                                                             // 0x00865812    d9e1
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabc4]             // 0x00865814    d905c43b9a00
                         fcompp                                                           // 0x0086581a    ded9
                         fnstsw             ax                                            // 0x0086581c    dfe0
                         test               ah, 0x01                                      // 0x0086581e    f6c401
                         {disp8} je         _jmp_addr_0x00865881                          // 0x00865821    745e
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00865823    d9442414
                         {disp8} fdiv       dword ptr [esp + 0x6c]                        // 0x00865827    d874246c
                         {disp8} fsubr      dword ptr [esp + 0x64]                        // 0x0086582b    d86c2464
                         fld                st(0)                                         // 0x0086582f    d9c0
                         fabs                                                             // 0x00865831    d9e1
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabc4]             // 0x00865833    d905c43b9a00
                         fcompp                                                           // 0x00865839    ded9
                         fnstsw             ax                                            // 0x0086583b    dfe0
                         test               ah, 0x01                                      // 0x0086583d    f6c401
                         {disp32} je        _jmp_addr_0x008659aa                          // 0x00865840    0f8464010000
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x00865846    d9842490000000
                         {disp8} fmul       dword ptr [esp + 0x70]                        // 0x0086584d    d84c2470
                         {disp8} fdiv       dword ptr [esp + 0x6c]                        // 0x00865851    d874246c
                         {disp32} fsubr     dword ptr [esp + 0x00000094]                  // 0x00865855    d8ac2494000000
                         fdiv               st, st(1)                                     // 0x0086585c    d8f1
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086585e    d95c2414
                         fstp               st(0)                                         // 0x00865862    ddd8
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x00865864    d9442460
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00865868    d84c2414
                         {disp32} fsubr     dword ptr [esp + 0x00000090]                  // 0x0086586c    d8ac2490000000
                         {disp8} fdiv       dword ptr [esp + 0x6c]                        // 0x00865873    d874246c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00865877    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086587b    d9442414
                         {disp8} jmp        _jmp_addr_0x008658f6                          // 0x0086587f    eb75
_jmp_addr_0x00865881:    {disp8} fld        dword ptr [esp + 0x60]                        // 0x00865881    d9442460
                         fabs                                                             // 0x00865885    d9e1
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabc4]             // 0x00865887    d905c43b9a00
                         fcompp                                                           // 0x0086588d    ded9
                         fnstsw             ax                                            // 0x0086588f    dfe0
                         test               ah, 0x01                                      // 0x00865891    f6c401
                         {disp32} je        _jmp_addr_0x008659ac                          // 0x00865894    0f8412010000
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x0086589a    d9442464
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x0086589e    d84c246c
                         {disp8} fdiv       dword ptr [esp + 0x60]                        // 0x008658a2    d8742460
                         {disp8} fsubr      dword ptr [esp + 0x70]                        // 0x008658a6    d86c2470
                         fld                st(0)                                         // 0x008658aa    d9c0
                         fabs                                                             // 0x008658ac    d9e1
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabc4]             // 0x008658ae    d905c43b9a00
                         fcompp                                                           // 0x008658b4    ded9
                         fnstsw             ax                                            // 0x008658b6    dfe0
                         test               ah, 0x01                                      // 0x008658b8    f6c401
                         {disp32} je        _jmp_addr_0x008659aa                          // 0x008658bb    0f84e9000000
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x008658c1    d9842490000000
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x008658c8    d84c2464
                         {disp8} fdiv       dword ptr [esp + 0x60]                        // 0x008658cc    d8742460
                         {disp32} fsubr     dword ptr [esp + 0x00000094]                  // 0x008658d0    d8ac2494000000
                         fdiv               st, st(1)                                     // 0x008658d7    d8f1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008658d9    d95c2410
                         fstp               st(0)                                         // 0x008658dd    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008658df    d9442410
                         {disp8} fmul       dword ptr [esp + 0x6c]                        // 0x008658e3    d84c246c
                         {disp32} fsubr     dword ptr [esp + 0x00000090]                  // 0x008658e7    d8ac2490000000
                         {disp8} fdiv       dword ptr [esp + 0x60]                        // 0x008658ee    d8742460
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x008658f2    d9542414
_jmp_addr_0x008658f6:    {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008658f6    d81d98a38a00
                         fnstsw             ax                                            // 0x008658fc    dfe0
                         test               ah, 0x01                                      // 0x008658fe    f6c401
                         {disp32} jne       _jmp_addr_0x008659ac                          // 0x00865901    0f85a5000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00865907    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0086590b    d81d90a38a00
                         fnstsw             ax                                            // 0x00865911    dfe0
                         test               ah, 0x41                                      // 0x00865913    f6c441
                         {disp32} je        _jmp_addr_0x008659ac                          // 0x00865916    0f8490000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086591c    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00865920    d81d98a38a00
                         fnstsw             ax                                            // 0x00865926    dfe0
                         test               ah, 0x01                                      // 0x00865928    f6c401
                         {disp8} jne        _jmp_addr_0x008659ac                          // 0x0086592b    757f
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086592d    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00865931    d81d90a38a00
                         fnstsw             ax                                            // 0x00865937    dfe0
                         test               ah, 0x41                                      // 0x00865939    f6c441
                         {disp8} je         _jmp_addr_0x008659ac                          // 0x0086593c    746e
                         xor.s              eax, eax                                      // 0x0086593e    33c0
                         fstp               st(0)                                         // 0x00865940    ddd8
                         mov                ax, word ptr [edx]                            // 0x00865942    668b02
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00865945    d9442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x00865949    c744242801000000
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00865951    894108
                         xor.s              eax, eax                                      // 0x00865954    33c0
                         {disp8} mov        ax, word ptr [edx + 0x02]                     // 0x00865956    668b4202
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x0086595a    89410c
                         xor.s              eax, eax                                      // 0x0086595d    33c0
                         {disp8} mov        ax, word ptr [edx + 0x04]                     // 0x0086595f    668b4204
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00865963    8b5108
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x00865966    894110
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00f863c0]       // 0x00865969    8b0495c063f800
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x00865970    8b510c
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x00865973    894114
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00f863c0]       // 0x00865976    8b0495c063f800
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0086597d    8b5110
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x00865980    894118
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00f863c0]       // 0x00865983    8b0495c063f800
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0086598a    8b542414
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x0086598e    89411c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00865991    8b442410
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x00865995    895120
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00865998    8b54244c
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0086599c    894124
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x0086599f    8b442448
                         mov                dword ptr [ecx], edx                          // 0x008659a3    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x008659a5    894104
                         {disp8} jmp        _jmp_addr_0x008659ac                          // 0x008659a8    eb02
_jmp_addr_0x008659aa:    fstp               st(0)                                         // 0x008659aa    ddd8
_jmp_addr_0x008659ac:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x008659ac    8b442444
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x008659b0    8b54245c
                         {disp8} mov        esi, dword ptr [ebp + 0x18]                   // 0x008659b4    8b7518
                         inc                eax                                           // 0x008659b7    40
                         add                edx, 0x06                                     // 0x008659b8    83c206
                         cmp.s              eax, esi                                      // 0x008659bb    3bc6
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x008659bd    89442444
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x008659c1    8954245c
                         {disp32} jl        _jmp_addr_0x00865275                          // 0x008659c5    0f8caaf8ffff
_jmp_addr_0x008659cb:    {disp8} mov        esi, dword ptr [esp + 0x4c]                   // 0x008659cb    8b74244c
                         {disp32} mov       eax, dword ptr [esp + 0x000000c0]             // 0x008659cf    8b8424c0000000
                         inc                esi                                           // 0x008659d6    46
                         cmp.s              esi, eax                                      // 0x008659d7    3bf0
                         {disp8} mov        dword ptr [esp + 0x4c], esi                   // 0x008659d9    8974244c
                         {disp32} jl        _jmp_addr_0x008650b1                          // 0x008659dd    0f8ccef6ffff
                         {disp8} mov        ebp, dword ptr [esp + 0x48]                   // 0x008659e3    8b6c2448
                         {disp32} mov       eax, dword ptr [esp + 0x0000008c]             // 0x008659e7    8b84248c000000
_jmp_addr_0x008659ee:    inc                ebp                                           // 0x008659ee    45
                         cmp.s              ebp, eax                                      // 0x008659ef    3be8
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x008659f1    896c2448
                         {disp32} jl        _jmp_addr_0x0086505d                          // 0x008659f5    0f8c62f6ffff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x008659fb    8b442428
                         fstp               st(0)                                         // 0x008659ff    ddd8
                         pop                edi                                           // 0x00865a01    5f
                         pop                esi                                           // 0x00865a02    5e
                         pop                ebx                                           // 0x00865a03    5b
                         pop                ebp                                           // 0x00865a04    5d
                         add                esp, 0x000000f0                               // 0x00865a05    81c4f0000000
                         ret                0x0020                                        // 0x00865a0b    c22000
_jmp_addr_0x00865a0e:    mov.s              eax, edx                                      // 0x00865a0e    8bc2
                         pop                ebp                                           // 0x00865a10    5d
                         add                esp, 0x000000f0                               // 0x00865a11    81c4f0000000
                         ret                0x0020                                        // 0x00865a17    c22000
                         nop                                                              // 0x00865a1a    90
                         nop                                                              // 0x00865a1b    90
                         nop                                                              // 0x00865a1c    90
                         nop                                                              // 0x00865a1d    90
                         nop                                                              // 0x00865a1e    90
                         nop                                                              // 0x00865a1f    90
                         sub                esp, 0x38                                     // 0x00865a20    83ec38
                         push               ebx                                           // 0x00865a23    53
                         push               ebp                                           // 0x00865a24    55
                         push               edi                                           // 0x00865a25    57
                         {disp8} mov        edi, dword ptr [esp + 0x50]                   // 0x00865a26    8b7c2450
                         mov                eax, dword ptr [edi]                          // 0x00865a2a    8b07
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x00865a2c    8b5704
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00865a2f    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00865a33    8b442448
                         {disp8} mov        ebx, dword ptr [eax + 0x0c]                   // 0x00865a37    8b580c
                         xor.s              ebp, ebp                                      // 0x00865a3a    33ed
                         xor.s              ecx, ecx                                      // 0x00865a3c    33c9
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00865a3e    89542438
                         xor.s              edx, edx                                      // 0x00865a42    33d2
                         test               ebx, ebx                                      // 0x00865a44    85db
                         {disp8} mov        dword ptr [esp + 0x0c], ebp                   // 0x00865a46    896c240c
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00865a4a    894c2410
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x00865a4e    895c2440
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00865a52    8954241c
                         {disp32} jle       _jmp_addr_0x00865cf1                          // 0x00865a56    0f8e95020000
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x00865a5c    8b4c244c
                         push               esi                                           // 0x00865a60    56
_jmp_addr_0x00865a61:    {disp8} mov        esi, dword ptr [eax + 0x10]                   // 0x00865a61    8b7010
                         mov                esi, dword ptr [esi + edx * 0x4]              // 0x00865a64    8b3496
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x00865a67    8b7604
                         test               esi, esi                                      // 0x00865a6a    85f6
                         {disp8} mov        dword ptr [esp + 0x40], esi                   // 0x00865a6c    89742440
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00865a70    c744241c00000000
                         {disp32} jle       _jmp_addr_0x00865cd5                          // 0x00865a78    0f8e57020000
                         {disp8} jmp        _jmp_addr_0x00865a88                          // 0x00865a7e    eb08
_jmp_addr_0x00865a80:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00865a80    8b542420
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00865a84    8b44244c
_jmp_addr_0x00865a88:    {disp8} mov        ebx, dword ptr [eax + 0x10]                   // 0x00865a88    8b5810
                         mov                edx, dword ptr [ebx + edx * 0x4]              // 0x00865a8b    8b1493
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00865a8e    8b5208
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00865a91    8b5c241c
                         mov                ebx, dword ptr [edx + ebx * 0x4]              // 0x00865a95    8b1c9a
                         {disp8} mov        edx, dword ptr [ebx + 0x14]                   // 0x00865a98    8b5314
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00865a9b    89542428
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00865a9f    8b5004
                         mov.s              esi, ebp                                      // 0x00865aa2    8bf5
                         xor.s              edi, edi                                      // 0x00865aa4    33ff
                         test               dh, 0x01                                      // 0x00865aa6    f6c601
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x00865aa9    8974242c
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x00865aad    895c2438
                         {disp32} je        _jmp_addr_0x00865bc5                          // 0x00865ab1    0f840e010000
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x00865ab7    8b4320
                         test               eax, eax                                      // 0x00865aba    85c0
                         {disp8} mov        dword ptr [esp + 0x50], edi                   // 0x00865abc    897c2450
                         {disp32} jle       _jmp_addr_0x00865c58                          // 0x00865ac0    0f8e92010000
_jmp_addr_0x00865ac6:    {disp8} mov        eax, dword ptr [ebx + 0x24]                   // 0x00865ac6    8b4324
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00865ac9    8b542450
                         lea                edx, dword ptr [eax + edx * 0x4]              // 0x00865acd    8d1490
                         xor.s              eax, eax                                      // 0x00865ad0    33c0
                         {disp8} mov        ax, word ptr [edx + 0x02]                     // 0x00865ad2    668b4202
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00865ad6    89542434
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00865ada    c744241800000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00865ae2    8d0440
                         shl                eax, 4                                        // 0x00865ae5    c1e004
                         add.s              eax, ecx                                      // 0x00865ae8    03c1
                         cmp                word ptr [edx], 0x00                          // 0x00865aea    66833a00
                         {disp32} jbe       _jmp_addr_0x00865bac                          // 0x00865aee    0f86b8000000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00865af4    8b742424
                         {disp8} lea        edx, dword ptr [ebp + ebp * 0x2 + 0x00]       // 0x00865af8    8d546d00
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00865afc    8b6c2428
                         {disp8} lea        esi, dword ptr [esi + edx * 0x4 + 0x08]       // 0x00865b00    8d749608
                         mov.s              edx, edi                                      // 0x00865b04    8bd7
                         shl                edx, 5                                        // 0x00865b06    c1e205
                         {disp32} lea       ebx, dword ptr [edi * 0x4 + 0x00f863c0]       // 0x00865b09    8d1cbdc063f800
                         {disp8} lea        edx, dword ptr [edx + ebp * 0x1 + 0x08]       // 0x00865b10    8d542a08
                         {disp8} jmp        _jmp_addr_0x00865b1a                          // 0x00865b14    eb04
_jmp_addr_0x00865b16:    {disp8} mov        ebx, dword ptr [esp + 0x30]                   // 0x00865b16    8b5c2430
_jmp_addr_0x00865b1a:    {disp8} fld        dword ptr [edx + -0x08]                       // 0x00865b1a    d942f8
                         {disp8} mov        ebp, dword ptr [esp + 0x50]                   // 0x00865b1d    8b6c2450
                         {disp8} fld        dword ptr [edx + -0x04]                       // 0x00865b21    d942fc
                         add                ebx, 0x04                                     // 0x00865b24    83c304
                         fld                dword ptr [edx]                               // 0x00865b27    d902
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00865b29    895c2430
                         fld                st(0)                                         // 0x00865b2d    d9c0
                         inc                edi                                           // 0x00865b2f    47
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00865b30    d84818
                         add                edx, 0x20                                     // 0x00865b33    83c220
                         fld                st(2)                                         // 0x00865b36    d9c2
                         add                esi, 0x0c                                     // 0x00865b38    83c60c
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00865b3b    d8480c
                         faddp              st(1), st                                     // 0x00865b3e    dec1
                         fld                st(3)                                         // 0x00865b40    d9c3
                         fmul               dword ptr [eax]                               // 0x00865b42    d808
                         faddp              st(1), st                                     // 0x00865b44    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x00865b46    d84024
                         {disp8} fstp       dword ptr [esi + -0x14]                       // 0x00865b49    d95eec
                         fld                st(2)                                         // 0x00865b4c    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00865b4e    d84804
                         fld                st(1)                                         // 0x00865b51    d9c1
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00865b53    d8481c
                         faddp              st(1), st                                     // 0x00865b56    dec1
                         fld                st(2)                                         // 0x00865b58    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00865b5a    d84810
                         faddp              st(1), st                                     // 0x00865b5d    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00865b5f    d84028
                         {disp8} fstp       dword ptr [esi + -0x10]                       // 0x00865b62    d95ef0
                         fxch               st(2)                                         // 0x00865b65    d9ca
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00865b67    d84808
                         fxch               st(2)                                         // 0x00865b6a    d9ca
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00865b6c    d84820
                         faddp              st(2), st                                     // 0x00865b6f    dec2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00865b71    d84814
                         faddp              st(1), st                                     // 0x00865b74    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x00865b76    d8402c
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x00865b79    d95ef4
                         {disp8} mov        dword ptr [ebx + -0x04], ebp                  // 0x00865b7c    896bfc
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00865b7f    8b5c2410
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                   // 0x00865b83    8b6c2434
                         inc                ebx                                           // 0x00865b87    43
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00865b88    895c2410
                         {disp8} inc        dword ptr [esp + 0x18]                        // 0x00865b8c    ff442418
                         xor.s              ebx, ebx                                      // 0x00865b90    33db
                         {disp8} mov        bx, word ptr [ebp + 0x00]                     // 0x00865b92    668b5d00
                         cmp                dword ptr [esp + 0x18], ebx                   // 0x00865b96    395c2418
                         {disp32} jl        _jmp_addr_0x00865b16                          // 0x00865b9a    0f8c76ffffff
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00865ba0    8b6c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x00865ba4    8b5c2438
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x00865ba8    8b74242c
_jmp_addr_0x00865bac:    {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00865bac    8b442450
                         {disp8} mov        edx, dword ptr [ebx + 0x20]                   // 0x00865bb0    8b5320
                         inc                eax                                           // 0x00865bb3    40
                         cmp.s              eax, edx                                      // 0x00865bb4    3bc2
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x00865bb6    89442450
                         {disp32} jl        _jmp_addr_0x00865ac6                          // 0x00865bba    0f8c06ffffff
                         {disp32} jmp       _jmp_addr_0x00865c58                          // 0x00865bc0    e993000000
_jmp_addr_0x00865bc5:    {disp8} mov        eax, dword ptr [ebx + 0x10]                   // 0x00865bc5    8b4310
                         test               eax, eax                                      // 0x00865bc8    85c0
                         {disp32} jle       _jmp_addr_0x00865c58                          // 0x00865bca    0f8e88000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00865bd0    8b542424
                         {disp8} lea        eax, dword ptr [ebp + ebp * 0x2 + 0x00]       // 0x00865bd4    8d446d00
                         {disp8} lea        edx, dword ptr [edx + eax * 0x4 + 0x08]       // 0x00865bd8    8d548208
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00865bdc    8b442428
                         mov                esi, 0x00f863c0                               // 0x00865be0    bec063f800
                         add                eax, 0x08                                     // 0x00865be5    83c008
_jmp_addr_0x00865be8:    {disp8} fld        dword ptr [eax + -0x08]                       // 0x00865be8    d940f8
                         inc                edi                                           // 0x00865beb    47
                         {disp8} fld        dword ptr [eax + -0x04]                       // 0x00865bec    d940fc
                         add                eax, 0x20                                     // 0x00865bef    83c020
                         {disp8} fld        dword ptr [eax + -0x20]                       // 0x00865bf2    d940e0
                         add                esi, 0x04                                     // 0x00865bf5    83c604
                         fld                st(0)                                         // 0x00865bf8    d9c0
                         inc                ebp                                           // 0x00865bfa    45
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00865bfb    d84918
                         add                edx, 0x0c                                     // 0x00865bfe    83c20c
                         fld                st(2)                                         // 0x00865c01    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x00865c03    d8490c
                         faddp              st(1), st                                     // 0x00865c06    dec1
                         fld                st(3)                                         // 0x00865c08    d9c3
                         fmul               dword ptr [ecx]                               // 0x00865c0a    d809
                         faddp              st(1), st                                     // 0x00865c0c    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x00865c0e    d84124
                         {disp8} fstp       dword ptr [edx + -0x14]                       // 0x00865c11    d95aec
                         fld                st(0)                                         // 0x00865c14    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00865c16    d8491c
                         fld                st(2)                                         // 0x00865c19    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x00865c1b    d84910
                         faddp              st(1), st                                     // 0x00865c1e    dec1
                         fld                st(3)                                         // 0x00865c20    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00865c22    d84904
                         faddp              st(1), st                                     // 0x00865c25    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x00865c27    d84128
                         {disp8} fstp       dword ptr [edx + -0x10]                       // 0x00865c2a    d95af0
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00865c2d    d84920
                         fxch               st(1)                                         // 0x00865c30    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00865c32    d84914
                         faddp              st(1), st                                     // 0x00865c35    dec1
                         fxch               st(1)                                         // 0x00865c37    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00865c39    d84908
                         faddp              st(1), st                                     // 0x00865c3c    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x00865c3e    d8412c
                         {disp8} fstp       dword ptr [edx + -0x0c]                       // 0x00865c41    d95af4
                         {disp8} mov        dword ptr [esi + -0x04], 0x00000000           // 0x00865c44    c746fc00000000
                         cmp                edi, dword ptr [ebx + 0x10]                   // 0x00865c4b    3b7b10
                         {disp8} jl         _jmp_addr_0x00865be8                          // 0x00865c4e    7c98
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x00865c50    8b74242c
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x00865c54    896c2410
_jmp_addr_0x00865c58:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00865c58    8b542414
                         {disp8} mov        edi, dword ptr [esp + 0x3c]                   // 0x00865c5c    8b7c243c
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x00865c60    8b431c
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x00865c63    8d1452
                         lea                edx, dword ptr [edi + edx * 0x4]              // 0x00865c66    8d1497
                         {disp8} mov        edi, dword ptr [ebx + 0x18]                   // 0x00865c69    8b7b18
                         test               edi, edi                                      // 0x00865c6c    85ff
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x00865c6e    c744245000000000
                         {disp8} jle        _jmp_addr_0x00865cb0                          // 0x00865c76    7e38
_jmp_addr_0x00865c78:    xor.s              edi, edi                                      // 0x00865c78    33ff
                         mov                di, word ptr [eax]                            // 0x00865c7a    668b38
                         add                eax, 0x06                                     // 0x00865c7d    83c006
                         add                edx, 0x0c                                     // 0x00865c80    83c20c
                         add.s              edi, esi                                      // 0x00865c83    03fe
                         {disp8} mov        dword ptr [edx + -0x0c], edi                  // 0x00865c85    897af4
                         xor.s              edi, edi                                      // 0x00865c88    33ff
                         {disp8} mov        di, word ptr [eax + -0x04]                    // 0x00865c8a    668b78fc
                         add.s              edi, esi                                      // 0x00865c8e    03fe
                         {disp8} mov        dword ptr [edx + -0x08], edi                  // 0x00865c90    897af8
                         xor.s              edi, edi                                      // 0x00865c93    33ff
                         {disp8} mov        di, word ptr [eax + -0x02]                    // 0x00865c95    668b78fe
                         add.s              edi, esi                                      // 0x00865c99    03fe
                         {disp8} mov        dword ptr [edx + -0x04], edi                  // 0x00865c9b    897afc
                         {disp8} inc        dword ptr [esp + 0x14]                        // 0x00865c9e    ff442414
                         {disp8} mov        edi, dword ptr [esp + 0x50]                   // 0x00865ca2    8b7c2450
                         inc                edi                                           // 0x00865ca6    47
                         cmp                edi, dword ptr [ebx + 0x18]                   // 0x00865ca7    3b7b18
                         {disp8} mov        dword ptr [esp + 0x50], edi                   // 0x00865caa    897c2450
                         {disp8} jl         _jmp_addr_0x00865c78                          // 0x00865cae    7cc8
_jmp_addr_0x00865cb0:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00865cb0    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x00865cb4    8b542440
                         inc                eax                                           // 0x00865cb8    40
                         cmp.s              eax, edx                                      // 0x00865cb9    3bc2
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00865cbb    8944241c
                         {disp32} jl        _jmp_addr_0x00865a80                          // 0x00865cbf    0f8cbbfdffff
                         {disp8} mov        edi, dword ptr [esp + 0x54]                   // 0x00865cc5    8b7c2454
                         {disp8} mov        ebx, dword ptr [esp + 0x44]                   // 0x00865cc9    8b5c2444
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00865ccd    8b542420
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00865cd1    8b44244c
_jmp_addr_0x00865cd5:    inc                edx                                           // 0x00865cd5    42
                         cmp.s              edx, ebx                                      // 0x00865cd6    3bd3
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00865cd8    89542420
                         {disp32} jl        _jmp_addr_0x00865a61                          // 0x00865cdc    0f8c7ffdffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00865ce2    8b442414
                         pop                esi                                           // 0x00865ce6    5e
                         {disp8} mov        dword ptr [edi + 0x08], eax                   // 0x00865ce7    894708
                         pop                edi                                           // 0x00865cea    5f
                         pop                ebp                                           // 0x00865ceb    5d
                         pop                ebx                                           // 0x00865cec    5b
                         add                esp, 0x38                                     // 0x00865ced    83c438
                         ret                                                              // 0x00865cf0    c3
_jmp_addr_0x00865cf1:    {disp8} mov        dword ptr [edi + 0x08], ecx                   // 0x00865cf1    894f08
                         pop                edi                                           // 0x00865cf4    5f
                         pop                ebp                                           // 0x00865cf5    5d
                         pop                ebx                                           // 0x00865cf6    5b
                         add                esp, 0x38                                     // 0x00865cf7    83c438
                         ret                                                              // 0x00865cfa    c3
                         nop                                                              // 0x00865cfb    90
                         nop                                                              // 0x00865cfc    90
                         nop                                                              // 0x00865cfd    90
                         nop                                                              // 0x00865cfe    90
                         nop                                                              // 0x00865cff    90
                         sub                esp, 0x000000ec                               // 0x00865d00    81ecec000000
                         {disp32} fld       dword ptr [esp + 0x00000104]                  // 0x00865d06    d9842404010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000100]             // 0x00865d0d    8b842400010000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1dca4]             // 0x00865d14    d805a46c8c00
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00865d1a    8b4808
                         test               ecx, ecx                                      // 0x00865d1d    85c9
                         mov                edx, dword ptr [eax]                          // 0x00865d1f    8b10
                         fld                st(0)                                         // 0x00865d21    d9c0
                         fmul               st, st(1)                                     // 0x00865d23    d8c9
                         push               ebx                                           // 0x00865d25    53
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00865d26    8b5804
                         push               ebp                                           // 0x00865d29    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000100]             // 0x00865d2a    8bac2400010000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00865d31    d95c2420
                         push               esi                                           // 0x00865d35    56
                         {disp32} mov       esi, dword ptr [esp + 0x00000108]             // 0x00865d36    8bb42408010000
                         fstp               st(0)                                         // 0x00865d3d    ddd8
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x00865d3f    89542448
                         {disp8} mov        byte ptr [esp + 0x20], 0x00                   // 0x00865d43    c644242000
                         {disp32} jle       _jmp_addr_0x0086621d                          // 0x00865d48    0f8ecf040000
                         push               edi                                           // 0x00865d4e    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000100]             // 0x00865d4f    8bbc2400010000
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x00865d56    894c2448
_jmp_addr_0x00865d5a:    mov                eax, dword ptr [ebx]                          // 0x00865d5a    8b03
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00865d5c    8d0440
                         mov                ecx, dword ptr [edx + eax * 0x4]              // 0x00865d5f    8b0c82
                         lea                eax, dword ptr [edx + eax * 0x4]              // 0x00865d62    8d0482
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00865d65    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00865d69    d9442418
                         fsub               dword ptr [edi]                               // 0x00865d6d    d827
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00865d6f    8b4804
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00865d72    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00865d75    894c241c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00865d79    d944241c
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00865d7d    d86704
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00865d80    89442420
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00865d84    d9442420
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00865d88    8b4304
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00865d8b    d86708
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00865d8e    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x00865d91    8d048a
                         mov                ecx, dword ptr [eax]                          // 0x00865d94    8b08
                         fld                st(0)                                         // 0x00865d96    d9c0
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00865d98    894c2438
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00865d9c    8b4804
                         fmul               st, st(1)                                     // 0x00865d9f    d8c9
                         fld                st(2)                                         // 0x00865da1    d9c2
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00865da3    894c243c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00865da7    8b4008
                         fmul               st, st(3)                                     // 0x00865daa    d8cb
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00865dac    89442440
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                   // 0x00865db0    8b4308
                         faddp              st(1), st                                     // 0x00865db3    dec1
                         fld                st(3)                                         // 0x00865db5    d9c3
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00865db7    8d0c40
                         fmul               st, st(4)                                     // 0x00865dba    d8cc
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x00865dbc    8d048a
                         mov                ecx, dword ptr [eax]                          // 0x00865dbf    8b08
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00865dc1    894c242c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00865dc5    8b4804
                         faddp              st(1), st                                     // 0x00865dc8    dec1
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00865dca    894c2430
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00865dce    8b4008
                         {disp8} fcomp      dword ptr [esp + 0x28]                        // 0x00865dd1    d85c2428
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00865dd5    89442434
                         fstp               st(0)                                         // 0x00865dd9    ddd8
                         fnstsw             ax                                            // 0x00865ddb    dfe0
                         fstp               st(0)                                         // 0x00865ddd    ddd8
                         test               ah, 0x01                                      // 0x00865ddf    f6c401
                         fstp               st(0)                                         // 0x00865de2    ddd8
                         {disp8} jne        _jmp_addr_0x00865e54                          // 0x00865de4    756e
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00865de6    d9442438
                         fsub               dword ptr [edi]                               // 0x00865dea    d827
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00865dec    d944243c
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00865df0    d86704
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00865df3    d9442440
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00865df7    d86708
                         fld                st(0)                                         // 0x00865dfa    d9c0
                         fmul               st, st(1)                                     // 0x00865dfc    d8c9
                         fld                st(2)                                         // 0x00865dfe    d9c2
                         fmul               st, st(3)                                     // 0x00865e00    d8cb
                         faddp              st(1), st                                     // 0x00865e02    dec1
                         fld                st(3)                                         // 0x00865e04    d9c3
                         fmul               st, st(4)                                     // 0x00865e06    d8cc
                         faddp              st(1), st                                     // 0x00865e08    dec1
                         {disp8} fcomp      dword ptr [esp + 0x28]                        // 0x00865e0a    d85c2428
                         fstp               st(0)                                         // 0x00865e0e    ddd8
                         fnstsw             ax                                            // 0x00865e10    dfe0
                         fstp               st(0)                                         // 0x00865e12    ddd8
                         test               ah, 0x01                                      // 0x00865e14    f6c401
                         fstp               st(0)                                         // 0x00865e17    ddd8
                         {disp8} jne        _jmp_addr_0x00865e54                          // 0x00865e19    7539
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00865e1b    d944242c
                         fsub               dword ptr [edi]                               // 0x00865e1f    d827
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00865e21    d9442430
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00865e25    d86704
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00865e28    d9442434
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00865e2c    d86708
                         fld                st(0)                                         // 0x00865e2f    d9c0
                         fmul               st, st(1)                                     // 0x00865e31    d8c9
                         fld                st(2)                                         // 0x00865e33    d9c2
                         fmul               st, st(3)                                     // 0x00865e35    d8cb
                         faddp              st(1), st                                     // 0x00865e37    dec1
                         fld                st(3)                                         // 0x00865e39    d9c3
                         fmul               st, st(4)                                     // 0x00865e3b    d8cc
                         faddp              st(1), st                                     // 0x00865e3d    dec1
                         {disp8} fcomp      dword ptr [esp + 0x28]                        // 0x00865e3f    d85c2428
                         fstp               st(0)                                         // 0x00865e43    ddd8
                         fnstsw             ax                                            // 0x00865e45    dfe0
                         fstp               st(0)                                         // 0x00865e47    ddd8
                         test               ah, 0x01                                      // 0x00865e49    f6c401
                         fstp               st(0)                                         // 0x00865e4c    ddd8
                         {disp32} je        _jmp_addr_0x0086620a                          // 0x00865e4e    0f84b6030000
_jmp_addr_0x00865e54:    {disp8} fld        dword ptr [esp + 0x40]                        // 0x00865e54    d9442440
                         push               ecx                                           // 0x00865e58    51
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865e59    d8642424
                         fstp               dword ptr [esp]                               // 0x00865e5d    d91c24
                         push               ecx                                           // 0x00865e60    51
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00865e61    d9442444
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865e65    d8642424
                         fstp               dword ptr [esp]                               // 0x00865e69    d91c24
                         push               ecx                                           // 0x00865e6c    51
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00865e6d    d9442444
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x00865e71    8d4c2468
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865e75    d8642424
                         fstp               dword ptr [esp]                               // 0x00865e79    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00865e7c    e87fc8bdff
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00865e81    d9442434
                         push               ecx                                           // 0x00865e85    51
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865e86    d8642424
                         fstp               dword ptr [esp]                               // 0x00865e8a    d91c24
                         push               ecx                                           // 0x00865e8d    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00865e8e    d9442438
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865e92    d8642424
                         fstp               dword ptr [esp]                               // 0x00865e96    d91c24
                         push               ecx                                           // 0x00865e99    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00865e9a    d9442438
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x00865e9e    8d4c245c
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00865ea2    d8642424
                         fstp               dword ptr [esp]                               // 0x00865ea6    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00865ea9    e852c8bdff
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00865eae    d9442454
                         push               ecx                                           // 0x00865eb2    51
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x00865eb3    d84c2460
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x00865eb7    d9442464
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x00865ebb    d84c2454
                         fsubp              st(1), st                                     // 0x00865ebf    dee9
                         fstp               dword ptr [esp]                               // 0x00865ec1    d91c24
                         push               ecx                                           // 0x00865ec4    51
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x00865ec5    d944246c
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x00865ec9    d84c2458
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x00865ecd    d9442460
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x00865ed1    d84c2464
                         fsubp              st(1), st                                     // 0x00865ed5    dee9
                         fstp               dword ptr [esp]                               // 0x00865ed7    d91c24
                         push               ecx                                           // 0x00865eda    51
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x00865edb    d944246c
                         {disp32} lea       ecx, dword ptr [esp + 0x0000009c]             // 0x00865edf    8d8c249c000000
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x00865ee6    d84c2464
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x00865eea    d9442470
                         {disp8} fmul       dword ptr [esp + 0x60]                        // 0x00865eee    d84c2460
                         fsubp              st(1), st                                     // 0x00865ef2    dee9
                         fstp               dword ptr [esp]                               // 0x00865ef4    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00865ef7    e804c8bdff
                         {disp32} mov       edx, dword ptr [esp + 0x00000090]             // 0x00865efc    8b942490000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000094]             // 0x00865f03    8b842494000000
                         mov.s              ecx, esi                                      // 0x00865f0a    8bce
                         mov                dword ptr [ecx], edx                          // 0x00865f0c    8911
                         {disp32} mov       edx, dword ptr [esp + 0x00000098]             // 0x00865f0e    8b942498000000
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00865f15    894104
                         {disp32} mov       eax, dword ptr [esp + 0x00000104]             // 0x00865f18    8b842404010000
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00865f1f    895108
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00865f22    d94608
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00865f25    d84808
                         fld                dword ptr [eax]                               // 0x00865f28    d900
                         fmul               dword ptr [esi]                               // 0x00865f2a    d80e
                         faddp              st(1), st                                     // 0x00865f2c    dec1
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00865f2e    d94604
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00865f31    d84804
                         faddp              st(1), st                                     // 0x00865f34    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2f738]             // 0x00865f36    d81d38878d00
                         fnstsw             ax                                            // 0x00865f3c    dfe0
                         test               ah, 0x01                                      // 0x00865f3e    f6c401
                         {disp32} je        _jmp_addr_0x00866206                          // 0x00865f41    0f84bf020000
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00865f47    d94608
                         push               ecx                                           // 0x00865f4a    51
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00865f4b    d94604
                         fld                dword ptr [esi]                               // 0x00865f4e    d906
                         fld                st(1)                                         // 0x00865f50    d9c1
                         fmul               st, st(2)                                     // 0x00865f52    d8ca
                         fld                st(3)                                         // 0x00865f54    d9c3
                         fmul               st, st(4)                                     // 0x00865f56    d8cc
                         faddp              st(1), st                                     // 0x00865f58    dec1
                         fld                st(1)                                         // 0x00865f5a    d9c1
                         fmul               st, st(2)                                     // 0x00865f5c    d8ca
                         faddp              st(1), st                                     // 0x00865f5e    dec1
                         fstp               dword ptr [esp]                               // 0x00865f60    d91c24
                         fstp               st(0)                                         // 0x00865f63    ddd8
                         fstp               st(0)                                         // 0x00865f65    ddd8
                         fstp               st(0)                                         // 0x00865f67    ddd8
                         call               _jmp_addr_0x00841170                          // 0x00865f69    e802b2fdff
                         fld                st(0)                                         // 0x00865f6e    d9c0
                         {disp32} mov       eax, dword ptr [esp + 0x00000108]             // 0x00865f70    8b842408010000
                         fmul               dword ptr [esi]                               // 0x00865f77    d80e
                         add                esp, 0x04                                     // 0x00865f79    83c404
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00865f7c    d9542410
                         fstp               dword ptr [esi]                               // 0x00865f80    d91e
                         fld                st(0)                                         // 0x00865f82    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00865f84    d84e04
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00865f87    d9542414
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x00865f8b    d95e04
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x00865f8e    d84e08
                         {disp8} fst        dword ptr [esi + 0x08]                        // 0x00865f91    d95608
                         fld                st(0)                                         // 0x00865f94    d9c0
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00865f96    d84c2420
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00865f9a    d9442410
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00865f9e    d84c2418
                         faddp              st(1), st                                     // 0x00865fa2    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00865fa4    d9442414
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00865fa8    d84c241c
                         faddp              st(1), st                                     // 0x00865fac    dec1
                         fld                st(1)                                         // 0x00865fae    d9c1
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00865fb0    d84f08
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00865fb3    d9442414
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00865fb7    d84f04
                         faddp              st(1), st                                     // 0x00865fba    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00865fbc    d9442410
                         fmul               dword ptr [edi]                               // 0x00865fc0    d80f
                         faddp              st(1), st                                     // 0x00865fc2    dec1
                         fsubp              st(1), st                                     // 0x00865fc4    dee9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00865fc6    d9442410
                         fmul               dword ptr [eax]                               // 0x00865fca    d808
                         fxch               st(2)                                         // 0x00865fcc    d9ca
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00865fce    d84808
                         faddp              st(2), st                                     // 0x00865fd1    dec2
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00865fd3    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00865fd7    d84804
                         faddp              st(2), st                                     // 0x00865fda    dec2
                         fxch               st(1)                                         // 0x00865fdc    d9c9
                         fdivp              st(1), st                                     // 0x00865fde    def9
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00865fe0    d9542410
                         {disp32} fcomp     dword ptr [esp + 0x00000114]                  // 0x00865fe4    d89c2414010000
                         fnstsw             ax                                            // 0x00865feb    dfe0
                         test               ah, 0x01                                      // 0x00865fed    f6c401
                         {disp32} je        _jmp_addr_0x00866206                          // 0x00865ff0    0f8410020000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00865ff6    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00865ffa    d81d98a38a00
                         fnstsw             ax                                            // 0x00866000    dfe0
                         test               ah, 0x41                                      // 0x00866002    f6c441
                         {disp32} jne       _jmp_addr_0x00866206                          // 0x00866005    0f85fb010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000104]             // 0x0086600b    8b842404010000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00866012    d9442410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00866016    d84808
                         push               ecx                                           // 0x00866019    51
                         fstp               dword ptr [esp]                               // 0x0086601a    d91c24
                         push               ecx                                           // 0x0086601d    51
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086601e    d9442418
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00866022    d84804
                         fstp               dword ptr [esp]                               // 0x00866025    d91c24
                         push               ecx                                           // 0x00866028    51
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00866029    d944241c
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]             // 0x0086602d    8d8c24a8000000
                         fmul               dword ptr [eax]                               // 0x00866034    d808
                         fstp               dword ptr [esp]                               // 0x00866036    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00866039    e8c2c6bdff
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x0086603e    d98424a4000000
                         push               ecx                                           // 0x00866045    51
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00866046    d84708
                         fstp               dword ptr [esp]                               // 0x00866049    d91c24
                         push               ecx                                           // 0x0086604c    51
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x0086604d    d98424a8000000
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x00866054    d84704
                         fstp               dword ptr [esp]                               // 0x00866057    d91c24
                         push               ecx                                           // 0x0086605a    51
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x0086605b    d98424a8000000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x00866062    8d8c2490000000
                         fadd               dword ptr [edi]                               // 0x00866069    d807
                         fstp               dword ptr [esp]                               // 0x0086606b    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0086606e    e88dc6bdff
                         {disp32} mov       ecx, dword ptr [esp + 0x00000084]             // 0x00866073    8b8c2484000000
                         {disp32} mov       edx, dword ptr [esp + 0x00000088]             // 0x0086607a    8b942488000000
                         mov.s              eax, ebp                                      // 0x00866081    8bc5
                         mov                dword ptr [eax], ecx                          // 0x00866083    8908
                         {disp32} mov       ecx, dword ptr [esp + 0x0000008c]             // 0x00866085    8b8c248c000000
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0086608c    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0086608f    894808
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x00866092    d94508
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x00866095    d8642420
                         push               ecx                                           // 0x00866099    51
                         fstp               dword ptr [esp]                               // 0x0086609a    d91c24
                         push               ecx                                           // 0x0086609d    51
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x0086609e    d94504
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x008660a1    d8642424
                         fstp               dword ptr [esp]                               // 0x008660a5    d91c24
                         push               ecx                                           // 0x008660a8    51
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x008660a9    d94500
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x008660ac    8d8c24b4000000
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x008660b3    d8642424
                         fstp               dword ptr [esp]                               // 0x008660b7    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x008660ba    e841c6bdff
                         push               esi                                           // 0x008660bf    56
                         {disp32} lea       edx, dword ptr [esp + 0x000000ac]             // 0x008660c0    8d9424ac000000
                         push               edx                                           // 0x008660c7    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000d4]             // 0x008660c8    8d8424d4000000
                         push               eax                                           // 0x008660cf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x008660d0    8d4c2468
                         call               _jmp_addr_0x005d6430                          // 0x008660d4    e85703d7ff
                         mov.s              ecx, eax                                      // 0x008660d9    8bc8
                         call               _jmp_addr_0x005d6410                          // 0x008660db    e83003d7ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008660e0    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000001            // 0x008660e6    c744244401000000
                         fnstsw             ax                                            // 0x008660ee    dfe0
                         test               ah, 0x41                                      // 0x008660f0    f6c441
                         {disp8} je         _jmp_addr_0x008660fd                          // 0x008660f3    7408
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x008660f5    c744244400000000
_jmp_addr_0x008660fd:    push               esi                                           // 0x008660fd    56
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x008660fe    8d4c243c
                         push               ecx                                           // 0x00866102    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000bc]             // 0x00866103    8d9424bc000000
                         push               edx                                           // 0x0086610a    52
                         mov.s              ecx, ebp                                      // 0x0086610b    8bcd
                         call               _jmp_addr_0x0044cf90                          // 0x0086610d    e87e6ebeff
                         push               eax                                           // 0x00866112    50
                         {disp32} lea       eax, dword ptr [esp + 0x000000ec]             // 0x00866113    8d8424ec000000
                         push               eax                                           // 0x0086611a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0086611b    8d4c2444
                         push               ecx                                           // 0x0086611f    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000d0]             // 0x00866120    8d9424d0000000
                         push               edx                                           // 0x00866127    52
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00866128    8d4c2440
                         call               _jmp_addr_0x0044cf90                          // 0x0086612c    e85f6ebeff
                         mov.s              ecx, eax                                      // 0x00866131    8bc8
                         call               _jmp_addr_0x005d6430                          // 0x00866133    e8f802d7ff
                         mov.s              ecx, eax                                      // 0x00866138    8bc8
                         call               _jmp_addr_0x005d6410                          // 0x0086613a    e8d102d7ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086613f    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001            // 0x00866145    c744241401000000
                         fnstsw             ax                                            // 0x0086614d    dfe0
                         test               ah, 0x41                                      // 0x0086614f    f6c441
                         {disp8} je         _jmp_addr_0x0086615c                          // 0x00866152    7408
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00866154    c744241400000000
_jmp_addr_0x0086615c:    push               esi                                           // 0x0086615c    56
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0086615d    8d442454
                         push               eax                                           // 0x00866161    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000e0]             // 0x00866162    8d8c24e0000000
                         push               ecx                                           // 0x00866169    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0086616a    8d542438
                         push               edx                                           // 0x0086616e    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000100]             // 0x0086616f    8d842400010000
                         push               eax                                           // 0x00866176    50
                         mov.s              ecx, ebp                                      // 0x00866177    8bcd
                         call               _jmp_addr_0x0044cf90                          // 0x00866179    e8126ebeff
                         mov.s              ecx, eax                                      // 0x0086617e    8bc8
                         call               _jmp_addr_0x005d6430                          // 0x00866180    e8ab02d7ff
                         mov.s              ecx, eax                                      // 0x00866185    8bc8
                         call               _jmp_addr_0x005d6410                          // 0x00866187    e88402d7ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086618c    d81d98a38a00
                         fnstsw             ax                                            // 0x00866192    dfe0
                         test               ah, 0x41                                      // 0x00866194    f6c441
                         {disp8} jne        _jmp_addr_0x008661a0                          // 0x00866197    7507
                         mov                eax, 0x00000001                               // 0x00866199    b801000000
                         {disp8} jmp        _jmp_addr_0x008661a2                          // 0x0086619e    eb02
_jmp_addr_0x008661a0:    xor.s              eax, eax                                      // 0x008661a0    33c0
_jmp_addr_0x008661a2:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x008661a2    8b4c2414
                         add.s              eax, ecx                                      // 0x008661a6    03c1
                         add                eax, dword ptr [esp + 0x44]                   // 0x008661a8    03442444
                         {disp8} je         _jmp_addr_0x008661b3                          // 0x008661ac    7405
                         cmp                eax, 0x03                                     // 0x008661ae    83f803
                         {disp8} jne        _jmp_addr_0x00866206                          // 0x008661b1    7553
_jmp_addr_0x008661b3:    {disp8} mov        al, byte ptr [esp + 0x24]                     // 0x008661b3    8a442424
                         test               al, al                                        // 0x008661b7    84c0
                         {disp8} je         _jmp_addr_0x008661ca                          // 0x008661b9    740f
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008661bb    d9442410
                         {disp8} fcomp      dword ptr [esp + 0x68]                        // 0x008661bf    d85c2468
                         fnstsw             ax                                            // 0x008661c3    dfe0
                         test               ah, 0x01                                      // 0x008661c5    f6c401
                         {disp8} je         _jmp_addr_0x00866206                          // 0x008661c8    743c
_jmp_addr_0x008661ca:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008661ca    8b542410
                         mov.s              eax, ebp                                      // 0x008661ce    8bc5
                         mov                ecx, dword ptr [eax]                          // 0x008661d0    8b08
                         {disp8} mov        dword ptr [esp + 0x78], ecx                   // 0x008661d2    894c2478
                         {disp8} mov        dword ptr [esp + 0x68], edx                   // 0x008661d6    89542468
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008661da    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x008661dd    8b4008
                         mov.s              ecx, esi                                      // 0x008661e0    8bce
                         {disp8} mov        dword ptr [esp + 0x7c], edx                   // 0x008661e2    8954247c
                         mov                edx, dword ptr [ecx]                          // 0x008661e6    8b11
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x008661e8    89842480000000
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x008661ef    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x008661f2    8b4908
                         {disp8} mov        byte ptr [esp + 0x24], 0x01                   // 0x008661f5    c644242401
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x008661fa    8954246c
                         {disp8} mov        dword ptr [esp + 0x70], eax                   // 0x008661fe    89442470
                         {disp8} mov        dword ptr [esp + 0x74], ecx                   // 0x00866202    894c2474
_jmp_addr_0x00866206:    {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00866206    8b54244c
_jmp_addr_0x0086620a:    {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x0086620a    8b442448
                         add                ebx, 0x0c                                     // 0x0086620e    83c30c
                         dec                eax                                           // 0x00866211    48
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x00866212    89442448
                         {disp32} jne       _jmp_addr_0x00865d5a                          // 0x00866216    0f853efbffff
                         pop                edi                                           // 0x0086621c    5f
_jmp_addr_0x0086621d:    {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x0086621d    8b542468
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x00866221    8b44246c
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x00866225    8b4c2470
                         mov                dword ptr [esi], edx                          // 0x00866229    8916
                         {disp8} mov        edx, dword ptr [esp + 0x74]                   // 0x0086622b    8b542474
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0086622f    894604
                         {disp8} mov        eax, dword ptr [esp + 0x78]                   // 0x00866232    8b442478
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x00866236    894e08
                         {disp8} mov        ecx, dword ptr [esp + 0x7c]                   // 0x00866239    8b4c247c
                         {disp8} mov        dword ptr [ebp + 0x00], edx                   // 0x0086623d    895500
                         {disp8} mov        dword ptr [ebp + 0x04], eax                   // 0x00866240    894504
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00866243    8b442420
                         pop                esi                                           // 0x00866247    5e
                         {disp8} mov        dword ptr [ebp + 0x08], ecx                   // 0x00866248    894d08
                         pop                ebp                                           // 0x0086624b    5d
                         and                eax, 0x000000ff                               // 0x0086624c    25ff000000
                         pop                ebx                                           // 0x00866251    5b
                         add                esp, 0x000000ec                               // 0x00866252    81c4ec000000
                         ret                                                              // 0x00866258    c3
                         nop                                                              // 0x00866259    90
                         nop                                                              // 0x0086625a    90
                         nop                                                              // 0x0086625b    90
                         nop                                                              // 0x0086625c    90
                         nop                                                              // 0x0086625d    90
                         nop                                                              // 0x0086625e    90
                         nop                                                              // 0x0086625f    90
                         sub                esp, 0x000000c4                               // 0x00866260    81ecc4000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]             // 0x00866266    8b8424d8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0086626d    8b4808
                         test               ecx, ecx                                      // 0x00866270    85c9
                         push               ebx                                           // 0x00866272    53
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x00866273    8b5804
                         push               ebp                                           // 0x00866276    55
                         mov                ebp, dword ptr [eax]                          // 0x00866277    8b28
                         push               esi                                           // 0x00866279    56
                         push               edi                                           // 0x0086627a    57
                         {disp8} mov        dword ptr [esp + 0x58], ecx                   // 0x0086627b    894c2458
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0086627f    c744242400000000
                         {disp32} jle       _jmp_addr_0x00866614                          // 0x00866287    0f8e87030000
                         {disp32} mov       edi, dword ptr [esp + 0x000000dc]             // 0x0086628d    8bbc24dc000000
                         {disp32} mov       esi, dword ptr [esp + 0x000000e4]             // 0x00866294    8bb424e4000000
_jmp_addr_0x0086629b:    mov                eax, dword ptr [ebx]                          // 0x0086629b    8b03
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0086629d    8d0440
                         {disp8} mov        ecx, dword ptr [ebp + eax * 0x4 + 0x00]       // 0x008662a0    8b4c8500
                         {disp8} mov        edx, dword ptr [ebp + eax * 0x4 + 0x04]       // 0x008662a4    8b548504
                         {disp8} lea        eax, dword ptr [ebp + eax * 0x4 + 0x00]       // 0x008662a8    8d448500
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x008662ac    8b4008
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x008662af    89442418
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x008662b3    8b4304
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x008662b6    894c2410
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x008662ba    8d0c40
                         {disp8} lea        eax, dword ptr [ebp + ecx * 0x4 + 0x00]       // 0x008662bd    8d448d00
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x008662c1    89542414
                         mov                edx, dword ptr [eax]                          // 0x008662c5    8b10
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x008662c7    89542434
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x008662cb    8b4804
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x008662ce    894c2438
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x008662d2    8b5008
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                   // 0x008662d5    8b4308
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x008662d8    8954243c
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x008662dc    d944243c
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x008662e0    d8642418
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x008662e4    8d0440
                         {disp8} mov        ecx, dword ptr [ebp + eax * 0x4 + 0x00]       // 0x008662e7    8b4c8500
                         {disp8} lea        eax, dword ptr [ebp + eax * 0x4 + 0x00]       // 0x008662eb    8d448500
                         push               ecx                                           // 0x008662ef    51
                         fstp               dword ptr [esp]                               // 0x008662f0    d91c24
                         push               ecx                                           // 0x008662f3    51
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x008662f4    d9442440
                         {disp8} mov        dword ptr [esp + 0x54], ecx                   // 0x008662f8    894c2454
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x008662fc    d864241c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00866300    8b5004
                         {disp8} mov        dword ptr [esp + 0x58], edx                   // 0x00866303    89542458
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00866307    8b4008
                         fstp               dword ptr [esp]                               // 0x0086630a    d91c24
                         push               ecx                                           // 0x0086630d    51
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0086630e    d9442440
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00866312    8d4c2434
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866316    d864241c
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x0086631a    89442460
                         fstp               dword ptr [esp]                               // 0x0086631e    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00866321    e8dac3bdff
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00866326    d9442454
                         push               ecx                                           // 0x0086632a    51
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0086632b    d864241c
                         fstp               dword ptr [esp]                               // 0x0086632f    d91c24
                         push               ecx                                           // 0x00866332    51
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x00866333    d9442458
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866337    d864241c
                         fstp               dword ptr [esp]                               // 0x0086633b    d91c24
                         push               ecx                                           // 0x0086633e    51
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0086633f    d9442458
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00866343    8d4c244c
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866347    d864241c
                         fstp               dword ptr [esp]                               // 0x0086634b    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0086634e    e8adc3bdff
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00866353    d9442444
                         push               ecx                                           // 0x00866357    51
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x00866358    d84c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086635c    d9442430
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00866360    d84c2444
                         fsubp              st(1), st                                     // 0x00866364    dee9
                         fstp               dword ptr [esp]                               // 0x00866366    d91c24
                         push               ecx                                           // 0x00866369    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086636a    d9442438
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x0086636e    d84c2448
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x00866372    d9442450
                         {disp8} fmul       dword ptr [esp + 0x30]                        // 0x00866376    d84c2430
                         fsubp              st(1), st                                     // 0x0086637a    dee9
                         fstp               dword ptr [esp]                               // 0x0086637c    d91c24
                         push               ecx                                           // 0x0086637f    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00866380    d9442438
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x00866384    8d4c2468
                         {disp8} fmul       dword ptr [esp + 0x54]                        // 0x00866388    d84c2454
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0086638c    d944243c
                         {disp8} fmul       dword ptr [esp + 0x50]                        // 0x00866390    d84c2450
                         fsubp              st(1), st                                     // 0x00866394    dee9
                         fstp               dword ptr [esp]                               // 0x00866396    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x00866399    e862c3bdff
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x0086639e    8b54245c
                         mov.s              ecx, esi                                      // 0x008663a2    8bce
                         mov                dword ptr [ecx], edx                          // 0x008663a4    8911
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x008663a6    8b442460
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x008663aa    8b542464
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x008663ae    894104
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x008663b1    895108
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x008663b4    d94608
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x008663b7    d84f08
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x008663ba    d94604
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x008663bd    d84f04
                         faddp              st(1), st                                     // 0x008663c0    dec1
                         fld                dword ptr [edi]                               // 0x008663c2    d907
                         fmul               dword ptr [esi]                               // 0x008663c4    d80e
                         faddp              st(1), st                                     // 0x008663c6    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2f738]             // 0x008663c8    d81d38878d00
                         fnstsw             ax                                            // 0x008663ce    dfe0
                         test               ah, 0x01                                      // 0x008663d0    f6c401
                         {disp32} je        _jmp_addr_0x008665fc                          // 0x008663d3    0f8423020000
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x008663d9    d94608
                         push               ecx                                           // 0x008663dc    51
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x008663dd    d94604
                         fld                dword ptr [esi]                               // 0x008663e0    d906
                         fld                st(1)                                         // 0x008663e2    d9c1
                         fmul               st, st(2)                                     // 0x008663e4    d8ca
                         fld                st(3)                                         // 0x008663e6    d9c3
                         fmul               st, st(4)                                     // 0x008663e8    d8cc
                         faddp              st(1), st                                     // 0x008663ea    dec1
                         fld                st(1)                                         // 0x008663ec    d9c1
                         fmul               st, st(2)                                     // 0x008663ee    d8ca
                         faddp              st(1), st                                     // 0x008663f0    dec1
                         fstp               dword ptr [esp]                               // 0x008663f2    d91c24
                         fstp               st(0)                                         // 0x008663f5    ddd8
                         fstp               st(0)                                         // 0x008663f7    ddd8
                         fstp               st(0)                                         // 0x008663f9    ddd8
                         call               _jmp_addr_0x00841170                          // 0x008663fb    e870adfdff
                         fld                st(0)                                         // 0x00866400    d9c0
                         {disp32} mov       eax, dword ptr [esp + 0x000000dc]             // 0x00866402    8b8424dc000000
                         fmul               dword ptr [esi]                               // 0x00866409    d80e
                         add                esp, 0x04                                     // 0x0086640b    83c404
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x0086640e    d954241c
                         fstp               dword ptr [esi]                               // 0x00866412    d91e
                         fld                st(0)                                         // 0x00866414    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00866416    d84e04
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x00866419    d9542420
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0086641d    d95e04
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x00866420    d84e08
                         {disp8} fst        dword ptr [esi + 0x08]                        // 0x00866423    d95608
                         fld                st(0)                                         // 0x00866426    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00866428    d84c2418
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086642c    d9442420
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00866430    d84c2414
                         faddp              st(1), st                                     // 0x00866434    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00866436    d944241c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0086643a    d84c2410
                         faddp              st(1), st                                     // 0x0086643e    dec1
                         fld                st(1)                                         // 0x00866440    d9c1
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00866442    d84808
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00866445    d9442420
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00866449    d84804
                         faddp              st(1), st                                     // 0x0086644c    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086644e    d944241c
                         fmul               dword ptr [eax]                               // 0x00866452    d808
                         faddp              st(1), st                                     // 0x00866454    dec1
                         fsubp              st(1), st                                     // 0x00866456    dee9
                         fxch               st(1)                                         // 0x00866458    d9c9
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x0086645a    d84f08
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086645d    d944241c
                         fmul               dword ptr [edi]                               // 0x00866461    d80f
                         faddp              st(1), st                                     // 0x00866463    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00866465    d9442420
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x00866469    d84f04
                         faddp              st(1), st                                     // 0x0086646c    dec1
                         fdivp              st(1), st                                     // 0x0086646e    def9
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00866470    d81598a38a00
                         fnstsw             ax                                            // 0x00866476    dfe0
                         test               ah, 0x41                                      // 0x00866478    f6c441
                         {disp32} je        _jmp_addr_0x008665fa                          // 0x0086647b    0f8479010000
                         fld                st(0)                                         // 0x00866481    d9c0
                         push               ecx                                           // 0x00866483    51
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x00866484    d84f08
                         fstp               dword ptr [esp]                               // 0x00866487    d91c24
                         push               ecx                                           // 0x0086648a    51
                         fld                st(0)                                         // 0x0086648b    d9c0
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x0086648d    d84f04
                         fstp               dword ptr [esp]                               // 0x00866490    d91c24
                         push               ecx                                           // 0x00866493    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]             // 0x00866494    8d8c2480000000
                         fmul               dword ptr [edi]                               // 0x0086649b    d80f
                         fstp               dword ptr [esp]                               // 0x0086649d    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x008664a0    e85bc2bdff
                         {disp32} mov       eax, dword ptr [esp + 0x000000d8]             // 0x008664a5    8b8424d8000000
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x008664ac    d944247c
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x008664b0    d84008
                         push               ecx                                           // 0x008664b3    51
                         fstp               dword ptr [esp]                               // 0x008664b4    d91c24
                         push               ecx                                           // 0x008664b7    51
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x008664b8    d9842480000000
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x008664bf    d84004
                         fstp               dword ptr [esp]                               // 0x008664c2    d91c24
                         push               ecx                                           // 0x008664c5    51
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x008664c6    d9842480000000
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x008664cd    8d4c2474
                         fadd               dword ptr [eax]                               // 0x008664d1    d800
                         fstp               dword ptr [esp]                               // 0x008664d3    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x008664d6    e825c2bdff
                         {disp32} mov       eax, dword ptr [esp + 0x000000e0]             // 0x008664db    8b8424e0000000
                         {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x008664e2    8b542468
                         mov.s              ecx, eax                                      // 0x008664e6    8bc8
                         mov                dword ptr [ecx], edx                          // 0x008664e8    8911
                         {disp8} mov        edx, dword ptr [esp + 0x6c]                   // 0x008664ea    8b54246c
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x008664ee    895104
                         {disp8} mov        edx, dword ptr [esp + 0x70]                   // 0x008664f1    8b542470
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x008664f5    895108
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x008664f8    d94008
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x008664fb    d8642418
                         push               ecx                                           // 0x008664ff    51
                         fstp               dword ptr [esp]                               // 0x00866500    d91c24
                         push               ecx                                           // 0x00866503    51
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00866504    d94004
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866507    d864241c
                         fstp               dword ptr [esp]                               // 0x0086650b    d91c24
                         push               ecx                                           // 0x0086650e    51
                         fld                dword ptr [eax]                               // 0x0086650f    d900
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x00866511    8d8c248c000000
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866518    d864241c
                         fstp               dword ptr [esp]                               // 0x0086651c    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0086651f    e8dcc1bdff
                         {disp32} lea       eax, dword ptr [esp + 0x00000080]             // 0x00866524    8d842480000000
                         push               eax                                           // 0x0086652b    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]             // 0x0086652c    8d8c24a8000000
                         push               ecx                                           // 0x00866533    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00866534    8d4c2430
                         call               _jmp_addr_0x005d6430                          // 0x00866538    e8f3fed6ff
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086653d    d94008
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x00866540    d84e08
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00866543    d94004
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00866546    d84e04
                         faddp              st(1), st                                     // 0x00866549    dec1
                         fld                dword ptr [eax]                               // 0x0086654b    d900
                         fmul               dword ptr [esi]                               // 0x0086654d    d80e
                         faddp              st(1), st                                     // 0x0086654f    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00866551    d81d98a38a00
                         fnstsw             ax                                            // 0x00866557    dfe0
                         test               ah, 0x41                                      // 0x00866559    f6c441
                         {disp32} jne       _jmp_addr_0x008665fc                          // 0x0086655c    0f859a000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000e0]             // 0x00866562    8b8c24e0000000
                         push               esi                                           // 0x00866569    56
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0086656a    8d542438
                         push               edx                                           // 0x0086656e    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000094]             // 0x0086656f    8d842494000000
                         push               eax                                           // 0x00866576    50
                         call               _jmp_addr_0x0044cf90                          // 0x00866577    e8146abeff
                         push               eax                                           // 0x0086657c    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000c4]             // 0x0086657d    8d8c24c4000000
                         push               ecx                                           // 0x00866584    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00866585    8d542440
                         push               edx                                           // 0x00866589    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000a8]             // 0x0086658a    8d8424a8000000
                         push               eax                                           // 0x00866591    50
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x00866592    8d4c2460
                         call               _jmp_addr_0x0044cf90                          // 0x00866596    e8f569beff
                         mov.s              ecx, eax                                      // 0x0086659b    8bc8
                         call               _jmp_addr_0x005d6430                          // 0x0086659d    e88efed6ff
                         mov.s              ecx, eax                                      // 0x008665a2    8bc8
                         call               _jmp_addr_0x005d6410                          // 0x008665a4    e867fed6ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008665a9    d81d98a38a00
                         fnstsw             ax                                            // 0x008665af    dfe0
                         test               ah, 0x41                                      // 0x008665b1    f6c441
                         {disp8} jne        _jmp_addr_0x008665fc                          // 0x008665b4    7546
                         push               esi                                           // 0x008665b6    56
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x008665b7    8d4c2444
                         push               ecx                                           // 0x008665bb    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000b8]             // 0x008665bc    8d9424b8000000
                         push               edx                                           // 0x008665c3    52
                         {disp8} lea        eax, dword ptr [esp + 0x58]                   // 0x008665c4    8d442458
                         push               eax                                           // 0x008665c8    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000d8]             // 0x008665c9    8d8c24d8000000
                         push               ecx                                           // 0x008665d0    51
                         {disp32} mov       ecx, dword ptr [esp + 0x000000f4]             // 0x008665d1    8b8c24f4000000
                         call               _jmp_addr_0x0044cf90                          // 0x008665d8    e8b369beff
                         mov.s              ecx, eax                                      // 0x008665dd    8bc8
                         call               _jmp_addr_0x005d6430                          // 0x008665df    e84cfed6ff
                         mov.s              ecx, eax                                      // 0x008665e4    8bc8
                         call               _jmp_addr_0x005d6410                          // 0x008665e6    e825fed6ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008665eb    d81d98a38a00
                         fnstsw             ax                                            // 0x008665f1    dfe0
                         test               ah, 0x41                                      // 0x008665f3    f6c441
                         {disp8} je         _jmp_addr_0x00866621                          // 0x008665f6    7429
                         {disp8} jmp        _jmp_addr_0x008665fc                          // 0x008665f8    eb02
_jmp_addr_0x008665fa:    fstp               st(0)                                         // 0x008665fa    ddd8
_jmp_addr_0x008665fc:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x008665fc    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x00866600    8b4c2458
                         add                ebx, 0x0c                                     // 0x00866604    83c30c
                         inc                eax                                           // 0x00866607    40
                         cmp.s              eax, ecx                                      // 0x00866608    3bc1
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0086660a    89442424
                         {disp32} jl        _jmp_addr_0x0086629b                          // 0x0086660e    0f8c87fcffff
_jmp_addr_0x00866614:    pop                edi                                           // 0x00866614    5f
                         pop                esi                                           // 0x00866615    5e
                         pop                ebp                                           // 0x00866616    5d
                         xor.s              eax, eax                                      // 0x00866617    33c0
                         pop                ebx                                           // 0x00866619    5b
                         add                esp, 0x000000c4                               // 0x0086661a    81c4c4000000
                         ret                                                              // 0x00866620    c3
_jmp_addr_0x00866621:    pop                edi                                           // 0x00866621    5f
                         pop                esi                                           // 0x00866622    5e
                         pop                ebp                                           // 0x00866623    5d
                         mov                eax, 0x00000001                               // 0x00866624    b801000000
                         pop                ebx                                           // 0x00866629    5b
                         add                esp, 0x000000c4                               // 0x0086662a    81c4c4000000
                         ret                                                              // 0x00866630    c3
                         nop                                                              // 0x00866631    90
                         nop                                                              // 0x00866632    90
                         nop                                                              // 0x00866633    90
                         nop                                                              // 0x00866634    90
                         nop                                                              // 0x00866635    90
                         nop                                                              // 0x00866636    90
                         nop                                                              // 0x00866637    90
                         nop                                                              // 0x00866638    90
                         nop                                                              // 0x00866639    90
                         nop                                                              // 0x0086663a    90
                         nop                                                              // 0x0086663b    90
                         nop                                                              // 0x0086663c    90
                         nop                                                              // 0x0086663d    90
                         nop                                                              // 0x0086663e    90
                         nop                                                              // 0x0086663f    90
_jmp_addr_0x00866640:    sub                esp, 0x44                                     // 0x00866640    83ec44
                         xor.s              edx, edx                                      // 0x00866643    33d2
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00866645    8b542450
                         {disp8} mov        dl, byte ptr [edx + 0x02]                     // 0x00866649    8a5202
                         push               ebx                                           // 0x0086664c    53
                         push               ebp                                           // 0x0086664d    55
                         mov.s              ebp, ecx                                      // 0x0086664e    8be9
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                   // 0x00866650    8b4c2450
                         push               esi                                           // 0x00866654    56
                         {disp8} mov        esi, dword ptr [ecx + 0x3c]                   // 0x00866655    8b713c
                         shr                edx, 6                                        // 0x00866658    c1ea06
                         xor.s              eax, eax                                      // 0x0086665b    33c0
                         and                edx, 0x03                                     // 0x0086665d    83e203
                         mov                edx, dword ptr [esi + edx * 0x4]              // 0x00866660    8b1496
                         push               edi                                           // 0x00866663    57
                         {disp8} mov        edi, dword ptr [ecx + 0x0c]                   // 0x00866664    8b790c
                         cmp.s              edi, eax                                      // 0x00866667    3bf8
                         {disp8} mov        dword ptr [esp + 0x34], ebp                   // 0x00866669    896c2434
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0086666d    89442430
                         {disp8} mov        dword ptr [esp + 0x50], edi                   // 0x00866671    897c2450
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00866675    89542438
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00866679    89442418
                         {disp32} jle       _jmp_addr_0x00866a72                          // 0x0086667d    0f8eef030000
                         {disp8} mov        esi, dword ptr [esp + 0x5c]                   // 0x00866683    8b74245c
_jmp_addr_0x00866687:    {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x00866687    8b5110
                         mov                edx, dword ptr [edx + eax * 0x4]              // 0x0086668a    8b1482
                         {disp8} mov        edx, dword ptr [edx + 0x04]                   // 0x0086668d    8b5204
                         test               edx, edx                                      // 0x00866690    85d2
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x00866692    8954244c
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00866696    c744241400000000
                         {disp32} jle       _jmp_addr_0x00866a27                          // 0x0086669e    0f8e83030000
_jmp_addr_0x008666a4:    {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x008666a4    8b4910
                         mov                edx, dword ptr [ecx + eax * 0x4]              // 0x008666a7    8b1481
                         {disp8} mov        eax, dword ptr [edx + 0x08]                   // 0x008666aa    8b4208
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x008666ad    8b4c2414
                         mov                ebx, dword ptr [eax + ecx * 0x4]              // 0x008666b1    8b1c88
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                   // 0x008666b4    8b4308
                         {disp8} mov        edx, dword ptr [ebx + 0x14]                   // 0x008666b7    8b5314
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                   // 0x008666ba    8d4814
                         xor.s              edi, edi                                      // 0x008666bd    33ff
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x008666bf    895c2424
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x008666c3    89542420
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x008666c7    8944243c
                         call               _jmp_addr_0x00838500                          // 0x008666cb    e8301efdff
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x008666d0    8b442458
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x008666d4    8b4804
                         test               ch, 0x01                                      // 0x008666d7    f6c501
                         {disp32} je        _jmp_addr_0x008667e0                          // 0x008666da    0f8400010000
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x008666e0    8b4320
                         xor.s              edx, edx                                      // 0x008666e3    33d2
                         test               eax, eax                                      // 0x008666e5    85c0
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x008666e7    89542410
                         {disp32} jle       _jmp_addr_0x0086685f                          // 0x008666eb    0f8e6e010000
_jmp_addr_0x008666f1:    {disp8} mov        ecx, dword ptr [ebx + 0x24]                   // 0x008666f1    8b4b24
                         xor.s              eax, eax                                      // 0x008666f4    33c0
                         {disp8} mov        ax, word ptr [ecx + edx * 0x4 + 0x02]         // 0x008666f6    668b449102
                         lea                ecx, dword ptr [ecx + edx * 0x4]              // 0x008666fb    8d0c91
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x008666fe    894c2428
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x00866702    c744245c00000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0086670a    8d0440
                         shl                eax, 4                                        // 0x0086670d    c1e004
                         add.s              eax, esi                                      // 0x00866710    03c6
                         cmp                word ptr [ecx], 0x00                          // 0x00866712    66833900
                         {disp32} jbe       _jmp_addr_0x008667ce                          // 0x00866716    0f86b2000000
                         {disp8} mov        ebp, dword ptr [esp + 0x20]                   // 0x0086671c    8b6c2420
                         mov.s              ecx, edi                                      // 0x00866720    8bcf
                         lea                edx, dword ptr [edi + edi * 0x2]              // 0x00866722    8d147f
                         shl                ecx, 5                                        // 0x00866725    c1e105
                         {disp32} lea       ebx, dword ptr [edi * 0x4 + 0x00f863c0]       // 0x00866728    8d1cbdc063f800
                         {disp32} lea       edx, dword ptr [edx * 0x4 + 0x00f963c8]       // 0x0086672f    8d1495c863f900
                         {disp8} lea        ecx, dword ptr [ecx + ebp * 0x1 + 0x08]       // 0x00866736    8d4c2908
                         {disp8} jmp        _jmp_addr_0x00866740                          // 0x0086673a    eb04
_jmp_addr_0x0086673c:    {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x0086673c    8b5c242c
_jmp_addr_0x00866740:    {disp8} fld        dword ptr [ecx + -0x08]                       // 0x00866740    d941f8
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00866743    8b6c2410
                         {disp8} fld        dword ptr [ecx + -0x04]                       // 0x00866747    d941fc
                         add                ebx, 0x04                                     // 0x0086674a    83c304
                         fld                dword ptr [ecx]                               // 0x0086674d    d901
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x0086674f    895c242c
                         fld                st(0)                                         // 0x00866753    d9c0
                         inc                edi                                           // 0x00866755    47
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00866756    d84818
                         add                ecx, 0x20                                     // 0x00866759    83c120
                         fld                st(2)                                         // 0x0086675c    d9c2
                         add                edx, 0x0c                                     // 0x0086675e    83c20c
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00866761    d8480c
                         faddp              st(1), st                                     // 0x00866764    dec1
                         fld                st(3)                                         // 0x00866766    d9c3
                         fmul               dword ptr [eax]                               // 0x00866768    d808
                         faddp              st(1), st                                     // 0x0086676a    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0086676c    d84024
                         {disp8} fstp       dword ptr [edx + -0x14]                       // 0x0086676f    d95aec
                         fld                st(2)                                         // 0x00866772    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00866774    d84804
                         fld                st(1)                                         // 0x00866777    d9c1
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00866779    d8481c
                         faddp              st(1), st                                     // 0x0086677c    dec1
                         fld                st(2)                                         // 0x0086677e    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00866780    d84810
                         faddp              st(1), st                                     // 0x00866783    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00866785    d84028
                         {disp8} fstp       dword ptr [edx + -0x10]                       // 0x00866788    d95af0
                         fxch               st(2)                                         // 0x0086678b    d9ca
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0086678d    d84808
                         fxch               st(2)                                         // 0x00866790    d9ca
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00866792    d84820
                         faddp              st(2), st                                     // 0x00866795    dec2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00866797    d84814
                         faddp              st(1), st                                     // 0x0086679a    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0086679c    d8402c
                         {disp8} mov        dword ptr [ebx + -0x04], ebp                  // 0x0086679f    896bfc
                         {disp8} mov        ebx, dword ptr [esp + 0x5c]                   // 0x008667a2    8b5c245c
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x008667a6    8b6c2428
                         {disp8} fstp       dword ptr [edx + -0x0c]                       // 0x008667aa    d95af4
                         inc                ebx                                           // 0x008667ad    43
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x008667ae    895c245c
                         xor.s              ebx, ebx                                      // 0x008667b2    33db
                         {disp8} mov        bx, word ptr [ebp + 0x00]                     // 0x008667b4    668b5d00
                         cmp                dword ptr [esp + 0x5c], ebx                   // 0x008667b8    395c245c
                         {disp32} jl        _jmp_addr_0x0086673c                          // 0x008667bc    0f8c7affffff
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                   // 0x008667c2    8b6c2434
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x008667c6    8b5c2424
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008667ca    8b542410
_jmp_addr_0x008667ce:    {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x008667ce    8b4320
                         inc                edx                                           // 0x008667d1    42
                         cmp.s              edx, eax                                      // 0x008667d2    3bd0
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x008667d4    89542410
                         {disp32} jl        _jmp_addr_0x008666f1                          // 0x008667d8    0f8c13ffffff
                         {disp8} jmp        _jmp_addr_0x0086685f                          // 0x008667de    eb7f
_jmp_addr_0x008667e0:    {disp8} mov        eax, dword ptr [ebx + 0x10]                   // 0x008667e0    8b4310
                         test               eax, eax                                      // 0x008667e3    85c0
                         {disp8} jle        _jmp_addr_0x0086685f                          // 0x008667e5    7e78
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x008667e7    8b442420
                         mov                edx, 0x00f863c0                               // 0x008667eb    bac063f800
                         mov                ecx, 0x00f963c8                               // 0x008667f0    b9c863f900
                         add                eax, 0x08                                     // 0x008667f5    83c008
_jmp_addr_0x008667f8:    {disp8} fld        dword ptr [eax + -0x08]                       // 0x008667f8    d940f8
                         inc                edi                                           // 0x008667fb    47
                         {disp8} fld        dword ptr [eax + -0x04]                       // 0x008667fc    d940fc
                         add                eax, 0x20                                     // 0x008667ff    83c020
                         {disp8} fld        dword ptr [eax + -0x20]                       // 0x00866802    d940e0
                         add                ecx, 0xc                                      // 0x00866805    83c10c
                         fld                st(2)                                         // 0x00866808    d9c2
                         add                edx, 0x04                                     // 0x0086680a    83c204
                         fmul               dword ptr [esi]                               // 0x0086680d    d80e
                         fld                st(1)                                         // 0x0086680f    d9c1
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00866811    d84e18
                         faddp              st(1), st                                     // 0x00866814    dec1
                         fld                st(2)                                         // 0x00866816    d9c2
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x00866818    d84e0c
                         faddp              st(1), st                                     // 0x0086681b    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x0086681d    d84624
                         {disp8} fstp       dword ptr [ecx + -0x14]                       // 0x00866820    d959ec
                         fld                st(2)                                         // 0x00866823    d9c2
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00866825    d84e04
                         fld                st(1)                                         // 0x00866828    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086682a    d84e1c
                         faddp              st(1), st                                     // 0x0086682d    dec1
                         fld                st(2)                                         // 0x0086682f    d9c2
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x00866831    d84e10
                         faddp              st(1), st                                     // 0x00866834    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                        // 0x00866836    d84628
                         {disp8} fstp       dword ptr [ecx + -0x10]                       // 0x00866839    d959f0
                         fxch               st(2)                                         // 0x0086683c    d9ca
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0086683e    d84e08
                         fxch               st(2)                                         // 0x00866841    d9ca
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00866843    d84e20
                         faddp              st(2), st                                     // 0x00866846    dec2
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00866848    d84e14
                         faddp              st(1), st                                     // 0x0086684b    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                        // 0x0086684d    d8462c
                         {disp8} mov        dword ptr [edx + -0x04], 0x00000000           // 0x00866850    c742fc00000000
                         {disp8} fstp       dword ptr [ecx + -0x0c]                       // 0x00866857    d959f4
                         cmp                edi, dword ptr [ebx + 0x10]                   // 0x0086685a    3b7b10
                         {disp8} jl         _jmp_addr_0x008667f8                          // 0x0086685d    7c99
_jmp_addr_0x0086685f:    {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0086685f    8b4c2438
                         cmp                dword ptr [esp + 0x3c], ecx                   // 0x00866863    394c243c
                         {disp32} jne       _jmp_addr_0x00866a06                          // 0x00866867    0f8599010000
                         {disp8} mov        eax, dword ptr [ebx + 0x18]                   // 0x0086686d    8b4318
                         xor.s              edi, edi                                      // 0x00866870    33ff
                         cmp.s              eax, edi                                      // 0x00866872    3bc7
                         {disp8} mov        dword ptr [esp + 0x2c], edi                   // 0x00866874    897c242c
                         {disp32} jle       _jmp_addr_0x00866a06                          // 0x00866878    0f8e88010000
_jmp_addr_0x0086687e:    {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0086687e    8b431c
                         xor.s              edx, edx                                      // 0x00866881    33d2
                         mov.s              ecx, edi                                      // 0x00866883    8bcf
                         mov                dx, word ptr [ecx + eax * 0x1]                // 0x00866885    668b1401
                         add.s              ecx, eax                                      // 0x00866889    03c8
                         xor.s              eax, eax                                      // 0x0086688b    33c0
                         {disp8} mov        dword ptr [ebp + 0x08], edx                   // 0x0086688d    895508
                         {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x00866890    668b4102
                         shl                edx, 5                                        // 0x00866894    c1e205
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                   // 0x00866897    89450c
                         xor.s              eax, eax                                      // 0x0086689a    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x04]                     // 0x0086689c    668b4104
                         {disp8} mov        dword ptr [ebp + 0x10], eax                   // 0x008668a0    894510
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                   // 0x008668a3    8b4b14
                         {disp8} fld        dword ptr [edx + ecx * 0x1 + 0x0c]            // 0x008668a6    d9440a0c
                         add.s              edx, ecx                                      // 0x008668aa    03d1
                         {disp8} mov        edx, dword ptr [edx + 0x10]                   // 0x008668ac    8b5210
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x008668af    8954241c
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                   // 0x008668b3    8b550c
                         shl                edx, 5                                        // 0x008668b6    c1e205
                         {disp8} fld        dword ptr [edx + ecx * 0x1 + 0x0c]            // 0x008668b9    d9440a0c
                         add.s              edx, ecx                                      // 0x008668bd    03d1
                         {disp8} mov        edx, dword ptr [edx + 0x10]                   // 0x008668bf    8b5210
                         fsub               st, st(1)                                     // 0x008668c2    d8e1
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x008668c4    89542440
                         shl                eax, 5                                        // 0x008668c8    c1e005
                         {disp8} mov        edx, dword ptr [eax + ecx * 0x1 + 0x10]       // 0x008668cb    8b540810
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008668cf    d95c2410
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x008668d3    d9442440
                         add.s              eax, ecx                                      // 0x008668d7    03c1
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x008668d9    d864241c
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x008668dd    8b480c
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x008668e0    894c2444
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x008668e4    89542448
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x008668e8    d95c2420
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x008668ec    d9442444
                         fsub               st, st(1)                                     // 0x008668f0    d8e1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x008668f2    d95c2424
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x008668f6    d9442448
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x008668fa    d864241c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x008668fe    d95c2428
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00866902    d9442424
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00866906    d84c2420
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086690a    d9442428
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0086690e    d84c2410
                         fsubp              st(1), st                                     // 0x00866912    dee9
                         {disp8} fst        dword ptr [esp + 0x5c]                        // 0x00866914    d954245c
                         fabs                                                             // 0x00866918    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x0086691a    dc1dd8798c00
                         fnstsw             ax                                            // 0x00866920    dfe0
                         test               ah, 0x41                                      // 0x00866922    f6c441
                         {disp32} jne       _jmp_addr_0x008669ed                          // 0x00866925    0f85c2000000
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x0086692b    8b442460
                         xor.s              ecx, ecx                                      // 0x0086692f    33c9
                         mov                cl, byte ptr [eax]                            // 0x00866931    8a08
                         xor.s              edx, edx                                      // 0x00866933    33d2
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00866935    8a5001
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00866938    894c243c
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x0086693c    db44243c
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00866940    8954243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00866944    d80d0cb58a00
                         fsubrp             st(1), st                                     // 0x0086694a    dee1
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x0086694c    db44243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00866950    d80d0cb58a00
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00866956    d864241c
                         fld                st(1)                                         // 0x0086695a    d9c1
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0086695c    d84c2420
                         fld                st(1)                                         // 0x00866960    d9c1
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00866962    d84c2410
                         fsubp              st(1), st                                     // 0x00866966    dee9
                         {disp8} fdiv       dword ptr [esp + 0x5c]                        // 0x00866968    d874245c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0086696c    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00866970    8b442410
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00866974    d84c2424
                         {disp8} mov        dword ptr [ebp + 0x24], eax                   // 0x00866978    894524
                         fxch               st(1)                                         // 0x0086697b    d9c9
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0086697d    d84c2428
                         fsubp              st(1), st                                     // 0x00866981    dee9
                         {disp8} fdiv       dword ptr [esp + 0x5c]                        // 0x00866983    d874245c
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x00866987    d95c245c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086698b    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086698f    d81d98a38a00
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x00866995    8b4c245c
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                   // 0x00866999    894d20
                         fnstsw             ax                                            // 0x0086699c    dfe0
                         test               ah, 0x01                                      // 0x0086699e    f6c401
                         {disp8} jne        _jmp_addr_0x008669ef                          // 0x008669a1    754c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008669a3    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x008669a7    d81d90a38a00
                         fnstsw             ax                                            // 0x008669ad    dfe0
                         test               ah, 0x41                                      // 0x008669af    f6c441
                         {disp8} je         _jmp_addr_0x008669ef                          // 0x008669b2    743b
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x008669b4    d944245c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x008669b8    d81d98a38a00
                         fnstsw             ax                                            // 0x008669be    dfe0
                         test               ah, 0x01                                      // 0x008669c0    f6c401
                         {disp8} jne        _jmp_addr_0x008669ef                          // 0x008669c3    752a
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x008669c5    d944245c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x008669c9    d81d90a38a00
                         fnstsw             ax                                            // 0x008669cf    dfe0
                         test               ah, 0x41                                      // 0x008669d1    f6c441
                         {disp8} je         _jmp_addr_0x008669ef                          // 0x008669d4    7419
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x008669d6    d944245c
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x008669da    d8442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x008669de    d81d90a38a00
                         fnstsw             ax                                            // 0x008669e4    dfe0
                         test               ah, 0x41                                      // 0x008669e6    f6c441
                         {disp8} jne        _jmp_addr_0x00866a35                          // 0x008669e9    754a
                         {disp8} jmp        _jmp_addr_0x008669ef                          // 0x008669eb    eb02
_jmp_addr_0x008669ed:    fstp               st(0)                                         // 0x008669ed    ddd8
_jmp_addr_0x008669ef:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x008669ef    8b44242c
                         {disp8} mov        ecx, dword ptr [ebx + 0x18]                   // 0x008669f3    8b4b18
                         inc                eax                                           // 0x008669f6    40
                         add                edi, 0x06                                     // 0x008669f7    83c706
                         cmp.s              eax, ecx                                      // 0x008669fa    3bc1
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x008669fc    8944242c
                         {disp32} jl        _jmp_addr_0x0086687e                          // 0x00866a00    0f8c78feffff
_jmp_addr_0x00866a06:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00866a06    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x00866a0a    8b4c244c
                         inc                eax                                           // 0x00866a0e    40
                         cmp.s              eax, ecx                                      // 0x00866a0f    3bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x00866a11    8b4c2458
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00866a15    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00866a19    8b442418
                         {disp32} jl        _jmp_addr_0x008666a4                          // 0x00866a1d    0f8c81fcffff
                         {disp8} mov        edi, dword ptr [esp + 0x50]                   // 0x00866a23    8b7c2450
_jmp_addr_0x00866a27:    inc                eax                                           // 0x00866a27    40
                         cmp.s              eax, edi                                      // 0x00866a28    3bc7
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00866a2a    89442418
                         {disp8} jge        _jmp_addr_0x00866a72                          // 0x00866a2e    7d42
                         {disp32} jmp       _jmp_addr_0x00866687                          // 0x00866a30    e952fcffff
_jmp_addr_0x00866a35:    {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x00866a35    8b5508
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00f863c0]       // 0x00866a38    8b0495c063f800
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x00866a3f    8b4d0c
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x00866a42    894514
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00f863c0]       // 0x00866a45    8b148dc063f800
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                   // 0x00866a4c    8b4510
                         {disp8} mov        dword ptr [ebp + 0x18], edx                   // 0x00866a4f    895518
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00f863c0]       // 0x00866a52    8b0c85c063f800
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00866a59    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00866a5d    8b442418
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000001            // 0x00866a61    c744243001000000
                         {disp8} mov        dword ptr [ebp + 0x1c], ecx                   // 0x00866a69    894d1c
                         {disp8} mov        dword ptr [ebp + 0x00], edx                   // 0x00866a6c    895500
                         {disp8} mov        dword ptr [ebp + 0x04], eax                   // 0x00866a6f    894504
_jmp_addr_0x00866a72:    {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00866a72    8b4c2430
                         pop                edi                                           // 0x00866a76    5f
                         pop                esi                                           // 0x00866a77    5e
                         xor.s              eax, eax                                      // 0x00866a78    33c0
                         test               ecx, ecx                                      // 0x00866a7a    85c9
                         pop                ebp                                           // 0x00866a7c    5d
                         setne              al                                            // 0x00866a7d    0f95c0
                         pop                ebx                                           // 0x00866a80    5b
                         add                esp, 0x44                                     // 0x00866a81    83c444
                         ret                0x000c                                        // 0x00866a84    c20c00
                         nop                                                              // 0x00866a87    90
                         nop                                                              // 0x00866a88    90
                         nop                                                              // 0x00866a89    90
                         nop                                                              // 0x00866a8a    90
                         nop                                                              // 0x00866a8b    90
                         nop                                                              // 0x00866a8c    90
                         nop                                                              // 0x00866a8d    90
                         nop                                                              // 0x00866a8e    90
                         nop                                                              // 0x00866a8f    90
_jmp_addr_0x00866a90:    push               ecx                                           // 0x00866a90    51
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00866a91    8b542408
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x00866a95    8b4210
                         push               ebx                                           // 0x00866a98    53
                         push               ebp                                           // 0x00866a99    55
                         push               esi                                           // 0x00866a9a    56
                         mov.s              esi, ecx                                      // 0x00866a9b    8bf1
                         mov                ecx, dword ptr [eax]                          // 0x00866a9d    8b08
                         mov                eax, dword ptr [esi]                          // 0x00866a9f    8b06
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00866aa1    8b4908
                         push               edi                                           // 0x00866aa4    57
                         mov                edi, dword ptr [ecx + eax * 0x4]              // 0x00866aa5    8b3c81
                         {disp8} mov        ecx, dword ptr [edx + 0x38]                   // 0x00866aa8    8b4a38
                         {disp8} mov        ebx, dword ptr [edi + 0x08]                   // 0x00866aab    8b5f08
                         xor.s              eax, eax                                      // 0x00866aae    33c0
                         cmp.s              ecx, eax                                      // 0x00866ab0    3bc8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00866ab2    89442410
                         {disp8} jle        _jmp_addr_0x00866acb                          // 0x00866ab6    7e13
                         {disp8} mov        edx, dword ptr [edx + 0x3c]                   // 0x00866ab8    8b523c
_jmp_addr_0x00866abb:    cmp                dword ptr [edx], ebx                          // 0x00866abb    391a
                         {disp8} jne        _jmp_addr_0x00866ac3                          // 0x00866abd    7504
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00866abf    89442410
_jmp_addr_0x00866ac3:    inc                eax                                           // 0x00866ac3    40
                         add                edx, 0x04                                     // 0x00866ac4    83c204
                         cmp.s              eax, ecx                                      // 0x00866ac7    3bc1
                         {disp8} jl         _jmp_addr_0x00866abb                          // 0x00866ac9    7cf0
_jmp_addr_0x00866acb:    {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x00866acb    8b4714
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00866ace    8b5608
                         shl                edx, 5                                        // 0x00866ad1    c1e205
                         {disp8} fld        dword ptr [edx + eax * 0x1 + 0x0c]            // 0x00866ad4    d944020c
                         lea                ecx, dword ptr [edx + eax * 0x1]              // 0x00866ad8    8d0c02
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x00866adb    8b4910
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x00866ade    8b5610
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00866ae1    894c2418
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00866ae5    8b4e0c
                         shl                ecx, 5                                        // 0x00866ae8    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x0c]            // 0x00866aeb    d944010c
                         lea                ebp, dword ptr [ecx + eax * 0x1]              // 0x00866aef    8d2c01
                         fsub               st, st(1)                                     // 0x00866af2    d8e1
                         shl                edx, 5                                        // 0x00866af4    c1e205
                         lea                edi, dword ptr [edx + eax * 0x1]              // 0x00866af7    8d3c02
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00866afa    d84e20
                         {disp8} fld        dword ptr [edi + 0x0c]                        // 0x00866afd    d9470c
                         fsub               st, st(2)                                     // 0x00866b00    d8e2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00866b02    d84e24
                         faddp              st(1), st                                     // 0x00866b05    dec1
                         fadd               st, st(1)                                     // 0x00866b07    d8c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5cc]             // 0x00866b09    d80dcc458d00
                         call               _jmp_addr_0x007a1400                          // 0x00866b0f    e8eca8f3ff
                         fstp               st(0)                                         // 0x00866b14    ddd8
                         {disp8} fld        dword ptr [ebp + 0x10]                        // 0x00866b16    d94510
                         mov.s              ebx, eax                                      // 0x00866b19    8bd8
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00866b1b    d8642418
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00866b1f    d84e20
                         {disp8} fld        dword ptr [edi + 0x10]                        // 0x00866b22    d94710
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00866b25    d8642418
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00866b29    d84e24
                         faddp              st(1), st                                     // 0x00866b2c    dec1
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00866b2e    d8442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5cc]             // 0x00866b32    d80dcc458d00
                         call               _jmp_addr_0x007a1400                          // 0x00866b38    e8c3a8f3ff
                         test               ebx, ebx                                      // 0x00866b3d    85db
                         {disp8} jbe        _jmp_addr_0x00866b50                          // 0x00866b3f    760f
                         cmp                ebx, 0x000000ff                               // 0x00866b41    81fbff000000
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x00866b52   // 0x00866b47    7209
                         mov                ebx, 0x000000ff                               // 0x00866b49    bbff000000
                         {disp8} jmp        _jmp_addr_0x00866b52                          // 0x00866b4e    eb02
_jmp_addr_0x00866b50:    xor.s              ebx, ebx                                      // 0x00866b50    33db
_jmp_addr_0x00866b52:    test               eax, eax                                      // 0x00866b52    85c0
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00866b54    8b4c241c
                         pop                edi                                           // 0x00866b58    5f
                         pop                esi                                           // 0x00866b59    5e
                         pop                ebp                                           // 0x00866b5a    5d
                         mov                byte ptr [ecx], bl                            // 0x00866b5b    8819
                         pop                ebx                                           // 0x00866b5d    5b
                         {disp8} jbe        _jmp_addr_0x00866b6e                          // 0x00866b5e    760e
                         cmp                eax, 0x000000ff                               // 0x00866b60    3dff000000
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x00866b70   // 0x00866b65    7209
                         mov                eax, 0x000000ff                               // 0x00866b67    b8ff000000
                         {disp8} jmp        _jmp_addr_0x00866b70                          // 0x00866b6c    eb02
_jmp_addr_0x00866b6e:    xor.s              eax, eax                                      // 0x00866b6e    33c0
_jmp_addr_0x00866b70:    xor.s              edx, edx                                      // 0x00866b70    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x02]                     // 0x00866b72    668b5102
                         {disp8} mov        byte ptr [ecx + 0x01], al                     // 0x00866b76    884101
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x00866b79    8b442400
                         and                eax, 0x03                                     // 0x00866b7d    83e003
                         shl                eax, 6                                        // 0x00866b80    c1e006
                         and                edx, 0x0000ff00                               // 0x00866b83    81e200ff0000
                         or.s               eax, edx                                      // 0x00866b89    0bc2
                         {disp8} mov        word ptr [ecx + 0x02], ax                     // 0x00866b8b    66894102
                         pop                ecx                                           // 0x00866b8f    59
                         ret                0x0008                                        // 0x00866b90    c20800
                         nop                                                              // 0x00866b93    90
                         nop                                                              // 0x00866b94    90
                         nop                                                              // 0x00866b95    90
                         nop                                                              // 0x00866b96    90
                         nop                                                              // 0x00866b97    90
                         nop                                                              // 0x00866b98    90
                         nop                                                              // 0x00866b99    90
                         nop                                                              // 0x00866b9a    90
                         nop                                                              // 0x00866b9b    90
                         nop                                                              // 0x00866b9c    90
                         nop                                                              // 0x00866b9d    90
                         nop                                                              // 0x00866b9e    90
                         nop                                                              // 0x00866b9f    90
_jmp_addr_0x00866ba0:    sub                esp, 0x18                                     // 0x00866ba0    83ec18
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00866ba3    8b44241c
                         push               ebx                                           // 0x00866ba7    53
                         push               esi                                           // 0x00866ba8    56
                         mov.s              esi, ecx                                      // 0x00866ba9    8bf1
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00866bab    8b4810
                         mov                edx, dword ptr [ecx]                          // 0x00866bae    8b11
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x00866bb0    8b4a08
                         mov                eax, dword ptr [esi]                          // 0x00866bb3    8b06
                         push               edi                                           // 0x00866bb5    57
                         mov                edi, dword ptr [ecx + eax * 0x4]              // 0x00866bb6    8b3c81
                         {disp8} mov        ebx, dword ptr [edi + 0x08]                   // 0x00866bb9    8b5f08
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00866bbc    8d542414
                         push               edx                                           // 0x00866bc0    52
                         mov.s              ecx, ebx                                      // 0x00866bc1    8bcb
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00866bc3    895c2414
                         call               _jmp_addr_0x00838af0                          // 0x00866bc7    e8241ffdff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00866bcc    8b442414
                         test               eax, eax                                      // 0x00866bd0    85c0
                         {disp32} je        _jmp_addr_0x00866ced                          // 0x00866bd2    0f8415010000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00866bd8    8b44241c
                         cmp                eax, 0x00000100                               // 0x00866bdc    3d00010000
                         {disp8} je         _jmp_addr_0x00866bee                          // 0x00866be1    740b
                         cmp                eax, 0x00000080                               // 0x00866be3    3d80000000
                         {disp32} jne       _jmp_addr_0x00866ced                          // 0x00866be8    0f85ff000000
_jmp_addr_0x00866bee:    {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x00866bee    8b4714
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00866bf1    8b4e08
                         shl                ecx, 5                                        // 0x00866bf4    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x0c]            // 0x00866bf7    d944010c
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x10]       // 0x00866bfb    8b540110
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00866bff    db44241c
                         add.s              ecx, eax                                      // 0x00866c03    03c8
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00866c05    8b4e10
                         shl                ecx, 5                                        // 0x00866c08    c1e105
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00866c0b    d95c240c
                         lea                edi, dword ptr [ecx + eax * 0x1]              // 0x00866c0f    8d3c01
                         {disp8} fld        dword ptr [edi + 0x0c]                        // 0x00866c12    d9470c
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00866c15    89542428
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x00866c19    8b560c
                         fsub               st, st(1)                                     // 0x00866c1c    d8e1
                         shl                edx, 5                                        // 0x00866c1e    c1e205
                         lea                ebx, dword ptr [edx + eax * 0x1]              // 0x00866c21    8d1c02
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00866c24    d84e24
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x00866c27    d9430c
                         push               ebp                                           // 0x00866c2a    55
                         fsub               st, st(2)                                     // 0x00866c2b    d8e2
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00866c2d    d84e20
                         faddp              st(1), st                                     // 0x00866c30    dec1
                         fadd               st, st(1)                                     // 0x00866c32    d8c1
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00866c34    d84c2410
                         call               _jmp_addr_0x007a1400                          // 0x00866c38    e8c3a7f3ff
                         fstp               st(0)                                         // 0x00866c3d    ddd8
                         {disp8} fld        dword ptr [edi + 0x10]                        // 0x00866c3f    d94710
                         mov.s              ebp, eax                                      // 0x00866c42    8be8
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00866c44    d864242c
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x00866c48    d84e24
                         {disp8} fld        dword ptr [ebx + 0x10]                        // 0x00866c4b    d94310
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x00866c4e    d864242c
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00866c52    d84e20
                         faddp              st(1), st                                     // 0x00866c55    dec1
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00866c57    d844242c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00866c5b    d84c2410
                         call               _jmp_addr_0x007a1400                          // 0x00866c5f    e89ca7f3ff
                         test               ebp, ebp                                      // 0x00866c64    85ed
                         {disp8} jbe        _jmp_addr_0x00866c77                          // 0x00866c66    760f
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00866c68    8b542420
                         {disp8} lea        ecx, dword ptr [edx + -0x01]                  // 0x00866c6c    8d4aff
                         cmp.s              ebp, ecx                                      // 0x00866c6f    3be9
                         .byte              0x72, 0xa// {disp8} jb _jmp_addr_0x00866c7d   // 0x00866c71    720a
                         mov.s              ebp, ecx                                      // 0x00866c73    8be9
                         {disp8} jmp        _jmp_addr_0x00866c7d                          // 0x00866c75    eb06
_jmp_addr_0x00866c77:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00866c77    8b542420
                         xor.s              ebp, ebp                                      // 0x00866c7b    33ed
_jmp_addr_0x00866c7d:    and                ebp, 0x000000ff                               // 0x00866c7d    81e5ff000000
                         test               eax, eax                                      // 0x00866c83    85c0
                         {disp8} jbe        _jmp_addr_0x00866c92                          // 0x00866c85    760b
                         {disp8} lea        ecx, dword ptr [edx + -0x01]                  // 0x00866c87    8d4aff
                         cmp.s              eax, ecx                                      // 0x00866c8a    3bc1
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x00866c94   // 0x00866c8c    7206
                         mov.s              eax, ecx                                      // 0x00866c8e    8bc1
                         {disp8} jmp        _jmp_addr_0x00866c94                          // 0x00866c90    eb02
_jmp_addr_0x00866c92:    xor.s              eax, eax                                      // 0x00866c92    33c0
_jmp_addr_0x00866c94:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00866c94    8b4c2418
                         and                eax, 0x000000ff                               // 0x00866c98    25ff000000
                         imul               eax, edx                                      // 0x00866c9d    0fafc2
                         add.s              eax, ebp                                      // 0x00866ca0    03c5
                         mov                ax, word ptr [ecx + eax * 0x2]                // 0x00866ca2    668b0441
                         and                eax, 0x0000ffff                               // 0x00866ca6    25ffff0000
                         mov.s              edx, eax                                      // 0x00866cab    8bd0
                         shr                edx, 4                                        // 0x00866cad    c1ea04
                         and                edx, 0x000000f0                               // 0x00866cb0    81e2f0000000
                         add                edx, 0x0000ff00                               // 0x00866cb6    81c200ff0000
                         mov.s              ecx, eax                                      // 0x00866cbc    8bc8
                         shl                edx, 8                                        // 0x00866cbe    c1e208
                         and                ecx, 0x000000f0                               // 0x00866cc1    81e1f0000000
                         add.s              edx, ecx                                      // 0x00866cc7    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00866cc9    8b4c2414
                         shl                edx, 4                                        // 0x00866ccd    c1e204
                         and                eax, 0x0f                                     // 0x00866cd0    83e00f
                         add.s              edx, eax                                      // 0x00866cd3    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00866cd5    8b442430
                         shl                edx, 4                                        // 0x00866cd9    c1e204
                         mov                dword ptr [eax], edx                          // 0x00866cdc    8910
                         call               _jmp_addr_0x00838eb0                          // 0x00866cde    e8cd21fdff
                         pop                ebp                                           // 0x00866ce3    5d
                         pop                edi                                           // 0x00866ce4    5f
                         pop                esi                                           // 0x00866ce5    5e
                         pop                ebx                                           // 0x00866ce6    5b
                         add                esp, 0x18                                     // 0x00866ce7    83c418
                         ret                0x0008                                        // 0x00866cea    c20800
_jmp_addr_0x00866ced:    mov.s              ecx, ebx                                      // 0x00866ced    8bcb
                         call               _jmp_addr_0x00838eb0                          // 0x00866cef    e8bc21fdff
                         pop                edi                                           // 0x00866cf4    5f
                         pop                esi                                           // 0x00866cf5    5e
                         pop                ebx                                           // 0x00866cf6    5b
                         add                esp, 0x18                                     // 0x00866cf7    83c418
                         ret                0x0008                                        // 0x00866cfa    c20800
                         nop                                                              // 0x00866cfd    90
                         nop                                                              // 0x00866cfe    90
                         nop                                                              // 0x00866cff    90
_jmp_addr_0x00866d00:    sub                esp, 0x1c                                     // 0x00866d00    83ec1c
                         push               ebx                                           // 0x00866d03    53
                         push               ebp                                           // 0x00866d04    55
                         push               esi                                           // 0x00866d05    56
                         xor.s              eax, eax                                      // 0x00866d06    33c0
                         push               edi                                           // 0x00866d08    57
                         mov.s              edi, ecx                                      // 0x00866d09    8bf9
                         {disp8} mov        al, byte ptr [edi + 0x02]                     // 0x00866d0b    8a4702
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00866d0e    8b4c2430
                         {disp8} mov        ebp, dword ptr [ecx + 0x38]                   // 0x00866d12    8b6938
                         {disp8} mov        ecx, dword ptr [ecx + 0x3c]                   // 0x00866d15    8b493c
                         xor.s              edx, edx                                      // 0x00866d18    33d2
                         shr                eax, 6                                        // 0x00866d1a    c1e806
                         and                eax, 0x03                                     // 0x00866d1d    83e003
                         cmp.s              eax, ebp                                      // 0x00866d20    3bc5
                         setge              dl                                            // 0x00866d22    0f9dc2
                         dec                edx                                           // 0x00866d25    4a
                         and.s              eax, edx                                      // 0x00866d26    23c2
                         mov                ebx, dword ptr [ecx + eax * 0x4]              // 0x00866d28    8b1c81
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00866d2b    8d54241c
                         push               edx                                           // 0x00866d2f    52
                         mov.s              ecx, ebx                                      // 0x00866d30    8bcb
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00866d32    895c2414
                         call               _jmp_addr_0x00838af0                          // 0x00866d36    e8b51dfdff
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00866d3b    8b74241c
                         test               esi, esi                                      // 0x00866d3f    85f6
                         {disp32} je        _jmp_addr_0x00866e6d                          // 0x00866d41    0f8426010000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00866d47    8b542424
                         cmp                edx, 0x00000100                               // 0x00866d4b    81fa00010000
                         {disp8} je         _jmp_addr_0x00866d68                          // 0x00866d51    7415
                         cmp                edx, 0x00000080                               // 0x00866d53    81fa80000000
                         {disp32} jne       _jmp_addr_0x00866e6d                          // 0x00866d59    0f850e010000
                         xor.s              eax, eax                                      // 0x00866d5f    33c0
                         {disp8} mov        al, byte ptr [edi + 0x01]                     // 0x00866d61    8a4701
                         shr                eax, 1                                        // 0x00866d64    d1e8
                         {disp8} jmp        _jmp_addr_0x00866d73                          // 0x00866d66    eb0b
_jmp_addr_0x00866d68:    xor.s              eax, eax                                      // 0x00866d68    33c0
                         {disp8} mov        al, byte ptr [edi + 0x01]                     // 0x00866d6a    8a4701
                         xor.s              ecx, ecx                                      // 0x00866d6d    33c9
                         mov                cl, byte ptr [edi]                            // 0x00866d6f    8a0f
                         {disp8} jmp        _jmp_addr_0x00866d79                          // 0x00866d71    eb06
_jmp_addr_0x00866d73:    xor.s              ecx, ecx                                      // 0x00866d73    33c9
                         mov                cl, byte ptr [edi]                            // 0x00866d75    8a0f
                         shr                ecx, 1                                        // 0x00866d77    d1e9
_jmp_addr_0x00866d79:    {disp8} mov        edi, dword ptr [esp + 0x34]                   // 0x00866d79    8b7c2434
                         imul               eax, edx                                      // 0x00866d7d    0fafc2
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00866d80    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x00866d86    d8642438
                         add.s              eax, ecx                                      // 0x00866d8a    03c1
                         mov                bx, word ptr [esi + eax * 0x2]                // 0x00866d8c    668b1c46
                         lea                esi, dword ptr [esi + eax * 0x2]              // 0x00866d90    8d3446
                         xor.s              ecx, ecx                                      // 0x00866d93    33c9
                         {disp8} mov        cl, byte ptr [edi + 0x02]                     // 0x00866d95    8a4f02
                         mov.s              eax, ebx                                      // 0x00866d98    8bc3
                         shr                eax, 4                                        // 0x00866d9a    c1e804
                         and                eax, 0x000000f0                               // 0x00866d9d    25f0000000
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00866da2    89442430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00866da6    db442430
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00866daa    894c2430
                         fmul               st, st(1)                                     // 0x00866dae    d8c9
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00866db0    db442430
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00866db4    d84c2438
                         faddp              st(1), st                                     // 0x00866db8    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00866dba    e841a6f3ff
                         xor.s              ebp, ebp                                      // 0x00866dbf    33ed
                         mov.s              bp, ax                                        // 0x00866dc1    668be8
                         xor.s              eax, eax                                      // 0x00866dc4    33c0
                         mov                al, byte ptr [edi]                            // 0x00866dc6    8a07
                         mov.s              edx, ebx                                      // 0x00866dc8    8bd3
                         and                edx, 0x0f                                     // 0x00866dca    83e20f
                         shl                edx, 4                                        // 0x00866dcd    c1e204
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00866dd0    89542414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00866dd4    c744241800000000
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x00866ddc    df6c2414
                         and                ebp, 0x000000f0                               // 0x00866de0    81e5f0000000
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00866de6    89442430
                         add                ebp, 0x00000f00                               // 0x00866dea    81c5000f0000
                         fmul               st, st(1)                                     // 0x00866df0    d8c9
                         shl                ebp, 4                                        // 0x00866df2    c1e504
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00866df5    db442430
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00866df9    d84c2438
                         faddp              st(1), st                                     // 0x00866dfd    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00866dff    e8fca5f3ff
                         xor.s              ecx, ecx                                      // 0x00866e04    33c9
                         {disp8} mov        cl, byte ptr [edi + 0x01]                     // 0x00866e06    8a4f01
                         and                ebx, 0x000000f0                               // 0x00866e09    81e3f0000000
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00866e0f    895c2430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00866e13    db442430
                         shr                eax, 4                                        // 0x00866e17    c1e804
                         and                eax, 0x0f                                     // 0x00866e1a    83e00f
                         add.s              ebp, eax                                      // 0x00866e1d    03e8
                         fmul               st, st(1)                                     // 0x00866e1f    d8c9
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00866e21    894c2430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00866e25    db442430
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00866e29    d84c2438
                         faddp              st(1), st                                     // 0x00866e2d    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00866e2f    e8cca5f3ff
                         fstp               st(0)                                         // 0x00866e34    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00866e36    8b4c2410
                         and                eax, 0x000000f0                               // 0x00866e3a    25f0000000
                         add.s              ebp, eax                                      // 0x00866e3f    03e8
                         mov                word ptr [esi], bp                            // 0x00866e41    66892e
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x00866e44    8b4110
                         and                eax, 0x3f                                     // 0x00866e47    83e03f
                         cmp                eax, 0x08                                     // 0x00866e4a    83f808
                         {disp8} je         _jmp_addr_0x00866e54                          // 0x00866e4d    7405
                         cmp                eax, 0x04                                     // 0x00866e4f    83f804
                         {disp8} jne        _jmp_addr_0x00866e6f                          // 0x00866e52    751b
_jmp_addr_0x00866e54:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00866e54    c7813801000001000000
                         call               _jmp_addr_0x00838eb0                          // 0x00866e5e    e84d20fdff
                         pop                edi                                           // 0x00866e63    5f
                         pop                esi                                           // 0x00866e64    5e
                         pop                ebp                                           // 0x00866e65    5d
                         pop                ebx                                           // 0x00866e66    5b
                         add                esp, 0x1c                                     // 0x00866e67    83c41c
                         ret                0x000c                                        // 0x00866e6a    c20c00
_jmp_addr_0x00866e6d:    mov.s              ecx, ebx                                      // 0x00866e6d    8bcb
_jmp_addr_0x00866e6f:    call               _jmp_addr_0x00838eb0                          // 0x00866e6f    e83c20fdff
                         pop                edi                                           // 0x00866e74    5f
                         pop                esi                                           // 0x00866e75    5e
                         pop                ebp                                           // 0x00866e76    5d
                         pop                ebx                                           // 0x00866e77    5b
                         add                esp, 0x1c                                     // 0x00866e78    83c41c
                         ret                0x000c                                        // 0x00866e7b    c20c00
                         nop                                                              // 0x00866e7e    90
                         nop                                                              // 0x00866e7f    90
_globl_ct_0x00866e80:    {disp32} jmp       _jmp_addr_0x00866e90                          // 0x00866e80    e90b000000
                         nop                                                              // 0x00866e85    90
                         nop                                                              // 0x00866e86    90
                         nop                                                              // 0x00866e87    90
                         nop                                                              // 0x00866e88    90
                         nop                                                              // 0x00866e89    90
                         nop                                                              // 0x00866e8a    90
                         nop                                                              // 0x00866e8b    90
                         nop                                                              // 0x00866e8c    90
                         nop                                                              // 0x00866e8d    90
                         nop                                                              // 0x00866e8e    90
                         nop                                                              // 0x00866e8f    90
_jmp_addr_0x00866e90:    ret                                                              // 0x00866e90    c3
                         nop                                                              // 0x00866e91    90
                         nop                                                              // 0x00866e92    90
                         nop                                                              // 0x00866e93    90
                         nop                                                              // 0x00866e94    90
                         nop                                                              // 0x00866e95    90
                         nop                                                              // 0x00866e96    90
                         nop                                                              // 0x00866e97    90
                         nop                                                              // 0x00866e98    90
                         nop                                                              // 0x00866e99    90
                         nop                                                              // 0x00866e9a    90
                         nop                                                              // 0x00866e9b    90
                         nop                                                              // 0x00866e9c    90
                         nop                                                              // 0x00866e9d    90
                         nop                                                              // 0x00866e9e    90
                         nop                                                              // 0x00866e9f    90
_globl_ct_0x00866ea0:    {disp32} jmp       _jmp_addr_0x00866eb0                          // 0x00866ea0    e90b000000
                         nop                                                              // 0x00866ea5    90
                         nop                                                              // 0x00866ea6    90
                         nop                                                              // 0x00866ea7    90
                         nop                                                              // 0x00866ea8    90
                         nop                                                              // 0x00866ea9    90
                         nop                                                              // 0x00866eaa    90
                         nop                                                              // 0x00866eab    90
                         nop                                                              // 0x00866eac    90
                         nop                                                              // 0x00866ead    90
                         nop                                                              // 0x00866eae    90
                         nop                                                              // 0x00866eaf    90
_jmp_addr_0x00866eb0:    ret                                                              // 0x00866eb0    c3
                         nop                                                              // 0x00866eb1    90
                         nop                                                              // 0x00866eb2    90
                         nop                                                              // 0x00866eb3    90
                         nop                                                              // 0x00866eb4    90
                         nop                                                              // 0x00866eb5    90
                         nop                                                              // 0x00866eb6    90
                         nop                                                              // 0x00866eb7    90
                         nop                                                              // 0x00866eb8    90
                         nop                                                              // 0x00866eb9    90
                         nop                                                              // 0x00866eba    90
                         nop                                                              // 0x00866ebb    90
                         nop                                                              // 0x00866ebc    90
                         nop                                                              // 0x00866ebd    90
                         nop                                                              // 0x00866ebe    90
                         nop                                                              // 0x00866ebf    90
_jmp_addr_0x00866ec0:    sub                esp, 0x10                                     // 0x00866ec0    83ec10
                         push               ebx                                           // 0x00866ec3    53
                         push               ebp                                           // 0x00866ec4    55
                         push               esi                                           // 0x00866ec5    56
                         push               edi                                           // 0x00866ec6    57
                         push               0x009ce5d8                                    // 0x00866ec7    68d8e59c00
                         push               0x00c3952c                                    // 0x00866ecc    682c95c300
                         {disp32} mov       byte ptr [data_bytes + 0x5dc3dc], 0x01        // 0x00866ed1    c605dc23fa0001
                         call               _fopen                                        // 0x00866ed8    e840fff5ff
                         mov.s              edi, eax                                      // 0x00866edd    8bf8
                         add                esp, 0x08                                     // 0x00866edf    83c408
                         test               edi, edi                                      // 0x00866ee2    85ff
                         {disp32} je        _jmp_addr_0x00867034                          // 0x00866ee4    0f844a010000
                         push               0x009ce5d8                                    // 0x00866eea    68d8e59c00
                         push               0x00c39514                                    // 0x00866eef    681495c300
                         call               _fopen                                        // 0x00866ef4    e824fff5ff
                         mov.s              ebp, eax                                      // 0x00866ef9    8be8
                         add                esp, 0x08                                     // 0x00866efb    83c408
                         test               ebp, ebp                                      // 0x00866efe    85ed
                         {disp8} jne        _jmp_addr_0x00866f13                          // 0x00866f00    7511
                         push               edi                                           // 0x00866f02    57
                         call               _fclose                                       // 0x00866f03    e828fff5ff
                         add                esp, 0x04                                     // 0x00866f08    83c404
                         pop                edi                                           // 0x00866f0b    5f
                         pop                esi                                           // 0x00866f0c    5e
                         pop                ebp                                           // 0x00866f0d    5d
                         pop                ebx                                           // 0x00866f0e    5b
                         add                esp, 0x10                                     // 0x00866f0f    83c410
                         ret                                                              // 0x00866f12    c3
_jmp_addr_0x00866f13:    mov                esi, 0x00f463c0                               // 0x00866f13    bec063f400
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000100            // 0x00866f18    c744241400010000
_jmp_addr_0x00866f20:    {disp8} mov        dword ptr [esp + 0x10], 0x00000100            // 0x00866f20    c744241000010000
_jmp_addr_0x00866f28:    push               edi                                           // 0x00866f28    57
                         call               _fgetc                                        // 0x00866f29    e8a90ef6ff
                         push               edi                                           // 0x00866f2e    57
                         mov.s              ebx, eax                                      // 0x00866f2f    8bd8
                         call               _fgetc                                        // 0x00866f31    e8a10ef6ff
                         push               edi                                           // 0x00866f36    57
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00866f37    89442424
                         call               _fgetc                                        // 0x00866f3b    e8970ef6ff
                         push               ebp                                           // 0x00866f40    55
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00866f41    8944242c
                         call               _fgetc                                        // 0x00866f45    e88d0ef6ff
                         {disp8} mov        cl, byte ptr [esp + 0x2c]                     // 0x00866f4a    8a4c242c
                         {disp8} mov        byte ptr [esi + 0x03], al                     // 0x00866f4e    884603
                         {disp8} mov        al, byte ptr [esp + 0x28]                     // 0x00866f51    8a442428
                         {disp8} mov        byte ptr [esi + 0x01], al                     // 0x00866f55    884601
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00866f58    8b442420
                         {disp8} mov        byte ptr [esi + 0x02], bl                     // 0x00866f5c    885e02
                         mov                byte ptr [esi], cl                            // 0x00866f5f    880e
                         add                esp, 0x10                                     // 0x00866f61    83c410
                         add                esi, 0x04                                     // 0x00866f64    83c604
                         dec                eax                                           // 0x00866f67    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00866f68    89442410
                         {disp8} jne        _jmp_addr_0x00866f28                          // 0x00866f6c    75ba
                         dec                dword ptr [esp + 0x14]                        // 0x00866f6e    ff4c2414
                         {disp8} jne        _jmp_addr_0x00866f20                          // 0x00866f72    75ac
                         push               edi                                           // 0x00866f74    57
                         call               _fclose                                       // 0x00866f75    e8b6fef5ff
                         push               ebp                                           // 0x00866f7a    55
                         call               _fclose                                       // 0x00866f7b    e8b0fef5ff
                         push               0x009ce5d8                                    // 0x00866f80    68d8e59c00
                         push               0x00c394fc                                    // 0x00866f85    68fc94c300
                         call               _fopen                                        // 0x00866f8a    e88efef5ff
                         mov.s              edi, eax                                      // 0x00866f8f    8bf8
                         add                esp, 0x10                                     // 0x00866f91    83c410
                         test               edi, edi                                      // 0x00866f94    85ff
                         {disp32} je        _jmp_addr_0x00867034                          // 0x00866f96    0f8498000000
                         push               0x009ce5d8                                    // 0x00866f9c    68d8e59c00
                         push               0x00c394e4                                    // 0x00866fa1    68e494c300
                         call               _fopen                                        // 0x00866fa6    e872fef5ff
                         add                esp, 0x08                                     // 0x00866fab    83c408
                         test               eax, eax                                      // 0x00866fae    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00866fb0    89442410
                         {disp8} jne        _jmp_addr_0x00866fc7                          // 0x00866fb4    7511
                         push               edi                                           // 0x00866fb6    57
                         call               _fclose                                       // 0x00866fb7    e874fef5ff
                         add                esp, 0x04                                     // 0x00866fbc    83c404
                         pop                edi                                           // 0x00866fbf    5f
                         pop                esi                                           // 0x00866fc0    5e
                         pop                ebp                                           // 0x00866fc1    5d
                         pop                ebx                                           // 0x00866fc2    5b
                         add                esp, 0x10                                     // 0x00866fc3    83c410
                         ret                                                              // 0x00866fc6    c3
_jmp_addr_0x00866fc7:    mov                esi, 0x00f063c0                               // 0x00866fc7    bec063f000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000100            // 0x00866fcc    c744241400010000
_jmp_addr_0x00866fd4:    mov                ebp, 0x00000100                               // 0x00866fd4    bd00010000
_jmp_addr_0x00866fd9:    push               edi                                           // 0x00866fd9    57
                         call               _fgetc                                        // 0x00866fda    e8f80df6ff
                         push               edi                                           // 0x00866fdf    57
                         mov.s              ebx, eax                                      // 0x00866fe0    8bd8
                         call               _fgetc                                        // 0x00866fe2    e8f00df6ff
                         push               edi                                           // 0x00866fe7    57
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00866fe8    89442428
                         call               _fgetc                                        // 0x00866fec    e8e60df6ff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00866ff1    8b54241c
                         push               edx                                           // 0x00866ff5    52
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00866ff6    89442428
                         call               _fgetc                                        // 0x00866ffa    e8d80df6ff
                         {disp8} mov        cl, byte ptr [esp + 0x28]                     // 0x00866fff    8a4c2428
                         {disp8} mov        byte ptr [esi + 0x03], al                     // 0x00867003    884603
                         {disp8} mov        al, byte ptr [esp + 0x2c]                     // 0x00867006    8a44242c
                         {disp8} mov        byte ptr [esi + 0x02], bl                     // 0x0086700a    885e02
                         {disp8} mov        byte ptr [esi + 0x01], al                     // 0x0086700d    884601
                         mov                byte ptr [esi], cl                            // 0x00867010    880e
                         add                esp, 0x10                                     // 0x00867012    83c410
                         add                esi, 0x04                                     // 0x00867015    83c604
                         dec                ebp                                           // 0x00867018    4d
                         {disp8} jne        _jmp_addr_0x00866fd9                          // 0x00867019    75be
                         dec                dword ptr [esp + 0x14]                        // 0x0086701b    ff4c2414
                         {disp8} jne        _jmp_addr_0x00866fd4                          // 0x0086701f    75b3
                         push               edi                                           // 0x00867021    57
                         call               _fclose                                       // 0x00867022    e809fef5ff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00867027    8b542414
                         push               edx                                           // 0x0086702b    52
                         call               _fclose                                       // 0x0086702c    e8fffdf5ff
                         add                esp, 0x08                                     // 0x00867031    83c408
_jmp_addr_0x00867034:    pop                edi                                           // 0x00867034    5f
                         pop                esi                                           // 0x00867035    5e
                         pop                ebp                                           // 0x00867036    5d
                         pop                ebx                                           // 0x00867037    5b
                         add                esp, 0x10                                     // 0x00867038    83c410
                         ret                                                              // 0x0086703b    c3
                         nop                                                              // 0x0086703c    90
                         nop                                                              // 0x0086703d    90
                         nop                                                              // 0x0086703e    90
                         nop                                                              // 0x0086703f    90
_jmp_addr_0x00867040:    {disp32} mov       al, byte ptr [data_bytes + 0x5dc3dc]          // 0x00867040    a0dc23fa00
                         sub                esp, 0x4c                                     // 0x00867045    83ec4c
                         test               al, al                                        // 0x00867048    84c0
                         push               ebx                                           // 0x0086704a    53
                         push               esi                                           // 0x0086704b    56
                         push               edi                                           // 0x0086704c    57
                         mov.s              edi, ecx                                      // 0x0086704d    8bf9
                         {disp8} jne        _jmp_addr_0x00867056                          // 0x0086704f    7505
                         call               _jmp_addr_0x00866ec0                          // 0x00867051    e86afeffff
_jmp_addr_0x00867056:    {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x00867056    8b4c245c
                         {disp8} mov        esi, dword ptr [ecx + 0x38]                   // 0x0086705a    8b7138
                         {disp8} mov        ecx, dword ptr [ecx + 0x3c]                   // 0x0086705d    8b493c
                         xor.s              eax, eax                                      // 0x00867060    33c0
                         {disp8} mov        al, byte ptr [edi + 0x02]                     // 0x00867062    8a4702
                         xor.s              edx, edx                                      // 0x00867065    33d2
                         shr                eax, 6                                        // 0x00867067    c1e806
                         and                eax, 0x03                                     // 0x0086706a    83e003
                         cmp.s              eax, esi                                      // 0x0086706d    3bc6
                         setge              dl                                            // 0x0086706f    0f9dc2
                         dec                edx                                           // 0x00867072    4a
                         and.s              eax, edx                                      // 0x00867073    23c2
                         mov                ebx, dword ptr [ecx + eax * 0x4]              // 0x00867075    8b1c81
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x00867078    8d542448
                         push               edx                                           // 0x0086707c    52
                         mov.s              ecx, ebx                                      // 0x0086707d    8bcb
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x0086707f    895c2440
                         call               _jmp_addr_0x00838af0                          // 0x00867083    e8681afdff
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00867088    8b442448
                         test               eax, eax                                      // 0x0086708c    85c0
                         {disp32} je        _jmp_addr_0x008673e7                          // 0x0086708e    0f8453030000
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00867094    89442428
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00867098    8b442450
                         cmp                eax, 0x00000100                               // 0x0086709c    3d00010000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x008670a1    89442424
                         {disp8} jne        _jmp_addr_0x008670ae                          // 0x008670a5    7507
                         {disp8} mov        byte ptr [esp + 0x5c], 0x01                   // 0x008670a7    c644245c01
                         {disp8} jmp        _jmp_addr_0x008670be                          // 0x008670ac    eb10
_jmp_addr_0x008670ae:    cmp                eax, 0x00000080                               // 0x008670ae    3d80000000
                         {disp32} jne       _jmp_addr_0x008673e7                          // 0x008670b3    0f852e030000
                         {disp8} mov        byte ptr [esp + 0x5c], 0x00                   // 0x008670b9    c644245c00
_jmp_addr_0x008670be:    {disp8} fld        dword ptr [esp + 0x60]                        // 0x008670be    d9442460
                         xor.s              ecx, ecx                                      // 0x008670c2    33c9
                         {disp8} mov        cx, word ptr [edi + 0x02]                     // 0x008670c4    668b4f02
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x008670c8    d80d70b28a00
                         mov.s              eax, ecx                                      // 0x008670ce    8bc1
                         shr                eax, 8                                        // 0x008670d0    c1e808
                         and                eax, 0x07                                     // 0x008670d3    83e007
                         shr                ecx, 0xb                                      // 0x008670d6    c1e90b
                         shl                eax, 8                                        // 0x008670d9    c1e008
                         and                ecx, 0x07                                     // 0x008670dc    83e107
                         add.s              eax, ecx                                      // 0x008670df    03c1
                         shl                eax, 5                                        // 0x008670e1    c1e005
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00f463c0]       // 0x008670e4    8d0c85c063f400
                         {disp32} lea       edx, dword ptr [eax * 0x4 + 0x00f063c0]       // 0x008670eb    8d1485c063f000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x008670f2    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x008670f6    89542410
                         call               _jmp_addr_0x007a1400                          // 0x008670fa    e801a3f3ff
                         {disp8} mov        cl, byte ptr [esp + 0x5c]                     // 0x008670ff    8a4c245c
                         test               cl, cl                                        // 0x00867103    84c9
                         mov.s              esi, eax                                      // 0x00867105    8bf0
                         {disp8} mov        dword ptr [esp + 0x34], esi                   // 0x00867107    89742434
                         {disp8} je         _jmp_addr_0x00867120                          // 0x0086710b    7413
                         xor.s              eax, eax                                      // 0x0086710d    33c0
                         {disp8} mov        al, byte ptr [edi + 0x01]                     // 0x0086710f    8a4701
                         xor.s              edx, edx                                      // 0x00867112    33d2
                         mov                dl, byte ptr [edi]                            // 0x00867114    8a17
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x00867116    89442460
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0086711a    89542414
                         {disp8} jmp        _jmp_addr_0x00867135                          // 0x0086711e    eb15
_jmp_addr_0x00867120:    xor.s              eax, eax                                      // 0x00867120    33c0
                         {disp8} mov        al, byte ptr [edi + 0x01]                     // 0x00867122    8a4701
                         shr                eax, 1                                        // 0x00867125    d1e8
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x00867127    89442460
                         xor.s              eax, eax                                      // 0x0086712b    33c0
                         mov                al, byte ptr [edi]                            // 0x0086712d    8a07
                         shr                eax, 1                                        // 0x0086712f    d1e8
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00867131    89442414
_jmp_addr_0x00867135:    mov.s              al, cl                                        // 0x00867135    8ac1
                         neg                al                                            // 0x00867137    f6d8
                         push               ebp                                           // 0x00867139    55
                         sbb.s              eax, eax                                      // 0x0086713a    1bc0
                         and                eax, 0x08                                     // 0x0086713c    83e008
                         add                eax, 0x08                                     // 0x0086713f    83c008
                         mov.s              ebp, eax                                      // 0x00867142    8be8
                         xor.s              edx, edx                                      // 0x00867144    33d2
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                   // 0x00867146    896c243c
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0086714a    89542424
_jmp_addr_0x0086714e:    test               cl, cl                                        // 0x0086714e    84c9
                         {disp8} jne        _jmp_addr_0x0086716f                          // 0x00867150    751d
                         test               dl, 0x01                                      // 0x00867152    f6c201
                         {disp8} jne        _jmp_addr_0x00867173                          // 0x00867155    751c
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00867157    8b7c2410
                         mov                eax, 0x00000400                               // 0x0086715b    b800040000
                         add.s              edi, eax                                      // 0x00867160    03f8
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00867162    897c2410
                         add                dword ptr [esp + 0x14], eax                   // 0x00867166    01442414
                         {disp32} jmp       _jmp_addr_0x008673a7                          // 0x0086716a    e938020000
_jmp_addr_0x0086716f:    mov.s              eax, edx                                      // 0x0086716f    8bc2
                         {disp8} jmp        _jmp_addr_0x00867177                          // 0x00867171    eb04
_jmp_addr_0x00867173:    mov.s              eax, edx                                      // 0x00867173    8bc2
                         sar                eax, 1                                        // 0x00867175    d1f8
_jmp_addr_0x00867177:    {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00867177    8b4c2464
                         sub.s              eax, ebp                                      // 0x0086717b    2bc5
                         add.s              eax, ecx                                      // 0x0086717d    03c1
                         xor.s              ecx, ecx                                      // 0x0086717f    33c9
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00867181    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00867185    894c2420
_jmp_addr_0x00867189:    {disp8} mov        bl, byte ptr [esp + 0x60]                     // 0x00867189    8a5c2460
                         test               bl, bl                                        // 0x0086718d    84db
                         {disp32} jne       _jmp_addr_0x008673e0                          // 0x0086718f    0f854b020000
                         test               cl, 0x01                                      // 0x00867195    f6c101
                         {disp32} je        _jmp_addr_0x00867361                          // 0x00867198    0f84c3010000
                         mov.s              edi, ecx                                      // 0x0086719e    8bf9
                         sar                edi, 1                                        // 0x008671a0    d1ff
_jmp_addr_0x008671a2:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x008671a2    8b5c2418
                         sub.s              edi, ebp                                      // 0x008671a6    2bfd
                         add.s              edi, ebx                                      // 0x008671a8    03fb
                         {disp32} js        _jmp_addr_0x00867361                          // 0x008671aa    0f88b1010000
                         cmp                edi, dword ptr [esp + 0x54]                   // 0x008671b0    3b7c2454
                         {disp32} jge       _jmp_addr_0x00867361                          // 0x008671b4    0f8da7010000
                         test               eax, eax                                      // 0x008671ba    85c0
                         {disp32} jl        _jmp_addr_0x00867361                          // 0x008671bc    0f8c9f010000
                         cmp                eax, dword ptr [esp + 0x58]                   // 0x008671c2    3b442458
                         {disp32} jge       _jmp_addr_0x00867361                          // 0x008671c6    0f8d95010000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x008671cc    8b4c2414
                         mov                eax, dword ptr [ecx]                          // 0x008671d0    8b01
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x008671d2    8b542410
                         mov                edx, dword ptr [edx]                          // 0x008671d6    8b12
                         mov.s              ecx, eax                                      // 0x008671d8    8bc8
                         mov.s              ebx, edx                                      // 0x008671da    8bda
                         and                ebx, 0x00ff0000                               // 0x008671dc    81e30000ff00
                         and                ecx, 0x00ff0000                               // 0x008671e2    81e10000ff00
                         sub.s              ecx, ebx                                      // 0x008671e8    2bcb
                         imul               ecx, esi                                      // 0x008671ea    0fafce
                         mov.s              ebp, eax                                      // 0x008671ed    8be8
                         mov.s              ebx, edx                                      // 0x008671ef    8bda
                         and                ebx, 0xffff0000                               // 0x008671f1    81e30000ffff
                         and                ebp, 0x0000ff00                               // 0x008671f7    81e500ff0000
                         shr                ecx, 8                                        // 0x008671fd    c1e908
                         add.s              ecx, ebx                                      // 0x00867200    03cb
                         mov.s              ebx, edx                                      // 0x00867202    8bda
                         and                ebx, 0x0000ff00                               // 0x00867204    81e300ff0000
                         sub.s              ebp, ebx                                      // 0x0086720a    2beb
                         imul               ebp, esi                                      // 0x0086720c    0fafee
                         shr                ebp, 8                                        // 0x0086720f    c1ed08
                         mov.s              ebx, edx                                      // 0x00867212    8bda
                         and                ebx, 0xffffff00                               // 0x00867214    81e300ffffff
                         add.s              ebp, ebx                                      // 0x0086721a    03eb
                         and                ebp, 0x0000ff00                               // 0x0086721c    81e500ff0000
                         mov.s              ebx, edx                                      // 0x00867222    8bda
                         and                ecx, 0x00ff0000                               // 0x00867224    81e10000ff00
                         or.s               ecx, ebp                                      // 0x0086722a    0bcd
                         mov.s              ebp, eax                                      // 0x0086722c    8be8
                         shr                ebx, 0x18                                     // 0x0086722e    c1eb18
                         shr                ebp, 0x18                                     // 0x00867231    c1ed18
                         sub.s              ebp, ebx                                      // 0x00867234    2beb
                         imul               ebp, esi                                      // 0x00867236    0fafee
                         and                eax, 0x000000ff                               // 0x00867239    25ff000000
                         mov.s              ebx, edx                                      // 0x0086723e    8bda
                         and                ebp, 0x0000ff00                               // 0x00867240    81e500ff0000
                         and                ebx, 0xff000000                               // 0x00867246    81e3000000ff
                         shl                ebp, 0x10                                     // 0x0086724c    c1e510
                         add.s              ebp, ebx                                      // 0x0086724f    03eb
                         mov.s              ebx, edx                                      // 0x00867251    8bda
                         and                ebx, 0x000000ff                               // 0x00867253    81e3ff000000
                         sub.s              eax, ebx                                      // 0x00867259    2bc3
                         imul               eax, esi                                      // 0x0086725b    0fafc6
                         shr                eax, 8                                        // 0x0086725e    c1e808
                         add.s              eax, edx                                      // 0x00867261    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00867263    8b54242c
                         and                eax, 0x000000ff                               // 0x00867267    25ff000000
                         or.s               ecx, ebp                                      // 0x0086726c    0bcd
                         or.s               ecx, eax                                      // 0x0086726e    0bc8
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00867270    8b44241c
                         imul               eax, dword ptr [esp + 0x28]                   // 0x00867274    0faf442428
                         add.s              eax, edi                                      // 0x00867279    03c7
                         lea                eax, dword ptr [edx + eax * 0x2]              // 0x0086727b    8d0442
                         xor.s              esi, esi                                      // 0x0086727e    33f6
                         mov                si, word ptr [eax]                            // 0x00867280    668b30
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00867283    89442434
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x00867287    894c2444
                         {disp8} mov        ebp, dword ptr [esp + 0x47]                   // 0x0086728b    8b6c2447
                         {disp8} mov        eax, dword ptr [esp + 0x46]                   // 0x0086728f    8b442446
                         and                eax, 0x000000ff                               // 0x00867293    25ff000000
                         and                ebp, 0x000000ff                               // 0x00867298    81e5ff000000
                         mov.s              edi, esi                                      // 0x0086729e    8bfe
                         imul               eax, ebp                                      // 0x008672a0    0fafc5
                         shr                edi, 4                                        // 0x008672a3    c1ef04
                         and                edi, 0x000000f0                               // 0x008672a6    81e7f0000000
                         mov                ebx, 0x000000ff                               // 0x008672ac    bbff000000
                         sub.s              ebx, ebp                                      // 0x008672b1    2bdd
                         imul               edi, ebx                                      // 0x008672b3    0faffb
                         add.s              edi, eax                                      // 0x008672b6    03f8
                         mov                eax, 0x80808081                               // 0x008672b8    b881808080
                         imul               edi                                           // 0x008672bd    f7ef
                         add.s              edx, edi                                      // 0x008672bf    03d7
                         sar                edx, 7                                        // 0x008672c1    c1fa07
                         mov.s              eax, edx                                      // 0x008672c4    8bc2
                         shr                eax, 0x1f                                     // 0x008672c6    c1e81f
                         add.s              edx, eax                                      // 0x008672c9    03d0
                         and                edx, 0x000000f0                               // 0x008672cb    81e2f0000000
                         add                edx, 0x00000f00                               // 0x008672d1    81c2000f0000
                         mov.s              edi, esi                                      // 0x008672d7    8bfe
                         shl                edx, 4                                        // 0x008672d9    c1e204
                         and                edi, 0x0f                                     // 0x008672dc    83e70f
                         and                ecx, 0x000000ff                               // 0x008672df    81e1ff000000
                         imul               ecx, ebp                                      // 0x008672e5    0fafcd
                         shl                edi, 4                                        // 0x008672e8    c1e704
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x008672eb    89542430
                         imul               edi, ebx                                      // 0x008672ef    0faffb
                         add.s              edi, ecx                                      // 0x008672f2    03f9
                         mov                eax, 0x80808081                               // 0x008672f4    b881808080
                         imul               edi                                           // 0x008672f9    f7ef
                         add.s              edx, edi                                      // 0x008672fb    03d7
                         sar                edx, 7                                        // 0x008672fd    c1fa07
                         mov.s              ecx, edx                                      // 0x00867300    8bca
                         shr                ecx, 0x1f                                     // 0x00867302    c1e91f
                         add.s              edx, ecx                                      // 0x00867305    03d1
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00867307    8b4c2430
                         sar                edx, 4                                        // 0x0086730b    c1fa04
                         and                edx, 0x0f                                     // 0x0086730e    83e20f
                         add.s              ecx, edx                                      // 0x00867311    03ca
                         {disp8} mov        edx, dword ptr [esp + 0x45]                   // 0x00867313    8b542445
                         and                edx, 0x000000ff                               // 0x00867317    81e2ff000000
                         imul               edx, ebp                                      // 0x0086731d    0fafd5
                         and                esi, 0x000000f0                               // 0x00867320    81e6f0000000
                         imul               esi, ebx                                      // 0x00867326    0faff3
                         add.s              esi, edx                                      // 0x00867329    03f2
                         {disp8} mov        ebp, dword ptr [esp + 0x3c]                   // 0x0086732b    8b6c243c
                         mov                eax, 0x80808081                               // 0x0086732f    b881808080
                         imul               esi                                           // 0x00867334    f7ee
                         add.s              edx, esi                                      // 0x00867336    03d6
                         {disp8} mov        esi, dword ptr [esp + 0x38]                   // 0x00867338    8b742438
                         sar                edx, 7                                        // 0x0086733c    c1fa07
                         mov.s              eax, edx                                      // 0x0086733f    8bc2
                         shr                eax, 0x1f                                     // 0x00867341    c1e81f
                         add.s              edx, eax                                      // 0x00867344    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00867346    8b44241c
                         and                edx, 0x000000f0                               // 0x0086734a    81e2f0000000
                         add.s              ecx, edx                                      // 0x00867350    03ca
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00867352    8b542434
                         mov                word ptr [edx], cx                            // 0x00867356    66890a
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00867359    8b542424
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086735d    8b4c2420
_jmp_addr_0x00867361:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00867361    8b5c2410
                         mov                edi, 0x00000004                               // 0x00867365    bf04000000
                         add.s              ebx, edi                                      // 0x0086736a    03df
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0086736c    895c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00867370    8b5c2414
                         add.s              ebx, edi                                      // 0x00867374    03df
                         inc                ecx                                           // 0x00867376    41
                         cmp                ecx, 0x20                                     // 0x00867377    83f920
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0086737a    895c2414
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0086737e    894c2420
                         {disp32} jl        _jmp_addr_0x00867189                          // 0x00867382    0f8c01feffff
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00867388    8b7c2410
                         mov                eax, 0x00000380                               // 0x0086738c    b880030000
                         mov.s              ecx, ebx                                      // 0x00867391    8bcb
                         {disp8} mov        ebx, dword ptr [esp + 0x40]                   // 0x00867393    8b5c2440
                         add.s              edi, eax                                      // 0x00867397    03f8
                         add.s              ecx, eax                                      // 0x00867399    03c8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0086739b    894c2414
                         {disp8} mov        cl, byte ptr [esp + 0x60]                     // 0x0086739f    8a4c2460
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x008673a3    897c2410
_jmp_addr_0x008673a7:    inc                edx                                           // 0x008673a7    42
                         cmp                edx, 0x20                                     // 0x008673a8    83fa20
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x008673ab    89542424
                         {disp32} jl        _jmp_addr_0x0086714e                          // 0x008673af    0f8c99fdffff
                         mov.s              ecx, ebx                                      // 0x008673b5    8bcb
                         call               _jmp_addr_0x00838eb0                          // 0x008673b7    e8f41afdff
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                   // 0x008673bc    8b4310
                         and                eax, 0x3f                                     // 0x008673bf    83e03f
                         cmp                eax, 0x08                                     // 0x008673c2    83f808
                         pop                ebp                                           // 0x008673c5    5d
                         {disp8} je         _jmp_addr_0x008673cd                          // 0x008673c6    7405
                         cmp                eax, 0x04                                     // 0x008673c8    83f804
                         {disp8} jne        _jmp_addr_0x008673ee                          // 0x008673cb    7521
_jmp_addr_0x008673cd:    pop                edi                                           // 0x008673cd    5f
                         pop                esi                                           // 0x008673ce    5e
                         {disp32} mov       dword ptr [ebx + 0x00000138], 0x00000001      // 0x008673cf    c7833801000001000000
                         pop                ebx                                           // 0x008673d9    5b
                         add                esp, 0x4c                                     // 0x008673da    83c44c
                         ret                0x0008                                        // 0x008673dd    c20800
_jmp_addr_0x008673e0:    mov.s              edi, ecx                                      // 0x008673e0    8bf9
                         {disp32} jmp       _jmp_addr_0x008671a2                          // 0x008673e2    e9bbfdffff
_jmp_addr_0x008673e7:    mov.s              ecx, ebx                                      // 0x008673e7    8bcb
                         call               _jmp_addr_0x00838eb0                          // 0x008673e9    e8c21afdff
_jmp_addr_0x008673ee:    pop                edi                                           // 0x008673ee    5f
                         pop                esi                                           // 0x008673ef    5e
                         pop                ebx                                           // 0x008673f0    5b
                         add                esp, 0x4c                                     // 0x008673f1    83c44c
                         ret                0x0008                                        // 0x008673f4    c20800
                         nop                                                              // 0x008673f7    90
                         nop                                                              // 0x008673f8    90
                         nop                                                              // 0x008673f9    90
                         nop                                                              // 0x008673fa    90
                         nop                                                              // 0x008673fb    90
                         nop                                                              // 0x008673fc    90
                         nop                                                              // 0x008673fd    90
                         nop                                                              // 0x008673fe    90
                         nop                                                              // 0x008673ff    90
_jmp_addr_0x00867400:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00867400    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x00867404    8b5010
                         sub                esp, 0x6c                                     // 0x00867407    83ec6c
                         push               esi                                           // 0x0086740a    56
                         mov.s              esi, ecx                                      // 0x0086740b    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086740d    8b4e04
                         mov                ecx, dword ptr [edx + ecx * 0x4]              // 0x00867410    8b0c8a
                         mov                edx, dword ptr [esi]                          // 0x00867413    8b16
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00867415    8b4908
                         push               edi                                           // 0x00867418    57
                         mov                edi, dword ptr [ecx + edx * 0x4]              // 0x00867419    8b3c91
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086741c    8b4804
                         test               ch, 0x01                                      // 0x0086741f    f6c501
                         {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x00867422    8b5714
                         {disp32} je        _jmp_addr_0x00867590                          // 0x00867425    0f8465010000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x0086742b    8b4e14
                         xor.s              eax, eax                                      // 0x0086742e    33c0
                         push               ebx                                           // 0x00867430    53
                         {disp8} mov        ebx, dword ptr [edi + 0x24]                   // 0x00867431    8b5f24
                         {disp8} mov        ax, word ptr [ebx + ecx * 0x4 + 0x02]         // 0x00867434    668b448b02
                         {disp32} mov       ebx, dword ptr [esp + 0x00000080]             // 0x00867439    8b9c2480000000
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00867440    8b4e08
                         shl                ecx, 5                                        // 0x00867443    c1e105
                         add.s              ecx, edx                                      // 0x00867446    03ca
                         push               ebp                                           // 0x00867448    55
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00867449    8d0440
                         shl                eax, 4                                        // 0x0086744c    c1e004
                         {disp8} fld        dword ptr [eax + ebx * 0x1 + 0x0c]            // 0x0086744f    d944180c
                         add.s              eax, ebx                                      // 0x00867453    03c3
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867455    d84904
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x00867458    d94018
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0086745b    d84908
                         faddp              st(1), st                                     // 0x0086745e    dec1
                         fld                dword ptr [eax]                               // 0x00867460    d900
                         fmul               dword ptr [ecx]                               // 0x00867462    d809
                         faddp              st(1), st                                     // 0x00867464    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x00867466    d84024
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00867469    d95c2410
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0086746d    d94010
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867470    d84904
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x00867473    d9401c
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867476    d84908
                         faddp              st(1), st                                     // 0x00867479    dec1
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0086747b    d94004
                         fmul               dword ptr [ecx]                               // 0x0086747e    d809
                         faddp              st(1), st                                     // 0x00867480    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00867482    d84028
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00867485    d95c2414
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00867489    d94014
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086748c    d84904
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0086748f    d94020
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867492    d84908
                         faddp              st(1), st                                     // 0x00867495    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00867497    d94008
                         fmul               dword ptr [ecx]                               // 0x0086749a    d809
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x0086749c    8b4e18
                         faddp              st(1), st                                     // 0x0086749f    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x008674a1    d8402c
                         xor.s              eax, eax                                      // 0x008674a4    33c0
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x008674a6    d95c2418
                         {disp8} mov        ebp, dword ptr [edi + 0x24]                   // 0x008674aa    8b6f24
                         {disp8} mov        ax, word ptr [ebp + ecx * 0x4 + 0x02]         // 0x008674ad    668b448d02
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x008674b2    8b4e0c
                         shl                ecx, 5                                        // 0x008674b5    c1e105
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x008674b8    8d0440
                         shl                eax, 4                                        // 0x008674bb    c1e004
                         {disp8} fld        dword ptr [eax + ebx * 0x1 + 0x18]            // 0x008674be    d9441818
                         add.s              eax, ebx                                      // 0x008674c2    03c3
                         {disp8} fmul       dword ptr [ecx + edx * 0x1 + 0x08]            // 0x008674c4    d84c1108
                         add.s              ecx, edx                                      // 0x008674c8    03ca
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x008674ca    d9400c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x008674cd    d84904
                         faddp              st(1), st                                     // 0x008674d0    dec1
                         fld                dword ptr [ecx]                               // 0x008674d2    d901
                         fmul               dword ptr [eax]                               // 0x008674d4    d808
                         faddp              st(1), st                                     // 0x008674d6    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x008674d8    d84024
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x008674db    d95c241c
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x008674df    d94004
                         fmul               dword ptr [ecx]                               // 0x008674e2    d809
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x008674e4    d9401c
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x008674e7    d84908
                         faddp              st(1), st                                     // 0x008674ea    dec1
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x008674ec    d94010
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x008674ef    d84904
                         faddp              st(1), st                                     // 0x008674f2    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x008674f4    d84028
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x008674f7    d95c2420
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x008674fb    d94008
                         fmul               dword ptr [ecx]                               // 0x008674fe    d809
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x00867500    d94020
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867503    d84908
                         faddp              st(1), st                                     // 0x00867506    dec1
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00867508    d94014
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086750b    d84904
                         faddp              st(1), st                                     // 0x0086750e    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x00867510    d8402c
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x00867513    8b4e1c
                         xor.s              eax, eax                                      // 0x00867516    33c0
                         pop                ebp                                           // 0x00867518    5d
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00867519    d95c2420
                         {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x0086751d    8b7f24
                         {disp8} mov        ax, word ptr [edi + ecx * 0x4 + 0x02]         // 0x00867520    668b448f02
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00867525    8b4e10
                         shl                ecx, 5                                        // 0x00867528    c1e105
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0086752b    8d0440
                         shl                eax, 4                                        // 0x0086752e    c1e004
                         {disp8} fld        dword ptr [eax + ebx * 0x1 + 0x18]            // 0x00867531    d9441818
                         add.s              eax, ebx                                      // 0x00867535    03c3
                         {disp8} fmul       dword ptr [ecx + edx * 0x1 + 0x08]            // 0x00867537    d84c1108
                         add.s              ecx, edx                                      // 0x0086753b    03ca
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0086753d    d9400c
                         pop                ebx                                           // 0x00867540    5b
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867541    d84904
                         faddp              st(1), st                                     // 0x00867544    dec1
                         fld                dword ptr [eax]                               // 0x00867546    d900
                         fmul               dword ptr [ecx]                               // 0x00867548    d809
                         faddp              st(1), st                                     // 0x0086754a    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0086754c    d84024
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086754f    d95c2420
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x00867553    d9401c
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867556    d84908
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x00867559    d94010
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086755c    d84904
                         faddp              st(1), st                                     // 0x0086755f    dec1
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00867561    d94004
                         fmul               dword ptr [ecx]                               // 0x00867564    d809
                         faddp              st(1), st                                     // 0x00867566    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00867568    d84028
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086756b    d95c2424
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0086756f    d94020
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867572    d84908
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00867575    d94014
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867578    d84904
                         faddp              st(1), st                                     // 0x0086757b    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086757d    d94008
                         fmul               dword ptr [ecx]                               // 0x00867580    d809
                         faddp              st(1), st                                     // 0x00867582    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x00867584    d8402c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00867587    d95c2428
                         {disp32} jmp       _jmp_addr_0x008676a6                          // 0x0086758b    e916010000
_jmp_addr_0x00867590:    {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x00867590    8b44247c
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00867594    8b4e08
                         shl                ecx, 5                                        // 0x00867597    c1e105
                         {disp8} fld        dword ptr [ecx + edx * 0x1 + 0x08]            // 0x0086759a    d9441108
                         add.s              ecx, edx                                      // 0x0086759e    03ca
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x008675a0    d84818
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x008675a3    d9400c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x008675a6    d84904
                         faddp              st(1), st                                     // 0x008675a9    dec1
                         fld                dword ptr [eax]                               // 0x008675ab    d900
                         fmul               dword ptr [ecx]                               // 0x008675ad    d809
                         faddp              st(1), st                                     // 0x008675af    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x008675b1    d84024
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x008675b4    d95c2408
                         fld                dword ptr [ecx]                               // 0x008675b8    d901
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008675ba    d84804
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x008675bd    d94108
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x008675c0    d8481c
                         faddp              st(1), st                                     // 0x008675c3    dec1
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x008675c5    d94104
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x008675c8    d84810
                         faddp              st(1), st                                     // 0x008675cb    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x008675cd    d84028
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x008675d0    d95c240c
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x008675d4    d94108
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x008675d7    d84820
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x008675da    d94104
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x008675dd    d84814
                         faddp              st(1), st                                     // 0x008675e0    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x008675e2    d94008
                         fmul               dword ptr [ecx]                               // 0x008675e5    d809
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x008675e7    8b4e0c
                         shl                ecx, 5                                        // 0x008675ea    c1e105
                         add.s              ecx, edx                                      // 0x008675ed    03ca
                         faddp              st(1), st                                     // 0x008675ef    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x008675f1    d8402c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008675f4    d95c2410
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x008675f8    d9400c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x008675fb    d84904
                         fld                dword ptr [eax]                               // 0x008675fe    d900
                         fmul               dword ptr [ecx]                               // 0x00867600    d809
                         faddp              st(1), st                                     // 0x00867602    dec1
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00867604    d94108
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00867607    d84818
                         faddp              st(1), st                                     // 0x0086760a    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0086760c    d84024
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086760f    d95c2414
                         fld                dword ptr [ecx]                               // 0x00867613    d901
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00867615    d84804
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00867618    d94108
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0086761b    d8481c
                         faddp              st(1), st                                     // 0x0086761e    dec1
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x00867620    d94104
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00867623    d84810
                         faddp              st(1), st                                     // 0x00867626    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00867628    d84028
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086762b    d95c2418
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0086762f    d94020
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00867632    d84908
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00867635    d94014
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867638    d84904
                         faddp              st(1), st                                     // 0x0086763b    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086763d    d94008
                         fmul               dword ptr [ecx]                               // 0x00867640    d809
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00867642    8b4e10
                         shl                ecx, 5                                        // 0x00867645    c1e105
                         add.s              ecx, edx                                      // 0x00867648    03ca
                         faddp              st(1), st                                     // 0x0086764a    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0086764c    d8402c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086764f    d95c241c
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x00867653    d9400c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00867656    d84904
                         fld                dword ptr [ecx]                               // 0x00867659    d901
                         fmul               dword ptr [eax]                               // 0x0086765b    d808
                         faddp              st(1), st                                     // 0x0086765d    dec1
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0086765f    d94108
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00867662    d84818
                         faddp              st(1), st                                     // 0x00867665    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x00867667    d84024
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086766a    d95c2420
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0086766e    d94108
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00867671    d8481c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x00867674    d94104
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00867677    d84810
                         faddp              st(1), st                                     // 0x0086767a    dec1
                         fld                dword ptr [ecx]                               // 0x0086767c    d901
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086767e    d84804
                         faddp              st(1), st                                     // 0x00867681    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x00867683    d84028
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00867686    d95c2424
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0086768a    d94108
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0086768d    d84820
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x00867690    d94104
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00867693    d84814
                         faddp              st(1), st                                     // 0x00867696    dec1
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00867698    d94008
                         fmul               dword ptr [ecx]                               // 0x0086769b    d809
                         faddp              st(1), st                                     // 0x0086769d    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0086769f    d8402c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x008676a2    d95c2428
_jmp_addr_0x008676a6:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x008676a6    8d542408
                         push               edx                                           // 0x008676aa    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x008676ab    8d44243c
                         push               eax                                           // 0x008676af    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x008676b0    8d4c241c
                         call               _jmp_addr_0x0044cf90                          // 0x008676b4    e8d758beff
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x008676b9    8d4c2408
                         push               ecx                                           // 0x008676bd    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x008676be    8d542430
                         push               edx                                           // 0x008676c2    52
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x008676c3    8d4c2428
                         call               _jmp_addr_0x0044cf90                          // 0x008676c7    e8c458beff
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x008676cc    8d442438
                         push               eax                                           // 0x008676d0    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x008676d1    8d4c2430
                         push               ecx                                           // 0x008676d5    51
                         {disp32} mov       ecx, dword ptr [esp + 0x0000008c]             // 0x008676d6    8b8c248c000000
                         call               _jmp_addr_0x006a3e20                          // 0x008676dd    e83ec7e3ff
                         {disp8} mov        edx, dword ptr [esi + 0x24]                   // 0x008676e2    8b5624
                         push               edx                                           // 0x008676e5    52
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x008676e6    8d442448
                         push               eax                                           // 0x008676ea    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x008676eb    8d4c2434
                         call               _jmp_addr_0x0044e9f0                          // 0x008676ef    e8fc72beff
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x008676f4    8b5620
                         push               eax                                           // 0x008676f7    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x008676f8    8d4c2454
                         push               ecx                                           // 0x008676fc    51
                         push               edx                                           // 0x008676fd    52
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x008676fe    8d442468
                         push               eax                                           // 0x00867702    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x00867703    8d4c2448
                         call               _jmp_addr_0x0044e9f0                          // 0x00867707    e8e472beff
                         push               eax                                           // 0x0086770c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x0086770d    8d4c2474
                         push               ecx                                           // 0x00867711    51
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00867712    8d4c2418
                         call               _jmp_addr_0x004605f0                          // 0x00867716    e8d58ebfff
                         mov.s              ecx, eax                                      // 0x0086771b    8bc8
                         call               _jmp_addr_0x004605f0                          // 0x0086771d    e8ce8ebfff
                         {disp32} mov       ecx, dword ptr [esp + 0x00000080]             // 0x00867722    8b8c2480000000
                         push               eax                                           // 0x00867729    50
                         call               _jmp_addr_0x0067e8a0                          // 0x0086772a    e87171e1ff
                         pop                edi                                           // 0x0086772f    5f
                         pop                esi                                           // 0x00867730    5e
                         add                esp, 0x6c                                     // 0x00867731    83c46c
                         ret                0x0010                                        // 0x00867734    c21000
                         nop                                                              // 0x00867737    90
                         nop                                                              // 0x00867738    90
                         nop                                                              // 0x00867739    90
                         nop                                                              // 0x0086773a    90
                         nop                                                              // 0x0086773b    90
                         nop                                                              // 0x0086773c    90
                         nop                                                              // 0x0086773d    90
                         nop                                                              // 0x0086773e    90
                         nop                                                              // 0x0086773f    90
_jmp_addr_0x00867740:    sub                esp, 0x000000a4                               // 0x00867740    81eca4000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000a8]             // 0x00867746    8b8424a8000000
                         push               ebx                                           // 0x0086774d    53
                         push               ebp                                           // 0x0086774e    55
                         mov.s              ebp, ecx                                      // 0x0086774f    8be9
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00867751    8b4810
                         mov                edx, dword ptr [ecx]                          // 0x00867754    8b11
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x00867756    8b4a08
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00867759    8b4500
                         mov                eax, dword ptr [ecx + eax * 0x4]              // 0x0086775c    8b0481
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x0086775f    8b5014
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                   // 0x00867762    8b4d14
                         push               esi                                           // 0x00867765    56
                         {disp8} mov        esi, dword ptr [eax + 0x24]                   // 0x00867766    8b7024
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00867769    89442440
                         xor.s              eax, eax                                      // 0x0086776d    33c0
                         {disp8} mov        ax, word ptr [esi + ecx * 0x4 + 0x02]         // 0x0086776f    668b448e02
                         push               edi                                           // 0x00867774    57
                         {disp32} mov       edi, dword ptr [esp + 0x000000bc]             // 0x00867775    8bbc24bc000000
                         mov                ecx, 0x0000000c                               // 0x0086777c    b90c000000
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x00867781    89542440
                         lea                esi, dword ptr [eax + eax * 0x2]              // 0x00867785    8d3440
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00867788    8b4508
                         shl                esi, 4                                        // 0x0086778b    c1e604
                         add.s              esi, edi                                      // 0x0086778e    03f7
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x00867790    8d7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00867794    f3a5
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00867796    d9442428
                         shl                eax, 5                                        // 0x0086779a    c1e005
                         add.s              eax, edx                                      // 0x0086779d    03c2
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0086779f    8d4c2410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008677a3    d84808
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008677a6    d944241c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008677aa    d84804
                         faddp              st(1), st                                     // 0x008677ad    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008677af    d9442410
                         fmul               dword ptr [eax]                               // 0x008677b3    d808
                         faddp              st(1), st                                     // 0x008677b5    dec1
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x008677b7    d8442434
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x008677bb    d95c2448
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x008677bf    d944242c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008677c3    d84808
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x008677c6    d9442420
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008677ca    d84804
                         faddp              st(1), st                                     // 0x008677cd    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008677cf    d9442414
                         fmul               dword ptr [eax]                               // 0x008677d3    d808
                         faddp              st(1), st                                     // 0x008677d5    dec1
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x008677d7    d8442438
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x008677db    d95c244c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008677df    d9442430
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008677e3    d84808
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008677e6    d9442424
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008677ea    d84804
                         faddp              st(1), st                                     // 0x008677ed    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x008677ef    d9442418
                         fmul               dword ptr [eax]                               // 0x008677f3    d808
                         faddp              st(1), st                                     // 0x008677f5    dec1
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x008677f7    d844243c
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x008677fb    d95c2450
                         call               _jmp_addr_0x007fb5c0                          // 0x008677ff    e8bc3df9ff
                         {disp32} mov       ebx, dword ptr [esp + 0x000000c8]             // 0x00867804    8b9c24c8000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086780b    d9442410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0086780f    8b542414
                         fstp               dword ptr [ebx]                               // 0x00867813    d91b
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00867815    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00867819    8b4c241c
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x0086781d    895304
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00867820    8b542420
                         {disp8} mov        dword ptr [ebx + 0x08], eax                   // 0x00867824    894308
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00867827    8b442424
                         {disp8} mov        dword ptr [ebx + 0x0c], ecx                   // 0x0086782b    894b0c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0086782e    8b4c2428
                         {disp8} mov        dword ptr [ebx + 0x10], edx                   // 0x00867832    895310
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00867835    8b54242c
                         {disp8} mov        dword ptr [ebx + 0x14], eax                   // 0x00867839    894314
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0086783c    8b442430
                         {disp8} mov        dword ptr [ebx + 0x18], ecx                   // 0x00867840    894b18
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00867843    8b4c2434
                         {disp8} mov        dword ptr [ebx + 0x1c], edx                   // 0x00867847    89531c
                         {disp8} mov        dword ptr [ebx + 0x20], eax                   // 0x0086784a    894320
                         {disp8} mov        dword ptr [ebx + 0x24], ecx                   // 0x0086784d    894b24
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00867850    8b542438
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00867854    8b44243c
                         {disp32} mov       edi, dword ptr [esp + 0x000000bc]             // 0x00867858    8bbc24bc000000
                         {disp8} mov        dword ptr [ebx + 0x28], edx                   // 0x0086785f    895328
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00867862    8b542444
                         {disp8} mov        dword ptr [ebx + 0x2c], eax                   // 0x00867866    89432c
                         {disp8} mov        edx, dword ptr [edx + 0x24]                   // 0x00867869    8b5224
                         {disp8} mov        ecx, dword ptr [ebp + 0x18]                   // 0x0086786c    8b4d18
                         xor.s              eax, eax                                      // 0x0086786f    33c0
                         {disp8} mov        ax, word ptr [edx + ecx * 0x4 + 0x02]         // 0x00867871    668b448a02
                         mov                ecx, 0x0000000c                               // 0x00867876    b90c000000
                         lea                esi, dword ptr [eax + eax * 0x2]              // 0x0086787b    8d3440
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x0086787e    8b450c
                         shl                esi, 4                                        // 0x00867881    c1e604
                         add.s              esi, edi                                      // 0x00867884    03f7
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x00867886    8d7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0086788a    f3a5
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086788c    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00867890    8b4c2440
                         shl                eax, 5                                        // 0x00867894    c1e005
                         add.s              eax, ecx                                      // 0x00867897    03c1
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00867899    8d4c2410
                         fmul               dword ptr [eax]                               // 0x0086789d    d808
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086789f    d9442428
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008678a3    d84808
                         faddp              st(1), st                                     // 0x008678a6    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008678a8    d944241c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008678ac    d84804
                         faddp              st(1), st                                     // 0x008678af    dec1
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x008678b1    d8442434
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x008678b5    d95c2460
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008678b9    d9442414
                         fmul               dword ptr [eax]                               // 0x008678bd    d808
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x008678bf    d944242c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008678c3    d84808
                         faddp              st(1), st                                     // 0x008678c6    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x008678c8    d9442420
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008678cc    d84804
                         faddp              st(1), st                                     // 0x008678cf    dec1
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x008678d1    d8442438
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x008678d5    d95c2464
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x008678d9    d9442418
                         fmul               dword ptr [eax]                               // 0x008678dd    d808
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008678df    d9442430
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008678e3    d84808
                         faddp              st(1), st                                     // 0x008678e6    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008678e8    d9442424
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008678ec    d84804
                         faddp              st(1), st                                     // 0x008678ef    dec1
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x008678f1    d844243c
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x008678f5    d95c2468
                         call               _jmp_addr_0x007fb5c0                          // 0x008678f9    e8c23cf9ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008678fe    d9442410
                         fadd               dword ptr [ebx]                               // 0x00867902    d803
                         fstp               dword ptr [ebx]                               // 0x00867904    d91b
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00867906    d9442414
                         {disp8} fadd       dword ptr [ebx + 0x04]                        // 0x0086790a    d84304
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0086790d    d95b04
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00867910    d9442418
                         {disp8} fadd       dword ptr [ebx + 0x08]                        // 0x00867914    d84308
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x00867917    d95b08
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086791a    d944241c
                         {disp8} fadd       dword ptr [ebx + 0x0c]                        // 0x0086791e    d8430c
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x00867921    d95b0c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00867924    d9442420
                         {disp8} fadd       dword ptr [ebx + 0x10]                        // 0x00867928    d84310
                         {disp8} fstp       dword ptr [ebx + 0x10]                        // 0x0086792b    d95b10
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086792e    d9442424
                         {disp8} fadd       dword ptr [ebx + 0x14]                        // 0x00867932    d84314
                         {disp8} fstp       dword ptr [ebx + 0x14]                        // 0x00867935    d95b14
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00867938    d9442428
                         {disp8} fadd       dword ptr [ebx + 0x18]                        // 0x0086793c    d84318
                         {disp8} fstp       dword ptr [ebx + 0x18]                        // 0x0086793f    d95b18
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00867942    d944242c
                         {disp8} fadd       dword ptr [ebx + 0x1c]                        // 0x00867946    d8431c
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x00867949    d95b1c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086794c    d9442430
                         {disp8} fadd       dword ptr [ebx + 0x20]                        // 0x00867950    d84320
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x00867953    d95b20
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00867956    d9442434
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x0086795a    d84324
                         {disp8} fstp       dword ptr [ebx + 0x24]                        // 0x0086795d    d95b24
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00867960    8b542444
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00867964    d9442438
                         {disp32} mov       edi, dword ptr [esp + 0x000000bc]             // 0x00867968    8bbc24bc000000
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x0086796f    d84328
                         xor.s              eax, eax                                      // 0x00867972    33c0
                         {disp8} fstp       dword ptr [ebx + 0x28]                        // 0x00867974    d95b28
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00867977    d944243c
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x0086797b    d8432c
                         {disp8} fstp       dword ptr [ebx + 0x2c]                        // 0x0086797e    d95b2c
                         {disp8} mov        edx, dword ptr [edx + 0x24]                   // 0x00867981    8b5224
                         {disp8} mov        ecx, dword ptr [ebp + 0x1c]                   // 0x00867984    8b4d1c
                         {disp8} mov        ax, word ptr [edx + ecx * 0x4 + 0x02]         // 0x00867987    668b448a02
                         mov                ecx, 0x0000000c                               // 0x0086798c    b90c000000
                         lea                esi, dword ptr [eax + eax * 0x2]              // 0x00867991    8d3440
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                   // 0x00867994    8b4510
                         shl                esi, 4                                        // 0x00867997    c1e604
                         add.s              esi, edi                                      // 0x0086799a    03f7
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x0086799c    8d7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x008679a0    f3a5
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008679a2    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x008679a6    8b4c2440
                         shl                eax, 5                                        // 0x008679aa    c1e005
                         add.s              eax, ecx                                      // 0x008679ad    03c1
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x008679af    8d4c2410
                         fmul               dword ptr [eax]                               // 0x008679b3    d808
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x008679b5    d9442428
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008679b9    d84808
                         faddp              st(1), st                                     // 0x008679bc    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008679be    d944241c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008679c2    d84804
                         faddp              st(1), st                                     // 0x008679c5    dec1
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x008679c7    d8442434
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x008679cb    d95c2454
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008679cf    d9442414
                         fmul               dword ptr [eax]                               // 0x008679d3    d808
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x008679d5    d944242c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008679d9    d84808
                         faddp              st(1), st                                     // 0x008679dc    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x008679de    d9442420
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008679e2    d84804
                         faddp              st(1), st                                     // 0x008679e5    dec1
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x008679e7    d8442438
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x008679eb    d95c2458
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x008679ef    d9442418
                         fmul               dword ptr [eax]                               // 0x008679f3    d808
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008679f5    d9442430
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008679f9    d84808
                         faddp              st(1), st                                     // 0x008679fc    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x008679fe    d9442424
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00867a02    d84804
                         faddp              st(1), st                                     // 0x00867a05    dec1
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00867a07    d844243c
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x00867a0b    d95c245c
                         call               _jmp_addr_0x007fb5c0                          // 0x00867a0f    e8ac3bf9ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00867a14    d9442410
                         fadd               dword ptr [ebx]                               // 0x00867a18    d803
                         fstp               dword ptr [ebx]                               // 0x00867a1a    d91b
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00867a1c    d9442414
                         {disp8} fadd       dword ptr [ebx + 0x04]                        // 0x00867a20    d84304
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x00867a23    d95b04
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00867a26    d9442418
                         {disp8} fadd       dword ptr [ebx + 0x08]                        // 0x00867a2a    d84308
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x00867a2d    d95b08
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00867a30    d944241c
                         {disp8} fadd       dword ptr [ebx + 0x0c]                        // 0x00867a34    d8430c
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x00867a37    d95b0c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00867a3a    d9442420
                         {disp8} fadd       dword ptr [ebx + 0x10]                        // 0x00867a3e    d84310
                         {disp8} fstp       dword ptr [ebx + 0x10]                        // 0x00867a41    d95b10
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00867a44    d9442424
                         {disp8} fadd       dword ptr [ebx + 0x14]                        // 0x00867a48    d84314
                         {disp8} fstp       dword ptr [ebx + 0x14]                        // 0x00867a4b    d95b14
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00867a4e    d9442428
                         {disp8} fadd       dword ptr [ebx + 0x18]                        // 0x00867a52    d84318
                         {disp8} fstp       dword ptr [ebx + 0x18]                        // 0x00867a55    d95b18
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00867a58    d944242c
                         {disp8} fadd       dword ptr [ebx + 0x1c]                        // 0x00867a5c    d8431c
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x00867a5f    d95b1c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00867a62    d9442430
                         {disp8} fadd       dword ptr [ebx + 0x20]                        // 0x00867a66    d84320
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x00867a69    d95b20
                         mov.s              ecx, ebx                                      // 0x00867a6c    8bcb
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00867a6e    d9442434
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x00867a72    d84324
                         {disp8} fstp       dword ptr [ebx + 0x24]                        // 0x00867a75    d95b24
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00867a78    d9442438
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x00867a7c    d84328
                         {disp8} fstp       dword ptr [ebx + 0x28]                        // 0x00867a7f    d95b28
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00867a82    d944243c
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x00867a86    d8432c
                         {disp8} fstp       dword ptr [ebx + 0x2c]                        // 0x00867a89    d95b2c
                         call               _jmp_addr_0x007fb5c0                          // 0x00867a8c    e82f3bf9ff
                         xor.s              eax, eax                                      // 0x00867a91    33c0
                         {disp8} mov        dword ptr [ebx + 0x24], eax                   // 0x00867a93    894324
                         {disp8} mov        dword ptr [ebx + 0x28], eax                   // 0x00867a96    894328
                         {disp8} mov        dword ptr [ebx + 0x2c], eax                   // 0x00867a99    89432c
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x00867a9c    8d442448
                         push               eax                                           // 0x00867aa0    50
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x00867aa1    8d4c247c
                         push               ecx                                           // 0x00867aa5    51
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x00867aa6    8d4c2468
                         call               _jmp_addr_0x0044cf90                          // 0x00867aaa    e8e154beff
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x00867aaf    8d542448
                         push               edx                                           // 0x00867ab3    52
                         {disp8} lea        eax, dword ptr [esp + 0x70]                   // 0x00867ab4    8d442470
                         push               eax                                           // 0x00867ab8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x00867ab9    8d4c245c
                         call               _jmp_addr_0x0044cf90                          // 0x00867abd    e8ce54beff
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x00867ac2    8d4c2478
                         push               ecx                                           // 0x00867ac6    51
                         {disp32} mov       ecx, dword ptr [esp + 0x000000c8]             // 0x00867ac7    8b8c24c8000000
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x00867ace    8d542470
                         push               edx                                           // 0x00867ad2    52
                         call               _jmp_addr_0x006a3e20                          // 0x00867ad3    e848c3e3ff
                         {disp8} mov        eax, dword ptr [ebp + 0x24]                   // 0x00867ad8    8b4524
                         push               eax                                           // 0x00867adb    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x00867adc    8d8c24a0000000
                         push               ecx                                           // 0x00867ae3    51
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x00867ae4    8d4c2474
                         call               _jmp_addr_0x0044e9f0                          // 0x00867ae8    e8036fbeff
                         push               eax                                           // 0x00867aed    50
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x00867aee    8b4520
                         {disp32} lea       edx, dword ptr [esp + 0x000000ac]             // 0x00867af1    8d9424ac000000
                         push               edx                                           // 0x00867af8    52
                         push               eax                                           // 0x00867af9    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]             // 0x00867afa    8d8c2490000000
                         push               ecx                                           // 0x00867b01    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000088]             // 0x00867b02    8d8c2488000000
                         call               _jmp_addr_0x0044e9f0                          // 0x00867b09    e8e26ebeff
                         push               eax                                           // 0x00867b0e    50
                         {disp32} lea       edx, dword ptr [esp + 0x0000009c]             // 0x00867b0f    8d94249c000000
                         push               edx                                           // 0x00867b16    52
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x00867b17    8d4c2458
                         call               _jmp_addr_0x004605f0                          // 0x00867b1b    e8d08abfff
                         mov.s              ecx, eax                                      // 0x00867b20    8bc8
                         call               _jmp_addr_0x004605f0                          // 0x00867b22    e8c98abfff
                         {disp32} mov       ecx, dword ptr [esp + 0x000000c0]             // 0x00867b27    8b8c24c0000000
                         push               eax                                           // 0x00867b2e    50
                         call               _jmp_addr_0x0067e8a0                          // 0x00867b2f    e86c6de1ff
                         pop                edi                                           // 0x00867b34    5f
                         pop                esi                                           // 0x00867b35    5e
                         pop                ebp                                           // 0x00867b36    5d
                         pop                ebx                                           // 0x00867b37    5b
                         add                esp, 0x000000a4                               // 0x00867b38    81c4a4000000
                         ret                0x0014                                        // 0x00867b3e    c21400
                         nop                                                              // 0x00867b41    90
                         nop                                                              // 0x00867b42    90
                         nop                                                              // 0x00867b43    90
                         nop                                                              // 0x00867b44    90
                         nop                                                              // 0x00867b45    90
                         nop                                                              // 0x00867b46    90
                         nop                                                              // 0x00867b47    90
                         nop                                                              // 0x00867b48    90
                         nop                                                              // 0x00867b49    90
                         nop                                                              // 0x00867b4a    90
                         nop                                                              // 0x00867b4b    90
                         nop                                                              // 0x00867b4c    90
                         nop                                                              // 0x00867b4d    90
                         nop                                                              // 0x00867b4e    90
                         nop                                                              // 0x00867b4f    90
_jmp_addr_0x00867b50:    push               ecx                                           // 0x00867b50    51
                         push               esi                                           // 0x00867b51    56
                         push               edi                                           // 0x00867b52    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00867b53    8b7c2410
                         mov.s              esi, ecx                                      // 0x00867b57    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00867b59    8b06
                         push               0x4                                           // 0x00867b5b    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00867b5d    8d4c240c
                         push               ecx                                           // 0x00867b61    51
                         mov.s              ecx, edi                                      // 0x00867b62    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00867b64    89442410
                         call               _jmp_addr_0x007bdfc0                          // 0x00867b68    e85364f5ff
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00867b6d    8b5608
                         push               0x4                                           // 0x00867b70    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867b72    8d442414
                         push               eax                                           // 0x00867b76    50
                         mov.s              ecx, edi                                      // 0x00867b77    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00867b79    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x00867b7d    e83e64f5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00867b82    8b4e0c
                         push               0x4                                           // 0x00867b85    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867b87    8d542414
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00867b8b    894c2414
                         push               edx                                           // 0x00867b8f    52
                         mov.s              ecx, edi                                      // 0x00867b90    8bcf
                         call               _jmp_addr_0x007bdfc0                          // 0x00867b92    e82964f5ff
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x00867b97    8b4610
                         push               0x4                                           // 0x00867b9a    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00867b9c    8d4c2414
                         push               ecx                                           // 0x00867ba0    51
                         mov.s              ecx, edi                                      // 0x00867ba1    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00867ba3    89442418
                         call               _jmp_addr_0x007bdfc0                          // 0x00867ba7    e81464f5ff
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00867bac    8b5614
                         push               0x4                                           // 0x00867baf    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867bb1    8d442414
                         push               eax                                           // 0x00867bb5    50
                         mov.s              ecx, edi                                      // 0x00867bb6    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00867bb8    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x00867bbc    e8ff63f5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00867bc1    8b4e18
                         push               0x4                                           // 0x00867bc4    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867bc6    8d542414
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00867bca    894c2414
                         push               edx                                           // 0x00867bce    52
                         mov.s              ecx, edi                                      // 0x00867bcf    8bcf
                         call               _jmp_addr_0x007bdfc0                          // 0x00867bd1    e8ea63f5ff
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00867bd6    8b461c
                         push               0x4                                           // 0x00867bd9    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00867bdb    8d4c2414
                         push               ecx                                           // 0x00867bdf    51
                         mov.s              ecx, edi                                      // 0x00867be0    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00867be2    89442418
                         call               _jmp_addr_0x007bdfc0                          // 0x00867be6    e8d563f5ff
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x00867beb    8b5620
                         push               0x4                                           // 0x00867bee    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867bf0    8d442414
                         push               eax                                           // 0x00867bf4    50
                         mov.s              ecx, edi                                      // 0x00867bf5    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00867bf7    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x00867bfb    e8c063f5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x00867c00    8b4e24
                         push               0x4                                           // 0x00867c03    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867c05    8d542414
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00867c09    894c2414
                         push               edx                                           // 0x00867c0d    52
                         mov.s              ecx, edi                                      // 0x00867c0e    8bcf
                         call               _jmp_addr_0x007bdfc0                          // 0x00867c10    e8ab63f5ff
                         pop                edi                                           // 0x00867c15    5f
                         pop                esi                                           // 0x00867c16    5e
                         pop                ecx                                           // 0x00867c17    59
                         ret                0x0004                                        // 0x00867c18    c20400
                         nop                                                              // 0x00867c1b    90
                         nop                                                              // 0x00867c1c    90
                         nop                                                              // 0x00867c1d    90
                         nop                                                              // 0x00867c1e    90
                         nop                                                              // 0x00867c1f    90
@ReadBinary__13MeshIntersectFP6LHFile@12:    push               esi                                           // 0x00867c20    56
                         push               edi                                           // 0x00867c21    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00867c22    8b7c240c
                         push               -0x1                                          // 0x00867c26    6aff
                         push               0x4                                           // 0x00867c28    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867c2a    8d442414
                         mov.s              esi, ecx                                      // 0x00867c2e    8bf1
                         push               eax                                           // 0x00867c30    50
                         mov.s              ecx, edi                                      // 0x00867c31    8bcf
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867c33    e80864f5ff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00867c38    8b4c240c
                         push               -0x1                                          // 0x00867c3c    6aff
                         push               0x4                                           // 0x00867c3e    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867c40    8d542414
                         mov                dword ptr [esi], ecx                          // 0x00867c44    890e
                         push               edx                                           // 0x00867c46    52
                         mov.s              ecx, edi                                      // 0x00867c47    8bcf
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867c49    e8f263f5ff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00867c4e    8b44240c
                         push               -0x1                                          // 0x00867c52    6aff
                         push               0x4                                           // 0x00867c54    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00867c56    8d4c2414
                         push               ecx                                           // 0x00867c5a    51
                         mov.s              ecx, edi                                      // 0x00867c5b    8bcf
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00867c5d    894608
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867c60    e8db63f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00867c65    8b54240c
                         push               -0x1                                          // 0x00867c69    6aff
                         push               0x4                                           // 0x00867c6b    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867c6d    8d442414
                         push               eax                                           // 0x00867c71    50
                         mov.s              ecx, edi                                      // 0x00867c72    8bcf
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x00867c74    89560c
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867c77    e8c463f5ff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00867c7c    8b4c240c
                         push               -0x1                                          // 0x00867c80    6aff
                         push               0x4                                           // 0x00867c82    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867c84    8d542414
                         {disp8} mov        dword ptr [esi + 0x10], ecx                   // 0x00867c88    894e10
                         push               edx                                           // 0x00867c8b    52
                         mov.s              ecx, edi                                      // 0x00867c8c    8bcf
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867c8e    e8ad63f5ff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00867c93    8b44240c
                         push               -0x1                                          // 0x00867c97    6aff
                         push               0x4                                           // 0x00867c99    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00867c9b    8d4c2414
                         push               ecx                                           // 0x00867c9f    51
                         mov.s              ecx, edi                                      // 0x00867ca0    8bcf
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00867ca2    894614
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867ca5    e89663f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00867caa    8b54240c
                         push               -0x1                                          // 0x00867cae    6aff
                         push               0x4                                           // 0x00867cb0    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00867cb2    8d442414
                         push               eax                                           // 0x00867cb6    50
                         mov.s              ecx, edi                                      // 0x00867cb7    8bcf
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x00867cb9    895618
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867cbc    e87f63f5ff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00867cc1    8b4c240c
                         push               -0x1                                          // 0x00867cc5    6aff
                         push               0x4                                           // 0x00867cc7    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00867cc9    8d542414
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x00867ccd    894e1c
                         push               edx                                           // 0x00867cd0    52
                         mov.s              ecx, edi                                      // 0x00867cd1    8bcf
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867cd3    e86863f5ff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00867cd8    8b44240c
                         push               -0x1                                          // 0x00867cdc    6aff
                         push               0x4                                           // 0x00867cde    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00867ce0    8d4c2414
                         push               ecx                                           // 0x00867ce4    51
                         mov.s              ecx, edi                                      // 0x00867ce5    8bcf
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x00867ce7    894620
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x00867cea    e85163f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00867cef    8b54240c
                         pop                edi                                           // 0x00867cf3    5f
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x00867cf4    895624
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00867cf7    c7460400000000
                         pop                esi                                           // 0x00867cfe    5e
                         ret                0x0004                                        // 0x00867cff    c20400
                         nop                                                              // 0x00867d02    90
                         nop                                                              // 0x00867d03    90
                         nop                                                              // 0x00867d04    90
                         nop                                                              // 0x00867d05    90
                         nop                                                              // 0x00867d06    90
                         nop                                                              // 0x00867d07    90
                         nop                                                              // 0x00867d08    90
                         nop                                                              // 0x00867d09    90
                         nop                                                              // 0x00867d0a    90
                         nop                                                              // 0x00867d0b    90
                         nop                                                              // 0x00867d0c    90
                         nop                                                              // 0x00867d0d    90
                         nop                                                              // 0x00867d0e    90
                         nop                                                              // 0x00867d0f    90
_jmp_addr_0x00867d10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00867d10    8b442404
                         sub                esp, 0x0c                                     // 0x00867d14    83ec0c
                         push               esi                                           // 0x00867d17    56
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00867d18    8b7004
                         test               esi, 0x00000100                               // 0x00867d1b    f7c600010000
                         {disp8} je         _jmp_addr_0x00867d2b                          // 0x00867d21    7408
                         and                esi, 0x000000ff                               // 0x00867d23    81e6ff000000
                         {disp8} jmp        _jmp_addr_0x00867d30                          // 0x00867d29    eb05
_jmp_addr_0x00867d2b:    mov                esi, 0x00000001                               // 0x00867d2b    be01000000
_jmp_addr_0x00867d30:    lea                eax, dword ptr [esi + esi * 0x2]              // 0x00867d30    8d0476
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00867d33    8d0c80
                         shl                ecx, 3                                        // 0x00867d36    c1e103
                         push               ecx                                           // 0x00867d39    51
                         call               ??2@YAPAXI@Z                                  // 0x00867d3a    e8afe7f5ff
                         add                esp, 0x04                                     // 0x00867d3f    83c404
                         test               eax, eax                                      // 0x00867d42    85c0
                         {disp8} je         _jmp_addr_0x00867dae                          // 0x00867d44    7468
                         {disp8} lea        edx, dword ptr [esi + -0x01]                  // 0x00867d46    8d56ff
                         test               edx, edx                                      // 0x00867d49    85d2
                         mov.s              ecx, eax                                      // 0x00867d4b    8bc8
                         {disp8} jl         _jmp_addr_0x00867d99                          // 0x00867d4d    7c4a
                         push               ebx                                           // 0x00867d4f    53
                         push               ebp                                           // 0x00867d50    55
                         push               edi                                           // 0x00867d51    57
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00867d52    c744241000000000
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00867d5a    8b742410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00867d5e    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00867d66    c744241800000000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00867d6e    8b7c2418
                         {disp8} lea        ebx, dword ptr [edx + 0x01]                   // 0x00867d72    8d5a01
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00867d75    8b542414
_jmp_addr_0x00867d79:    {disp8} lea        ebp, dword ptr [ecx + 0x0c]                   // 0x00867d79    8d690c
                         {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00867d7c    897500
                         {disp8} mov        dword ptr [ebp + 0x04], edx                   // 0x00867d7f    895504
                         {disp8} mov        dword ptr [ebp + 0x08], edi                   // 0x00867d82    897d08
                         mov.s              ebp, ecx                                      // 0x00867d85    8be9
                         {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x00867d87    897500
                         {disp8} mov        dword ptr [ebp + 0x04], edx                   // 0x00867d8a    895504
                         add                ecx, 0x78                                     // 0x00867d8d    83c178
                         dec                ebx                                           // 0x00867d90    4b
                         {disp8} mov        dword ptr [ebp + 0x08], edi                   // 0x00867d91    897d08
                         {disp8} jne        _jmp_addr_0x00867d79                          // 0x00867d94    75e3
                         pop                edi                                           // 0x00867d96    5f
                         pop                ebp                                           // 0x00867d97    5d
                         pop                ebx                                           // 0x00867d98    5b
_jmp_addr_0x00867d99:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00867d99    8b542414
                         mov.s              esi, eax                                      // 0x00867d9d    8bf0
                         push               edx                                           // 0x00867d9f    52
                         mov.s              ecx, esi                                      // 0x00867da0    8bce
                         call               _jmp_addr_0x00867dd0                          // 0x00867da2    e829000000
                         mov.s              eax, esi                                      // 0x00867da7    8bc6
                         pop                esi                                           // 0x00867da9    5e
                         add                esp, 0x0c                                     // 0x00867daa    83c40c
                         ret                                                              // 0x00867dad    c3
_jmp_addr_0x00867dae:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00867dae    8b542414
                         xor.s              esi, esi                                      // 0x00867db2    33f6
                         push               edx                                           // 0x00867db4    52
                         mov.s              ecx, esi                                      // 0x00867db5    8bce
                         call               _jmp_addr_0x00867dd0                          // 0x00867db7    e814000000
                         mov.s              eax, esi                                      // 0x00867dbc    8bc6
                         pop                esi                                           // 0x00867dbe    5e
                         add                esp, 0x0c                                     // 0x00867dbf    83c40c
                         ret                                                              // 0x00867dc2    c3
                         nop                                                              // 0x00867dc3    90
                         nop                                                              // 0x00867dc4    90
                         nop                                                              // 0x00867dc5    90
                         nop                                                              // 0x00867dc6    90
                         nop                                                              // 0x00867dc7    90
                         nop                                                              // 0x00867dc8    90
                         nop                                                              // 0x00867dc9    90
                         nop                                                              // 0x00867dca    90
                         nop                                                              // 0x00867dcb    90
                         nop                                                              // 0x00867dcc    90
                         nop                                                              // 0x00867dcd    90
                         nop                                                              // 0x00867dce    90
                         nop                                                              // 0x00867dcf    90
_jmp_addr_0x00867dd0:    sub                esp, 0x2c                                     // 0x00867dd0    83ec2c
                         push               ebx                                           // 0x00867dd3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x34]                   // 0x00867dd4    8b5c2434
                         push               esi                                           // 0x00867dd8    56
                         {disp8} mov        esi, dword ptr [ebx + 0x0c]                   // 0x00867dd9    8b730c
                         push               edi                                           // 0x00867ddc    57
                         xor.s              eax, eax                                      // 0x00867ddd    33c0
                         test               esi, esi                                      // 0x00867ddf    85f6
                         mov.s              edi, ecx                                      // 0x00867de1    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00867de3    897c2410
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00867de7    8974241c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00867deb    8944240c
                         {disp32} jle       _jmp_addr_0x00867fce                          // 0x00867def    0f8ed9010000
                         push               ebp                                           // 0x00867df5    55
_jmp_addr_0x00867df6:    {disp8} mov        ecx, dword ptr [ebx + 0x10]                   // 0x00867df6    8b4b10
                         mov                edx, dword ptr [ecx + eax * 0x4]              // 0x00867df9    8b1481
                         {disp8} mov        edx, dword ptr [edx + 0x04]                   // 0x00867dfc    8b5204
                         xor.s              ecx, ecx                                      // 0x00867dff    33c9
                         test               edx, edx                                      // 0x00867e01    85d2
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00867e03    8954241c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00867e07    894c2418
                         {disp32} jle       _jmp_addr_0x00867fc0                          // 0x00867e0b    0f8eaf010000
_jmp_addr_0x00867e11:    {disp8} mov        edx, dword ptr [ebx + 0x10]                   // 0x00867e11    8b5310
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x00867e14    8b0482
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00867e17    8b5008
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00867e1a    8b4304
                         test               ah, 0x01                                      // 0x00867e1d    f6c401
                         mov                ebp, dword ptr [edx + ecx * 0x4]              // 0x00867e20    8b2c8a
                         {disp8} mov        esi, dword ptr [ebp + 0x14]                   // 0x00867e23    8b7514
                         {disp32} je        _jmp_addr_0x00867f07                          // 0x00867e26    0f84db000000
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x00867e2c    8b4520
                         xor.s              ecx, ecx                                      // 0x00867e2f    33c9
                         test               eax, eax                                      // 0x00867e31    85c0
                         {disp32} jle       _jmp_addr_0x00867fa3                          // 0x00867e33    0f8e6a010000
_jmp_addr_0x00867e39:    {disp8} mov        eax, dword ptr [ebp + 0x24]                   // 0x00867e39    8b4524
                         lea                edi, dword ptr [eax + ecx * 0x4]              // 0x00867e3c    8d3c88
                         xor.s              eax, eax                                      // 0x00867e3f    33c0
                         {disp8} mov        ax, word ptr [edi + 0x02]                     // 0x00867e41    668b4702
                         xor.s              ebx, ebx                                      // 0x00867e45    33db
                         cmp                word ptr [edi], bx                            // 0x00867e47    66391f
                         {disp32} jbe       _jmp_addr_0x00867eee                          // 0x00867e4a    0f869e000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00867e50    8d0440
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00867e53    8d1480
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00867e56    8b442414
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00867e5a    8d14d0
_jmp_addr_0x00867e5d:    fld                dword ptr [esi]                               // 0x00867e5d    d906
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00867e5f    8b4604
                         fcom               dword ptr [edx]                               // 0x00867e62    d812
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00867e64    89442428
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00867e68    8b4608
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00867e6b    8944242c
                         add                esi, 0x20                                     // 0x00867e6f    83c620
                         fnstsw             ax                                            // 0x00867e72    dfe0
                         test               ah, 0x01                                      // 0x00867e74    f6c401
                         {disp8} je         _jmp_addr_0x00867e7b                          // 0x00867e77    7402
                         fst                dword ptr [edx]                               // 0x00867e79    d912
_jmp_addr_0x00867e7b:    {disp8} fcom       dword ptr [edx + 0x0c]                        // 0x00867e7b    d8520c
                         fnstsw             ax                                            // 0x00867e7e    dfe0
                         test               ah, 0x41                                      // 0x00867e80    f6c441
                         {disp8} jne        _jmp_addr_0x00867e8a                          // 0x00867e83    7505
                         {disp8} fstp       dword ptr [edx + 0x0c]                        // 0x00867e85    d95a0c
                         {disp8} jmp        _jmp_addr_0x00867e8c                          // 0x00867e88    eb02
_jmp_addr_0x00867e8a:    fstp               st(0)                                         // 0x00867e8a    ddd8
_jmp_addr_0x00867e8c:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x00867e8c    d9442428
                         {disp8} fcomp      dword ptr [edx + 0x04]                        // 0x00867e90    d85a04
                         fnstsw             ax                                            // 0x00867e93    dfe0
                         test               ah, 0x01                                      // 0x00867e95    f6c401
                         {disp8} je         _jmp_addr_0x00867ea1                          // 0x00867e98    7407
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00867e9a    8b442428
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00867e9e    894204
_jmp_addr_0x00867ea1:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x00867ea1    d9442428
                         {disp8} fcomp      dword ptr [edx + 0x10]                        // 0x00867ea5    d85a10
                         fnstsw             ax                                            // 0x00867ea8    dfe0
                         test               ah, 0x41                                      // 0x00867eaa    f6c441
                         {disp8} jne        _jmp_addr_0x00867eb6                          // 0x00867ead    7507
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00867eaf    8b442428
                         {disp8} mov        dword ptr [edx + 0x10], eax                   // 0x00867eb3    894210
_jmp_addr_0x00867eb6:    {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00867eb6    d944242c
                         {disp8} fcomp      dword ptr [edx + 0x08]                        // 0x00867eba    d85a08
                         fnstsw             ax                                            // 0x00867ebd    dfe0
                         test               ah, 0x01                                      // 0x00867ebf    f6c401
                         {disp8} je         _jmp_addr_0x00867ecb                          // 0x00867ec2    7407
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00867ec4    8b44242c
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00867ec8    894208
_jmp_addr_0x00867ecb:    {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00867ecb    d944242c
                         {disp8} fcomp      dword ptr [edx + 0x14]                        // 0x00867ecf    d85a14
                         fnstsw             ax                                            // 0x00867ed2    dfe0
                         test               ah, 0x41                                      // 0x00867ed4    f6c441
                         {disp8} jne        _jmp_addr_0x00867ee0                          // 0x00867ed7    7507
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00867ed9    8b44242c
                         {disp8} mov        dword ptr [edx + 0x14], eax                   // 0x00867edd    894214
_jmp_addr_0x00867ee0:    xor.s              eax, eax                                      // 0x00867ee0    33c0
                         mov                ax, word ptr [edi]                            // 0x00867ee2    668b07
                         inc                ebx                                           // 0x00867ee5    43
                         cmp.s              ebx, eax                                      // 0x00867ee6    3bd8
                         {disp32} jl        _jmp_addr_0x00867e5d                          // 0x00867ee8    0f8c6fffffff
_jmp_addr_0x00867eee:    {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x00867eee    8b4520
                         inc                ecx                                           // 0x00867ef1    41
                         cmp.s              ecx, eax                                      // 0x00867ef2    3bc8
                         {disp32} jl        _jmp_addr_0x00867e39                          // 0x00867ef4    0f8c3fffffff
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00867efa    8b7c2414
                         {disp8} mov        ebx, dword ptr [esp + 0x40]                   // 0x00867efe    8b5c2440
                         {disp32} jmp       _jmp_addr_0x00867fa3                          // 0x00867f02    e99c000000
_jmp_addr_0x00867f07:    {disp8} mov        eax, dword ptr [ebp + 0x10]                   // 0x00867f07    8b4510
                         xor.s              edx, edx                                      // 0x00867f0a    33d2
                         test               eax, eax                                      // 0x00867f0c    85c0
                         {disp32} jle       _jmp_addr_0x00867fa3                          // 0x00867f0e    0f8e8f000000
_jmp_addr_0x00867f14:    fld                dword ptr [esi]                               // 0x00867f14    d906
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00867f16    8b4608
                         fcom               dword ptr [edi]                               // 0x00867f19    d817
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00867f1b    8b4e04
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00867f1e    89442438
                         add                esi, 0x20                                     // 0x00867f22    83c620
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00867f25    894c2434
                         fnstsw             ax                                            // 0x00867f29    dfe0
                         test               ah, 0x01                                      // 0x00867f2b    f6c401
                         {disp8} je         _jmp_addr_0x00867f32                          // 0x00867f2e    7402
                         fst                dword ptr [edi]                               // 0x00867f30    d917
_jmp_addr_0x00867f32:    {disp8} fcom       dword ptr [edi + 0x0c]                        // 0x00867f32    d8570c
                         fnstsw             ax                                            // 0x00867f35    dfe0
                         test               ah, 0x41                                      // 0x00867f37    f6c441
                         {disp8} jne        _jmp_addr_0x00867f41                          // 0x00867f3a    7505
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x00867f3c    d95f0c
                         {disp8} jmp        _jmp_addr_0x00867f43                          // 0x00867f3f    eb02
_jmp_addr_0x00867f41:    fstp               st(0)                                         // 0x00867f41    ddd8
_jmp_addr_0x00867f43:    {disp8} fld        dword ptr [esp + 0x34]                        // 0x00867f43    d9442434
                         {disp8} fcomp      dword ptr [edi + 0x04]                        // 0x00867f47    d85f04
                         fnstsw             ax                                            // 0x00867f4a    dfe0
                         test               ah, 0x01                                      // 0x00867f4c    f6c401
                         {disp8} je         _jmp_addr_0x00867f58                          // 0x00867f4f    7407
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00867f51    8b4c2434
                         {disp8} mov        dword ptr [edi + 0x04], ecx                   // 0x00867f55    894f04
_jmp_addr_0x00867f58:    {disp8} fld        dword ptr [esp + 0x34]                        // 0x00867f58    d9442434
                         {disp8} fcomp      dword ptr [edi + 0x10]                        // 0x00867f5c    d85f10
                         fnstsw             ax                                            // 0x00867f5f    dfe0
                         test               ah, 0x41                                      // 0x00867f61    f6c441
                         {disp8} jne        _jmp_addr_0x00867f6d                          // 0x00867f64    7507
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00867f66    8b442434
                         {disp8} mov        dword ptr [edi + 0x10], eax                   // 0x00867f6a    894710
_jmp_addr_0x00867f6d:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x00867f6d    d9442438
                         {disp8} fcomp      dword ptr [edi + 0x08]                        // 0x00867f71    d85f08
                         fnstsw             ax                                            // 0x00867f74    dfe0
                         test               ah, 0x01                                      // 0x00867f76    f6c401
                         {disp8} je         _jmp_addr_0x00867f82                          // 0x00867f79    7407
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00867f7b    8b4c2438
                         {disp8} mov        dword ptr [edi + 0x08], ecx                   // 0x00867f7f    894f08
_jmp_addr_0x00867f82:    {disp8} fld        dword ptr [esp + 0x38]                        // 0x00867f82    d9442438
                         {disp8} fcomp      dword ptr [edi + 0x14]                        // 0x00867f86    d85f14
                         fnstsw             ax                                            // 0x00867f89    dfe0
                         test               ah, 0x41                                      // 0x00867f8b    f6c441
                         {disp8} jne        _jmp_addr_0x00867f97                          // 0x00867f8e    7507
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00867f90    8b442438
                         {disp8} mov        dword ptr [edi + 0x14], eax                   // 0x00867f94    894714
_jmp_addr_0x00867f97:    {disp8} mov        eax, dword ptr [ebp + 0x10]                   // 0x00867f97    8b4510
                         inc                edx                                           // 0x00867f9a    42
                         cmp.s              edx, eax                                      // 0x00867f9b    3bd0
                         {disp32} jl        _jmp_addr_0x00867f14                          // 0x00867f9d    0f8c71ffffff
_jmp_addr_0x00867fa3:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00867fa3    8b4c2418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00867fa7    8b44241c
                         inc                ecx                                           // 0x00867fab    41
                         cmp.s              ecx, eax                                      // 0x00867fac    3bc8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00867fae    8b442410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00867fb2    894c2418
                         {disp32} jl        _jmp_addr_0x00867e11                          // 0x00867fb6    0f8c55feffff
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00867fbc    8b742420
_jmp_addr_0x00867fc0:    inc                eax                                           // 0x00867fc0    40
                         cmp.s              eax, esi                                      // 0x00867fc1    3bc6
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00867fc3    89442410
                         {disp32} jl        _jmp_addr_0x00867df6                          // 0x00867fc7    0f8c29feffff
                         pop                ebp                                           // 0x00867fcd    5d
_jmp_addr_0x00867fce:    pop                edi                                           // 0x00867fce    5f
                         pop                esi                                           // 0x00867fcf    5e
                         pop                ebx                                           // 0x00867fd0    5b
                         add                esp, 0x2c                                     // 0x00867fd1    83c42c
                         ret                0x0004                                        // 0x00867fd4    c20400
                         nop                                                              // 0x00867fd7    90
                         nop                                                              // 0x00867fd8    90
                         nop                                                              // 0x00867fd9    90
                         nop                                                              // 0x00867fda    90
                         nop                                                              // 0x00867fdb    90
                         nop                                                              // 0x00867fdc    90
                         nop                                                              // 0x00867fdd    90
                         nop                                                              // 0x00867fde    90
                         nop                                                              // 0x00867fdf    90
_jmp_addr_0x00867fe0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00867fe0    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00867fe4    8b4004
                         test               ah, 0x01                                      // 0x00867fe7    f6c401
                         {disp8} je         _jmp_addr_0x00867ff3                          // 0x00867fea    7407
                         and                eax, 0x000000ff                               // 0x00867fec    25ff000000
                         {disp8} jmp        _jmp_addr_0x00867ff8                          // 0x00867ff1    eb05
_jmp_addr_0x00867ff3:    mov                eax, 0x00000001                               // 0x00867ff3    b801000000
_jmp_addr_0x00867ff8:    test               eax, eax                                      // 0x00867ff8    85c0
                         {disp8} jle        _jmp_addr_0x00868035                          // 0x00867ffa    7e39
                         push               ebx                                           // 0x00867ffc    53
                         push               ebp                                           // 0x00867ffd    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00867ffe    8b6c2410
                         push               esi                                           // 0x00868002    56
                         push               edi                                           // 0x00868003    57
                         {disp8} lea        ebx, dword ptr [ecx + 0x48]                   // 0x00868004    8d5948
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00868007    89442414
_jmp_addr_0x0086800b:    {disp8} lea        edi, dword ptr [ebx + -0x30]                  // 0x0086800b    8d7bd0
                         mov                ecx, 0x0000000c                               // 0x0086800e    b90c000000
                         mov.s              esi, ebp                                      // 0x00868013    8bf5
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00868015    f3a5
                         mov.s              edx, ebp                                      // 0x00868017    8bd5
                         mov.s              ecx, ebx                                      // 0x00868019    8bcb
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x0086801b    e87032f9ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00868020    8b442414
                         add                ebp, 0x30                                     // 0x00868024    83c530
                         add                ebx, 0x78                                     // 0x00868027    83c378
                         dec                eax                                           // 0x0086802a    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086802b    89442414
                         {disp8} jne        _jmp_addr_0x0086800b                          // 0x0086802f    75da
                         pop                edi                                           // 0x00868031    5f
                         pop                esi                                           // 0x00868032    5e
                         pop                ebp                                           // 0x00868033    5d
                         pop                ebx                                           // 0x00868034    5b
_jmp_addr_0x00868035:    ret                0x0008                                        // 0x00868035    c20800
                         nop                                                              // 0x00868038    90
                         nop                                                              // 0x00868039    90
                         nop                                                              // 0x0086803a    90
                         nop                                                              // 0x0086803b    90
                         nop                                                              // 0x0086803c    90
                         nop                                                              // 0x0086803d    90
                         nop                                                              // 0x0086803e    90
                         nop                                                              // 0x0086803f    90
_jmp_addr_0x00868040:    sub                esp, 0x30                                     // 0x00868040    83ec30
                         push               ebx                                           // 0x00868043    53
                         push               ebp                                           // 0x00868044    55
                         push               esi                                           // 0x00868045    56
                         mov.s              esi, ecx                                      // 0x00868046    8bf1
                         {disp32} mov       cl, byte ptr [data_bytes + 0x5dc500]          // 0x00868048    8a0d0025fa00
                         mov                al, 0x01                                      // 0x0086804e    b001
                         test               al, cl                                        // 0x00868050    84c8
                         push               edi                                           // 0x00868052    57
                         {disp8} jne        _jmp_addr_0x0086806c                          // 0x00868053    7517
                         mov.s              dl, cl                                        // 0x00868055    8ad1
                         or.s               dl, al                                        // 0x00868057    0ad0
                         push               0x008682f0                                    // 0x00868059    68f0828600
                         {disp32} mov       byte ptr [data_bytes + 0x5dc500], dl          // 0x0086805e    88150025fa00
                         call               _atexit                                       // 0x00868064    e828d7f5ff
                         add                esp, 0x04                                     // 0x00868069    83c404
_jmp_addr_0x0086806c:    {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0086806c    d9460c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0086806f    c744241000000000
                         fsub               dword ptr [esi]                               // 0x00868077    d826
                         mov                eax, 0x00fa23e8                               // 0x00868079    b8e823fa00
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x0086807e    d94610
                         {disp8} fsub       dword ptr [esi + 0x04]                        // 0x00868081    d86604
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00868084    d95c2438
                         {disp8} fld        dword ptr [esi + 0x14]                        // 0x00868088    d94614
                         {disp8} fsub       dword ptr [esi + 0x08]                        // 0x0086808b    d86608
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0086808e    d95c243c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868092    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00868098    d9442438
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0086809c    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x008680a2    d944243c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x008680a6    d80db4a38a00
_jmp_addr_0x008680ac:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x008680ac    db442410
                         {disp8} lea        ecx, dword ptr [eax + -0x08]                  // 0x008680b0    8d48f8
                         mov.s              edx, ecx                                      // 0x008680b3    8bd1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc9c]             // 0x008680b5    d80d9c6c8c00
                         fld                st(0)                                         // 0x008680bb    d9c0
                         fsin                                                             // 0x008680bd    d9fe
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]   // 0x008680bf    dc0580b68a00
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x008680c5    d9542414
                         fmul               st, st(4)                                     // 0x008680c9    d8cc
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x008680cb    d9542418
                         fadd               dword ptr [esi]                               // 0x008680cf    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x008680d1    d95c241c
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x008680d5    8b7c241c
                         fcos                                                             // 0x008680d9    d9ff
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]   // 0x008680db    dc0580b68a00
                         fld                st(0)                                         // 0x008680e1    d9c0
                         fmul               st, st(3)                                     // 0x008680e3    d8cb
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x008680e5    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x008680e8    d95c2420
                         fld                st(1)                                         // 0x008680ec    d9c1
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x008680ee    d84608
                         mov                dword ptr [edx], edi                          // 0x008680f1    893a
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x008680f3    8b7c2420
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x008680f7    897a04
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x008680fa    d95c2424
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x008680fe    8b7c2424
                         fld                st(3)                                         // 0x00868102    d9c3
                         {disp8} mov        dword ptr [edx + 0x08], edi                   // 0x00868104    897a08
                         fadd               dword ptr [esi]                               // 0x00868107    d806
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x00868109    8d5004
                         mov.s              edi, edx                                      // 0x0086810c    8bfa
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086810e    d95c2428
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00868112    d9442414
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x00868116    8b5c2428
                         fmul               st, st(3)                                     // 0x0086811a    d8cb
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0086811c    d84604
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086811f    d95c242c
                         fmul               st, st(1)                                     // 0x00868123    d8c9
                         fld                st(0)                                         // 0x00868125    d9c0
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00868127    d84608
                         mov                dword ptr [edi], ebx                          // 0x0086812a    891f
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x0086812c    8b5c242c
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x00868130    895f04
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00868133    d95c2430
                         {disp8} mov        ebx, dword ptr [esp + 0x30]                   // 0x00868137    8b5c2430
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086813b    d9442418
                         {disp8} mov        dword ptr [edi + 0x08], ebx                   // 0x0086813f    895f08
                         fadd               dword ptr [esi]                               // 0x00868142    d806
                         {disp8} lea        edi, dword ptr [eax + 0x10]                   // 0x00868144    8d7810
                         mov.s              ebx, edi                                      // 0x00868147    8bdf
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00868149    d95c2434
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                   // 0x0086814d    8b6c2434
                         fld                st(2)                                         // 0x00868151    d9c2
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00868153    d84604
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00868156    d95c2438
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0086815a    d84608
                         mov                dword ptr [ebx], ebp                          // 0x0086815d    892b
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x0086815f    8b6c2438
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                   // 0x00868163    896b04
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00868166    d95c243c
                         {disp8} mov        ebp, dword ptr [esp + 0x3c]                   // 0x0086816a    8b6c243c
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                   // 0x0086816e    896b08
                         fld                dword ptr [ecx]                               // 0x00868171    d901
                         {disp8} fld        dword ptr [eax + -0x04]                       // 0x00868173    d940fc
                         fld                dword ptr [eax]                               // 0x00868176    d900
                         fld                st(0)                                         // 0x00868178    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0086817a    d84e30
                         fld                st(2)                                         // 0x0086817d    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086817f    d84e24
                         faddp              st(1), st                                     // 0x00868182    dec1
                         fld                st(3)                                         // 0x00868184    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00868186    d84e18
                         faddp              st(1), st                                     // 0x00868189    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086818b    d8463c
                         fstp               dword ptr [ecx]                               // 0x0086818e    d919
                         fld                st(0)                                         // 0x00868190    d9c0
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00868192    d84e34
                         fld                st(2)                                         // 0x00868195    d9c2
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x00868197    d84e28
                         faddp              st(1), st                                     // 0x0086819a    dec1
                         fld                st(3)                                         // 0x0086819c    d9c3
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086819e    d84e1c
                         faddp              st(1), st                                     // 0x008681a1    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x008681a3    d84640
                         {disp8} fstp       dword ptr [eax + -0x04]                       // 0x008681a6    d958fc
                         {disp8} fmul       dword ptr [esi + 0x38]                        // 0x008681a9    d84e38
                         fxch               st(1)                                         // 0x008681ac    d9c9
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x008681ae    d84e2c
                         faddp              st(1), st                                     // 0x008681b1    dec1
                         fxch               st(1)                                         // 0x008681b3    d9c9
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x008681b5    d84e20
                         faddp              st(1), st                                     // 0x008681b8    dec1
                         {disp8} fadd       dword ptr [esi + 0x44]                        // 0x008681ba    d84644
                         fstp               dword ptr [eax]                               // 0x008681bd    d918
                         fld                dword ptr [edx]                               // 0x008681bf    d902
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x008681c1    d94008
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x008681c4    d9400c
                         fld                st(0)                                         // 0x008681c7    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x008681c9    d84e30
                         fld                st(2)                                         // 0x008681cc    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x008681ce    d84e24
                         faddp              st(1), st                                     // 0x008681d1    dec1
                         fld                st(3)                                         // 0x008681d3    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x008681d5    d84e18
                         faddp              st(1), st                                     // 0x008681d8    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x008681da    d8463c
                         fstp               dword ptr [edx]                               // 0x008681dd    d91a
                         fld                st(0)                                         // 0x008681df    d9c0
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x008681e1    d84e34
                         fld                st(2)                                         // 0x008681e4    d9c2
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x008681e6    d84e28
                         faddp              st(1), st                                     // 0x008681e9    dec1
                         fld                st(3)                                         // 0x008681eb    d9c3
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x008681ed    d84e1c
                         faddp              st(1), st                                     // 0x008681f0    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x008681f2    d84640
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x008681f5    d95808
                         {disp8} fmul       dword ptr [esi + 0x38]                        // 0x008681f8    d84e38
                         fxch               st(1)                                         // 0x008681fb    d9c9
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x008681fd    d84e2c
                         faddp              st(1), st                                     // 0x00868200    dec1
                         fxch               st(1)                                         // 0x00868202    d9c9
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00868204    d84e20
                         faddp              st(1), st                                     // 0x00868207    dec1
                         {disp8} fadd       dword ptr [esi + 0x44]                        // 0x00868209    d84644
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0086820c    d9580c
                         fld                dword ptr [edi]                               // 0x0086820f    d907
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00868211    d94014
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x00868214    d94018
                         fld                st(0)                                         // 0x00868217    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00868219    d84e30
                         fld                st(2)                                         // 0x0086821c    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086821e    d84e24
                         faddp              st(1), st                                     // 0x00868221    dec1
                         fld                st(3)                                         // 0x00868223    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00868225    d84e18
                         faddp              st(1), st                                     // 0x00868228    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086822a    d8463c
                         fstp               dword ptr [edi]                               // 0x0086822d    d91f
                         fld                st(0)                                         // 0x0086822f    d9c0
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00868231    d84e34
                         fld                st(2)                                         // 0x00868234    d9c2
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x00868236    d84e28
                         faddp              st(1), st                                     // 0x00868239    dec1
                         fld                st(3)                                         // 0x0086823b    d9c3
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086823d    d84e1c
                         faddp              st(1), st                                     // 0x00868240    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x00868242    d84640
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x00868245    d95814
                         fxch               st(2)                                         // 0x00868248    d9ca
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086824a    d84e20
                         fxch               st(2)                                         // 0x0086824d    d9ca
                         {disp8} fmul       dword ptr [esi + 0x38]                        // 0x0086824f    d84e38
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00868252    8b7c2410
                         faddp              st(2), st                                     // 0x00868256    dec2
                         inc                edi                                           // 0x00868258    47
                         add                eax, 0x24                                     // 0x00868259    83c024
                         cmp                eax, 0x00fa2508                               // 0x0086825c    3d0825fa00
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00868261    d84e2c
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x00868264    897c2410
                         faddp              st(1), st                                     // 0x00868268    dec1
                         {disp8} fadd       dword ptr [esi + 0x44]                        // 0x0086826a    d84644
                         {disp8} fstp       dword ptr [eax + -0x0c]                       // 0x0086826d    d958f4
                         {disp32} jl        _jmp_addr_0x008680ac                          // 0x00868270    0f8c36feffff
                         {disp8} mov        ebx, dword ptr [esp + 0x44]                   // 0x00868276    8b5c2444
                         fstp               st(0)                                         // 0x0086827a    ddd8
                         test               ebx, ebx                                      // 0x0086827c    85db
                         fstp               st(0)                                         // 0x0086827e    ddd8
                         fstp               st(0)                                         // 0x00868280    ddd8
                         {disp8} jne        _jmp_addr_0x00868288                          // 0x00868282    7504
                         {disp8} lea        ebx, dword ptr [esp + 0x44]                   // 0x00868284    8d5c2444
_jmp_addr_0x00868288:    xor.s              ebp, ebp                                      // 0x00868288    33ed
                         mov                edi, 0x00fa23ec                               // 0x0086828a    bfec23fa00
_jmp_addr_0x0086828f:    inc                ebp                                           // 0x0086828f    45
                         mov.s              eax, ebp                                      // 0x00868290    8bc5
                         and                eax, 0x07                                     // 0x00868292    83e007
                         lea                esi, dword ptr [eax + eax * 0x8]              // 0x00868295    8d34c0
                         push               0x0                                           // 0x00868298    6a00
                         shl                esi, 2                                        // 0x0086829a    c1e602
                         push               ebx                                           // 0x0086829d    53
                         {disp32} lea       eax, dword ptr [esi + 0x00fa23e0]             // 0x0086829e    8d86e023fa00
                         push               eax                                           // 0x008682a4    50
                         {disp8} lea        ecx, dword ptr [edi + -0x0c]                  // 0x008682a5    8d4ff4
                         push               ecx                                           // 0x008682a8    51
                         call               _jmp_addr_0x008398a0                          // 0x008682a9    e8f215fdff
                         push               0x0                                           // 0x008682ae    6a00
                         push               ebx                                           // 0x008682b0    53
                         {disp32} lea       edx, dword ptr [esi + 0x00fa23ec]             // 0x008682b1    8d96ec23fa00
                         push               edx                                           // 0x008682b7    52
                         push               edi                                           // 0x008682b8    57
                         call               _jmp_addr_0x008398a0                          // 0x008682b9    e8e215fdff
                         push               0x0                                           // 0x008682be    6a00
                         push               ebx                                           // 0x008682c0    53
                         {disp32} lea       eax, dword ptr [esi + 0x00fa23f8]             // 0x008682c1    8d86f823fa00
                         push               eax                                           // 0x008682c7    50
                         {disp8} lea        ecx, dword ptr [edi + 0x0c]                   // 0x008682c8    8d4f0c
                         push               ecx                                           // 0x008682cb    51
                         call               _jmp_addr_0x008398a0                          // 0x008682cc    e8cf15fdff
                         add                edi, 0x24                                     // 0x008682d1    83c724
                         add                esp, 0x30                                     // 0x008682d4    83c430
                         cmp                edi, 0x00fa250c                               // 0x008682d7    81ff0c25fa00
                         {disp8} jl         _jmp_addr_0x0086828f                          // 0x008682dd    7cb0
                         pop                edi                                           // 0x008682df    5f
                         pop                esi                                           // 0x008682e0    5e
                         pop                ebp                                           // 0x008682e1    5d
                         pop                ebx                                           // 0x008682e2    5b
                         add                esp, 0x30                                     // 0x008682e3    83c430
                         ret                0x0004                                        // 0x008682e6    c20400
                         nop                                                              // 0x008682e9    90
                         nop                                                              // 0x008682ea    90
                         nop                                                              // 0x008682eb    90
                         nop                                                              // 0x008682ec    90
                         nop                                                              // 0x008682ed    90
                         nop                                                              // 0x008682ee    90
                         nop                                                              // 0x008682ef    90
                         ret                                                              // 0x008682f0    c3
                         nop                                                              // 0x008682f1    90
                         nop                                                              // 0x008682f2    90
                         nop                                                              // 0x008682f3    90
                         nop                                                              // 0x008682f4    90
                         nop                                                              // 0x008682f5    90
                         nop                                                              // 0x008682f6    90
                         nop                                                              // 0x008682f7    90
                         nop                                                              // 0x008682f8    90
                         nop                                                              // 0x008682f9    90
                         nop                                                              // 0x008682fa    90
                         nop                                                              // 0x008682fb    90
                         nop                                                              // 0x008682fc    90
                         nop                                                              // 0x008682fd    90
                         nop                                                              // 0x008682fe    90
                         nop                                                              // 0x008682ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00868300    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00868304    8b4004
                         test               ah, 0x01                                      // 0x00868307    f6c401
                         push               ebx                                           // 0x0086830a    53
                         mov                ebx, 0x000000ff                               // 0x0086830b    bbff000000
                         {disp8} je         _jmp_addr_0x00868316                          // 0x00868310    7404
                         and.s              eax, ebx                                      // 0x00868312    23c3
                         {disp8} jmp        _jmp_addr_0x0086831b                          // 0x00868314    eb05
_jmp_addr_0x00868316:    mov                eax, 0x00000001                               // 0x00868316    b801000000
_jmp_addr_0x0086831b:    test               eax, eax                                      // 0x0086831b    85c0
                         {disp8} jle        _jmp_addr_0x0086834b                          // 0x0086831d    7e2c
                         push               esi                                           // 0x0086831f    56
                         push               edi                                           // 0x00868320    57
                         mov.s              esi, ecx                                      // 0x00868321    8bf1
                         mov.s              edi, eax                                      // 0x00868323    8bf8
_jmp_addr_0x00868325:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00868325    8d4c2410
                         push               ecx                                           // 0x00868329    51
                         mov.s              ecx, esi                                      // 0x0086832a    8bce
                         {disp8} mov        byte ptr [esp + 0x14], -0x80                  // 0x0086832c    c644241480
                         {disp8} mov        byte ptr [esp + 0x15], bl                     // 0x00868331    885c2415
                         {disp8} mov        byte ptr [esp + 0x16], 0x00                   // 0x00868335    c644241600
                         {disp8} mov        byte ptr [esp + 0x17], bl                     // 0x0086833a    885c2417
                         call               _jmp_addr_0x00868040                          // 0x0086833e    e8fdfcffff
                         add                esi, 0x78                                     // 0x00868343    83c678
                         dec                edi                                           // 0x00868346    4f
                         {disp8} jne        _jmp_addr_0x00868325                          // 0x00868347    75dc
                         pop                edi                                           // 0x00868349    5f
                         pop                esi                                           // 0x0086834a    5e
_jmp_addr_0x0086834b:    pop                ebx                                           // 0x0086834b    5b
                         ret                0x0004                                        // 0x0086834c    c20400
                         nop                                                              // 0x0086834f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00868350    8b442404
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00868354    8b4004
                         test               ah, 0x01                                      // 0x00868357    f6c401
                         push               ebx                                           // 0x0086835a    53
                         push               ebp                                           // 0x0086835b    55
                         push               esi                                           // 0x0086835c    56
                         push               edi                                           // 0x0086835d    57
                         {disp8} je         _jmp_addr_0x00868369                          // 0x0086835e    7409
                         and                eax, 0x000000ff                               // 0x00868360    25ff000000
                         mov.s              ebx, eax                                      // 0x00868365    8bd8
                         {disp8} jmp        _jmp_addr_0x0086836e                          // 0x00868367    eb05
_jmp_addr_0x00868369:    mov                ebx, 0x00000001                               // 0x00868369    bb01000000
_jmp_addr_0x0086836e:    xor.s              edi, edi                                      // 0x0086836e    33ff
                         test               ebx, ebx                                      // 0x00868370    85db
                         {disp8} jle        _jmp_addr_0x0086839d                          // 0x00868372    7e29
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x00868374    8b6c2424
                         mov.s              esi, ecx                                      // 0x00868378    8bf1
_jmp_addr_0x0086837a:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086837a    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0086837e    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00868382    8b442418
                         push               ebp                                           // 0x00868386    55
                         push               ecx                                           // 0x00868387    51
                         push               edx                                           // 0x00868388    52
                         push               eax                                           // 0x00868389    50
                         mov.s              ecx, esi                                      // 0x0086838a    8bce
                         call               _jmp_addr_0x008684f0                          // 0x0086838c    e85f010000
                         test               eax, eax                                      // 0x00868391    85c0
                         {disp8} jne        _jmp_addr_0x008683a6                          // 0x00868393    7511
                         inc                edi                                           // 0x00868395    47
                         add                esi, 0x78                                     // 0x00868396    83c678
                         cmp.s              edi, ebx                                      // 0x00868399    3bfb
                         {disp8} jl         _jmp_addr_0x0086837a                          // 0x0086839b    7cdd
_jmp_addr_0x0086839d:    pop                edi                                           // 0x0086839d    5f
                         pop                esi                                           // 0x0086839e    5e
                         pop                ebp                                           // 0x0086839f    5d
                         xor.s              eax, eax                                      // 0x008683a0    33c0
                         pop                ebx                                           // 0x008683a2    5b
                         ret                0x0014                                        // 0x008683a3    c21400
_jmp_addr_0x008683a6:    pop                edi                                           // 0x008683a6    5f
                         pop                esi                                           // 0x008683a7    5e
                         pop                ebp                                           // 0x008683a8    5d
                         mov                eax, 0x00000001                               // 0x008683a9    b801000000
                         pop                ebx                                           // 0x008683ae    5b
                         ret                0x0014                                        // 0x008683af    c21400
                         nop                                                              // 0x008683b2    90
                         nop                                                              // 0x008683b3    90
                         nop                                                              // 0x008683b4    90
                         nop                                                              // 0x008683b5    90
                         nop                                                              // 0x008683b6    90
                         nop                                                              // 0x008683b7    90
                         nop                                                              // 0x008683b8    90
                         nop                                                              // 0x008683b9    90
                         nop                                                              // 0x008683ba    90
                         nop                                                              // 0x008683bb    90
                         nop                                                              // 0x008683bc    90
                         nop                                                              // 0x008683bd    90
                         nop                                                              // 0x008683be    90
                         nop                                                              // 0x008683bf    90
_jmp_addr_0x008683c0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008683c0    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008683c4    8b5004
                         sub                esp, 0x1c                                     // 0x008683c7    83ec1c
                         test               dh, 0x01                                      // 0x008683ca    f6c601
                         {disp8} je         _jmp_addr_0x008683d7                          // 0x008683cd    7408
                         and                edx, 0x000000ff                               // 0x008683cf    81e2ff000000
                         {disp8} jmp        _jmp_addr_0x008683dc                          // 0x008683d5    eb05
_jmp_addr_0x008683d7:    mov                edx, 0x00000001                               // 0x008683d7    ba01000000
_jmp_addr_0x008683dc:    test               edx, edx                                      // 0x008683dc    85d2
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x008683de    8b442424
                         push               ebx                                           // 0x008683e2    53
                         push               ebp                                           // 0x008683e3    55
                         push               esi                                           // 0x008683e4    56
                         mov                esi, dword ptr [eax]                          // 0x008683e5    8b30
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x008683e7    89742410
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x008683eb    8b7004
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x008683ee    89742414
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x008683f2    8b7008
                         push               edi                                           // 0x008683f5    57
                         {disp8} mov        edi, dword ptr [esp + 0x3c]                   // 0x008683f6    8b7c243c
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x008683fa    8974241c
                         {disp8} mov        esi, dword ptr [esp + 0x40]                   // 0x008683fe    8b742440
                         {disp8} mov        dword ptr [esp + 0x10], 0x60ad78ec            // 0x00868402    c7442410ec78ad60
                         {disp32} jle       _jmp_addr_0x00868493                          // 0x0086840a    0f8e83000000
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00868410    8b5c2418
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00868414    8b6c241c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00868418    894c2430
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0086841c    8954243c
                         {disp8} jmp        _jmp_addr_0x00868426                          // 0x00868420    eb04
_jmp_addr_0x00868422:    {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00868422    8b442434
_jmp_addr_0x00868426:    {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00868426    8b542438
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0086842a    8d4c2440
                         push               ecx                                           // 0x0086842e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0086842f    8b4c2434
                         push               esi                                           // 0x00868433    56
                         push               edi                                           // 0x00868434    57
                         push               edx                                           // 0x00868435    52
                         push               eax                                           // 0x00868436    50
                         call               _jmp_addr_0x00868910                          // 0x00868437    e8d4040000
                         test               eax, eax                                      // 0x0086843c    85c0
                         {disp8} je         _jmp_addr_0x0086847b                          // 0x0086843e    743b
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00868440    d9442440
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00868444    d85c2410
                         fnstsw             ax                                            // 0x00868448    dfe0
                         test               ah, 0x01                                      // 0x0086844a    f6c401
                         {disp8} je         _jmp_addr_0x0086847b                          // 0x0086844d    742c
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0086844f    8b442440
                         mov.s              ecx, edi                                      // 0x00868453    8bcf
                         mov                edx, dword ptr [ecx]                          // 0x00868455    8b11
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x00868457    8b5904
                         {disp8} mov        ebp, dword ptr [ecx + 0x08]                   // 0x0086845a    8b6908
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086845d    89442410
                         mov.s              eax, esi                                      // 0x00868461    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x00868463    8b08
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00868465    89542414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00868469    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0086846c    8b4008
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0086846f    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00868473    89542424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00868477    89442428
_jmp_addr_0x0086847b:    {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0086847b    8b4c2430
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0086847f    8b44243c
                         add                ecx, 0x78                                     // 0x00868483    83c178
                         dec                eax                                           // 0x00868486    48
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00868487    894c2430
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086848b    8944243c
                         {disp8} jne        _jmp_addr_0x00868422                          // 0x0086848f    7591
                         {disp8} jmp        _jmp_addr_0x0086849b                          // 0x00868491    eb08
_jmp_addr_0x00868493:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00868493    8b5c2418
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00868497    8b6c241c
_jmp_addr_0x0086849b:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0086849b    8b4c2414
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086849f    d9442410
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x008684a3    8b542420
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x56ed8]             // 0x008684a7    d81dd8fe8f00
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x008684ad    8b442424
                         mov                dword ptr [edi], ecx                          // 0x008684b1    890f
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x008684b3    8b4c2428
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x008684b7    895f04
                         {disp8} mov        dword ptr [edi + 0x08], ebp                   // 0x008684ba    896f08
                         mov                dword ptr [esi], edx                          // 0x008684bd    8916
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x008684bf    894604
                         fnstsw             ax                                            // 0x008684c2    dfe0
                         pop                edi                                           // 0x008684c4    5f
                         test               ah, 0x40                                      // 0x008684c5    f6c440
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x008684c8    894e08
                         pop                esi                                           // 0x008684cb    5e
                         pop                ebp                                           // 0x008684cc    5d
                         pop                ebx                                           // 0x008684cd    5b
                         {disp8} jne        _jmp_addr_0x008684db                          // 0x008684ce    750b
                         mov                eax, 0x00000001                               // 0x008684d0    b801000000
                         add                esp, 0x1c                                     // 0x008684d5    83c41c
                         ret                0x0014                                        // 0x008684d8    c21400
_jmp_addr_0x008684db:    xor.s              eax, eax                                      // 0x008684db    33c0
                         add                esp, 0x1c                                     // 0x008684dd    83c41c
                         ret                0x0014                                        // 0x008684e0    c21400
                         nop                                                              // 0x008684e3    90
                         nop                                                              // 0x008684e4    90
                         nop                                                              // 0x008684e5    90
                         nop                                                              // 0x008684e6    90
                         nop                                                              // 0x008684e7    90
                         nop                                                              // 0x008684e8    90
                         nop                                                              // 0x008684e9    90
                         nop                                                              // 0x008684ea    90
                         nop                                                              // 0x008684eb    90
                         nop                                                              // 0x008684ec    90
                         nop                                                              // 0x008684ed    90
                         nop                                                              // 0x008684ee    90
                         nop                                                              // 0x008684ef    90
_jmp_addr_0x008684f0:    sub                esp, 0x34                                     // 0x008684f0    83ec34
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x008684f3    d9410c
                         fsub               dword ptr [ecx]                               // 0x008684f6    d821
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x008684f8    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x008684fe    d95c2400
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x00868502    d94110
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x00868505    d86104
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868508    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0086850e    d95c2404
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x00868512    d94114
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00868515    d86108
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868518    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0086851e    d95c2408
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00868522    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00868526    d81d18f58b00
                         fnstsw             ax                                            // 0x0086852c    dfe0
                         test               ah, 0x41                                      // 0x0086852e    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x00868531    0f85cc030000
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00868537    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x0086853b    d81d18f58b00
                         fnstsw             ax                                            // 0x00868541    dfe0
                         test               ah, 0x41                                      // 0x00868543    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x00868546    0f85b7030000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0086854c    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00868550    d81d18f58b00
                         fnstsw             ax                                            // 0x00868556    dfe0
                         test               ah, 0x41                                      // 0x00868558    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x0086855b    0f85a2030000
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00868561    8b442438
                         {disp8} fld        dword ptr [ecx + 0x60]                        // 0x00868565    d94160
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868568    d84808
                         {disp8} fld        dword ptr [ecx + 0x54]                        // 0x0086856b    d94154
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086856e    d84804
                         faddp              st(1), st                                     // 0x00868571    dec1
                         fld                dword ptr [eax]                               // 0x00868573    d900
                         {disp8} fmul       dword ptr [ecx + 0x48]                        // 0x00868575    d84948
                         faddp              st(1), st                                     // 0x00868578    dec1
                         {disp8} fadd       dword ptr [ecx + 0x6c]                        // 0x0086857a    d8416c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0086857d    d95c2410
                         {disp8} fld        dword ptr [ecx + 0x64]                        // 0x00868581    d94164
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868584    d84808
                         {disp8} fld        dword ptr [ecx + 0x4c]                        // 0x00868587    d9414c
                         fmul               dword ptr [eax]                               // 0x0086858a    d808
                         faddp              st(1), st                                     // 0x0086858c    dec1
                         {disp8} fld        dword ptr [ecx + 0x58]                        // 0x0086858e    d94158
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868591    d84804
                         faddp              st(1), st                                     // 0x00868594    dec1
                         {disp8} fadd       dword ptr [ecx + 0x70]                        // 0x00868596    d84170
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00868599    d95c2414
                         {disp8} fld        dword ptr [ecx + 0x68]                        // 0x0086859d    d94168
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008685a0    d84808
                         {disp8} fld        dword ptr [ecx + 0x50]                        // 0x008685a3    d94150
                         fmul               dword ptr [eax]                               // 0x008685a6    d808
                         faddp              st(1), st                                     // 0x008685a8    dec1
                         {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x008685aa    d9415c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008685ad    d84804
                         faddp              st(1), st                                     // 0x008685b0    dec1
                         {disp8} fadd       dword ptr [ecx + 0x74]                        // 0x008685b2    d84174
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x008685b5    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008685b9    d9442410
                         fcomp              dword ptr [ecx]                               // 0x008685bd    d819
                         fnstsw             ax                                            // 0x008685bf    dfe0
                         test               ah, 0x41                                      // 0x008685c1    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x008685c4    0f8539030000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008685ca    d9442410
                         {disp8} fcomp      dword ptr [ecx + 0x0c]                        // 0x008685ce    d8590c
                         fnstsw             ax                                            // 0x008685d1    dfe0
                         test               ah, 0x01                                      // 0x008685d3    f6c401
                         {disp32} je        _jmp_addr_0x00868903                          // 0x008685d6    0f8427030000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008685dc    d9442414
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x008685e0    d85904
                         fnstsw             ax                                            // 0x008685e3    dfe0
                         test               ah, 0x41                                      // 0x008685e5    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x008685e8    0f8515030000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008685ee    d9442414
                         {disp8} fcomp      dword ptr [ecx + 0x10]                        // 0x008685f2    d85910
                         fnstsw             ax                                            // 0x008685f5    dfe0
                         test               ah, 0x01                                      // 0x008685f7    f6c401
                         {disp32} je        _jmp_addr_0x00868903                          // 0x008685fa    0f8403030000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868600    d9442418
                         {disp8} fcomp      dword ptr [ecx + 0x08]                        // 0x00868604    d85908
                         fnstsw             ax                                            // 0x00868607    dfe0
                         test               ah, 0x41                                      // 0x00868609    f6c441
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x0086860c    0f85f1020000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868612    d9442418
                         {disp8} fcomp      dword ptr [ecx + 0x14]                        // 0x00868616    d85914
                         fnstsw             ax                                            // 0x00868619    dfe0
                         test               ah, 0x01                                      // 0x0086861b    f6c401
                         {disp32} je        _jmp_addr_0x00868903                          // 0x0086861e    0f84df020000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868624    d9442410
                         fsub               dword ptr [ecx]                               // 0x00868628    d821
                         {disp8} fdiv       dword ptr [esp + 0x00]                        // 0x0086862a    d8742400
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x0086862e    d82590a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00868634    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00868638    d9442414
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x0086863c    d86104
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x0086863f    d8742404
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x00868643    d82590a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00868649    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086864d    d9442418
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00868651    d86108
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00868654    d8742408
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x00868658    d82590a38a00
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x0086865e    d9542424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00868662    d84c2424
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00868666    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0086866a    d84c2420
                         faddp              st(1), st                                     // 0x0086866e    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868670    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00868674    d84c241c
                         faddp              st(1), st                                     // 0x00868678    dec1
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0086867a    d81590a38a00
                         fnstsw             ax                                            // 0x00868680    dfe0
                         test               ah, 0x01                                      // 0x00868682    f6c401
                         {disp32} je        _jmp_addr_0x00868901                          // 0x00868685    0f8476020000
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0086868b    8b44243c
                         {disp8} fld        dword ptr [ecx + 0x60]                        // 0x0086868f    d94160
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868692    d84808
                         {disp8} fld        dword ptr [ecx + 0x54]                        // 0x00868695    d94154
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868698    d84804
                         faddp              st(1), st                                     // 0x0086869b    dec1
                         fld                dword ptr [eax]                               // 0x0086869d    d900
                         {disp8} fmul       dword ptr [ecx + 0x48]                        // 0x0086869f    d84948
                         faddp              st(1), st                                     // 0x008686a2    dec1
                         {disp8} fld        dword ptr [ecx + 0x64]                        // 0x008686a4    d94164
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008686a7    d84808
                         {disp8} fld        dword ptr [ecx + 0x58]                        // 0x008686aa    d94158
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008686ad    d84804
                         faddp              st(1), st                                     // 0x008686b0    dec1
                         {disp8} fld        dword ptr [ecx + 0x4c]                        // 0x008686b2    d9414c
                         fmul               dword ptr [eax]                               // 0x008686b5    d808
                         faddp              st(1), st                                     // 0x008686b7    dec1
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x008686b9    d95c242c
                         {disp8} fld        dword ptr [ecx + 0x68]                        // 0x008686bd    d94168
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008686c0    d84808
                         {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x008686c3    d9415c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008686c6    d84804
                         faddp              st(1), st                                     // 0x008686c9    dec1
                         {disp8} fld        dword ptr [ecx + 0x50]                        // 0x008686cb    d94150
                         fmul               dword ptr [eax]                               // 0x008686ce    d808
                         faddp              st(1), st                                     // 0x008686d0    dec1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x008686d2    d95c2430
                         {disp8} fdiv       dword ptr [esp + 0x00]                        // 0x008686d6    d8742400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008686da    d95c2410
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x008686de    d944242c
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x008686e2    d8742404
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x008686e6    d95c2414
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008686ea    d9442430
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x008686ee    d8742408
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x008686f2    d9542418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x008686f6    d84c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008686fa    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x008686fe    d84c2414
                         faddp              st(1), st                                     // 0x00868702    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868704    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868708    d84c2410
                         faddp              st(1), st                                     // 0x0086870c    dec1
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0086870e    d95c243c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868712    d9442418
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00868716    d84c2424
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086871a    d9442414
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0086871e    d84c2420
                         faddp              st(1), st                                     // 0x00868722    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868724    d9442410
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00868728    d84c241c
                         faddp              st(1), st                                     // 0x0086872c    dec1
                         fadd.s             st(0), st(0)                                  // 0x0086872e    dcc0
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x00868730    d9542438
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00868734    d84c2438
                         fxch               st(1)                                         // 0x00868738    d9c9
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x0086873a    d82590a38a00
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868740    d84c243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x00868744    d80d18b48a00
                         fsubp              st(1), st                                     // 0x0086874a    dee9
                         {disp8} fst        dword ptr [esp + 0x0c]                        // 0x0086874c    d954240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00868750    d81d98a38a00
                         fnstsw             ax                                            // 0x00868756    dfe0
                         test               ah, 0x01                                      // 0x00868758    f6c401
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x0086875b    0f85a2010000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868761    d944243c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xf9bac]             // 0x00868765    d81dac2b9a00
                         fnstsw             ax                                            // 0x0086876b    dfe0
                         test               ah, 0x01                                      // 0x0086876d    f6c401
                         {disp32} jne       _jmp_addr_0x00868903                          // 0x00868770    0f858d010000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00868776    d9442438
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x0086877a    8b542440
                         fchs                                                             // 0x0086877e    d9e0
                         push               esi                                           // 0x00868780    56
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868781    d9442410
                         mov.s              eax, edx                                      // 0x00868785    8bc2
                         fsqrt                                                            // 0x00868787    d9fa
                         push               edi                                           // 0x00868789    57
                         fxch               st(1)                                         // 0x0086878a    d9c9
                         fxch               st(1)                                         // 0x0086878c    d9c9
                         fsubp              st(1), st                                     // 0x0086878e    dee9
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00868790    d9442444
                         fadd.s             st(0), st(0)                                  // 0x00868794    dcc0
                         fdivp              st(1), st                                     // 0x00868796    def9
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868798    d9442418
                         fmul               st, st(1)                                     // 0x0086879c    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086879e    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008687a2    d944241c
                         fmul               st, st(1)                                     // 0x008687a6    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x008687a8    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x008687ac    d84c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x008687b0    d9442430
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x008687b4    d8442424
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x008687b8    d95c2418
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x008687bc    d9442434
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x008687c0    d8442428
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x008687c4    d95c241c
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x008687c8    d844242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x008687cc    d9442418
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x008687d0    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x008687d6    d84c2408
                         fadd               dword ptr [ecx]                               // 0x008687da    d801
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x008687dc    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x008687e0    d944241c
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x008687e4    8b742424
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x008687e8    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x008687ee    d84c240c
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x008687f2    d84104
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x008687f5    d95c2428
                         fld                st(0)                                         // 0x008687f9    d9c0
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x008687fb    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868801    d84c2410
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x00868805    d84108
                         mov                dword ptr [eax], esi                          // 0x00868808    8930
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0086880a    8b742428
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0086880e    897004
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00868811    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868815    d9442418
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x00868819    8b74242c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0086881d    d84c2408
                         {disp8} mov        dword ptr [eax + 0x08], esi                   // 0x00868821    897008
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00868824    8b44244c
                         mov.s              esi, eax                                      // 0x00868828    8bf0
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086882a    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086882e    d944241c
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x00868832    8b7c2424
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00868836    d84c240c
                         mov                dword ptr [esi], edi                          // 0x0086883a    893e
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086883c    d95c2428
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00868840    8b7c2428
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868844    d84c2410
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x00868848    897e04
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086884b    d95c242c
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x0086884f    8b7c242c
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x00868853    897e08
                         fld                dword ptr [edx]                               // 0x00868856    d902
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x00868858    d94204
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0086885b    d94208
                         fld                st(0)                                         // 0x0086885e    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x00868860    d84930
                         fld                st(2)                                         // 0x00868863    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x24]                        // 0x00868865    d84924
                         faddp              st(1), st                                     // 0x00868868    dec1
                         fld                st(3)                                         // 0x0086886a    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0086886c    d84918
                         faddp              st(1), st                                     // 0x0086886f    dec1
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x00868871    d8413c
                         fstp               dword ptr [edx]                               // 0x00868874    d91a
                         fld                st(0)                                         // 0x00868876    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x00868878    d84934
                         fld                st(2)                                         // 0x0086887b    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x28]                        // 0x0086887d    d84928
                         faddp              st(1), st                                     // 0x00868880    dec1
                         fld                st(3)                                         // 0x00868882    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00868884    d8491c
                         faddp              st(1), st                                     // 0x00868887    dec1
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x00868889    d84140
                         {disp8} fstp       dword ptr [edx + 0x04]                        // 0x0086888c    d95a04
                         {disp8} fmul       dword ptr [ecx + 0x38]                        // 0x0086888f    d84938
                         fxch               st(1)                                         // 0x00868892    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x00868894    d8492c
                         faddp              st(1), st                                     // 0x00868897    dec1
                         fxch               st(1)                                         // 0x00868899    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x0086889b    d84920
                         faddp              st(1), st                                     // 0x0086889e    dec1
                         {disp8} fadd       dword ptr [ecx + 0x44]                        // 0x008688a0    d84144
                         {disp8} fstp       dword ptr [edx + 0x08]                        // 0x008688a3    d95a08
                         fld                dword ptr [eax]                               // 0x008688a6    d900
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x008688a8    d94004
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x008688ab    d94008
                         fld                st(0)                                         // 0x008688ae    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x008688b0    d84930
                         fld                st(2)                                         // 0x008688b3    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x24]                        // 0x008688b5    d84924
                         faddp              st(1), st                                     // 0x008688b8    dec1
                         fld                st(3)                                         // 0x008688ba    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x008688bc    d84918
                         faddp              st(1), st                                     // 0x008688bf    dec1
                         fstp               dword ptr [eax]                               // 0x008688c1    d918
                         fld                st(0)                                         // 0x008688c3    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x008688c5    d84934
                         fld                st(2)                                         // 0x008688c8    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x28]                        // 0x008688ca    d84928
                         faddp              st(1), st                                     // 0x008688cd    dec1
                         fld                st(3)                                         // 0x008688cf    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x008688d1    d8491c
                         faddp              st(1), st                                     // 0x008688d4    dec1
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x008688d6    d95804
                         {disp8} fmul       dword ptr [ecx + 0x38]                        // 0x008688d9    d84938
                         fxch               st(1)                                         // 0x008688dc    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x008688de    d8492c
                         faddp              st(1), st                                     // 0x008688e1    dec1
                         fxch               st(1)                                         // 0x008688e3    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x008688e5    d84920
                         mov.s              ecx, eax                                      // 0x008688e8    8bc8
                         faddp              st(1), st                                     // 0x008688ea    dec1
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x008688ec    d95808
                         call               ?FastNormalize@LHPoint@@QAEXXZ                // 0x008688ef    e81c60ceff
                         pop                edi                                           // 0x008688f4    5f
                         mov                eax, 0x00000001                               // 0x008688f5    b801000000
                         pop                esi                                           // 0x008688fa    5e
                         add                esp, 0x34                                     // 0x008688fb    83c434
                         ret                0x0010                                        // 0x008688fe    c21000
_jmp_addr_0x00868901:    fstp               st(0)                                         // 0x00868901    ddd8
_jmp_addr_0x00868903:    xor.s              eax, eax                                      // 0x00868903    33c0
                         add                esp, 0x34                                     // 0x00868905    83c434
                         ret                0x0010                                        // 0x00868908    c21000
                         nop                                                              // 0x0086890b    90
                         nop                                                              // 0x0086890c    90
                         nop                                                              // 0x0086890d    90
                         nop                                                              // 0x0086890e    90
                         nop                                                              // 0x0086890f    90
_jmp_addr_0x00868910:    sub                esp, 0x30                                     // 0x00868910    83ec30
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x00868913    d9410c
                         fsub               dword ptr [ecx]                               // 0x00868916    d821
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868918    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0086891e    d95c2400
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x00868922    d94110
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x00868925    d86104
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868928    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0086892e    d95c2404
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x00868932    d94114
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00868935    d86108
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868938    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0086893e    d95c2408
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00868942    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00868946    d81d18f58b00
                         fnstsw             ax                                            // 0x0086894c    dfe0
                         test               ah, 0x41                                      // 0x0086894e    f6c441
                         {disp32} jne       _jmp_addr_0x00868c6b                          // 0x00868951    0f8514030000
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00868957    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x0086895b    d81d18f58b00
                         fnstsw             ax                                            // 0x00868961    dfe0
                         test               ah, 0x41                                      // 0x00868963    f6c441
                         {disp32} jne       _jmp_addr_0x00868c6b                          // 0x00868966    0f85ff020000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0086896c    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00868970    d81d18f58b00
                         fnstsw             ax                                            // 0x00868976    dfe0
                         test               ah, 0x41                                      // 0x00868978    f6c441
                         {disp32} jne       _jmp_addr_0x00868c6b                          // 0x0086897b    0f85ea020000
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00868981    8b442434
                         {disp8} fld        dword ptr [ecx + 0x60]                        // 0x00868985    d94160
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868988    d84808
                         {disp8} fld        dword ptr [ecx + 0x54]                        // 0x0086898b    d94154
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086898e    d84804
                         faddp              st(1), st                                     // 0x00868991    dec1
                         fld                dword ptr [eax]                               // 0x00868993    d900
                         {disp8} fmul       dword ptr [ecx + 0x48]                        // 0x00868995    d84948
                         faddp              st(1), st                                     // 0x00868998    dec1
                         {disp8} fadd       dword ptr [ecx + 0x6c]                        // 0x0086899a    d8416c
                         {disp8} fld        dword ptr [ecx + 0x64]                        // 0x0086899d    d94164
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008689a0    d84808
                         {disp8} fld        dword ptr [ecx + 0x4c]                        // 0x008689a3    d9414c
                         fmul               dword ptr [eax]                               // 0x008689a6    d808
                         faddp              st(1), st                                     // 0x008689a8    dec1
                         {disp8} fld        dword ptr [ecx + 0x58]                        // 0x008689aa    d94158
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008689ad    d84804
                         faddp              st(1), st                                     // 0x008689b0    dec1
                         {disp8} fadd       dword ptr [ecx + 0x70]                        // 0x008689b2    d84170
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008689b5    d95c2410
                         {disp8} fld        dword ptr [ecx + 0x68]                        // 0x008689b9    d94168
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x008689bc    d84808
                         {disp8} fld        dword ptr [ecx + 0x50]                        // 0x008689bf    d94150
                         fmul               dword ptr [eax]                               // 0x008689c2    d808
                         faddp              st(1), st                                     // 0x008689c4    dec1
                         {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x008689c6    d9415c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x008689c9    d84804
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x008689cc    8b442438
                         faddp              st(1), st                                     // 0x008689d0    dec1
                         {disp8} fadd       dword ptr [ecx + 0x74]                        // 0x008689d2    d84174
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x008689d5    d95c2414
                         fsub               dword ptr [ecx]                               // 0x008689d9    d821
                         {disp8} fdiv       dword ptr [esp + 0x00]                        // 0x008689db    d8742400
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x008689df    d82590a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x008689e5    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x008689e9    d9442410
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x008689ed    d86104
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x008689f0    d8742404
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x008689f4    d82590a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x008689fa    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008689fe    d9442414
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00868a02    d86108
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00868a05    d8742408
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x00868a09    d82590a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00868a0f    d95c2420
                         {disp8} fld        dword ptr [ecx + 0x60]                        // 0x00868a13    d94160
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868a16    d84808
                         {disp8} fld        dword ptr [ecx + 0x54]                        // 0x00868a19    d94154
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868a1c    d84804
                         faddp              st(1), st                                     // 0x00868a1f    dec1
                         fld                dword ptr [eax]                               // 0x00868a21    d900
                         {disp8} fmul       dword ptr [ecx + 0x48]                        // 0x00868a23    d84948
                         faddp              st(1), st                                     // 0x00868a26    dec1
                         {disp8} fld        dword ptr [ecx + 0x64]                        // 0x00868a28    d94164
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868a2b    d84808
                         {disp8} fld        dword ptr [ecx + 0x4c]                        // 0x00868a2e    d9414c
                         fmul               dword ptr [eax]                               // 0x00868a31    d808
                         faddp              st(1), st                                     // 0x00868a33    dec1
                         {disp8} fld        dword ptr [ecx + 0x58]                        // 0x00868a35    d94158
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868a38    d84804
                         faddp              st(1), st                                     // 0x00868a3b    dec1
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00868a3d    d95c2428
                         {disp8} fld        dword ptr [ecx + 0x68]                        // 0x00868a41    d94168
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868a44    d84808
                         {disp8} fld        dword ptr [ecx + 0x50]                        // 0x00868a47    d94150
                         fmul               dword ptr [eax]                               // 0x00868a4a    d808
                         faddp              st(1), st                                     // 0x00868a4c    dec1
                         {disp8} fld        dword ptr [ecx + 0x5c]                        // 0x00868a4e    d9415c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868a51    d84804
                         faddp              st(1), st                                     // 0x00868a54    dec1
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00868a56    d95c242c
                         {disp8} fdiv       dword ptr [esp + 0x00]                        // 0x00868a5a    d8742400
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00868a5e    d95c240c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00868a62    d9442428
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x00868a66    d8742404
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00868a6a    d95c2410
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00868a6e    d944242c
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00868a72    d8742408
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00868a76    d9542414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00868a7a    d84c2414
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868a7e    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868a82    d84c2410
                         faddp              st(1), st                                     // 0x00868a86    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00868a88    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00868a8c    d84c240c
                         faddp              st(1), st                                     // 0x00868a90    dec1
                         {disp8} fst        dword ptr [esp + 0x34]                        // 0x00868a92    d9542434
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00868a96    d81d18f58b00
                         fnstsw             ax                                            // 0x00868a9c    dfe0
                         test               ah, 0x41                                      // 0x00868a9e    f6c441
                         {disp32} jne       _jmp_addr_0x00868c6b                          // 0x00868aa1    0f85c4010000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00868aa7    d9442414
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00868aab    d84c2420
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868aaf    d9442410
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00868ab3    d84c241c
                         faddp              st(1), st                                     // 0x00868ab7    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00868ab9    d944240c
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00868abd    d84c2418
                         faddp              st(1), st                                     // 0x00868ac1    dec1
                         fadd.s             st(0), st(0)                                  // 0x00868ac3    dcc0
                         fld                st(0)                                         // 0x00868ac5    d9c0
                         fmul               st, st(1)                                     // 0x00868ac7    d8c9
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00868ac9    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00868acd    d84c2420
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868ad1    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00868ad5    d84c241c
                         faddp              st(1), st                                     // 0x00868ad9    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868adb    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00868adf    d84c2418
                         faddp              st(1), st                                     // 0x00868ae3    dec1
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x00868ae5    d82590a38a00
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x00868aeb    d84c2434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x00868aef    d80d18b48a00
                         fsubp              st(1), st                                     // 0x00868af5    dee9
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00868af7    d81598a38a00
                         fnstsw             ax                                            // 0x00868afd    dfe0
                         test               ah, 0x01                                      // 0x00868aff    f6c401
                         {disp32} jne       _jmp_addr_0x00868c67                          // 0x00868b02    0f855f010000
                         fxch               st(1)                                         // 0x00868b08    d9c9
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00868b0a    8b44243c
                         fchs                                                             // 0x00868b0e    d9e0
                         push               esi                                           // 0x00868b10    56
                         fxch               st(1)                                         // 0x00868b11    d9c9
                         mov.s              edx, eax                                      // 0x00868b13    8bd0
                         fsqrt                                                            // 0x00868b15    d9fa
                         push               edi                                           // 0x00868b17    57
                         fld                st(0)                                         // 0x00868b18    d9c0
                         fsubp              st(2), st                                     // 0x00868b1a    deea
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868b1c    d944243c
                         fadd.s             st(0), st(0)                                  // 0x00868b20    dcc0
                         fdivp              st(2), st                                     // 0x00868b22    defa
                         fxch               st(1)                                         // 0x00868b24    d9c9
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00868b26    d95c243c
                         fstp               st(0)                                         // 0x00868b2a    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00868b2c    d9442414
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868b30    d84c243c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868b34    d9442418
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868b38    d84c243c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00868b3c    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868b40    d944241c
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868b44    d84c243c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00868b48    d95c2434
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00868b4c    d8442420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00868b50    d9442430
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x00868b54    d8442424
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00868b58    d95c2418
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00868b5c    d9442434
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x00868b60    d8442428
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00868b64    d95c241c
                         fld                st(0)                                         // 0x00868b68    d9c0
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00868b6a    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00868b70    d84c2408
                         fadd               dword ptr [ecx]                               // 0x00868b74    d801
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00868b76    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868b7a    d9442418
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00868b7e    8b742420
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00868b82    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00868b88    d84c240c
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x00868b8c    d84104
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00868b8f    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868b93    d944241c
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00868b97    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868b9d    d84c2410
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x00868ba1    d84108
                         mov                dword ptr [edx], esi                          // 0x00868ba4    8932
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00868ba6    8b742424
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00868baa    897204
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00868bad    d95c2428
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x00868bb1    8b742428
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00868bb5    d84c2408
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x00868bb9    897208
                         {disp8} mov        esi, dword ptr [esp + 0x48]                   // 0x00868bbc    8b742448
                         mov.s              edx, esi                                      // 0x00868bc0    8bd6
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00868bc2    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868bc6    d9442418
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00868bca    8b7c2420
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00868bce    d84c240c
                         mov                dword ptr [edx], edi                          // 0x00868bd2    893a
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00868bd4    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868bd8    d944241c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00868bdc    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00868be0    d95c2428
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x00868be4    8b7c2424
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x00868be8    897a04
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00868beb    8b7c2428
                         {disp8} mov        dword ptr [edx + 0x08], edi                   // 0x00868bef    897a08
                         fld                dword ptr [eax]                               // 0x00868bf2    d900
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00868bf4    d94004
                         add                ecx, 0x18                                     // 0x00868bf7    83c118
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00868bfa    d94008
                         fld                st(0)                                         // 0x00868bfd    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00868bff    d84918
                         fld                st(2)                                         // 0x00868c02    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x00868c04    d8490c
                         faddp              st(1), st                                     // 0x00868c07    dec1
                         fld                st(3)                                         // 0x00868c09    d9c3
                         fmul               dword ptr [ecx]                               // 0x00868c0b    d809
                         faddp              st(1), st                                     // 0x00868c0d    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x00868c0f    d84124
                         fstp               dword ptr [eax]                               // 0x00868c12    d918
                         fld                st(0)                                         // 0x00868c14    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00868c16    d8491c
                         fld                st(2)                                         // 0x00868c19    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x00868c1b    d84910
                         faddp              st(1), st                                     // 0x00868c1e    dec1
                         fld                st(3)                                         // 0x00868c20    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00868c22    d84904
                         faddp              st(1), st                                     // 0x00868c25    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x00868c27    d84128
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00868c2a    d95804
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00868c2d    d84920
                         fxch               st(1)                                         // 0x00868c30    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00868c32    d84914
                         faddp              st(1), st                                     // 0x00868c35    dec1
                         fxch               st(1)                                         // 0x00868c37    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00868c39    d84908
                         faddp              st(1), st                                     // 0x00868c3c    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x00868c3e    d8412c
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00868c41    d95808
                         call               _jmp_addr_0x00518bf0                          // 0x00868c44    e8a7ffcaff
                         mov.s              ecx, esi                                      // 0x00868c49    8bce
                         call               ?FastNormalize@LHPoint@@QAEXXZ                // 0x00868c4b    e8c05cceff
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868c50    d944243c
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00868c54    8b44244c
                         pop                edi                                           // 0x00868c58    5f
                         fstp               dword ptr [eax]                               // 0x00868c59    d918
                         mov                eax, 0x00000001                               // 0x00868c5b    b801000000
                         pop                esi                                           // 0x00868c60    5e
                         add                esp, 0x30                                     // 0x00868c61    83c430
                         ret                0x0014                                        // 0x00868c64    c21400
_jmp_addr_0x00868c67:    fstp               st(0)                                         // 0x00868c67    ddd8
                         fstp               st(0)                                         // 0x00868c69    ddd8
_jmp_addr_0x00868c6b:    xor.s              eax, eax                                      // 0x00868c6b    33c0
                         add                esp, 0x30                                     // 0x00868c6d    83c430
                         ret                0x0014                                        // 0x00868c70    c21400
                         nop                                                              // 0x00868c73    90
                         nop                                                              // 0x00868c74    90
                         nop                                                              // 0x00868c75    90
                         nop                                                              // 0x00868c76    90
                         nop                                                              // 0x00868c77    90
                         nop                                                              // 0x00868c78    90
                         nop                                                              // 0x00868c79    90
                         nop                                                              // 0x00868c7a    90
                         nop                                                              // 0x00868c7b    90
                         nop                                                              // 0x00868c7c    90
                         nop                                                              // 0x00868c7d    90
                         nop                                                              // 0x00868c7e    90
                         nop                                                              // 0x00868c7f    90
_jmp_addr_0x00868c80:    mov.s              eax, ecx                                      // 0x00868c80    8bc1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3eb4]        // 0x00868c82    8b0db49eea00
                         xor.s              edx, edx                                      // 0x00868c88    33d2
                         sub                esp, 0x38                                     // 0x00868c8a    83ec38
                         cmp.s              ecx, edx                                      // 0x00868c8d    3bca
                         {disp8} je         _jmp_addr_0x00868ca2                          // 0x00868c8f    7411
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00868c91    8b54243c
                         mov.s              ecx, eax                                      // 0x00868c95    8bc8
                         call               _jmp_addr_0x007acc60                          // 0x00868c97    e8c43ff4ff
                         add                esp, 0x38                                     // 0x00868c9c    83c438
                         ret                0x0004                                        // 0x00868c9f    c20400
_jmp_addr_0x00868ca2:    {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00868ca2    8b4c243c
                         {disp8} fld        dword ptr [ecx + 0x44]                        // 0x00868ca6    d94144
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00868ca9    d8481c
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], edx        // 0x00868cac    8915d01aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], edx        // 0x00868cb2    8915f01aea00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00868cb8    d95c243c
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x00868cbc    d94120
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868cbf    d84808
                         {disp8} fld        dword ptr [ecx + 0x2c]                        // 0x00868cc2    d9412c
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00868cc5    d8480c
                         faddp              st(1), st                                     // 0x00868cc8    dec1
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00868cca    d94004
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00868ccd    d84914
                         faddp              st(1), st                                     // 0x00868cd0    dec1
                         {disp8} fadd       dword ptr [ecx + 0x38]                        // 0x00868cd2    d84138
                         {disp8} fld        dword ptr [ecx + 0x18]                        // 0x00868cd5    d94118
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868cd8    d84804
                         {disp8} fld        dword ptr [ecx + 0x24]                        // 0x00868cdb    d94124
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868cde    d84808
                         faddp              st(1), st                                     // 0x00868ce1    dec1
                         {disp8} fld        dword ptr [ecx + 0x30]                        // 0x00868ce3    d94130
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00868ce6    d8480c
                         faddp              st(1), st                                     // 0x00868ce9    dec1
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x00868ceb    d8413c
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x00868cee    d9411c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00868cf1    d84804
                         {disp8} fld        dword ptr [ecx + 0x28]                        // 0x00868cf4    d94128
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00868cf7    d84808
                         faddp              st(1), st                                     // 0x00868cfa    dec1
                         {disp8} fld        dword ptr [ecx + 0x34]                        // 0x00868cfc    d94134
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00868cff    d8480c
                         faddp              st(1), st                                     // 0x00868d02    dec1
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x00868d04    d84140
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e58]             // 0x00868d07    d905589eea00
                         fmul               st, st(1)                                     // 0x00868d0d    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e4c]             // 0x00868d0f    d9054c9eea00
                         fmul               st, st(3)                                     // 0x00868d15    d8cb
                         faddp              st(1), st                                     // 0x00868d17    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e40]             // 0x00868d19    d905409eea00
                         fmul               st, st(4)                                     // 0x00868d1f    d8cc
                         faddp              st(1), st                                     // 0x00868d21    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e64]             // 0x00868d23    d805649eea00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00868d29    d95c2418
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e5c]             // 0x00868d2d    d9055c9eea00
                         fmul               st, st(1)                                     // 0x00868d33    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e50]             // 0x00868d35    d905509eea00
                         fmul               st, st(3)                                     // 0x00868d3b    d8cb
                         faddp              st(1), st                                     // 0x00868d3d    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e44]             // 0x00868d3f    d905449eea00
                         fmul               st, st(4)                                     // 0x00868d45    d8cc
                         faddp              st(1), st                                     // 0x00868d47    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e68]             // 0x00868d49    d805689eea00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00868d4f    d95c241c
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e60]             // 0x00868d53    d905609eea00
                         fmul               st, st(1)                                     // 0x00868d59    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e54]             // 0x00868d5b    d905549eea00
                         fmul               st, st(3)                                     // 0x00868d61    d8cb
                         faddp              st(1), st                                     // 0x00868d63    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e48]             // 0x00868d65    d905489eea00
                         fmul               st, st(4)                                     // 0x00868d6b    d8cc
                         faddp              st(1), st                                     // 0x00868d6d    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e6c]             // 0x00868d6f    d8056c9eea00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00868d75    d95c2424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00868d79    8b442424
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf4], eax        // 0x00868d7d    a3f41aea00
                         fstp               st(0)                                         // 0x00868d82    ddd8
                         fstp               st(0)                                         // 0x00868d84    ddd8
                         fstp               st(0)                                         // 0x00868d86    ddd8
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00868d88    d9442424
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x00868d8c    d844243c
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x00868d90    d81de039e800
                         fnstsw             ax                                            // 0x00868d96    dfe0
                         test               ah, 0x01                                      // 0x00868d98    f6c401
                         {disp32} jne       _jmp_addr_0x00868fb7                          // 0x00868d9b    0f8516020000
                         {disp8} fld        dword ptr [ecx + 0x40]                        // 0x00868da1    d94140
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]             // 0x00868da4    d825c01dea00
                         {disp8} fld        dword ptr [ecx + 0x3c]                        // 0x00868daa    d9413c
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]             // 0x00868dad    d825bc1dea00
                         {disp8} fld        dword ptr [ecx + 0x38]                        // 0x00868db3    d94138
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]             // 0x00868db6    d825b81dea00
                         fld                st(0)                                         // 0x00868dbc    d9c0
                         fmul               st, st(1)                                     // 0x00868dbe    d8c9
                         fld                st(2)                                         // 0x00868dc0    d9c2
                         fmul               st, st(3)                                     // 0x00868dc2    d8cb
                         faddp              st(1), st                                     // 0x00868dc4    dec1
                         fld                st(3)                                         // 0x00868dc6    d9c3
                         fmul               st, st(4)                                     // 0x00868dc8    d8cc
                         faddp              st(1), st                                     // 0x00868dca    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868dcc    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868dd0    d84c243c
                         fcompp                                                           // 0x00868dd4    ded9
                         fstp               st(0)                                         // 0x00868dd6    ddd8
                         fnstsw             ax                                            // 0x00868dd8    dfe0
                         fstp               st(0)                                         // 0x00868dda    ddd8
                         test               ah, 0x41                                      // 0x00868ddc    f6c441
                         fstp               st(0)                                         // 0x00868ddf    ddd8
                         {disp8} jne        _jmp_addr_0x00868e19                          // 0x00868de1    7536
                         mov                eax, dword ptr [ecx]                          // 0x00868de3    8b01
                         mov                edx, 0x00000001                               // 0x00868de5    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x00868dea    ff90a0000000
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00868df0    8b4c243c
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], 0x00000001 // 0x00868df4    c705f01aea0001000000
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], 0x00000001 // 0x00868dfe    c705d01aea0001000000
                         {disp32} mov       dword ptr [data_bytes + 0x271ea0], ecx        // 0x00868e08    890da07ec300
                         mov                eax, 0x00000001                               // 0x00868e0e    b801000000
                         add                esp, 0x38                                     // 0x00868e13    83c438
                         ret                0x0004                                        // 0x00868e16    c20400
_jmp_addr_0x00868e19:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00868e19    d90590a38a00
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00868e1f    8b54243c
                         {disp8} fdiv       dword ptr [esp + 0x24]                        // 0x00868e23    d8742424
                         {disp32} mov       dword ptr [data_bytes + 0x271ea0], edx        // 0x00868e27    8915a07ec300
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868e2d    d9442418
                         fmul               st, st(1)                                     // 0x00868e31    d8c9
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00868e33    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x00868e39    d80df039e800
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00868e3f    d95c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868e43    d944241c
                         fmul               st, st(1)                                     // 0x00868e47    d8c9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x00868e49    d82d90a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x00868e4f    d80df439e800
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00868e55    d95c241c
                         {disp32} fild      dword ptr [_g_info_transform]                 // 0x00868e59    db05e439e800
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00868e5f    d95c2400
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868e63    d944243c
                         {disp32} fmul      dword ptr [_near_clipping]                    // 0x00868e67    d80de039e800
                         fmul               st, st(1)                                     // 0x00868e6d    d8c9
                         {disp8} fmul       dword ptr [esp + 0x00]                        // 0x00868e6f    d84c2400
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00868e73    d80db4a38a00
                         {disp32} fdiv      dword ptr [data_bytes + 0x27212c]             // 0x00868e79    d8352c81c300
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00868e7f    d95c243c
                         fstp               st(0)                                         // 0x00868e83    ddd8
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868e85    d944243c
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00868e89    d8442418
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00868e8d    d9542408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00868e91    d81d98a38a00
                         fnstsw             ax                                            // 0x00868e97    dfe0
                         test               ah, 0x01                                      // 0x00868e99    f6c401
                         {disp32} jne       _jmp_addr_0x00868fb7                          // 0x00868e9c    0f8515010000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00868ea2    d9442418
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x00868ea6    d864243c
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x00868eaa    d9542404
                         {disp8} fcomp      dword ptr [esp + 0x00]                        // 0x00868eae    d85c2400
                         fnstsw             ax                                            // 0x00868eb2    dfe0
                         test               ah, 0x41                                      // 0x00868eb4    f6c441
                         {disp32} je        _jmp_addr_0x00868fb7                          // 0x00868eb7    0f84fa000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868ebd    d944243c
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00868ec1    d844241c
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00868ec5    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00868ec9    d81d98a38a00
                         fnstsw             ax                                            // 0x00868ecf    dfe0
                         test               ah, 0x01                                      // 0x00868ed1    f6c401
                         {disp32} jne       _jmp_addr_0x00868fb7                          // 0x00868ed4    0f85dd000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00868eda    d944241c
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x00868ede    d864243c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00868ee2    d95c240c
                         {disp32} fild      dword ptr [data_bytes + 0x4bd9e8]             // 0x00868ee6    db05e839e800
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00868eec    d95c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00868ef0    d944240c
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x00868ef4    d85c2414
                         fnstsw             ax                                            // 0x00868ef8    dfe0
                         test               ah, 0x41                                      // 0x00868efa    f6c441
                         {disp32} je        _jmp_addr_0x00868fb7                          // 0x00868efd    0f84b4000000
                         {disp32} fild      dword ptr [data_bytes + 0x4dbac8]             // 0x00868f03    db05c81aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], 0x00000001 // 0x00868f09    c705f01aea0001000000
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00868f13    d8642418
                         {disp32} fild      dword ptr [data_bytes + 0x4dbacc]             // 0x00868f17    db05cc1aea00
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00868f1d    d864241c
                         fld                st(0)                                         // 0x00868f21    d9c0
                         fmul               st, st(1)                                     // 0x00868f23    d8c9
                         fld                st(2)                                         // 0x00868f25    d9c2
                         fmul               st, st(3)                                     // 0x00868f27    d8cb
                         faddp              st(1), st                                     // 0x00868f29    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00868f2b    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00868f2f    d84c243c
                         fcompp                                                           // 0x00868f33    ded9
                         fnstsw             ax                                            // 0x00868f35    dfe0
                         fstp               st(0)                                         // 0x00868f37    ddd8
                         test               ah, 0x41                                      // 0x00868f39    f6c441
                         fstp               st(0)                                         // 0x00868f3c    ddd8
                         {disp8} jne        _jmp_addr_0x00868f4a                          // 0x00868f3e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], 0x00000001 // 0x00868f40    c705d01aea0001000000
_jmp_addr_0x00868f4a:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00868f4a    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00868f4e    d81d98a38a00
                         fnstsw             ax                                            // 0x00868f54    dfe0
                         test               ah, 0x41                                      // 0x00868f56    f6c441
                         {disp8} jne        _jmp_addr_0x00868f9f                          // 0x00868f59    7544
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00868f5b    d9442408
                         {disp8} fcomp      dword ptr [esp + 0x00]                        // 0x00868f5f    d85c2400
                         fnstsw             ax                                            // 0x00868f63    dfe0
                         test               ah, 0x01                                      // 0x00868f65    f6c401
                         {disp8} je         _jmp_addr_0x00868f9f                          // 0x00868f68    7435
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00868f6a    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00868f6e    d81d98a38a00
                         fnstsw             ax                                            // 0x00868f74    dfe0
                         test               ah, 0x41                                      // 0x00868f76    f6c441
                         {disp8} jne        _jmp_addr_0x00868f9f                          // 0x00868f79    7524
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00868f7b    d9442410
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x00868f7f    d85c2414
                         fnstsw             ax                                            // 0x00868f83    dfe0
                         test               ah, 0x01                                      // 0x00868f85    f6c401
                         {disp8} je         _jmp_addr_0x00868f9f                          // 0x00868f88    7415
                         mov                eax, dword ptr [ecx]                          // 0x00868f8a    8b01
                         xor.s              edx, edx                                      // 0x00868f8c    33d2
                         call               dword ptr [eax + 0xa0]                        // 0x00868f8e    ff90a0000000
                         mov                eax, 0x00000001                               // 0x00868f94    b801000000
                         add                esp, 0x38                                     // 0x00868f99    83c438
                         ret                0x0004                                        // 0x00868f9c    c20400
_jmp_addr_0x00868f9f:    mov                eax, dword ptr [ecx]                          // 0x00868f9f    8b01
                         mov                edx, 0x00000001                               // 0x00868fa1    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x00868fa6    ff90a0000000
                         mov                eax, 0x00000001                               // 0x00868fac    b801000000
                         add                esp, 0x38                                     // 0x00868fb1    83c438
                         ret                0x0004                                        // 0x00868fb4    c20400
_jmp_addr_0x00868fb7:    xor.s              eax, eax                                      // 0x00868fb7    33c0
                         add                esp, 0x38                                     // 0x00868fb9    83c438
                         ret                0x0004                                        // 0x00868fbc    c20400
                         nop                                                              // 0x00868fbf    90
_globl_ct_0x00868fc0:    {disp32} jmp       _jmp_addr_0x00868fd0                          // 0x00868fc0    e90b000000
                         nop                                                              // 0x00868fc5    90
                         nop                                                              // 0x00868fc6    90
                         nop                                                              // 0x00868fc7    90
                         nop                                                              // 0x00868fc8    90
                         nop                                                              // 0x00868fc9    90
                         nop                                                              // 0x00868fca    90
                         nop                                                              // 0x00868fcb    90
                         nop                                                              // 0x00868fcc    90
                         nop                                                              // 0x00868fcd    90
                         nop                                                              // 0x00868fce    90
                         nop                                                              // 0x00868fcf    90
_jmp_addr_0x00868fd0:    {disp32} fld       dword ptr [rdata_bytes + 0xfabc8]             // 0x00868fd0    d905c83b9a00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x00868fd6    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc508]             // 0x00868fdc    d91d0825fa00
                         ret                                                              // 0x00868fe2    c3
                         nop                                                              // 0x00868fe3    90
                         nop                                                              // 0x00868fe4    90
                         nop                                                              // 0x00868fe5    90
                         nop                                                              // 0x00868fe6    90
                         nop                                                              // 0x00868fe7    90
                         nop                                                              // 0x00868fe8    90
                         nop                                                              // 0x00868fe9    90
                         nop                                                              // 0x00868fea    90
                         nop                                                              // 0x00868feb    90
                         nop                                                              // 0x00868fec    90
                         nop                                                              // 0x00868fed    90
                         nop                                                              // 0x00868fee    90
                         nop                                                              // 0x00868fef    90
_globl_ct_0x00868ff0:    {disp32} jmp       _jmp_addr_0x00869000                          // 0x00868ff0    e90b000000
                         nop                                                              // 0x00868ff5    90
                         nop                                                              // 0x00868ff6    90
                         nop                                                              // 0x00868ff7    90
                         nop                                                              // 0x00868ff8    90
                         nop                                                              // 0x00868ff9    90
                         nop                                                              // 0x00868ffa    90
                         nop                                                              // 0x00868ffb    90
                         nop                                                              // 0x00868ffc    90
                         nop                                                              // 0x00868ffd    90
                         nop                                                              // 0x00868ffe    90
                         nop                                                              // 0x00868fff    90
_jmp_addr_0x00869000:    {disp32} fld       dword ptr [rdata_bytes + 0xfabcc]             // 0x00869000    d905cc3b9a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00869006    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc504]             // 0x0086900c    d91d0425fa00
                         ret                                                              // 0x00869012    c3
                         nop                                                              // 0x00869013    90
                         nop                                                              // 0x00869014    90
                         nop                                                              // 0x00869015    90
                         nop                                                              // 0x00869016    90
                         nop                                                              // 0x00869017    90
                         nop                                                              // 0x00869018    90
                         nop                                                              // 0x00869019    90
                         nop                                                              // 0x0086901a    90
                         nop                                                              // 0x0086901b    90
                         nop                                                              // 0x0086901c    90
                         nop                                                              // 0x0086901d    90
                         nop                                                              // 0x0086901e    90
                         nop                                                              // 0x0086901f    90
_jmp_addr_0x00869020:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00869020    8b442404
                         mov                dword ptr [ecx], eax                          // 0x00869024    8901
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00869026    8b442408
                         mov                edx, dword ptr [eax]                          // 0x0086902a    8b10
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0086902c    895108
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086902f    8b4004
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00869032    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x00869036    89410c
                         {disp8} mov        dword ptr [ecx + 0x10], edx                   // 0x00869039    895110
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000001            // 0x0086903c    c7410401000000
                         ret                0x000c                                        // 0x00869043    c20c00
                         nop                                                              // 0x00869046    90
                         nop                                                              // 0x00869047    90
                         nop                                                              // 0x00869048    90
                         nop                                                              // 0x00869049    90
                         nop                                                              // 0x0086904a    90
                         nop                                                              // 0x0086904b    90
                         nop                                                              // 0x0086904c    90
                         nop                                                              // 0x0086904d    90
                         nop                                                              // 0x0086904e    90
                         nop                                                              // 0x0086904f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00869050    8b442404
                         fld                dword ptr [eax]                               // 0x00869054    d900
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00869056    d86108
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00869059    d94004
                         {disp8} fsub       dword ptr [ecx + 0x0c]                        // 0x0086905c    d8610c
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x0086905f    d94110
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x00869062    d825b0a38a00
                         fld                st(1)                                         // 0x00869068    d9c1
                         fmul               st, st(2)                                     // 0x0086906a    d8ca
                         fld                st(3)                                         // 0x0086906c    d9c3
                         fmul               st, st(4)                                     // 0x0086906e    d8cc
                         faddp              st(1), st                                     // 0x00869070    dec1
                         fld                st(1)                                         // 0x00869072    d9c1
                         fmul               st, st(2)                                     // 0x00869074    d8ca
                         fcompp                                                           // 0x00869076    ded9
                         fstp               st(0)                                         // 0x00869078    ddd8
                         fnstsw             ax                                            // 0x0086907a    dfe0
                         fstp               st(0)                                         // 0x0086907c    ddd8
                         test               ah, 0x41                                      // 0x0086907e    f6c441
                         fstp               st(0)                                         // 0x00869081    ddd8
                         {disp8} jne        _jmp_addr_0x0086908d                          // 0x00869083    7508
                         mov                eax, 0x00000001                               // 0x00869085    b801000000
                         ret                0x0004                                        // 0x0086908a    c20400
_jmp_addr_0x0086908d:    xor.s              eax, eax                                      // 0x0086908d    33c0
                         ret                0x0004                                        // 0x0086908f    c20400
                         nop                                                              // 0x00869092    90
                         nop                                                              // 0x00869093    90
                         nop                                                              // 0x00869094    90
                         nop                                                              // 0x00869095    90
                         nop                                                              // 0x00869096    90
                         nop                                                              // 0x00869097    90
                         nop                                                              // 0x00869098    90
                         nop                                                              // 0x00869099    90
                         nop                                                              // 0x0086909a    90
                         nop                                                              // 0x0086909b    90
                         nop                                                              // 0x0086909c    90
                         nop                                                              // 0x0086909d    90
                         nop                                                              // 0x0086909e    90
                         nop                                                              // 0x0086909f    90
@PointIsTotallyInside__7RPAvoidFRC7Point2Df@16:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008690a0    8b442404
                         fld                dword ptr [eax]                               // 0x008690a4    d900
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x008690a6    d86108
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x008690a9    d94004
                         {disp8} fsub       dword ptr [ecx + 0x0c]                        // 0x008690ac    d8610c
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x008690af    d94110
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x008690b2    d8642408
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x008690b6    d825b0a38a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x008690bc    d81598a38a00
                         fnstsw             ax                                            // 0x008690c2    dfe0
                         test               ah, 0x01                                      // 0x008690c4    f6c401
                         {disp8} je         _jmp_addr_0x008690d4                          // 0x008690c7    740b
                         fstp               st(0)                                         // 0x008690c9    ddd8
                         xor.s              al, al                                        // 0x008690cb    32c0
                         fstp               st(0)                                         // 0x008690cd    ddd8
                         fstp               st(0)                                         // 0x008690cf    ddd8
                         ret                0x0008                                        // 0x008690d1    c20800
_jmp_addr_0x008690d4:    fld                st(1)                                         // 0x008690d4    d9c1
                         fmul               st, st(2)                                     // 0x008690d6    d8ca
                         fld                st(3)                                         // 0x008690d8    d9c3
                         fmul               st, st(4)                                     // 0x008690da    d8cc
                         faddp              st(1), st                                     // 0x008690dc    dec1
                         fld                st(1)                                         // 0x008690de    d9c1
                         fmul               st, st(2)                                     // 0x008690e0    d8ca
                         fcompp                                                           // 0x008690e2    ded9
                         fstp               st(0)                                         // 0x008690e4    ddd8
                         fnstsw             ax                                            // 0x008690e6    dfe0
                         fstp               st(0)                                         // 0x008690e8    ddd8
                         test               ah, 0x41                                      // 0x008690ea    f6c441
                         fstp               st(0)                                         // 0x008690ed    ddd8
                         {disp8} jne        _jmp_addr_0x008690f9                          // 0x008690ef    7508
                         mov                eax, 0x00000001                               // 0x008690f1    b801000000
                         ret                0x0008                                        // 0x008690f6    c20800
_jmp_addr_0x008690f9:    xor.s              eax, eax                                      // 0x008690f9    33c0
                         ret                0x0008                                        // 0x008690fb    c20800
                         nop                                                              // 0x008690fe    90
                         nop                                                              // 0x008690ff    90
@__ct__9RouteNodeFP9RouteNode@12:    mov.s              eax, ecx                                      // 0x00869100    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00869102    8b4c2404
                         mov                edx, dword ptr [ecx]                          // 0x00869106    8b11
                         mov                dword ptr [eax], edx                          // 0x00869108    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086910a    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0086910d    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00869110    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00869113    895008
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x00869116    8b510c
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x00869119    89500c
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0086911c    8b5110
                         {disp8} mov        dword ptr [eax + 0x10], edx                   // 0x0086911f    895010
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x00869122    8b5114
                         {disp8} mov        dword ptr [eax + 0x14], edx                   // 0x00869125    895014
                         {disp8} mov        edx, dword ptr [ecx + 0x18]                   // 0x00869128    8b5118
                         {disp8} mov        dword ptr [eax + 0x18], edx                   // 0x0086912b    895018
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x0086912e    8b511c
                         {disp8} mov        dword ptr [eax + 0x1c], edx                   // 0x00869131    89501c
                         {disp8} mov        ecx, dword ptr [ecx + 0x20]                   // 0x00869134    8b4920
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x00869137    894820
                         xor.s              ecx, ecx                                      // 0x0086913a    33c9
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0086913c    894824
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0086913f    894828
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x00869142    894818
                         ret                0x0004                                        // 0x00869145    c20400
                         nop                                                              // 0x00869148    90
                         nop                                                              // 0x00869149    90
                         nop                                                              // 0x0086914a    90
                         nop                                                              // 0x0086914b    90
                         nop                                                              // 0x0086914c    90
                         nop                                                              // 0x0086914d    90
                         nop                                                              // 0x0086914e    90
                         nop                                                              // 0x0086914f    90
@__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32:    mov.s              eax, ecx                                      // 0x00869150    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00869152    8b4c2408
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x00869156    89481c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00869159    8b4c240c
                         mov                edx, dword ptr [ecx]                          // 0x0086915d    8b11
                         mov                dword ptr [eax], edx                          // 0x0086915f    8910
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x00869161    8b4904
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00869164    894804
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00869167    8b4c2410
                         mov                edx, dword ptr [ecx]                          // 0x0086916b    8b11
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0086916d    895008
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x00869170    8b4904
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00869173    8b542414
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x00869177    89480c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0086917a    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x10], edx                   // 0x0086917e    895010
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00869181    8b542404
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00869185    894814
                         xor.s              ecx, ecx                                      // 0x00869188    33c9
                         {disp8} mov        dword ptr [eax + 0x28], edx                   // 0x0086918a    895028
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0086918d    894824
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x00869190    894818
                         ret                0x0018                                        // 0x00869193    c21800
                         nop                                                              // 0x00869196    90
                         nop                                                              // 0x00869197    90
                         nop                                                              // 0x00869198    90
                         nop                                                              // 0x00869199    90
                         nop                                                              // 0x0086919a    90
                         nop                                                              // 0x0086919b    90
                         nop                                                              // 0x0086919c    90
                         nop                                                              // 0x0086919d    90
                         nop                                                              // 0x0086919e    90
                         nop                                                              // 0x0086919f    90
@GetLength__9RouteNodeFP7RPAvoid@12:    cmp                dword ptr [ecx + 0x1c], 0x01                  // 0x008691a0    83791c01
                         {disp8} jne        _jmp_addr_0x008691b3                          // 0x008691a4    750d
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x008691a6    8b442404
                         push               eax                                           // 0x008691aa    50
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x008691ab    e810000000
                         ret                0x0004                                        // 0x008691b0    c20400
_jmp_addr_0x008691b3:    {disp8} lea        edx, dword ptr [ecx + 0x08]                   // 0x008691b3    8d5108
                         push               edx                                           // 0x008691b6    52
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x008691b7    e8046c0000
                         ret                0x0004                                        // 0x008691bc    c20400
                         nop                                                              // 0x008691bf    90
@GetArcLength__9RouteNodeFP7RPAvoid@12:    sub                esp, 0x10                                     // 0x008691c0    83ec10
                         push               esi                                           // 0x008691c3    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x008691c4    8b7128
                         test               esi, esi                                      // 0x008691c7    85f6
                         {disp8} jne        _jmp_addr_0x008691d8                          // 0x008691c9    750d
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x008691cb    d90598a38a00
                         pop                esi                                           // 0x008691d1    5e
                         add                esp, 0x10                                     // 0x008691d2    83c410
                         ret                0x0004                                        // 0x008691d5    c20400
_jmp_addr_0x008691d8:    {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x008691d8    8b4610
                         cmp                eax, -0x01                                    // 0x008691db    83f8ff
                         {disp8} jne        _jmp_addr_0x008691ed                          // 0x008691de    750d
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x008691e0    d90598a38a00
                         pop                esi                                           // 0x008691e6    5e
                         add                esp, 0x10                                     // 0x008691e7    83c410
                         ret                0x0004                                        // 0x008691ea    c20400
_jmp_addr_0x008691ed:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x008691ed    8b542418
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x008691f1    8d0480
                         lea                edx, dword ptr [edx + eax * 0x4]              // 0x008691f4    8d1482
                         cmp                dword ptr [ecx + 0x1c], 0x01                  // 0x008691f7    83791c01
                         {disp8} jne        _jmp_addr_0x00869212                          // 0x008691fb    7515
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x008691fd    8b4104
                         fld                dword ptr [ecx]                               // 0x00869200    d901
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00869202    89442410
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x00869206    8b4108
                         {disp8} mov        ecx, dword ptr [ecx + 0x0c]                   // 0x00869209    8b490c
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0086920c    89442404
                         {disp8} jmp        _jmp_addr_0x00869225                          // 0x00869210    eb13
_jmp_addr_0x00869212:    {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x00869212    8b460c
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00869215    d94608
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00869218    89442410
                         mov                eax, dword ptr [ecx]                          // 0x0086921c    8b01
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x0086921e    8b4904
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00869221    89442404
_jmp_addr_0x00869225:    {disp8} fsub       dword ptr [edx + 0x08]                        // 0x00869225    d86208
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00869228    894c2408
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086922c    d9442410
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00869230    8b4614
                         cmp                eax, 0x02                                     // 0x00869233    83f802
                         {disp8} fsub       dword ptr [edx + 0x0c]                        // 0x00869236    d8620c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00869239    d9442404
                         {disp8} fsub       dword ptr [edx + 0x08]                        // 0x0086923d    d86208
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00869240    d95c240c
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00869244    d9442408
                         {disp8} fsub       dword ptr [edx + 0x0c]                        // 0x00869248    d8620c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0086924b    d95c2410
                         fxch               st(1)                                         // 0x0086924f    d9c9
                         fpatan                                                           // 0x00869251    d9f3
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00869253    d9442410
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00869257    d944240c
                         fpatan                                                           // 0x0086925b    d9f3
                         {disp8} jne        _jmp_addr_0x0086927e                          // 0x0086925d    751f
                         fcom               st(1)                                         // 0x0086925f    d8d1
                         fnstsw             ax                                            // 0x00869261    dfe0
                         test               ah, 0x01                                      // 0x00869263    f6c401
                         {disp8} je         _jmp_addr_0x00869272                          // 0x00869266    740a
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabcc]             // 0x00869268    d905cc3b9a00
                         fadd.s             st(0), st(0)                                  // 0x0086926e    dcc0
                         faddp              st(1), st                                     // 0x00869270    dec1
_jmp_addr_0x00869272:    fsubrp             st(1), st                                     // 0x00869272    dee1
                         pop                esi                                           // 0x00869274    5e
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x00869275    d84a10
                         add                esp, 0x10                                     // 0x00869278    83c410
                         ret                0x0004                                        // 0x0086927b    c20400
_jmp_addr_0x0086927e:    fld                st(1)                                         // 0x0086927e    d9c1
                         fcomp              st(1)                                         // 0x00869280    d8d9
                         fnstsw             ax                                            // 0x00869282    dfe0
                         test               ah, 0x01                                      // 0x00869284    f6c401
                         {disp8} je         _jmp_addr_0x00869293                          // 0x00869287    740a
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabcc]             // 0x00869289    d905cc3b9a00
                         fadd.s             st(0), st(0)                                  // 0x0086928f    dcc0
                         faddp              st(2), st                                     // 0x00869291    dec2
_jmp_addr_0x00869293:    fxch               st(1)                                         // 0x00869293    d9c9
                         pop                esi                                           // 0x00869295    5e
                         fsub               st, st(1)                                     // 0x00869296    d8e1
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x00869298    d84a10
                         fxch               st(1)                                         // 0x0086929b    d9c9
                         fstp               st(0)                                         // 0x0086929d    ddd8
                         add                esp, 0x10                                     // 0x0086929f    83c410
                         ret                0x0004                                        // 0x008692a2    c20400
                         nop                                                              // 0x008692a5    90
                         nop                                                              // 0x008692a6    90
                         nop                                                              // 0x008692a7    90
                         nop                                                              // 0x008692a8    90
                         nop                                                              // 0x008692a9    90
                         nop                                                              // 0x008692aa    90
                         nop                                                              // 0x008692ab    90
                         nop                                                              // 0x008692ac    90
                         nop                                                              // 0x008692ad    90
                         nop                                                              // 0x008692ae    90
                         nop                                                              // 0x008692af    90
                         push               esi                                           // 0x008692b0    56
                         mov.s              esi, ecx                                      // 0x008692b1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x008692b3    8b4624
                         push               edi                                           // 0x008692b6    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x008692b7    8b7c240c
                         cmp.s              eax, edi                                      // 0x008692bb    3bc7
                         {disp8} je         _jmp_addr_0x008692dc                          // 0x008692bd    741d
_jmp_addr_0x008692bf:    {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x008692bf    8b4824
                         test               ecx, ecx                                      // 0x008692c2    85c9
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x008692c4    894e24
                         {disp8} je         _jmp_addr_0x008692cc                          // 0x008692c7    7403
                         {disp8} mov        dword ptr [ecx + 0x28], esi                   // 0x008692c9    897128
_jmp_addr_0x008692cc:    push               eax                                           // 0x008692cc    50
                         call               ??3@YAXPAX@Z                                  // 0x008692cd    e8c65bf4ff
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x008692d2    8b4624
                         add                esp, 0x04                                     // 0x008692d5    83c404
                         cmp.s              eax, edi                                      // 0x008692d8    3bc7
                         {disp8} jne        _jmp_addr_0x008692bf                          // 0x008692da    75e3
_jmp_addr_0x008692dc:    pop                edi                                           // 0x008692dc    5f
                         pop                esi                                           // 0x008692dd    5e
                         ret                0x0004                                        // 0x008692de    c20400
                         nop                                                              // 0x008692e1    90
                         nop                                                              // 0x008692e2    90
                         nop                                                              // 0x008692e3    90
                         nop                                                              // 0x008692e4    90
                         nop                                                              // 0x008692e5    90
                         nop                                                              // 0x008692e6    90
                         nop                                                              // 0x008692e7    90
                         nop                                                              // 0x008692e8    90
                         nop                                                              // 0x008692e9    90
                         nop                                                              // 0x008692ea    90
                         nop                                                              // 0x008692eb    90
                         nop                                                              // 0x008692ec    90
                         nop                                                              // 0x008692ed    90
                         nop                                                              // 0x008692ee    90
                         nop                                                              // 0x008692ef    90
                         push               ebx                                           // 0x008692f0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x008692f1    8b5c2408
                         push               esi                                           // 0x008692f5    56
                         push               edi                                           // 0x008692f6    57
                         mov.s              esi, ecx                                      // 0x008692f7    8bf1
                         xor.s              edi, edi                                      // 0x008692f9    33ff
_jmp_addr_0x008692fb:    {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x008692fb    8b4624
                         cmp.s              eax, ebx                                      // 0x008692fe    3bc3
                         {disp8} jne        _jmp_addr_0x00869307                          // 0x00869300    7505
                         mov                edi, 0x00000001                               // 0x00869302    bf01000000
_jmp_addr_0x00869307:    {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00869307    8b4824
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x0086930a    894e24
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0086930d    8b4824
                         test               ecx, ecx                                      // 0x00869310    85c9
                         {disp8} je         _jmp_addr_0x00869317                          // 0x00869312    7403
                         {disp8} mov        dword ptr [ecx + 0x28], esi                   // 0x00869314    897128
_jmp_addr_0x00869317:    push               eax                                           // 0x00869317    50
                         call               ??3@YAXPAX@Z                                  // 0x00869318    e87b5bf4ff
                         add                esp, 0x04                                     // 0x0086931d    83c404
                         test               edi, edi                                      // 0x00869320    85ff
                         {disp8} je         _jmp_addr_0x008692fb                          // 0x00869322    74d7
                         pop                edi                                           // 0x00869324    5f
                         pop                esi                                           // 0x00869325    5e
                         pop                ebx                                           // 0x00869326    5b
                         ret                0x0004                                        // 0x00869327    c20400
                         nop                                                              // 0x0086932a    90
                         nop                                                              // 0x0086932b    90
                         nop                                                              // 0x0086932c    90
                         nop                                                              // 0x0086932d    90
                         nop                                                              // 0x0086932e    90
                         nop                                                              // 0x0086932f    90
_jmp_addr_0x00869330:    push               esi                                           // 0x00869330    56
                         mov.s              esi, ecx                                      // 0x00869331    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00869333    8b4628
                         test               eax, eax                                      // 0x00869336    85c0
                         {disp8} je         _jmp_addr_0x0086933f                          // 0x00869338    7405
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0086933a    d94020
                         {disp8} jmp        _jmp_addr_0x00869345                          // 0x0086933d    eb06
_jmp_addr_0x0086933f:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0086933f    d90598a38a00
_jmp_addr_0x00869345:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00869345    8b461c
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x00869348    d95e20
                         test               eax, eax                                      // 0x0086934b    85c0
                         {disp8} jne        _jmp_addr_0x00869364                          // 0x0086934d    7515
                         {disp8} lea        eax, dword ptr [esi + 0x08]                   // 0x0086934f    8d4608
                         push               eax                                           // 0x00869352    50
                         mov.s              ecx, esi                                      // 0x00869353    8bce
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x00869355    e8666a0000
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x0086935a    d84620
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x0086935d    d95e20
                         pop                esi                                           // 0x00869360    5e
                         ret                0x0004                                        // 0x00869361    c20400
_jmp_addr_0x00869364:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00869364    8b4c2408
                         push               ecx                                           // 0x00869368    51
                         mov.s              ecx, esi                                      // 0x00869369    8bce
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086936b    e850feffff
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x00869370    d84620
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x00869373    d95e20
                         pop                esi                                           // 0x00869376    5e
                         ret                0x0004                                        // 0x00869377    c20400
                         nop                                                              // 0x0086937a    90
                         nop                                                              // 0x0086937b    90
                         nop                                                              // 0x0086937c    90
                         nop                                                              // 0x0086937d    90
                         nop                                                              // 0x0086937e    90
                         nop                                                              // 0x0086937f    90
??0Route@@QAE@XZ:
                         mov.s              eax, ecx                                      // 0x00869380    8bc1
                         xor.s              ecx, ecx                                      // 0x00869382    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00869384    894804
                         mov                dword ptr [eax], ecx                          // 0x00869387    8908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00869389    894808
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00000001            // 0x0086938c    c7400c01000000
                         ret                                                              // 0x00869393    c3
                         nop                                                              // 0x00869394    90
                         nop                                                              // 0x00869395    90
                         nop                                                              // 0x00869396    90
                         nop                                                              // 0x00869397    90
                         nop                                                              // 0x00869398    90
                         nop                                                              // 0x00869399    90
                         nop                                                              // 0x0086939a    90
                         nop                                                              // 0x0086939b    90
                         nop                                                              // 0x0086939c    90
                         nop                                                              // 0x0086939d    90
                         nop                                                              // 0x0086939e    90
                         nop                                                              // 0x0086939f    90
@__ct__5RouteFP5Route@12:push               ebx                                           // 0x008693a0    53
                         push               esi                                           // 0x008693a1    56
                         push               edi                                           // 0x008693a2    57
                         push               0x2c                                          // 0x008693a3    6a2c
                         mov.s              esi, ecx                                      // 0x008693a5    8bf1
                         call               ??2@YAPAXI@Z                                  // 0x008693a7    e842d1f5ff
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x008693ac    8b5c2414
                         add                esp, 0x04                                     // 0x008693b0    83c404
                         test               eax, eax                                      // 0x008693b3    85c0
                         {disp8} je         _jmp_addr_0x008693c3                          // 0x008693b5    740c
                         mov                ecx, dword ptr [ebx]                          // 0x008693b7    8b0b
                         push               ecx                                           // 0x008693b9    51
                         mov.s              ecx, eax                                      // 0x008693ba    8bc8
                         call               @__ct__9RouteNodeFP9RouteNode@12              // 0x008693bc    e83ffdffff
                         {disp8} jmp        _jmp_addr_0x008693c5                          // 0x008693c1    eb02
_jmp_addr_0x008693c3:    xor.s              eax, eax                                      // 0x008693c3    33c0
_jmp_addr_0x008693c5:    mov                dword ptr [esi], eax                          // 0x008693c5    8906
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x008693c7    894604
                         mov                edx, dword ptr [ebx]                          // 0x008693ca    8b13
                         {disp8} mov        edi, dword ptr [edx + 0x24]                   // 0x008693cc    8b7a24
                         test               edi, edi                                      // 0x008693cf    85ff
                         {disp8} je         _jmp_addr_0x0086940c                          // 0x008693d1    7439
_jmp_addr_0x008693d3:    push               0x2c                                          // 0x008693d3    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x008693d5    e814d1f5ff
                         add                esp, 0x04                                     // 0x008693da    83c404
                         test               eax, eax                                      // 0x008693dd    85c0
                         {disp8} je         _jmp_addr_0x008693eb                          // 0x008693df    740a
                         push               edi                                           // 0x008693e1    57
                         mov.s              ecx, eax                                      // 0x008693e2    8bc8
                         call               @__ct__9RouteNodeFP9RouteNode@12              // 0x008693e4    e817fdffff
                         {disp8} jmp        _jmp_addr_0x008693ed                          // 0x008693e9    eb02
_jmp_addr_0x008693eb:    xor.s              eax, eax                                      // 0x008693eb    33c0
_jmp_addr_0x008693ed:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x008693ed    8b4e04
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x008693f0    894124
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x008693f3    8b4604
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x008693f6    8b5024
                         {disp8} mov        dword ptr [edx + 0x28], eax                   // 0x008693f9    894228
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x008693fc    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x008693ff    8b4824
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00869402    894e04
                         {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x00869405    8b7f24
                         test               edi, edi                                      // 0x00869408    85ff
                         {disp8} jne        _jmp_addr_0x008693d3                          // 0x0086940a    75c7
_jmp_addr_0x0086940c:    {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0086940c    c7460800000000
                         {disp8} mov        edx, dword ptr [ebx + 0x0c]                   // 0x00869413    8b530c
                         pop                edi                                           // 0x00869416    5f
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x00869417    89560c
                         mov.s              eax, esi                                      // 0x0086941a    8bc6
                         pop                esi                                           // 0x0086941c    5e
                         pop                ebx                                           // 0x0086941d    5b
                         ret                0x0004                                        // 0x0086941e    c20400
                         nop                                                              // 0x00869421    90
                         nop                                                              // 0x00869422    90
                         nop                                                              // 0x00869423    90
                         nop                                                              // 0x00869424    90
                         nop                                                              // 0x00869425    90
                         nop                                                              // 0x00869426    90
                         nop                                                              // 0x00869427    90
                         nop                                                              // 0x00869428    90
                         nop                                                              // 0x00869429    90
                         nop                                                              // 0x0086942a    90
                         nop                                                              // 0x0086942b    90
                         nop                                                              // 0x0086942c    90
                         nop                                                              // 0x0086942d    90
                         nop                                                              // 0x0086942e    90
                         nop                                                              // 0x0086942f    90
??_DRoute@@QAEXXZ:       push               esi                                           // 0x00869430    56
                         mov.s              esi, ecx                                      // 0x00869431    8bf1
                         cmp                dword ptr [esi], 0x00                         // 0x00869433    833e00
                         {disp8} je         _jmp_addr_0x00869450                          // 0x00869436    7418
                         push               edi                                           // 0x00869438    57
_jmp_addr_0x00869439:    mov                eax, dword ptr [esi]                          // 0x00869439    8b06
                         {disp8} mov        edi, dword ptr [eax + 0x24]                   // 0x0086943b    8b7824
                         mov.s              ecx, eax                                      // 0x0086943e    8bc8
                         push               ecx                                           // 0x00869440    51
                         call               ??3@YAXPAX@Z                                  // 0x00869441    e8525af4ff
                         add                esp, 0x04                                     // 0x00869446    83c404
                         test               edi, edi                                      // 0x00869449    85ff
                         mov                dword ptr [esi], edi                          // 0x0086944b    893e
                         {disp8} jne        _jmp_addr_0x00869439                          // 0x0086944d    75ea
                         pop                edi                                           // 0x0086944f    5f
_jmp_addr_0x00869450:    pop                esi                                           // 0x00869450    5e
                         ret                                                              // 0x00869451    c3
                         nop                                                              // 0x00869452    90
                         nop                                                              // 0x00869453    90
                         nop                                                              // 0x00869454    90
                         nop                                                              // 0x00869455    90
                         nop                                                              // 0x00869456    90
                         nop                                                              // 0x00869457    90
                         nop                                                              // 0x00869458    90
                         nop                                                              // 0x00869459    90
                         nop                                                              // 0x0086945a    90
                         nop                                                              // 0x0086945b    90
                         nop                                                              // 0x0086945c    90
                         nop                                                              // 0x0086945d    90
                         nop                                                              // 0x0086945e    90
                         nop                                                              // 0x0086945f    90
_jmp_addr_0x00869460:    push               ebx                                           // 0x00869460    53
                         push               esi                                           // 0x00869461    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00869462    8b74240c
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x00869466    8b4624
                         test               eax, eax                                      // 0x00869469    85c0
                         mov.s              ebx, ecx                                      // 0x0086946b    8bd9
                         {disp8} je         _jmp_addr_0x0086948e                          // 0x0086946d    741f
                         push               edi                                           // 0x0086946f    57
_jmp_addr_0x00869470:    {disp8} mov        edi, dword ptr [eax + 0x24]                   // 0x00869470    8b7824
                         push               eax                                           // 0x00869473    50
                         call               ??3@YAXPAX@Z                                  // 0x00869474    e81f5af4ff
                         add                esp, 0x04                                     // 0x00869479    83c404
                         test               edi, edi                                      // 0x0086947c    85ff
                         mov.s              eax, edi                                      // 0x0086947e    8bc7
                         {disp8} jne        _jmp_addr_0x00869470                          // 0x00869480    75ee
                         {disp8} mov        dword ptr [esi + 0x24], edi                   // 0x00869482    897e24
                         pop                edi                                           // 0x00869485    5f
                         {disp8} mov        dword ptr [ebx + 0x04], esi                   // 0x00869486    897304
                         pop                esi                                           // 0x00869489    5e
                         pop                ebx                                           // 0x0086948a    5b
                         ret                0x0004                                        // 0x0086948b    c20400
_jmp_addr_0x0086948e:    {disp8} mov        dword ptr [esi + 0x24], 0x00000000            // 0x0086948e    c7462400000000
                         {disp8} mov        dword ptr [ebx + 0x04], esi                   // 0x00869495    897304
                         pop                esi                                           // 0x00869498    5e
                         pop                ebx                                           // 0x00869499    5b
                         ret                0x0004                                        // 0x0086949a    c20400
                         nop                                                              // 0x0086949d    90
                         nop                                                              // 0x0086949e    90
                         nop                                                              // 0x0086949f    90
_jmp_addr_0x008694a0:    sub                esp, 0x1c                                     // 0x008694a0    83ec1c
                         push               ebx                                           // 0x008694a3    53
                         push               ebp                                           // 0x008694a4    55
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x008694a5    8b6c242c
                         test               ebp, ebp                                      // 0x008694a9    85ed
                         push               esi                                           // 0x008694ab    56
                         push               edi                                           // 0x008694ac    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x008694ad    894c2410
                         mov.s              esi, ebp                                      // 0x008694b1    8bf5
                         {disp32} je        _jmp_addr_0x00869576                          // 0x008694b3    0f84bd000000
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x008694b9    8b5c2438
                         {disp8} mov        edi, dword ptr [esp + 0x30]                   // 0x008694bd    8b7c2430
_jmp_addr_0x008694c1:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x008694c1    8b461c
                         test               eax, eax                                      // 0x008694c4    85c0
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x008694c6    8b4628
                         {disp8} jne        _jmp_addr_0x00869520                          // 0x008694c9    7555
                         test               eax, eax                                      // 0x008694cb    85c0
                         {disp8} je         _jmp_addr_0x008694d4                          // 0x008694cd    7405
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x008694cf    8b4010
                         {disp8} jmp        _jmp_addr_0x008694d7                          // 0x008694d2    eb03
_jmp_addr_0x008694d4:    or                 eax, -0x1                                     // 0x008694d4    83c8ff
_jmp_addr_0x008694d7:    cmp.s              esi, ebp                                      // 0x008694d7    3bf5
                         {disp8} jne        _jmp_addr_0x008694ea                          // 0x008694d9    750f
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x008694db    8b4c243c
                         mov                edx, dword ptr [ecx]                          // 0x008694df    8b11
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x008694e1    8b4904
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x008694e4    89542414
                         {disp8} jmp        _jmp_addr_0x008694f3                          // 0x008694e8    eb09
_jmp_addr_0x008694ea:    mov                edx, dword ptr [esi]                          // 0x008694ea    8b16
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x008694ec    8b4e04
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x008694ef    89542414
_jmp_addr_0x008694f3:    push               0x0                                           // 0x008694f3    6a00
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x008694f5    894c241c
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x008694f9    8d54243c
                         push               edx                                           // 0x008694fd    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x008694fe    8d4c242c
                         push               ecx                                           // 0x00869502    51
                         push               eax                                           // 0x00869503    50
                         {disp8} lea        edx, dword ptr [esi + 0x08]                   // 0x00869504    8d5608
                         push               edx                                           // 0x00869507    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00869508    8d442428
                         push               eax                                           // 0x0086950c    50
                         mov.s              ecx, ebx                                      // 0x0086950d    8bcb
                         call               @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32                          // 0x0086950f    e84c26fdff
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00869514    8d0c80
                         lea                edx, dword ptr [ebx + ecx * 0x4]              // 0x00869517    8d148b
                         cmp.s              edx, edi                                      // 0x0086951a    3bd7
                         {disp8} je         _jmp_addr_0x00869582                          // 0x0086951c    7464
                         {disp8} jmp        _jmp_addr_0x0086956b                          // 0x0086951e    eb4b
_jmp_addr_0x00869520:    test               eax, eax                                      // 0x00869520    85c0
                         {disp8} je         _jmp_addr_0x0086956b                          // 0x00869522    7447
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x00869524    8b4010
                         cmp                eax, -0x01                                    // 0x00869527    83f8ff
                         {disp8} je         _jmp_addr_0x0086956b                          // 0x0086952a    743f
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0086952c    8d0480
                         {disp8} fld        dword ptr [ebx + eax * 0x4 + 0x10]            // 0x0086952f    d9448310
                         lea                eax, dword ptr [ebx + eax * 0x4]              // 0x00869533    8d0483
                         {disp8} fadd       dword ptr [edi + 0x10]                        // 0x00869536    d84710
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00869539    8d4c241c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0086953d    d95c2434
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00869541    d94008
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00869544    d86708
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00869547    d95c241c
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0086954b    d9400c
                         {disp8} fsub       dword ptr [edi + 0x0c]                        // 0x0086954e    d8670c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00869551    d95c2420
                         call               @GetNormSq__7Point2DFv2@4                     // 0x00869555    e846680000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0086955a    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x0086955e    d84c2434
                         fcompp                                                           // 0x00869562    ded9
                         fnstsw             ax                                            // 0x00869564    dfe0
                         test               ah, 0x41                                      // 0x00869566    f6c441
                         {disp8} je         _jmp_addr_0x008695ac                          // 0x00869569    7441
_jmp_addr_0x0086956b:    {disp8} mov        esi, dword ptr [esi + 0x24]                   // 0x0086956b    8b7624
                         test               esi, esi                                      // 0x0086956e    85f6
                         {disp32} jne       _jmp_addr_0x008694c1                          // 0x00869570    0f854bffffff
_jmp_addr_0x00869576:    pop                edi                                           // 0x00869576    5f
                         pop                esi                                           // 0x00869577    5e
                         pop                ebp                                           // 0x00869578    5d
                         xor.s              eax, eax                                      // 0x00869579    33c0
                         pop                ebx                                           // 0x0086957b    5b
                         add                esp, 0x1c                                     // 0x0086957c    83c41c
                         ret                0x0010                                        // 0x0086957f    c21000
_jmp_addr_0x00869582:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00869582    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00869586    8b542428
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x0086958a    894e08
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0086958d    8b4c2410
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x00869591    89560c
                         push               esi                                           // 0x00869594    56
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x00869595    894610
                         call               _jmp_addr_0x00869460                          // 0x00869598    e8c3feffff
                         pop                edi                                           // 0x0086959d    5f
                         pop                esi                                           // 0x0086959e    5e
                         pop                ebp                                           // 0x0086959f    5d
                         mov                eax, 0x00000001                               // 0x008695a0    b801000000
                         pop                ebx                                           // 0x008695a5    5b
                         add                esp, 0x1c                                     // 0x008695a6    83c41c
                         ret                0x0010                                        // 0x008695a9    c21000
_jmp_addr_0x008695ac:    cmp.s              esi, ebp                                      // 0x008695ac    3bf5
                         {disp8} jne        _jmp_addr_0x008695d8                          // 0x008695ae    7528
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x008695b0    8b44243c
                         mov                ecx, dword ptr [eax]                          // 0x008695b4    8b08
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x008695b6    894e08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x008695b9    8b5004
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x008695bc    8b4c2410
                         push               esi                                           // 0x008695c0    56
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x008695c1    89560c
                         call               _jmp_addr_0x00869460                          // 0x008695c4    e897feffff
                         pop                edi                                           // 0x008695c9    5f
                         pop                esi                                           // 0x008695ca    5e
                         pop                ebp                                           // 0x008695cb    5d
                         mov                eax, 0x00000001                               // 0x008695cc    b801000000
                         pop                ebx                                           // 0x008695d1    5b
                         add                esp, 0x1c                                     // 0x008695d2    83c41c
                         ret                0x0010                                        // 0x008695d5    c21000
_jmp_addr_0x008695d8:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x008695d8    8b4628
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x008695db    8b4c2410
                         push               eax                                           // 0x008695df    50
                         call               _jmp_addr_0x00869460                          // 0x008695e0    e87bfeffff
                         pop                edi                                           // 0x008695e5    5f
                         pop                esi                                           // 0x008695e6    5e
                         pop                ebp                                           // 0x008695e7    5d
                         mov                eax, 0x00000001                               // 0x008695e8    b801000000
                         pop                ebx                                           // 0x008695ed    5b
                         add                esp, 0x1c                                     // 0x008695ee    83c41c
                         ret                0x0010                                        // 0x008695f1    c21000
                         nop                                                              // 0x008695f4    90
                         nop                                                              // 0x008695f5    90
                         nop                                                              // 0x008695f6    90
                         nop                                                              // 0x008695f7    90
                         nop                                                              // 0x008695f8    90
                         nop                                                              // 0x008695f9    90
                         nop                                                              // 0x008695fa    90
                         nop                                                              // 0x008695fb    90
                         nop                                                              // 0x008695fc    90
                         nop                                                              // 0x008695fd    90
                         nop                                                              // 0x008695fe    90
                         nop                                                              // 0x008695ff    90
_globl_ct_0x00869600:    {disp32} jmp       _jmp_addr_0x00869610                          // 0x00869600    e90b000000
                         nop                                                              // 0x00869605    90
                         nop                                                              // 0x00869606    90
                         nop                                                              // 0x00869607    90
                         nop                                                              // 0x00869608    90
                         nop                                                              // 0x00869609    90
                         nop                                                              // 0x0086960a    90
                         nop                                                              // 0x0086960b    90
                         nop                                                              // 0x0086960c    90
                         nop                                                              // 0x0086960d    90
                         nop                                                              // 0x0086960e    90
                         nop                                                              // 0x0086960f    90
_jmp_addr_0x00869610:    {disp32} mov       dword ptr [data_bytes + 0x5dc710], 0xc6ea6000 // 0x00869610    c7051027fa000060eac6
                         {disp32} mov       dword ptr [data_bytes + 0x5dc714], 0x00000000 // 0x0086961a    c7051427fa0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x5dc718], 0xc6ea6000 // 0x00869624    c7051827fa000060eac6
                         ret                                                              // 0x0086962e    c3
                         nop                                                              // 0x0086962f    90
_globl_ct_0x00869630:    {disp32} jmp       _jmp_addr_0x00869640                          // 0x00869630    e90b000000
                         nop                                                              // 0x00869635    90
                         nop                                                              // 0x00869636    90
                         nop                                                              // 0x00869637    90
                         nop                                                              // 0x00869638    90
                         nop                                                              // 0x00869639    90
                         nop                                                              // 0x0086963a    90
                         nop                                                              // 0x0086963b    90
                         nop                                                              // 0x0086963c    90
                         nop                                                              // 0x0086963d    90
                         nop                                                              // 0x0086963e    90
                         nop                                                              // 0x0086963f    90
_jmp_addr_0x00869640:    ret                                                              // 0x00869640    c3
                         nop                                                              // 0x00869641    90
                         nop                                                              // 0x00869642    90
                         nop                                                              // 0x00869643    90
                         nop                                                              // 0x00869644    90
                         nop                                                              // 0x00869645    90
                         nop                                                              // 0x00869646    90
                         nop                                                              // 0x00869647    90
                         nop                                                              // 0x00869648    90
                         nop                                                              // 0x00869649    90
                         nop                                                              // 0x0086964a    90
                         nop                                                              // 0x0086964b    90
                         nop                                                              // 0x0086964c    90
                         nop                                                              // 0x0086964d    90
                         nop                                                              // 0x0086964e    90
                         nop                                                              // 0x0086964f    90
_globl_ct_0x00869650:    {disp32} jmp       _jmp_addr_0x00869660                          // 0x00869650    e90b000000
                         nop                                                              // 0x00869655    90
                         nop                                                              // 0x00869656    90
                         nop                                                              // 0x00869657    90
                         nop                                                              // 0x00869658    90
                         nop                                                              // 0x00869659    90
                         nop                                                              // 0x0086965a    90
                         nop                                                              // 0x0086965b    90
                         nop                                                              // 0x0086965c    90
                         nop                                                              // 0x0086965d    90
                         nop                                                              // 0x0086965e    90
                         nop                                                              // 0x0086965f    90
_jmp_addr_0x00869660:    ret                                                              // 0x00869660    c3
                         nop                                                              // 0x00869661    90
                         nop                                                              // 0x00869662    90
                         nop                                                              // 0x00869663    90
                         nop                                                              // 0x00869664    90
                         nop                                                              // 0x00869665    90
                         nop                                                              // 0x00869666    90
                         nop                                                              // 0x00869667    90
                         nop                                                              // 0x00869668    90
                         nop                                                              // 0x00869669    90
                         nop                                                              // 0x0086966a    90
                         nop                                                              // 0x0086966b    90
                         nop                                                              // 0x0086966c    90
                         nop                                                              // 0x0086966d    90
                         nop                                                              // 0x0086966e    90
                         nop                                                              // 0x0086966f    90
_jmp_addr_0x00869670:    {disp32} mov       eax, dword ptr [data_bytes + 0x272200]        // 0x00869670    a10082c300
                         test               eax, eax                                      // 0x00869675    85c0
                         {disp8} je         _jmp_addr_0x00869688                          // 0x00869677    740f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]        // 0x00869679    a170d4ed00
                         test               eax, eax                                      // 0x0086967e    85c0
                         {disp8} jne        _jmp_addr_0x00869688                          // 0x00869680    7506
                         mov                eax, 0x00000001                               // 0x00869682    b801000000
                         ret                                                              // 0x00869687    c3
_jmp_addr_0x00869688:    xor.s              eax, eax                                      // 0x00869688    33c0
                         ret                                                              // 0x0086968a    c3
                         nop                                                              // 0x0086968b    90
                         nop                                                              // 0x0086968c    90
                         nop                                                              // 0x0086968d    90
                         nop                                                              // 0x0086968e    90
                         nop                                                              // 0x0086968f    90
                         push               ebp                                           // 0x00869690    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00869691    8b6c2414
                         test               ebp, ebp                                      // 0x00869695    85ed
                         {disp8} jg         _jmp_addr_0x008696d7                          // 0x00869697    7f3e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00869699    8b44240c
_jmp_addr_0x0086969d:    and                eax, 0x0000ffff                               // 0x0086969d    25ffff0000
                         mov.s              ecx, eax                                      // 0x008696a2    8bc8
                         shr                ecx, 8                                        // 0x008696a4    c1e908
                         and                ecx, 0x0f                                     // 0x008696a7    83e10f
                         mov.s              edx, eax                                      // 0x008696aa    8bd0
                         shr                edx, 4                                        // 0x008696ac    c1ea04
                         shl                ecx, 8                                        // 0x008696af    c1e108
                         and                edx, 0x0f                                     // 0x008696b2    83e20f
                         add.s              ecx, edx                                      // 0x008696b5    03ca
                         and                eax, 0x0f                                     // 0x008696b7    83e00f
                         shl                ecx, 8                                        // 0x008696ba    c1e108
                         add.s              ecx, eax                                      // 0x008696bd    03c8
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x008696bf    8b442408
                         shl                ecx, 4                                        // 0x008696c3    c1e104
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x008696c6    894c240c
                         {disp8} mov        byte ptr [esp + 0x0f], -0x01                  // 0x008696ca    c644240fff
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x008696cf    8b54240c
                         mov                dword ptr [eax], edx                          // 0x008696d3    8910
                         pop                ebp                                           // 0x008696d5    5d
                         ret                                                              // 0x008696d6    c3
_jmp_addr_0x008696d7:    cmp                ebp, 0x00000100                               // 0x008696d7    81fd00010000
                         {disp8} jl         _jmp_addr_0x008696e5                          // 0x008696dd    7c06
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x008696df    8b442410
                         {disp8} jmp        _jmp_addr_0x0086969d                          // 0x008696e3    ebb8
_jmp_addr_0x008696e5:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x008696e5    8b54240c
                         and                edx, 0x0000ffff                               // 0x008696e9    81e2ffff0000
                         mov.s              eax, edx                                      // 0x008696ef    8bc2
                         mov.s              ecx, edx                                      // 0x008696f1    8bca
                         push               esi                                           // 0x008696f3    56
                         and                edx, 0x0f                                     // 0x008696f4    83e20f
                         mov.s              esi, edx                                      // 0x008696f7    8bf2
                         push               edi                                           // 0x008696f9    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x008696fa    8b7c2418
                         shr                eax, 8                                        // 0x008696fe    c1e808
                         and                eax, 0x0f                                     // 0x00869701    83e00f
                         and                edi, 0x0000ffff                               // 0x00869704    81e7ffff0000
                         mov.s              edx, edi                                      // 0x0086970a    8bd7
                         shr                edx, 8                                        // 0x0086970c    c1ea08
                         and                edx, 0x0f                                     // 0x0086970f    83e20f
                         sub.s              edx, eax                                      // 0x00869712    2bd0
                         imul               edx, ebp                                      // 0x00869714    0fafd5
                         shl                eax, 8                                        // 0x00869717    c1e008
                         add.s              edx, eax                                      // 0x0086971a    03d0
                         shr                ecx, 4                                        // 0x0086971c    c1e904
                         and                ecx, 0x0f                                     // 0x0086971f    83e10f
                         mov.s              eax, edi                                      // 0x00869722    8bc7
                         shr                eax, 4                                        // 0x00869724    c1e804
                         and                eax, 0x0f                                     // 0x00869727    83e00f
                         sub.s              eax, ecx                                      // 0x0086972a    2bc1
                         imul               eax, ebp                                      // 0x0086972c    0fafc5
                         shl                ecx, 8                                        // 0x0086972f    c1e108
                         add.s              eax, ecx                                      // 0x00869732    03c1
                         mov.s              ecx, edi                                      // 0x00869734    8bcf
                         and                ecx, 0x0f                                     // 0x00869736    83e10f
                         sub.s              ecx, esi                                      // 0x00869739    2bce
                         imul               ecx, ebp                                      // 0x0086973b    0fafcd
                         shl                esi, 8                                        // 0x0086973e    c1e608
                         add.s              ecx, esi                                      // 0x00869741    03ce
                         sar                edx, 4                                        // 0x00869743    c1fa04
                         sar                eax, 4                                        // 0x00869746    c1f804
                         sar                ecx, 4                                        // 0x00869749    c1f904
                         pop                edi                                           // 0x0086974c    5f
                         {disp8} mov        byte ptr [esp + 0x11], al                     // 0x0086974d    88442411
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00869751    8b44240c
                         {disp8} mov        byte ptr [esp + 0x12], dl                     // 0x00869755    88542412
                         {disp8} mov        byte ptr [esp + 0x10], cl                     // 0x00869759    884c2410
                         {disp8} mov        byte ptr [esp + 0x13], -0x01                  // 0x0086975d    c6442413ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00869762    8b542410
                         pop                esi                                           // 0x00869766    5e
                         mov                dword ptr [eax], edx                          // 0x00869767    8910
                         pop                ebp                                           // 0x00869769    5d
                         ret                                                              // 0x0086976a    c3
                         nop                                                              // 0x0086976b    90
                         nop                                                              // 0x0086976c    90
                         nop                                                              // 0x0086976d    90
                         nop                                                              // 0x0086976e    90
                         nop                                                              // 0x0086976f    90
_jmp_addr_0x00869770:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00869770    8b442404
                         cmp                eax, 0x000000ff                               // 0x00869774    3dff000000
                         {disp8} jbe        _jmp_addr_0x00869780                          // 0x00869779    7605
                         mov                eax, 0x000000ff                               // 0x0086977b    b8ff000000
_jmp_addr_0x00869780:    ret                                                              // 0x00869780    c3
                         nop                                                              // 0x00869781    90
                         nop                                                              // 0x00869782    90
                         nop                                                              // 0x00869783    90
                         nop                                                              // 0x00869784    90
                         nop                                                              // 0x00869785    90
                         nop                                                              // 0x00869786    90
                         nop                                                              // 0x00869787    90
                         nop                                                              // 0x00869788    90
                         nop                                                              // 0x00869789    90
                         nop                                                              // 0x0086978a    90
                         nop                                                              // 0x0086978b    90
                         nop                                                              // 0x0086978c    90
                         nop                                                              // 0x0086978d    90
                         nop                                                              // 0x0086978e    90
                         nop                                                              // 0x0086978f    90
_jmp_addr_0x00869790:    {disp32} fld       dword ptr [data_bytes + 0x4f3970]             // 0x00869790    d9057099eb00
                         push               ebx                                           // 0x00869796    53
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabd0]             // 0x00869797    d80dd03b9a00
                         push               ebp                                           // 0x0086979d    55
                         push               esi                                           // 0x0086979e    56
                         push               edi                                           // 0x0086979f    57
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1eb34]             // 0x008697a0    d82d347b8c00
                         call               _jmp_addr_0x007a1400                          // 0x008697a6    e8557cf3ff
                         {disp8} mov        ebx, dword ptr [esp + 0x16]                   // 0x008697ab    8b5c2416
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x008697af    8b6c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x1a]                   // 0x008697b3    8b4c241a
                         mov.s              edi, eax                                      // 0x008697b7    8bf8
                         mov                esi, 0x000000ff                               // 0x008697b9    beff000000
                         mov.s              eax, ebx                                      // 0x008697be    8bc3
                         and                eax, 0x000000ff                               // 0x008697c0    25ff000000
                         and                ecx, 0x000000ff                               // 0x008697c5    81e1ff000000
                         sub.s              esi, ebp                                      // 0x008697cb    2bf5
                         imul               ecx, ebp                                      // 0x008697cd    0fafcd
                         imul               eax, esi                                      // 0x008697d0    0fafc6
                         add.s              eax, ecx                                      // 0x008697d3    03c1
                         xor.s              edx, edx                                      // 0x008697d5    33d2
                         div                edi                                           // 0x008697d7    f7f7
                         push               eax                                           // 0x008697d9    50
                         call               _jmp_addr_0x00869770                          // 0x008697da    e891ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x1d]                   // 0x008697df    8b54241d
                         {disp8} mov        byte ptr [esp + 0x22], al                     // 0x008697e3    88442422
                         {disp8} mov        eax, dword ptr [esp + 0x19]                   // 0x008697e7    8b442419
                         and                eax, 0x000000ff                               // 0x008697eb    25ff000000
                         and                edx, 0x000000ff                               // 0x008697f0    81e2ff000000
                         imul               eax, esi                                      // 0x008697f6    0fafc6
                         imul               edx, ebp                                      // 0x008697f9    0fafd5
                         add.s              eax, edx                                      // 0x008697fc    03c2
                         xor.s              edx, edx                                      // 0x008697fe    33d2
                         div                edi                                           // 0x00869800    f7f7
                         push               eax                                           // 0x00869802    50
                         call               _jmp_addr_0x00869770                          // 0x00869803    e868ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00869808    8b4c2420
                         {disp8} mov        byte ptr [esp + 0x25], al                     // 0x0086980c    88442425
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00869810    8b44241c
                         and                eax, 0x000000ff                               // 0x00869814    25ff000000
                         and                ecx, 0x000000ff                               // 0x00869819    81e1ff000000
                         imul               eax, esi                                      // 0x0086981f    0fafc6
                         imul               ecx, ebp                                      // 0x00869822    0fafcd
                         add.s              eax, ecx                                      // 0x00869825    03c1
                         xor.s              edx, edx                                      // 0x00869827    33d2
                         div                edi                                           // 0x00869829    f7f7
                         push               eax                                           // 0x0086982b    50
                         call               _jmp_addr_0x00869770                          // 0x0086982c    e83fffffff
                         add                esp, 0x0c                                     // 0x00869831    83c40c
                         pop                edi                                           // 0x00869834    5f
                         pop                esi                                           // 0x00869835    5e
                         {disp8} mov        byte ptr [esp + 0x17], bh                     // 0x00869836    887c2417
                         {disp8} mov        byte ptr [esp + 0x14], al                     // 0x0086983a    88442414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0086983e    8b442414
                         pop                ebp                                           // 0x00869842    5d
                         pop                ebx                                           // 0x00869843    5b
                         ret                                                              // 0x00869844    c3
                         nop                                                              // 0x00869845    90
                         nop                                                              // 0x00869846    90
                         nop                                                              // 0x00869847    90
                         nop                                                              // 0x00869848    90
                         nop                                                              // 0x00869849    90
                         nop                                                              // 0x0086984a    90
                         nop                                                              // 0x0086984b    90
                         nop                                                              // 0x0086984c    90
                         nop                                                              // 0x0086984d    90
                         nop                                                              // 0x0086984e    90
                         nop                                                              // 0x0086984f    90
_jmp_addr_0x00869850:    {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6c4]        // 0x00869850    a1c426fa00
                         sub                esp, 0x10                                     // 0x00869855    83ec10
                         push               eax                                           // 0x00869858    50
                         call               ?Time2SkyType@LH3DSky@@QAEMM@Z                // 0x00869859    e852090000
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2478]              // 0x0086985e    d82d78b48a00
                         add                esp, 0x04                                     // 0x00869864    83c404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]              // 0x00869867    d80d5cb38a00
                         {disp32} fld       dword ptr [data_bytes + 0x5dc758]             // 0x0086986d    d9055827fa00
                         fld                st(1)                                         // 0x00869873    d9c1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]             // 0x00869875    d81dc0f18c00
                         fnstsw             ax                                            // 0x0086987b    dfe0
                         test               ah, 0x41                                      // 0x0086987d    f6c441
                         {disp8} jne        _jmp_addr_0x0086988a                          // 0x00869880    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x2126c]             // 0x00869882    d9056ca28c00
                         fsubrp             st(2), st                                     // 0x00869888    dee2
_jmp_addr_0x0086988a:    {disp32} fcom      dword ptr [rdata_bytes + 0x2478]              // 0x0086988a    d81578b48a00
                         fnstsw             ax                                            // 0x00869890    dfe0
                         test               ah, 0x41                                      // 0x00869892    f6c441
                         {disp8} jne        _jmp_addr_0x0086989f                          // 0x00869895    7508
                         fstp               st(0)                                         // 0x00869897    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x00869899    d90578b48a00
_jmp_addr_0x0086989f:    {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x0086989f    d80d402c8c00
                         push               ebx                                           // 0x008698a5    53
                         push               ebp                                           // 0x008698a6    55
                         push               esi                                           // 0x008698a7    56
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x008698a8    d95c2410
                         push               edi                                           // 0x008698ac    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c81c]             // 0x008698ad    d80d1c588c00
                         fld                st(0)                                         // 0x008698b3    d9c0
                         call               _jmp_addr_0x007a1400                          // 0x008698b5    e8467bf3ff
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x008698ba    d9442414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x008698be    89442410
                         call               _jmp_addr_0x007a1400                          // 0x008698c2    e8397bf3ff
                         {disp8} fisub      dword ptr [esp + 0x10]                        // 0x008698c7    da642410
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x008698cb    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x008698cf    db442418
                         xor.s              edi, edi                                      // 0x008698d3    33ff
                         {disp8} fsubr      dword ptr [esp + 0x14]                        // 0x008698d5    d86c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x008698d9    d95c2414
_jmp_addr_0x008698dd:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x008698dd    8b6c2410
                         fld                st(0)                                         // 0x008698e1    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5cc]             // 0x008698e3    d80dcc458d00
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x51635c]        // 0x008698e9    8b1d5cc3ed00
                         mov.s              esi, edi                                      // 0x008698ef    8bf7
                         shl                esi, 5                                        // 0x008698f1    c1e605
                         add.s              esi, ebp                                      // 0x008698f4    03f5
                         call               _jmp_addr_0x007a1400                          // 0x008698f6    e8057bf3ff
                         {disp8} mov        ecx, dword ptr [ebx + esi * 0x4 + 0x04]       // 0x008698fb    8b4cb304
                         mov                edx, dword ptr [ebx + esi * 0x4]              // 0x008698ff    8b14b3
                         mov.s              ebx, ecx                                      // 0x00869902    8bd9
                         and                ebx, 0x00ff0000                               // 0x00869904    81e30000ff00
                         mov.s              esi, edx                                      // 0x0086990a    8bf2
                         and                esi, 0x00ff0000                               // 0x0086990c    81e60000ff00
                         sub.s              ebx, esi                                      // 0x00869912    2bde
                         imul               ebx, eax                                      // 0x00869914    0fafd8
                         shr                ebx, 8                                        // 0x00869917    c1eb08
                         mov.s              esi, edx                                      // 0x0086991a    8bf2
                         and                esi, 0xffff0000                               // 0x0086991c    81e60000ffff
                         add.s              ebx, esi                                      // 0x00869922    03de
                         mov.s              ebp, ecx                                      // 0x00869924    8be9
                         and                ebp, 0x0000ff00                               // 0x00869926    81e500ff0000
                         mov.s              esi, edx                                      // 0x0086992c    8bf2
                         and                esi, 0x0000ff00                               // 0x0086992e    81e600ff0000
                         sub.s              ebp, esi                                      // 0x00869934    2bee
                         imul               ebp, eax                                      // 0x00869936    0fafe8
                         shr                ebp, 8                                        // 0x00869939    c1ed08
                         mov.s              esi, edx                                      // 0x0086993c    8bf2
                         and                esi, 0xffffff00                               // 0x0086993e    81e600ffffff
                         add.s              ebp, esi                                      // 0x00869944    03ee
                         and                ebp, 0x0000ff00                               // 0x00869946    81e500ff0000
                         and                ebx, 0x00ff0000                               // 0x0086994c    81e30000ff00
                         or.s               ebx, ebp                                      // 0x00869952    0bdd
                         mov.s              ebp, ecx                                      // 0x00869954    8be9
                         and                ebp, 0x000000ff                               // 0x00869956    81e5ff000000
                         mov.s              esi, edx                                      // 0x0086995c    8bf2
                         and                esi, 0x000000ff                               // 0x0086995e    81e6ff000000
                         sub.s              ebp, esi                                      // 0x00869964    2bee
                         imul               ebp, eax                                      // 0x00869966    0fafe8
                         shr                ebp, 8                                        // 0x00869969    c1ed08
                         add.s              ebp, edx                                      // 0x0086996c    03ea
                         and                ebp, 0x000000ff                               // 0x0086996e    81e5ff000000
                         or.s               ebx, ebp                                      // 0x00869974    0bdd
                         and                ecx, 0xff000000                               // 0x00869976    81e1000000ff
                         or.s               ebx, ecx                                      // 0x0086997c    0bd9
                         cmp                edi, 0x02                                     // 0x0086997e    83ff02
                         {disp32} mov       dword ptr [edi * 0x4 + 0x00fa26c8], ebx       // 0x00869981    891cbdc826fa00
                         {disp8} jne        _jmp_addr_0x00869998                          // 0x00869988    750e
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0086998a    8b4c2418
                         fstp               st(0)                                         // 0x0086998e    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00869990    d9442414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00869994    894c2410
_jmp_addr_0x00869998:    inc                edi                                           // 0x00869998    47
                         cmp                edi, 0x08                                     // 0x00869999    83ff08
                         {disp32} jl        _jmp_addr_0x008698dd                          // 0x0086999c    0f8c3bffffff
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x5dc6c8]        // 0x008699a2    8b2dc826fa00
                         fstp               st(0)                                         // 0x008699a8    ddd8
                         {disp32} fld       dword ptr [data_bytes + 0x5dc758]             // 0x008699aa    d9055827fa00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x5dc6cc]        // 0x008699b0    8b3dcc26fa00
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x008699b6    d80d70b28a00
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x5dc6d0]        // 0x008699bc    8b1dd026fa00
                         call               _jmp_addr_0x007a1400                          // 0x008699c2    e8397af3ff
                         {disp32} fld       dword ptr [data_bytes + 0x5dc758]             // 0x008699c7    d9055827fa00
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x008699cd    d81d90a38a00
                         mov.s              ecx, eax                                      // 0x008699d3    8bc8
                         fnstsw             ax                                            // 0x008699d5    dfe0
                         test               ah, 0x01                                      // 0x008699d7    f6c401
                         {disp8} je         _jmp_addr_0x00869a59                          // 0x008699da    747d
                         mov.s              esi, edi                                      // 0x008699dc    8bf7
                         and                esi, 0x00ff0000                               // 0x008699de    81e60000ff00
                         mov.s              edx, ebp                                      // 0x008699e4    8bd5
                         and                edx, 0x00ff0000                               // 0x008699e6    81e20000ff00
                         sub.s              esi, edx                                      // 0x008699ec    2bf2
                         imul               esi, ecx                                      // 0x008699ee    0faff1
                         shr                esi, 8                                        // 0x008699f1    c1ee08
                         mov.s              eax, ebp                                      // 0x008699f4    8bc5
                         and                eax, 0xffff0000                               // 0x008699f6    250000ffff
                         add.s              esi, eax                                      // 0x008699fb    03f0
                         mov.s              edx, edi                                      // 0x008699fd    8bd7
                         and                edx, 0x0000ff00                               // 0x008699ff    81e200ff0000
                         mov.s              eax, ebp                                      // 0x00869a05    8bc5
                         and                eax, 0x0000ff00                               // 0x00869a07    2500ff0000
                         sub.s              edx, eax                                      // 0x00869a0c    2bd0
                         imul               edx, ecx                                      // 0x00869a0e    0fafd1
                         shr                edx, 8                                        // 0x00869a11    c1ea08
                         mov.s              eax, ebp                                      // 0x00869a14    8bc5
                         and                eax, 0xffffff00                               // 0x00869a16    2500ffffff
                         add.s              edx, eax                                      // 0x00869a1b    03d0
                         and                edx, 0x0000ff00                               // 0x00869a1d    81e200ff0000
                         and                esi, 0x00ff0000                               // 0x00869a23    81e60000ff00
                         or.s               esi, edx                                      // 0x00869a29    0bf2
                         mov.s              edx, edi                                      // 0x00869a2b    8bd7
                         and                edx, 0x000000ff                               // 0x00869a2d    81e2ff000000
                         mov.s              eax, ebp                                      // 0x00869a33    8bc5
                         and                eax, 0x000000ff                               // 0x00869a35    25ff000000
                         sub.s              edx, eax                                      // 0x00869a3a    2bd0
                         imul               edx, ecx                                      // 0x00869a3c    0fafd1
                         shr                edx, 8                                        // 0x00869a3f    c1ea08
                         add.s              edx, ebp                                      // 0x00869a42    03d5
                         and                edx, 0x000000ff                               // 0x00869a44    81e2ff000000
                         or.s               esi, edx                                      // 0x00869a4a    0bf2
                         and                edi, 0xff000000                               // 0x00869a4c    81e7000000ff
                         or.s               esi, edi                                      // 0x00869a52    0bf7
                         {disp32} jmp       _jmp_addr_0x00869adb                          // 0x00869a54    e982000000
_jmp_addr_0x00869a59:    {disp32} lea       eax, dword ptr [ecx + -0x00000100]            // 0x00869a59    8d8100ffffff
                         mov.s              esi, ebx                                      // 0x00869a5f    8bf3
                         and                esi, 0x00ff0000                               // 0x00869a61    81e60000ff00
                         mov.s              ecx, edi                                      // 0x00869a67    8bcf
                         and                ecx, 0x00ff0000                               // 0x00869a69    81e10000ff00
                         sub.s              esi, ecx                                      // 0x00869a6f    2bf1
                         imul               esi, eax                                      // 0x00869a71    0faff0
                         shr                esi, 8                                        // 0x00869a74    c1ee08
                         mov.s              edx, edi                                      // 0x00869a77    8bd7
                         and                edx, 0xffff0000                               // 0x00869a79    81e20000ffff
                         add.s              esi, edx                                      // 0x00869a7f    03f2
                         mov.s              ecx, ebx                                      // 0x00869a81    8bcb
                         and                ecx, 0x0000ff00                               // 0x00869a83    81e100ff0000
                         mov.s              edx, edi                                      // 0x00869a89    8bd7
                         and                edx, 0x0000ff00                               // 0x00869a8b    81e200ff0000
                         sub.s              ecx, edx                                      // 0x00869a91    2bca
                         imul               ecx, eax                                      // 0x00869a93    0fafc8
                         shr                ecx, 8                                        // 0x00869a96    c1e908
                         mov.s              edx, edi                                      // 0x00869a99    8bd7
                         and                edx, 0xffffff00                               // 0x00869a9b    81e200ffffff
                         add.s              ecx, edx                                      // 0x00869aa1    03ca
                         and                ecx, 0x0000ff00                               // 0x00869aa3    81e100ff0000
                         and                esi, 0x00ff0000                               // 0x00869aa9    81e60000ff00
                         or.s               esi, ecx                                      // 0x00869aaf    0bf1
                         mov.s              ecx, ebx                                      // 0x00869ab1    8bcb
                         and                ecx, 0x000000ff                               // 0x00869ab3    81e1ff000000
                         mov.s              edx, edi                                      // 0x00869ab9    8bd7
                         and                edx, 0x000000ff                               // 0x00869abb    81e2ff000000
                         sub.s              ecx, edx                                      // 0x00869ac1    2bca
                         imul               ecx, eax                                      // 0x00869ac3    0fafc8
                         shr                ecx, 8                                        // 0x00869ac6    c1e908
                         add.s              ecx, edi                                      // 0x00869ac9    03cf
                         and                ecx, 0x000000ff                               // 0x00869acb    81e1ff000000
                         or.s               esi, ecx                                      // 0x00869ad1    0bf1
                         and                ebx, 0xff000000                               // 0x00869ad3    81e3000000ff
                         or.s               esi, ebx                                      // 0x00869ad9    0bf3
_jmp_addr_0x00869adb:    {disp32} fld       dword ptr [data_bytes + 0x5dc754]             // 0x00869adb    d9055427fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6a4], esi        // 0x00869ae1    8935a426fa00
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabe4]             // 0x00869ae7    d80de43b9a00
                         {disp32} fsubr     dword ptr [__real@437f0000]                   // 0x00869aed    d82d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x00869af3    e80879f3ff
                         xor.s              ecx, ecx                                      // 0x00869af8    33c9
                         {disp32} mov       cl, byte ptr [data_bytes + 0x5dc6a6]          // 0x00869afa    8a0da626fa00
                         cmp.s              ecx, eax                                      // 0x00869b00    3bc8
                         {disp8} jle        _jmp_addr_0x00869b0f                          // 0x00869b02    7e0b
                         {disp32} mov       byte ptr [data_bytes + 0x5dc6a6], al          // 0x00869b04    a2a626fa00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869b09    8b35a426fa00
_jmp_addr_0x00869b0f:    {disp32} mov       cl, byte ptr [data_bytes + 0x5dc6a5]          // 0x00869b0f    8a0da526fa00
                         xor.s              edx, edx                                      // 0x00869b15    33d2
                         mov.s              dl, cl                                        // 0x00869b17    8ad1
                         cmp.s              edx, eax                                      // 0x00869b19    3bd0
                         {disp8} jle        _jmp_addr_0x00869b2b                          // 0x00869b1b    7e0e
                         mov.s              cl, al                                        // 0x00869b1d    8ac8
                         {disp32} mov       byte ptr [data_bytes + 0x5dc6a5], cl          // 0x00869b1f    880da526fa00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869b25    8b35a426fa00
_jmp_addr_0x00869b2b:    mov.s              edx, esi                                      // 0x00869b2b    8bd6
                         and                edx, 0x000000ff                               // 0x00869b2d    81e2ff000000
                         cmp.s              edx, eax                                      // 0x00869b33    3bd0
                         {disp8} jle        _jmp_addr_0x00869b42                          // 0x00869b35    7e0b
                         {disp32} mov       byte ptr [data_bytes + 0x5dc6a4], al          // 0x00869b37    a2a426fa00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869b3c    8b35a426fa00
_jmp_addr_0x00869b42:    xor.s              eax, eax                                      // 0x00869b42    33c0
                         mov.s              al, cl                                        // 0x00869b44    8ac1
                         lea                edi, dword ptr [eax + eax * 0x2]              // 0x00869b46    8d3c40
                         shl                edi, 4                                        // 0x00869b49    c1e704
                         sar                edi, 8                                        // 0x00869b4c    c1ff08
                         xor.s              eax, eax                                      // 0x00869b4f    33c0
                         test               edi, edi                                      // 0x00869b51    85ff
                         {disp8} jle        _jmp_addr_0x00869ba6                          // 0x00869b53    7e51
                         xor.s              ebp, ebp                                      // 0x00869b55    33ed
                         mov                ebx, 0x00edd90c                               // 0x00869b57    bb0cd9ed00
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x00869b5c    897c2418
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00869b60    897c2414
                         {disp8} jmp        _jmp_addr_0x00869b6c                          // 0x00869b64    eb06
_jmp_addr_0x00869b66:    {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869b66    8b35a426fa00
_jmp_addr_0x00869b6c:    mov.s              eax, ebp                                      // 0x00869b6c    8bc5
                         cdq                                                              // 0x00869b6e    99
                         idiv               edi                                           // 0x00869b6f    f7ff
                         push               eax                                           // 0x00869b71    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6d4]        // 0x00869b72    a1d426fa00
                         push               esi                                           // 0x00869b77    56
                         push               eax                                           // 0x00869b78    50
                         call               _jmp_addr_0x00869790                          // 0x00869b79    e812fcffff
                         mov                dword ptr [ebx], eax                          // 0x00869b7e    8903
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00869b80    8b442424
                         add                esp, 0x0c                                     // 0x00869b84    83c40c
                         add                ebp, 0x00000100                               // 0x00869b87    81c500010000
                         add                ebx, 0x04                                     // 0x00869b8d    83c304
                         dec                eax                                           // 0x00869b90    48
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00869b91    89442418
                         {disp8} jne        _jmp_addr_0x00869b66                          // 0x00869b95    75cf
                         cmp                edi, 0x30                                     // 0x00869b97    83ff30
                         {disp8} jge        _jmp_addr_0x00869bf7                          // 0x00869b9a    7d5b
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869b9c    8b35a426fa00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00869ba2    8b442414
_jmp_addr_0x00869ba6:    mov                ecx, 0x00000030                               // 0x00869ba6    b930000000
                         sub.s              ecx, edi                                      // 0x00869bab    2bcf
                         mov.s              ebp, eax                                      // 0x00869bad    8be8
                         shl                ebp, 8                                        // 0x00869baf    c1e508
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00869bb2    894c2418
                         shl                edi, 8                                        // 0x00869bb6    c1e708
                         {disp32} lea       ebx, dword ptr [eax * 0x4 + 0x00edd90c]       // 0x00869bb9    8d1c850cd9ed00
                         {disp8} jmp        _jmp_addr_0x00869bcc                          // 0x00869bc0    eb0a
_jmp_addr_0x00869bc2:    {disp32} mov       esi, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869bc2    8b35a426fa00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00869bc8    8b4c2418
_jmp_addr_0x00869bcc:    mov.s              eax, ebp                                      // 0x00869bcc    8bc5
                         sub.s              eax, edi                                      // 0x00869bce    2bc7
                         cdq                                                              // 0x00869bd0    99
                         idiv               ecx                                           // 0x00869bd1    f7f9
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6e0]        // 0x00869bd3    8b0de026fa00
                         push               eax                                           // 0x00869bd9    50
                         push               ecx                                           // 0x00869bda    51
                         push               esi                                           // 0x00869bdb    56
                         call               _jmp_addr_0x00869790                          // 0x00869bdc    e8affbffff
                         mov                dword ptr [ebx], eax                          // 0x00869be1    8903
                         add                ebx, 0x04                                     // 0x00869be3    83c304
                         add                esp, 0x0c                                     // 0x00869be6    83c40c
                         add                ebp, 0x00000100                               // 0x00869be9    81c500010000
                         cmp                ebx, 0x00edd9cc                               // 0x00869bef    81fbccd9ed00
                         {disp8} jl         _jmp_addr_0x00869bc2                          // 0x00869bf5    7ccb
_jmp_addr_0x00869bf7:    mov                edi, 0x00000030                               // 0x00869bf7    bf30000000
                         mov                esi, 0x00edd9cc                               // 0x00869bfc    beccd9ed00
_jmp_addr_0x00869c01:    {disp32} mov       edx, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869c01    8b15a426fa00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6d4]        // 0x00869c07    a1d426fa00
                         push               edi                                           // 0x00869c0c    57
                         push               edx                                           // 0x00869c0d    52
                         push               eax                                           // 0x00869c0e    50
                         call               _jmp_addr_0x00869790                          // 0x00869c0f    e87cfbffff
                         add                esp, 0x0c                                     // 0x00869c14    83c40c
                         mov                dword ptr [esi], eax                          // 0x00869c17    8906
                         add                esi, 0x04                                     // 0x00869c19    83c604
                         inc                edi                                           // 0x00869c1c    47
                         cmp                esi, 0x00eddd0c                               // 0x00869c1d    81fe0cdded00
                         {disp8} jl         _jmp_addr_0x00869c01                          // 0x00869c23    7cdc
                         {disp32} mov       esi, dword ptr [data_bytes + 0x5dc768]        // 0x00869c25    8b356827fa00
                         test               esi, esi                                      // 0x00869c2b    85f6
                         {disp32} je        _jmp_addr_0x00869cb8                          // 0x00869c2d    0f8485000000
                         mov                ecx, 0x00edd90c                               // 0x00869c33    b90cd9ed00
_jmp_addr_0x00869c38:    mov                eax, dword ptr [ecx]                          // 0x00869c38    8b01
                         mov.s              edx, eax                                      // 0x00869c3a    8bd0
                         and                edx, 0x00ff0000                               // 0x00869c3c    81e20000ff00
                         mov                edi, 0x00ff0000                               // 0x00869c42    bf0000ff00
                         sub.s              edi, edx                                      // 0x00869c47    2bfa
                         imul               edi, esi                                      // 0x00869c49    0faffe
                         shr                edi, 8                                        // 0x00869c4c    c1ef08
                         mov.s              edx, eax                                      // 0x00869c4f    8bd0
                         and                edx, 0xffff0000                               // 0x00869c51    81e20000ffff
                         add.s              edi, edx                                      // 0x00869c57    03fa
                         mov.s              edx, eax                                      // 0x00869c59    8bd0
                         and                edx, 0x0000ff00                               // 0x00869c5b    81e200ff0000
                         mov                ebx, 0x0000ff00                               // 0x00869c61    bb00ff0000
                         sub.s              ebx, edx                                      // 0x00869c66    2bda
                         imul               ebx, esi                                      // 0x00869c68    0fafde
                         shr                ebx, 8                                        // 0x00869c6b    c1eb08
                         mov.s              edx, eax                                      // 0x00869c6e    8bd0
                         and                edx, 0xffffff00                               // 0x00869c70    81e200ffffff
                         add.s              ebx, edx                                      // 0x00869c76    03da
                         and                ebx, 0x0000ff00                               // 0x00869c78    81e300ff0000
                         and                edi, 0xffff0000                               // 0x00869c7e    81e70000ffff
                         or.s               edi, ebx                                      // 0x00869c84    0bfb
                         mov.s              edx, eax                                      // 0x00869c86    8bd0
                         and                edx, 0x000000ff                               // 0x00869c88    81e2ff000000
                         mov                ebx, 0x000000ff                               // 0x00869c8e    bbff000000
                         sub.s              ebx, edx                                      // 0x00869c93    2bda
                         imul               ebx, esi                                      // 0x00869c95    0fafde
                         shr                ebx, 8                                        // 0x00869c98    c1eb08
                         add.s              ebx, eax                                      // 0x00869c9b    03d8
                         and                ebx, 0x000000ff                               // 0x00869c9d    81e3ff000000
                         or.s               edi, ebx                                      // 0x00869ca3    0bfb
                         or                 edi, 0xff000000                               // 0x00869ca5    81cf000000ff
                         mov                dword ptr [ecx], edi                          // 0x00869cab    8939
                         add                ecx, 0x4                                      // 0x00869cad    83c104
                         cmp                ecx, 0x00eddd0c                               // 0x00869cb0    81f90cdded00
                         {disp8} jl         _jmp_addr_0x00869c38                          // 0x00869cb6    7c80
_jmp_addr_0x00869cb8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6a4]        // 0x00869cb8    8b0da426fa00
                         xor.s              eax, eax                                      // 0x00869cbe    33c0
                         {disp32} mov       al, byte ptr [data_bytes + 0x5dc6a6]          // 0x00869cc0    a0a626fa00
                         xor.s              ebx, ebx                                      // 0x00869cc5    33db
                         {disp32} mov       bl, byte ptr [data_bytes + 0x5dc6a5]          // 0x00869cc7    8a1da526fa00
                         and                ecx, 0x000000ff                               // 0x00869ccd    81e1ff000000
                         mov.s              ebp, eax                                      // 0x00869cd3    8be8
                         lea                edx, dword ptr [ecx + ebp * 0x1]              // 0x00869cd5    8d1429
                         lea                eax, dword ptr [edx + ecx * 0x2]              // 0x00869cd8    8d044a
                         lea                eax, dword ptr [eax + ebx * 0x4]              // 0x00869cdb    8d0498
                         cdq                                                              // 0x00869cde    99
                         and                edx, 0x07                                     // 0x00869cdf    83e207
                         add.s              eax, edx                                      // 0x00869ce2    03c2
                         mov.s              edi, eax                                      // 0x00869ce4    8bf8
                         sar                edi, 3                                        // 0x00869ce6    c1ff03
                         add                edi, 0x08                                     // 0x00869ce9    83c708
                         cmp                edi, 0x000000ff                               // 0x00869cec    81ffff000000
                         {disp8} jle        _jmp_addr_0x00869cf9                          // 0x00869cf2    7e05
                         mov                edi, 0x000000ff                               // 0x00869cf4    bfff000000
_jmp_addr_0x00869cf9:    mov                eax, 0x55555556                               // 0x00869cf9    b856555555
                         imul               ebp                                           // 0x00869cfe    f7ed
                         mov.s              eax, edx                                      // 0x00869d00    8bc2
                         shr                eax, 0x1f                                     // 0x00869d02    c1e81f
                         add.s              edx, eax                                      // 0x00869d05    03d0
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00869d07    89542418
                         mov                eax, 0x55555556                               // 0x00869d0b    b856555555
                         imul               ebx                                           // 0x00869d10    f7eb
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869d12    db442418
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869d16    d91db426fa00
                         mov.s              eax, edx                                      // 0x00869d1c    8bc2
                         shr                eax, 0x1f                                     // 0x00869d1e    c1e81f
                         add.s              edx, eax                                      // 0x00869d21    03d0
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00869d23    89542418
                         mov                eax, 0x55555556                               // 0x00869d27    b856555555
                         imul               ecx                                           // 0x00869d2c    f7e9
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869d2e    db442418
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869d32    d91db026fa00
                         mov.s              eax, edx                                      // 0x00869d38    8bc2
                         shr                eax, 0x1f                                     // 0x00869d3a    c1e81f
                         add.s              edx, eax                                      // 0x00869d3d    03d0
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00869d3f    89542418
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6a8], edi        // 0x00869d43    893da826fa00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869d49    db442418
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869d4d    d91dac26fa00
                         {disp32} fld       dword ptr [rdata_bytes + 0xfab18]             // 0x00869d53    d905183b9a00
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabe0]             // 0x00869d59    d905e03b9a00
                         {disp32} fld       dword ptr [data_bytes + 0x5dc6bc]             // 0x00869d5f    d905bc26fa00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00869d65    d81590a38a00
                         fnstsw             ax                                            // 0x00869d6b    dfe0
                         test               ah, 0x41                                      // 0x00869d6d    f6c441
                         {disp8} jne        _jmp_addr_0x00869d78                          // 0x00869d70    7506
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2478]              // 0x00869d72    d82d78b48a00
_jmp_addr_0x00869d78:    fld                st(0)                                         // 0x00869d78    d9c0
                         fmulp              st(1), st                                     // 0x00869d7a    dec9
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00869d7c    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00869d80    d81d98a38a00
                         fnstsw             ax                                            // 0x00869d86    dfe0
                         test               ah, 0x41                                      // 0x00869d88    f6c441
                         {disp8} jne        _jmp_addr_0x00869db1                          // 0x00869d8b    7524
                         fstp               st(0)                                         // 0x00869d8d    ddd8
                         fstp               st(0)                                         // 0x00869d8f    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00869d91    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabdc]             // 0x00869d95    d80ddc3b9a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0xfab18]             // 0x00869d9b    d805183b9a00
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00869da1    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfabd8]             // 0x00869da5    d80dd83b9a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0xfabe0]             // 0x00869dab    d805e03b9a00
_jmp_addr_0x00869db1:    {disp32} fld       dword ptr [data_bytes + 0x5dc754]             // 0x00869db1    d9055427fa00
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00869db7    d81d98a38a00
                         fnstsw             ax                                            // 0x00869dbd    dfe0
                         test               ah, 0x41                                      // 0x00869dbf    f6c441
                         {disp32} jne       _jmp_addr_0x00869e98                          // 0x00869dc2    0f85d0000000
                         {disp32} fld       dword ptr [data_bytes + 0x5dc754]             // 0x00869dc8    d9055427fa00
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00869dce    d81d90a38a00
                         fnstsw             ax                                            // 0x00869dd4    dfe0
                         test               ah, 0x41                                      // 0x00869dd6    f6c441
                         {disp8} jne        _jmp_addr_0x00869de5                          // 0x00869dd9    750a
                         {disp32} mov       dword ptr [data_bytes + 0x5dc754], 0x3f800000 // 0x00869ddb    c7055427fa000000803f
_jmp_addr_0x00869de5:    shr                ebp, 3                                        // 0x00869de5    c1ed03
                         add                ebp, 0x20                                     // 0x00869de8    83c520
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x00869deb    896c2418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869def    db442418
                         shr                ebx, 3                                        // 0x00869df3    c1eb03
                         add                ebx, 0x20                                     // 0x00869df6    83c320
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00869df9    895c2418
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869dfd    d825b426fa00
                         shr                ecx, 3                                        // 0x00869e03    c1e903
                         add                ecx, 0x20                                     // 0x00869e06    83c120
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e09    d80d5427fa00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869e0f    d805b426fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869e15    d91db426fa00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869e1b    db442418
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00869e1f    894c2418
                         mov                ecx, 0x00000030                               // 0x00869e23    b930000000
                         sub.s              ecx, edi                                      // 0x00869e28    2bcf
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869e2a    d825b026fa00
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e30    d80d5427fa00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869e36    d805b026fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869e3c    d91db026fa00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869e42    db442418
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00869e46    894c2418
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869e4a    d825ac26fa00
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e50    d80d5427fa00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869e56    d805ac26fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869e5c    d91dac26fa00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00869e62    db442418
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e66    d80d5427fa00
                         call               _jmp_addr_0x007a1400                          // 0x00869e6c    e88f75f3ff
                         {disp32} fld       dword ptr [rdata_bytes + 0xfab70]             // 0x00869e71    d905703b9a00
                         fsub               st, st(2)                                     // 0x00869e77    d8e2
                         add.s              eax, edi                                      // 0x00869e79    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6a8], eax        // 0x00869e7b    a3a826fa00
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e80    d80d5427fa00
                         faddp              st(2), st                                     // 0x00869e86    dec2
                         {disp32} fld       dword ptr [rdata_bytes + 0xfabd4]             // 0x00869e88    d905d43b9a00
                         fsub               st, st(1)                                     // 0x00869e8e    d8e1
                         {disp32} fmul      dword ptr [data_bytes + 0x5dc754]             // 0x00869e90    d80d5427fa00
                         faddp              st(1), st                                     // 0x00869e96    dec1
_jmp_addr_0x00869e98:    test               esi, esi                                      // 0x00869e98    85f6
                         {disp32} je        _jmp_addr_0x00869f3d                          // 0x00869e9a    0f849d000000
                         {disp32} fild      dword ptr [data_bytes + 0x5dc768]             // 0x00869ea0    db056827fa00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x5dc6a8]        // 0x00869ea6    8b3da826fa00
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x00869eac    d90570b28a00
                         mov                edx, 0x000000ff                               // 0x00869eb2    baff000000
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869eb7    d825b426fa00
                         sub.s              edx, edi                                      // 0x00869ebd    2bd7
                         imul               edx, esi                                      // 0x00869ebf    0fafd6
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00869ec2    89542418
                         fmul               st, st(1)                                     // 0x00869ec6    d8c9
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00869ec8    c744241c00000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00869ed0    d80d0cb58a00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869ed6    d805b426fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b4]             // 0x00869edc    d91db426fa00
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x00869ee2    d90570b28a00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869ee8    d825b026fa00
                         fmul               st, st(1)                                     // 0x00869eee    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00869ef0    d80d0cb58a00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869ef6    d805b026fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6b0]             // 0x00869efc    d91db026fa00
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x00869f02    d90570b28a00
                         {disp32} fsub      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869f08    d825ac26fa00
                         fmul               st, st(1)                                     // 0x00869f0e    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00869f10    d80d0cb58a00
                         {disp32} fadd      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869f16    d805ac26fa00
                         {disp32} fstp      dword ptr [data_bytes + 0x5dc6ac]             // 0x00869f1c    d91dac26fa00
                         fstp               st(0)                                         // 0x00869f22    ddd8
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00869f24    df6c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00869f28    d80d0cb58a00
                         call               _jmp_addr_0x007a1400                          // 0x00869f2e    e8cd74f3ff
                         mov.s              ecx, edi                                      // 0x00869f33    8bcf
                         add.s              ecx, eax                                      // 0x00869f35    03c8
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6a8], ecx        // 0x00869f37    890da826fa00
_jmp_addr_0x00869f3d:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00869f3d    d90590a38a00
                         push               ecx                                           // 0x00869f43    51
                         fdiv               st, st(1)                                     // 0x00869f44    d8f1
                         fstp               dword ptr [esp]                               // 0x00869f46    d91c24
                         push               ecx                                           // 0x00869f49    51
                         fstp               st(0)                                         // 0x00869f4a    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00869f4c    d90590a38a00
                         fdiv               st, st(1)                                     // 0x00869f52    d8f1
                         fstp               dword ptr [esp]                               // 0x00869f54    d91c24
                         fstp               st(0)                                         // 0x00869f57    ddd8
                         call               _jmp_addr_0x007feaa0                          // 0x00869f59    e8424bf9ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6a8]        // 0x00869f5e    a1a826fa00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6ac]        // 0x00869f63    8b0dac26fa00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5dc6b0]        // 0x00869f69    8b15b026fa00
                         push               eax                                           // 0x00869f6f    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5dc6b4]        // 0x00869f70    a1b426fa00
                         push               ecx                                           // 0x00869f75    51
                         push               edx                                           // 0x00869f76    52
                         push               eax                                           // 0x00869f77    50
                         call               _jmp_addr_0x007fead0                          // 0x00869f78    e8534bf9ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5dc6d8]        // 0x00869f7d    8b0dd826fa00
                         and                ecx, 0x00ffffff                               // 0x00869f83    81e1ffffff00
                         add                esp, 0x18                                     // 0x00869f89    83c418
                         {disp32} mov       dword ptr [data_bytes + 0x2738fc], ecx        // 0x00869f8c    890dfc98c300
                         call               _jmp_addr_0x00829610                          // 0x00869f92    e879f6fbff
                         pop                edi                                           // 0x00869f97    5f
                         pop                esi                                           // 0x00869f98    5e
                         pop                ebp                                           // 0x00869f99    5d
                         pop                ebx                                           // 0x00869f9a    5b
                         add                esp, 0x10                                     // 0x00869f9b    83c410
                         ret                                                              // 0x00869f9e    c3
                         nop                                                              // 0x00869f9f    90
?SetDayNightTimes@LH3DSky@@SAXMMMM@Z:
                                     {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00869fa0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00869fa4    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00869fa8    8b54240c
                         {disp32} mov       dword ptr [data_bytes + 0x5dc6a0], eax        // 0x00869fac    a3a026fa00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00869fb1    8b442410
                         {disp32} mov       dword ptr [data_bytes + 0x5dc69c], ecx        // 0x00869fb5    890d9c26fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc698], edx        // 0x00869fbb    89159826fa00
                         {disp32} mov       dword ptr [data_bytes + 0x5dc694], eax        // 0x00869fc1    a39426fa00
                         ret                                                              // 0x00869fc6    c3
                         nop                                                              // 0x00869fc7    90
                         nop                                                              // 0x00869fc8    90
                         nop                                                              // 0x00869fc9    90
                         nop                                                              // 0x00869fca    90
                         nop                                                              // 0x00869fcb    90
                         nop                                                              // 0x00869fcc    90
                         nop                                                              // 0x00869fcd    90
                         nop                                                              // 0x00869fce    90
                         nop                                                              // 0x00869fcf    90
_jmp_addr_0x00869fd0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00869fd0    d9442404
                         xor.s              cl, cl                                        // 0x00869fd4    32c9
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]             // 0x00869fd6    d81dc0f18c00
                         fnstsw             ax                                            // 0x00869fdc    dfe0
                         test               ah, 0x41                                      // 0x00869fde    f6c441
                         {disp8} jne        _jmp_addr_0x00869ff3                          // 0x00869fe1    7510
                         {disp32} fld       dword ptr [rdata_bytes + 0x2126c]             // 0x00869fe3    d9056ca28c00
                         mov                cl, 0x01                                      // 0x00869fe9    b101
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00869feb    d8642404
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00869fef    d95c2404
_jmp_addr_0x00869ff3:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00869ff3    d9442404
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00869ff7    d85c2408
                         fnstsw             ax                                            // 0x00869ffb    dfe0
                         test               ah, 0x01                                      // 0x00869ffd    f6c401
                         {disp8} je         _jmp_addr_0x0086a011                          // 0x0086a000    740f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a002    d9442404
                         xor.s              eax, eax                                      // 0x0086a006    33c0
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x0086a008    d8742408
                         {disp32} jmp       _jmp_addr_0x0086a09c                          // 0x0086a00c    e98b000000
_jmp_addr_0x0086a011:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a011    d9442404
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x0086a015    d85c240c
                         fnstsw             ax                                            // 0x0086a019    dfe0
                         test               ah, 0x01                                      // 0x0086a01b    f6c401
                         {disp8} je         _jmp_addr_0x0086a037                          // 0x0086a01e    7417
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a020    d9442404
                         mov                eax, 0x00000001                               // 0x0086a024    b801000000
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x0086a029    d8642408
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0086a02d    d944240c
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x0086a031    d8642408
                         {disp8} jmp        _jmp_addr_0x0086a09a                          // 0x0086a035    eb63
_jmp_addr_0x0086a037:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a037    d9442404
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0086a03b    d85c2410
                         fnstsw             ax                                            // 0x0086a03f    dfe0
                         test               ah, 0x01                                      // 0x0086a041    f6c401
                         {disp8} je         _jmp_addr_0x0086a05d                          // 0x0086a044    7417
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a046    d9442404
                         mov                eax, 0x00000002                               // 0x0086a04a    b802000000
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0086a04f    d864240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086a053    d9442410
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0086a057    d864240c
                         {disp8} jmp        _jmp_addr_0x0086a09a                          // 0x0086a05b    eb3d
_jmp_addr_0x0086a05d:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a05d    d9442404
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0086a061    d85c2414
                         fnstsw             ax                                            // 0x0086a065    dfe0
                         test               ah, 0x01                                      // 0x0086a067    f6c401
                         {disp8} je         _jmp_addr_0x0086a083                          // 0x0086a06a    7417
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a06c    d9442404
                         mov                eax, 0x00000003                               // 0x0086a070    b803000000
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0086a075    d8642410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086a079    d9442414
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0086a07d    d8642410
                         {disp8} jmp        _jmp_addr_0x0086a09a                          // 0x0086a081    eb17
_jmp_addr_0x0086a083:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a083    d9442404
                         mov                eax, 0x00000004                               // 0x0086a087    b804000000
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0086a08c    d8642414
                         {disp32} fld       dword ptr [rdata_bytes + 0x261c0]             // 0x0086a090    d905c0f18c00
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0086a096    d8642414
_jmp_addr_0x0086a09a:    fdivp              st(1), st                                     // 0x0086a09a    def9
_jmp_addr_0x0086a09c:    jmp                dword ptr [eax*4 + 0x86a0fc]                  // 0x0086a09c    ff2485fca08600
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0086a0a3    d84c2418
                         {disp8} jmp        _jmp_addr_0x0086a0f1                          // 0x0086a0a7    eb48
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086a0a9    d944241c
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0086a0ad    d8642418
                         fmulp              st(1), st                                     // 0x0086a0b1    dec9
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086a0b3    d8442418
                         {disp8} jmp        _jmp_addr_0x0086a0f1                          // 0x0086a0b7    eb38
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086a0b9    d9442420
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0086a0bd    d864241c
                         fmulp              st(1), st                                     // 0x0086a0c1    dec9
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086a0c3    d844241c
                         {disp8} jmp        _jmp_addr_0x0086a0f1                          // 0x0086a0c7    eb28
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086a0c9    d9442424
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0086a0cd    d8642420
                         fmulp              st(1), st                                     // 0x0086a0d1    dec9
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0086a0d3    d8442420
                         {disp8} jmp        _jmp_addr_0x0086a0f1                          // 0x0086a0d7    eb18
                         {disp32} fld       dword ptr [rdata_bytes + 0x261c0]             // 0x0086a0d9    d905c0f18c00
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x0086a0df    d8642424
                         fmulp              st(1), st                                     // 0x0086a0e3    dec9
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0086a0e5    d8442424
                         {disp8} jmp        _jmp_addr_0x0086a0f1                          // 0x0086a0e9    eb06
                         fstp               st(0)                                         // 0x0086a0eb    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086a0ed    d9442404
_jmp_addr_0x0086a0f1:    test               cl, cl                                        // 0x0086a0f1    84c9
                         {disp8} je         _jmp_addr_0x0086a0fb                          // 0x0086a0f3    7406
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2126c]             // 0x0086a0f5    d82d6ca28c00
_jmp_addr_0x0086a0fb:    ret                                                              // 0x0086a0fb    c3

// Snippet: jmptbl, [0x0086a0fc, 0x0086a110)
.byte 0xa3, 0xa0, 0x86, 0x00      // 0x0086a0fc
.byte 0xa9, 0xa0, 0x86, 0x00      // 0x0086a100
.byte 0xb9, 0xa0, 0x86, 0x00      // 0x0086a104
.byte 0xc9, 0xa0, 0x86, 0x00      // 0x0086a108
.byte 0xd9, 0xa0, 0x86, 0x00      // 0x0086a10c

