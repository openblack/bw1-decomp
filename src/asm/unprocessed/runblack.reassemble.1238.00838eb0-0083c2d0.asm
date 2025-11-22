.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?ResetData@LHFile@@QAEIXZ
.extern _jmp_addr_0x0046d720
.extern _jmp_addr_0x0046edb0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern @SetName__6LHFileFPCc@12
.extern @Open__14LHReleasedFileF12LH_FILE_MODE@12
.extern _jmp_addr_0x007bda20
.extern _jmp_addr_0x007bda70
.extern _jmp_addr_0x007bda90
.extern ?Close@LHFile@@QAEIXZ
.extern @GetSegment__6LHFileFPcP9LHSegmenti@20
.extern _atexit
.extern _sprintf
.extern _malloc
.extern _free
.extern _jmp_addr_0x007faff0
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x007fb5c0
.extern _jmp_addr_0x00804780
.extern _Report3D__FPCce
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern @__ct__14LHReleasedFileFPCc@12
.extern _jmp_addr_0x00838500
.extern _jmp_addr_0x00838530
.extern _jmp_addr_0x00838af0
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x00864d30
.extern _jmp_addr_0x00869020
.extern _jmp_addr_0x0086fd50
.extern @SetSize__7Point2DFf@12
.extern @GetNormSq__7Point2DFv2@4
.extern @GetRange__7Point2DCFRC7Point2D@12
.extern _jmp_addr_0x0086fe80
.extern _jmp_addr_0x00870610
.extern _jmp_addr_0x00871170
.extern _jmp_addr_0x0087f6d0

.globl _jmp_addr_0x00838eb0
.globl _jmp_addr_0x00838f00
.globl _jmp_addr_0x00839010
.globl _jmp_addr_0x00839020
.globl _jmp_addr_0x00839190
.globl _jmp_addr_0x00839680
.globl _jmp_addr_0x008396a0
.globl _jmp_addr_0x008397f0
.globl _jmp_addr_0x00839860
.globl _jmp_addr_0x00839880
.globl _jmp_addr_0x008398a0
.globl _jmp_addr_0x008398b0
.globl _jmp_addr_0x00839900
.globl _jmp_addr_0x00839970
.globl _jmp_addr_0x00839980
.globl _jmp_addr_0x00839bc0
.globl _jmp_addr_0x00839f10
.globl _jmp_addr_0x00839fa0
.globl _jmp_addr_0x0083a020
.globl _jmp_addr_0x0083a0e0
.globl ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z
.globl ?GetListPtrFrames@LH3DAnim@@QAEHXZ
.globl ?CreatePack@LH3DAnim@@SAXXZ
.globl _jmp_addr_0x0083ac70
.globl _jmp_addr_0x0083add0
.globl _jmp_addr_0x0083ade0
.globl _jmp_addr_0x0083ae80
.globl ??0RPHolder@@QAE@XZ 
.globl ?InitialiseSystem@RPHolder@@QAEXP6AXHHPAV1@@ZP6AX0@Z@Z
.globl _jmp_addr_0x0083b320
.globl ?Empty@RPHolder@@QAEXXZ
.globl _jmp_addr_0x0083b380
.globl _jmp_addr_0x0083b3e0
.globl _jmp_addr_0x0083b450
.globl @GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di@24
.globl _jmp_addr_0x0083b9e0
.globl @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32

.globl _globl_ct_0x008398c0
.globl _globl_ct_0x0083b280
.globl _globl_ct_0x0083b2b0

start_0x00838eb0_0x0083c2d0:
// Snippet: asm, [0x00838eb0, 0x0083c282)
_jmp_addr_0x00838eb0:    push               esi                                             // 0x00838eb0    56
                         mov.s              esi, ecx                                        // 0x00838eb1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000130]               // 0x00838eb3    8b8630010000
                         push               edi                                             // 0x00838eb9    57
                         xor.s              edi, edi                                        // 0x00838eba    33ff
                         cmp.s              eax, edi                                        // 0x00838ebc    3bc7
                         {disp8} je         _jmp_addr_0x00838ef9                            // 0x00838ebe    7439
                         {disp8} mov        eax, dword ptr [esi + 0x10]                     // 0x00838ec0    8b4610
                         and                eax, 0x3f                                       // 0x00838ec3    83e03f
                         dec                eax                                             // 0x00838ec6    48
                         {disp32} mov       dword ptr [esi + 0x00000130], edi               // 0x00838ec7    89be30010000
                         {disp8} je         _jmp_addr_0x00838ed7                            // 0x00838ecd    7408
                         dec                eax                                             // 0x00838ecf    48
                         {disp8} je         _jmp_addr_0x00838ed7                            // 0x00838ed0    7405
                         sub                eax, 0x1e                                       // 0x00838ed2    83e81e
                         {disp8} jne        _jmp_addr_0x00838ef9                            // 0x00838ed5    7522
_jmp_addr_0x00838ed7:    {disp32} mov       eax, dword ptr [esi + 0x00000124]               // 0x00838ed7    8b8624010000
                         mov                ecx, dword ptr [eax]                            // 0x00838edd    8b08
                         push               edi                                             // 0x00838edf    57
                         push               eax                                             // 0x00838ee0    50
                         call               dword ptr [ecx + 0x80]                          // 0x00838ee1    ff9180000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]               // 0x00838ee7    8b8624010000
                         mov                edx, dword ptr [eax]                            // 0x00838eed    8b10
                         push               eax                                             // 0x00838eef    50
                         call               dword ptr [edx + 8]                             // 0x00838ef0    ff5208
                         {disp32} mov       dword ptr [esi + 0x00000124], edi               // 0x00838ef3    89be24010000
_jmp_addr_0x00838ef9:    pop                edi                                             // 0x00838ef9    5f
                         pop                esi                                             // 0x00838efa    5e
                         ret                                                                // 0x00838efb    c3
                         nop                                                                // 0x00838efc    90
                         nop                                                                // 0x00838efd    90
                         nop                                                                // 0x00838efe    90
                         nop                                                                // 0x00838eff    90
_jmp_addr_0x00838f00:    sub                esp, 0x24                                       // 0x00838f00    83ec24
                         push               ebp                                             // 0x00838f03    55
                         mov.s              ebp, ecx                                        // 0x00838f04    8be9
                         {disp32} mov       eax, dword ptr [ebp + 0x0000012c]               // 0x00838f06    8b852c010000
                         test               eax, eax                                        // 0x00838f0c    85c0
                         {disp32} jne       _jmp_addr_0x00838ffc                            // 0x00838f0e    0f85e8000000
                         push               ebx                                             // 0x00838f14    53
                         push               edi                                             // 0x00838f15    57
                         push               0x00001000                                      // 0x00838f16    6800100000
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                        // 0x00838f1b    e8c09d0000
                         mov.s              edx, eax                                        // 0x00838f20    8bd0
                         add                esp, 0x04                                       // 0x00838f22    83c404
                         test               edx, edx                                        // 0x00838f25    85d2
                         {disp8} je         _jmp_addr_0x00838f34                            // 0x00838f27    740b
                         mov                ecx, 0x00000400                                 // 0x00838f29    b900040000
                         xor.s              eax, eax                                        // 0x00838f2e    33c0
                         mov.s              edi, edx                                        // 0x00838f30    8bfa
                         rep stosd                                                          // 0x00838f32    f3ab
_jmp_addr_0x00838f34:    {disp8} lea        eax, dword ptr [esp + 0x20]                     // 0x00838f34    8d442420
                         push               eax                                             // 0x00838f38    50
                         mov.s              ecx, ebp                                        // 0x00838f39    8bcd
                         {disp32} mov       dword ptr [ebp + 0x0000012c], edx               // 0x00838f3b    89952c010000
                         call               _jmp_addr_0x00838af0                            // 0x00838f41    e8aafbffff
                         {disp8} fild       dword ptr [esp + 0x28]                          // 0x00838f46    db442428
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x00838f4a    8b442424
                         cdq                                                                // 0x00838f4e    99
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2fbd0]               // 0x00838f4f    d80dd08b8d00
                         sub.s              eax, edx                                        // 0x00838f55    2bc2
                         mov.s              ebx, eax                                        // 0x00838f57    8bd8
                         {disp8} mov        eax, dword ptr [esp + 0x20]                     // 0x00838f59    8b442420
                         {disp8} fstp       dword ptr [esp + 0x1c]                          // 0x00838f5d    d95c241c
                         sar                ebx, 1                                          // 0x00838f61    d1fb
                         test               eax, eax                                        // 0x00838f63    85c0
                         {disp8} fild       dword ptr [esp + 0x2c]                          // 0x00838f65    db44242c
                         {disp8} mov        dword ptr [esp + 0x14], ebx                     // 0x00838f69    895c2414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2fbd0]               // 0x00838f6d    d80dd08b8d00
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x00838f73    d95c2418
                         {disp8} je         _jmp_addr_0x00838fe8                            // 0x00838f77    746f
                         push               esi                                             // 0x00838f79    56
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000              // 0x00838f7a    c744241000000000
                         {disp8} jmp        _jmp_addr_0x00838f88                            // 0x00838f82    eb04
_jmp_addr_0x00838f84:    {disp8} mov        ebx, dword ptr [esp + 0x18]                     // 0x00838f84    8b5c2418
_jmp_addr_0x00838f88:    {disp8} fild       dword ptr [esp + 0x10]                          // 0x00838f88    db442410
                         xor.s              esi, esi                                        // 0x00838f8c    33f6
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x00838f8e    89742414
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x00838f92    d84c241c
                         call               _jmp_addr_0x007a1400                            // 0x00838f96    e86584f6ff
                         mov.s              edi, eax                                        // 0x00838f9b    8bf8
                         imul               edi, ebx                                        // 0x00838f9d    0faffb
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                     // 0x00838fa0    8b5c2410
                         shl                ebx, 6                                          // 0x00838fa4    c1e306
_jmp_addr_0x00838fa7:    {disp8} fild       dword ptr [esp + 0x14]                          // 0x00838fa7    db442414
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x00838fab    d84c2420
                         call               _jmp_addr_0x007a1400                            // 0x00838faf    e84c84f6ff
                         {disp8} mov        edx, dword ptr [esp + 0x24]                     // 0x00838fb4    8b542424
                         add.s              eax, edi                                        // 0x00838fb8    03c7
                         xor.s              ecx, ecx                                        // 0x00838fba    33c9
                         {disp8} mov        cl, byte ptr [edx + eax * 0x2 + 0x01]           // 0x00838fbc    8a4c4201
                         {disp32} mov       edx, dword ptr [ebp + 0x0000012c]               // 0x00838fc0    8b952c010000
                         and                cl, -0x10                                       // 0x00838fc6    80e1f0
                         lea                eax, dword ptr [ebx + esi * 0x1]                // 0x00838fc9    8d0433
                         inc                esi                                             // 0x00838fcc    46
                         cmp                esi, 0x40                                       // 0x00838fcd    83fe40
                         mov                byte ptr [eax + edx * 0x1], cl                  // 0x00838fd0    880c10
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x00838fd3    89742414
                         {disp8} jl         _jmp_addr_0x00838fa7                            // 0x00838fd7    7cce
                         {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x00838fd9    8b442410
                         inc                eax                                             // 0x00838fdd    40
                         cmp                eax, 0x40                                       // 0x00838fde    83f840
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x00838fe1    89442410
                         {disp8} jl         _jmp_addr_0x00838f84                            // 0x00838fe5    7c9d
                         pop                esi                                             // 0x00838fe7    5e
_jmp_addr_0x00838fe8:    mov.s              ecx, ebp                                        // 0x00838fe8    8bcd
                         call               _jmp_addr_0x00838eb0                            // 0x00838fea    e8c1feffff
                         {disp32} mov       eax, dword ptr [ebp + 0x0000012c]               // 0x00838fef    8b852c010000
                         pop                edi                                             // 0x00838ff5    5f
                         pop                ebx                                             // 0x00838ff6    5b
                         pop                ebp                                             // 0x00838ff7    5d
                         add                esp, 0x24                                       // 0x00838ff8    83c424
                         ret                                                                // 0x00838ffb    c3
_jmp_addr_0x00838ffc:    {disp32} mov       eax, dword ptr [ebp + 0x0000012c]               // 0x00838ffc    8b852c010000
                         pop                ebp                                             // 0x00839002    5d
                         add                esp, 0x24                                       // 0x00839003    83c424
                         ret                                                                // 0x00839006    c3
                         nop                                                                // 0x00839007    90
                         nop                                                                // 0x00839008    90
                         nop                                                                // 0x00839009    90
                         nop                                                                // 0x0083900a    90
                         nop                                                                // 0x0083900b    90
                         nop                                                                // 0x0083900c    90
                         nop                                                                // 0x0083900d    90
                         nop                                                                // 0x0083900e    90
                         nop                                                                // 0x0083900f    90
_jmp_addr_0x00839010:    {disp8} mov        eax, dword ptr [ecx + 0x10]                     // 0x00839010    8b4110
                         and                eax, 0x3f                                       // 0x00839013    83e03f
                         cmp                al, 0x04                                        // 0x00839016    3c04
                         {disp8} je         _jmp_addr_0x0083901d                            // 0x00839018    7403
                         xor.s              eax, eax                                        // 0x0083901a    33c0
                         ret                                                                // 0x0083901c    c3
_jmp_addr_0x0083901d:    mov                eax, dword ptr [ecx]                            // 0x0083901d    8b01
                         ret                                                                // 0x0083901f    c3
_jmp_addr_0x00839020:    sub                esp, 0x00000088                                 // 0x00839020    81ec88000000
                         push               ebx                                             // 0x00839026    53
                         push               ebp                                             // 0x00839027    55
                         mov.s              ebp, ecx                                        // 0x00839028    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                     // 0x0083902a    8b4510
                         and                eax, 0x3f                                       // 0x0083902d    83e03f
                         cmp                al, 0x04                                        // 0x00839030    3c04
                         {disp32} jne       _jmp_addr_0x00839180                            // 0x00839032    0f8548010000
                         {disp32} mov       eax, dword ptr [ebp + 0x00000120]               // 0x00839038    8b8520010000
                         test               eax, eax                                        // 0x0083903e    85c0
                         {disp32} jne       _jmp_addr_0x00839180                            // 0x00839040    0f853a010000
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                     // 0x00839046    8b4514
                         test               eax, eax                                        // 0x00839049    85c0
                         {disp8} lea        ebx, dword ptr [ebp + 0x14]                     // 0x0083904b    8d5d14
                         {disp32} jne       _jmp_addr_0x00839180                            // 0x0083904e    0f852c010000
                         cmp                dword ptr [ebp + 0x00], 0x00                    // 0x00839054    837d0000
                         {disp32} je        _jmp_addr_0x00839180                            // 0x00839058    0f8422010000
                         push               esi                                             // 0x0083905e    56
                         push               edi                                             // 0x0083905f    57
                         push               0x1                                             // 0x00839060    6a01
                         push               0x0                                             // 0x00839062    6a00
                         call               _jmp_addr_0x0087f6d0                            // 0x00839064    e867660400
                         {disp32} mov       dword ptr [ebp + 0x00000120], eax               // 0x00839069    898520010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517474]          // 0x0083906f    8b1574d4ed00
                         xor.s              eax, eax                                        // 0x00839075    33c0
                         push               eax                                             // 0x00839077    50
                         mov                ecx, 0x0000001f                                 // 0x00839078    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x28]                     // 0x0083907d    8d7c2428
                         rep stosd                                                          // 0x00839081    f3ab
                         push               0x00000821                                      // 0x00839083    6821080000
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                     // 0x00839088    8d4c242c
                         push               ecx                                             // 0x0083908c    51
                         push               eax                                             // 0x0083908d    50
                         push               edx                                             // 0x0083908e    52
                         {disp8} mov        dword ptr [esp + 0x38], 0x0000007c              // 0x0083908f    c74424387c000000
                         call               _jmp_addr_0x00871170                            // 0x00839097    e8d4800300
                         {disp8} mov        eax, dword ptr [esp + 0x48]                     // 0x0083909c    8b442448
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                     // 0x008390a0    8b4c245c
                         cdq                                                                // 0x008390a4    99
                         sub.s              eax, edx                                        // 0x008390a5    2bc2
                         mov.s              esi, eax                                        // 0x008390a7    8bf0
                         add                esp, 0x1c                                       // 0x008390a9    83c41c
                         sar                esi, 1                                          // 0x008390ac    d1fe
                         test               ecx, ecx                                        // 0x008390ae    85c9
                         mov.s              edi, ecx                                        // 0x008390b0    8bf9
                         {disp8} je         _jmp_addr_0x00839129                            // 0x008390b2    7475
                         mov.s              ecx, ebx                                        // 0x008390b4    8bcb
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000              // 0x008390b6    c744241000000000
                         call               _jmp_addr_0x00838530                            // 0x008390be    e86df4ffff
                         test               eax, eax                                        // 0x008390c3    85c0
                         {disp8} jle        _jmp_addr_0x00839129                            // 0x008390c5    7e62
                         lea                eax, dword ptr [esi + esi * 0x1]                // 0x008390c7    8d0436
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x008390ca    89442418
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x008390ce    897c2414
_jmp_addr_0x008390d2:    mov.s              ecx, ebx                                        // 0x008390d2    8bcb
                         xor.s              esi, esi                                        // 0x008390d4    33f6
                         call               _jmp_addr_0x00838500                            // 0x008390d6    e825f4ffff
                         test               eax, eax                                        // 0x008390db    85c0
                         {disp8} jle        _jmp_addr_0x00839109                            // 0x008390dd    7e2a
_jmp_addr_0x008390df:    mov.s              ecx, ebx                                        // 0x008390df    8bcb
                         call               _jmp_addr_0x00838500                            // 0x008390e1    e81af4ffff
                         imul               eax, dword ptr [esp + 0x10]                     // 0x008390e6    0faf442410
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                     // 0x008390eb    8b4d00
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                     // 0x008390ee    8b5108
                         add.s              eax, esi                                        // 0x008390f1    03c6
                         mov                ax, word ptr [edx + eax * 0x2]                  // 0x008390f3    668b0442
                         mov                word ptr [edi], ax                              // 0x008390f7    668907
                         mov.s              ecx, ebx                                        // 0x008390fa    8bcb
                         inc                esi                                             // 0x008390fc    46
                         add                edi, 0x02                                       // 0x008390fd    83c702
                         call               _jmp_addr_0x00838500                            // 0x00839100    e8fbf3ffff
                         cmp.s              esi, eax                                        // 0x00839105    3bf0
                         {disp8} jl         _jmp_addr_0x008390df                            // 0x00839107    7cd6
_jmp_addr_0x00839109:    {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x00839109    8b742410
                         {disp8} mov        edi, dword ptr [esp + 0x14]                     // 0x0083910d    8b7c2414
                         add                edi, dword ptr [esp + 0x18]                     // 0x00839111    037c2418
                         inc                esi                                             // 0x00839115    46
                         mov.s              ecx, ebx                                        // 0x00839116    8bcb
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x00839118    89742410
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083911c    897c2414
                         call               _jmp_addr_0x00838530                            // 0x00839120    e80bf4ffff
                         cmp.s              esi, eax                                        // 0x00839125    3bf0
                         {disp8} jl         _jmp_addr_0x008390d2                            // 0x00839127    7ca9
_jmp_addr_0x00839129:    {disp32} mov       eax, dword ptr [data_bytes + 0x517474]          // 0x00839129    a174d4ed00
                         mov                ecx, dword ptr [eax]                            // 0x0083912e    8b08
                         push               0x0                                             // 0x00839130    6a00
                         push               eax                                             // 0x00839132    50
                         call               dword ptr [ecx + 0x80]                          // 0x00839133    ff9180000000
                         {disp32} mov       edx, dword ptr [ebp + 0x00000120]               // 0x00839139    8b9520010000
                         {disp8} mov        eax, dword ptr [edx + 0x04]                     // 0x0083913f    8b4204
                         {disp32} mov       edx, dword ptr [data_bytes + 0x517474]          // 0x00839142    8b1574d4ed00
                         mov                ecx, dword ptr [eax]                            // 0x00839148    8b08
                         push               0x0                                             // 0x0083914a    6a00
                         push               0x01000000                                      // 0x0083914c    6800000001
                         push               0x0                                             // 0x00839151    6a00
                         push               edx                                             // 0x00839153    52
                         push               0x0                                             // 0x00839154    6a00
                         push               eax                                             // 0x00839156    50
                         call               dword ptr [ecx + 0x14]                          // 0x00839157    ff5114
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                     // 0x0083915a    8b4500
                         mov                dword ptr [eax], 0x00000000                     // 0x0083915d    c70000000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                     // 0x00839163    8b4d00
                         call               _jmp_addr_0x00870610                            // 0x00839166    e8a5740300
                         {disp8} mov        ecx, dword ptr [ebp + 0x10]                     // 0x0083916b    8b4d10
                         and                ecx, 0xffffffe0                                 // 0x0083916e    83e1e0
                         or                 ecx, 0x20                                       // 0x00839171    83c920
                         pop                edi                                             // 0x00839174    5f
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000000              // 0x00839175    c7450000000000
                         {disp8} mov        dword ptr [ebp + 0x10], ecx                     // 0x0083917c    894d10
                         pop                esi                                             // 0x0083917f    5e
_jmp_addr_0x00839180:    pop                ebp                                             // 0x00839180    5d
                         pop                ebx                                             // 0x00839181    5b
                         add                esp, 0x00000088                                 // 0x00839182    81c488000000
                         ret                                                                // 0x00839188    c3
                         nop                                                                // 0x00839189    90
                         nop                                                                // 0x0083918a    90
                         nop                                                                // 0x0083918b    90
                         nop                                                                // 0x0083918c    90
                         nop                                                                // 0x0083918d    90
                         nop                                                                // 0x0083918e    90
                         nop                                                                // 0x0083918f    90
_jmp_addr_0x00839190:    sub                esp, 0x34                                       // 0x00839190    83ec34
                         push               ebx                                             // 0x00839193    53
                         push               ebp                                             // 0x00839194    55
                         push               esi                                             // 0x00839195    56
                         push               edi                                             // 0x00839196    57
                         {disp8} mov        edi, dword ptr [esp + 0x48]                     // 0x00839197    8b7c2448
                         test               edi, edi                                        // 0x0083919b    85ff
                         {disp8} mov        dword ptr [esp + 0x10], ecx                     // 0x0083919d    894c2410
                         {disp32} je        _jmp_addr_0x00839656                            // 0x008391a1    0f84af040000
                         {disp8} fld        dword ptr [esp + 0x58]                          // 0x008391a7    d9442458
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                     // 0x008391ab    d81d90a38a00
                         fnstsw             ax                                              // 0x008391b1    dfe0
                         test               ah, 0x41                                        // 0x008391b3    f6c441
                         {disp8} jne        _jmp_addr_0x008391c2                            // 0x008391b6    750a
                         {disp8} mov        dword ptr [esp + 0x58], 0x3f800000              // 0x008391b8    c74424580000803f
                         {disp8} jmp        _jmp_addr_0x008391d7                            // 0x008391c0    eb15
_jmp_addr_0x008391c2:    {disp8} fld        dword ptr [esp + 0x58]                          // 0x008391c2    d9442458
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x008391c6    d81d98a38a00
                         fnstsw             ax                                              // 0x008391cc    dfe0
                         test               ah, 0x01                                        // 0x008391ce    f6c401
                         {disp32} jne       _jmp_addr_0x00839656                            // 0x008391d1    0f857f040000
_jmp_addr_0x008391d7:    {disp8} fld        dword ptr [esp + 0x58]                          // 0x008391d7    d9442458
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87678]               // 0x008391db    d80d78069300
                         call               _jmp_addr_0x007a1400                            // 0x008391e1    e81a82f6ff
                         cmp                eax, 0x18                                       // 0x008391e6    83f818
                         {disp8} jl         _jmp_addr_0x008391f7                            // 0x008391e9    7c0c
                         xor.s              ecx, ecx                                        // 0x008391eb    33c9
                         cmp                eax, 0x30                                       // 0x008391ed    83f830
                         setl               cl                                              // 0x008391f0    0f9cc1
                         mov.s              eax, ecx                                        // 0x008391f3    8bc1
                         {disp8} jmp        _jmp_addr_0x00839210                            // 0x008391f5    eb19
_jmp_addr_0x008391f7:    cmp                eax, 0x06                                       // 0x008391f7    83f806
                         {disp8} jl         _jmp_addr_0x0083920b                            // 0x008391fa    7c0f
                         xor.s              edx, edx                                        // 0x008391fc    33d2
                         cmp                eax, 0x0c                                       // 0x008391fe    83f80c
                         setl               dl                                              // 0x00839201    0f9cc2
                         add                edx, 0x02                                       // 0x00839204    83c202
                         mov.s              eax, edx                                        // 0x00839207    8bc2
                         {disp8} jmp        _jmp_addr_0x00839210                            // 0x00839209    eb05
_jmp_addr_0x0083920b:    mov                eax, 0x00000004                                 // 0x0083920b    b804000000
_jmp_addr_0x00839210:    test               eax, eax                                        // 0x00839210    85c0
                         mov                ebp, 0x00000040                                 // 0x00839212    bd40000000
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                     // 0x00839217    896c241c
                         mov.s              ebx, ebp                                        // 0x0083921b    8bdd
                         {disp8} je         _jmp_addr_0x0083923b                            // 0x0083921d    741c
_jmp_addr_0x0083921f:    {disp8} fld        dword ptr [esp + 0x58]                          // 0x0083921f    d9442458
                         mov.s              ecx, ebp                                        // 0x00839223    8bcd
                         imul               ecx, ebp                                        // 0x00839225    0fafcd
                         fadd.s             st(0), st(0)                                    // 0x00839228    dcc0
                         {disp8} fstp       dword ptr [esp + 0x58]                          // 0x0083922a    d95c2458
                         add.s              edi, ecx                                        // 0x0083922e    03f9
                         shr                ebp, 1                                          // 0x00839230    d1ed
                         shr                ebx, 1                                          // 0x00839232    d1eb
                         dec                eax                                             // 0x00839234    48
                         {disp8} jne        _jmp_addr_0x0083921f                            // 0x00839235    75e8
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                     // 0x00839237    896c241c
_jmp_addr_0x0083923b:    {disp32} mov       eax, dword ptr [data_bytes + 0x517470]          // 0x0083923b    a170d4ed00
                         test               eax, eax                                        // 0x00839240    85c0
                         {disp8} je         _jmp_addr_0x0083926e                            // 0x00839242    742a
                         {disp8} fld        dword ptr [esp + 0x50]                          // 0x00839244    d9442450
                         {disp32} fmul      dword ptr [_rdata_float0p5]                     // 0x00839248    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x50]                          // 0x0083924e    d95c2450
                         {disp8} fld        dword ptr [esp + 0x54]                          // 0x00839252    d9442454
                         {disp32} fmul      dword ptr [_rdata_float0p5]                     // 0x00839256    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x54]                          // 0x0083925c    d95c2454
                         {disp8} fld        dword ptr [esp + 0x58]                          // 0x00839260    d9442458
                         {disp32} fmul      dword ptr [_rdata_float0p5]                     // 0x00839264    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x58]                          // 0x0083926a    d95c2458
_jmp_addr_0x0083926e:    mov.s              esi, ebx                                        // 0x0083926e    8bf3
                         imul               esi, ebx                                        // 0x00839270    0faff3
                         push               esi                                             // 0x00839273    56
                         call               _malloc                                         // 0x00839274    e8d3d3f8ff
                         mov.s              edx, eax                                        // 0x00839279    8bd0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517490]          // 0x0083927b    a190d4ed00
                         xor.s              ecx, ecx                                        // 0x00839280    33c9
                         add                esp, 0x04                                       // 0x00839282    83c404
                         cmp.s              eax, ecx                                        // 0x00839285    3bc1
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x00839287    89542418
                         {disp32} je        _jmp_addr_0x0083937c                            // 0x0083928b    0f84eb000000
                         dec                eax                                             // 0x00839291    48
                         {disp32} je        _jmp_addr_0x00839331                            // 0x00839292    0f8499000000
                         dec                eax                                             // 0x00839298    48
                         {disp8} je         _jmp_addr_0x008392ee                            // 0x00839299    7453
                         dec                eax                                             // 0x0083929b    48
                         {disp32} jne       _jmp_addr_0x00839390                            // 0x0083929c    0f85ee000000
                         test               ebx, ebx                                        // 0x008392a2    85db
                         {disp8} mov        dword ptr [esp + 0x48], ecx                     // 0x008392a4    894c2448
                         {disp32} jle       _jmp_addr_0x00839390                            // 0x008392a8    0f8ee2000000
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x008392ae    897c2414
_jmp_addr_0x008392b2:    {disp8} lea        eax, dword ptr [ebp + -0x01]                    // 0x008392b2    8d45ff
                         imul               eax, ebp                                        // 0x008392b5    0fafc5
                         mov.s              edi, ebp                                        // 0x008392b8    8bfd
                         add.s              eax, ecx                                        // 0x008392ba    03c1
                         xor.s              esi, esi                                        // 0x008392bc    33f6
                         neg                edi                                             // 0x008392be    f7df
                         add.s              eax, edx                                        // 0x008392c0    03c2
_jmp_addr_0x008392c2:    {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x008392c2    8b4c2414
                         mov                cl, byte ptr [ecx + esi * 0x1]                  // 0x008392c6    8a0c31
                         mov                byte ptr [eax], cl                              // 0x008392c9    8808
                         inc                esi                                             // 0x008392cb    46
                         add.s              eax, edi                                        // 0x008392cc    03c7
                         cmp.s              esi, ebx                                        // 0x008392ce    3bf3
                         {disp8} jl         _jmp_addr_0x008392c2                            // 0x008392d0    7cf0
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                     // 0x008392d2    8b4c2448
                         {disp8} mov        esi, dword ptr [esp + 0x14]                     // 0x008392d6    8b742414
                         inc                ecx                                             // 0x008392da    41
                         add.s              esi, ebp                                        // 0x008392db    03f5
                         cmp.s              ecx, ebx                                        // 0x008392dd    3bcb
                         {disp8} mov        dword ptr [esp + 0x48], ecx                     // 0x008392df    894c2448
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x008392e3    89742414
                         {disp8} jl         _jmp_addr_0x008392b2                            // 0x008392e7    7cc9
                         {disp32} jmp       _jmp_addr_0x00839390                            // 0x008392e9    e9a2000000
_jmp_addr_0x008392ee:    cmp.s              ebx, ecx                                        // 0x008392ee    3bd9
                         {disp32} jle       _jmp_addr_0x00839390                            // 0x008392f0    0f8e9a000000
                         mov.s              ecx, ebp                                        // 0x008392f6    8bcd
                         mov.s              eax, ebp                                        // 0x008392f8    8bc5
                         neg                ecx                                             // 0x008392fa    f7d9
                         imul               eax, ebp                                        // 0x008392fc    0fafc5
                         {disp8} lea        esi, dword ptr [eax + edx * 0x1 + -0x01]        // 0x008392ff    8d7410ff
                         {disp8} mov        dword ptr [esp + 0x48], esi                     // 0x00839303    89742448
                         {disp8} mov        dword ptr [esp + 0x14], ebx                     // 0x00839307    895c2414
_jmp_addr_0x0083930b:    xor.s              eax, eax                                        // 0x0083930b    33c0
_jmp_addr_0x0083930d:    mov                dl, byte ptr [edi + eax * 0x1]                  // 0x0083930d    8a1407
                         inc                eax                                             // 0x00839310    40
                         mov                byte ptr [esi], dl                              // 0x00839311    8816
                         dec                esi                                             // 0x00839313    4e
                         cmp.s              eax, ebx                                        // 0x00839314    3bc3
                         {disp8} jl         _jmp_addr_0x0083930d                            // 0x00839316    7cf5
                         {disp8} mov        esi, dword ptr [esp + 0x48]                     // 0x00839318    8b742448
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083931c    8b442414
                         add.s              esi, ecx                                        // 0x00839320    03f1
                         add.s              edi, ebp                                        // 0x00839322    03fd
                         dec                eax                                             // 0x00839324    48
                         {disp8} mov        dword ptr [esp + 0x48], esi                     // 0x00839325    89742448
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x00839329    89442414
                         {disp8} jne        _jmp_addr_0x0083930b                            // 0x0083932d    75dc
                         {disp8} jmp        _jmp_addr_0x00839390                            // 0x0083932f    eb5f
_jmp_addr_0x00839331:    cmp.s              ebx, ecx                                        // 0x00839331    3bd9
                         {disp8} mov        dword ptr [esp + 0x48], ecx                     // 0x00839333    894c2448
                         {disp8} jle        _jmp_addr_0x00839390                            // 0x00839337    7e57
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x00839339    897c2414
_jmp_addr_0x0083933d:    xor.s              eax, eax                                        // 0x0083933d    33c0
                         mov.s              esi, ebp                                        // 0x0083933f    8bf5
_jmp_addr_0x00839341:    {disp8} mov        edi, dword ptr [esp + 0x48]                     // 0x00839341    8b7c2448
                         mov.s              ecx, esi                                        // 0x00839345    8bce
                         sub.s              ecx, edi                                        // 0x00839347    2bcf
                         {disp8} mov        edi, dword ptr [esp + 0x14]                     // 0x00839349    8b7c2414
                         {disp8} mov        dword ptr [esp + 0x24], ecx                     // 0x0083934d    894c2424
                         mov                cl, byte ptr [edi + eax * 0x1]                  // 0x00839351    8a0c07
                         {disp8} mov        edi, dword ptr [esp + 0x24]                     // 0x00839354    8b7c2424
                         inc                eax                                             // 0x00839358    40
                         add.s              esi, ebp                                        // 0x00839359    03f5
                         cmp.s              eax, ebx                                        // 0x0083935b    3bc3
                         {disp8} mov        byte ptr [edi + edx * 0x1 + -0x01], cl          // 0x0083935d    884c17ff
                         {disp8} jl         _jmp_addr_0x00839341                            // 0x00839361    7cde
                         {disp8} mov        eax, dword ptr [esp + 0x48]                     // 0x00839363    8b442448
                         {disp8} mov        esi, dword ptr [esp + 0x14]                     // 0x00839367    8b742414
                         inc                eax                                             // 0x0083936b    40
                         add.s              esi, ebp                                        // 0x0083936c    03f5
                         cmp.s              eax, ebx                                        // 0x0083936e    3bc3
                         {disp8} mov        dword ptr [esp + 0x48], eax                     // 0x00839370    89442448
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x00839374    89742414
                         {disp8} jl         _jmp_addr_0x0083933d                            // 0x00839378    7cc3
                         {disp8} jmp        _jmp_addr_0x00839390                            // 0x0083937a    eb14
_jmp_addr_0x0083937c:    mov.s              ecx, esi                                        // 0x0083937c    8bce
                         mov.s              esi, edi                                        // 0x0083937e    8bf7
                         mov.s              edi, edx                                        // 0x00839380    8bfa
                         mov.s              edx, ecx                                        // 0x00839382    8bd1
                         shr                ecx, 2                                          // 0x00839384    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x00839387    f3a5
                         mov.s              ecx, edx                                        // 0x00839389    8bca
                         and                ecx, 0x03                                       // 0x0083938b    83e103
                         rep movsb                                                          // 0x0083938e    f3a4
_jmp_addr_0x00839390:    {disp32} mov       eax, dword ptr [data_bytes + 0x51748c]          // 0x00839390    a18cd4ed00
                         test               eax, eax                                        // 0x00839395    85c0
                         {disp8} je         _jmp_addr_0x008393e4                            // 0x00839397    744b
                         test               ebx, ebx                                        // 0x00839399    85db
                         {disp8} jle        _jmp_addr_0x008393e4                            // 0x0083939b    7e47
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083939d    8b4c2418
                         mov.s              eax, ebx                                        // 0x008393a1    8bc3
                         cdq                                                                // 0x008393a3    99
                         sub.s              eax, edx                                        // 0x008393a4    2bc2
                         sar                eax, 1                                          // 0x008393a6    d1f8
                         {disp8} mov        dword ptr [esp + 0x24], eax                     // 0x008393a8    89442424
                         {disp8} mov        dword ptr [esp + 0x48], ecx                     // 0x008393ac    894c2448
                         {disp8} mov        dword ptr [esp + 0x14], ebx                     // 0x008393b0    895c2414
_jmp_addr_0x008393b4:    test               eax, eax                                        // 0x008393b4    85c0
                         {disp8} jle        _jmp_addr_0x008393d3                            // 0x008393b6    7e1b
                         {disp8} lea        esi, dword ptr [ecx + ebp * 0x1 + -0x01]        // 0x008393b8    8d7429ff
                         mov.s              edi, eax                                        // 0x008393bc    8bf8
_jmp_addr_0x008393be:    mov                dl, byte ptr [esi]                              // 0x008393be    8a16
                         mov                al, byte ptr [ecx]                              // 0x008393c0    8a01
                         mov                byte ptr [ecx], dl                              // 0x008393c2    8811
                         inc                ecx                                             // 0x008393c4    41
                         mov                byte ptr [esi], al                              // 0x008393c5    8806
                         dec                esi                                             // 0x008393c7    4e
                         dec                edi                                             // 0x008393c8    4f
                         {disp8} jne        _jmp_addr_0x008393be                            // 0x008393c9    75f3
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                     // 0x008393cb    8b4c2448
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x008393cf    8b442424
_jmp_addr_0x008393d3:    {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x008393d3    8b542414
                         add.s              ecx, ebp                                        // 0x008393d7    03cd
                         dec                edx                                             // 0x008393d9    4a
                         {disp8} mov        dword ptr [esp + 0x48], ecx                     // 0x008393da    894c2448
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x008393de    89542414
                         {disp8} jne        _jmp_addr_0x008393b4                            // 0x008393e2    75d0
_jmp_addr_0x008393e4:    {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x008393e4    8b742410
                         {disp8} lea        eax, dword ptr [esp + 0x34]                     // 0x008393e8    8d442434
                         push               eax                                             // 0x008393ec    50
                         mov.s              ecx, esi                                        // 0x008393ed    8bce
                         call               _jmp_addr_0x00838af0                            // 0x008393ef    e8fcf6ffff
                         {disp8} mov        eax, dword ptr [esp + 0x34]                     // 0x008393f4    8b442434
                         test               eax, eax                                        // 0x008393f8    85c0
                         {disp32} je        _jmp_addr_0x00839624                            // 0x008393fa    0f8424020000
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                     // 0x00839400    8d4e14
                         call               _jmp_addr_0x00838500                            // 0x00839403    e8f8f0ffff
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                     // 0x00839408    895c242c
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000              // 0x0083940c    c744243000000000
                         {disp8} fild       qword ptr [esp + 0x2c]                          // 0x00839414    df6c242c
                         fld                st(0)                                           // 0x00839418    d9c0
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x0083941a    d84c2458
                         call               _jmp_addr_0x007a1400                            // 0x0083941e    e8dd7ff6ff
                         mov.s              edi, eax                                        // 0x00839423    8bf8
                         {disp8} mov        esi, dword ptr [esp + 0x38]                     // 0x00839425    8b742438
                         {disp8} mov        dword ptr [esp + 0x20], edi                     // 0x00839429    897c2420
                         {disp8} fild       dword ptr [esp + 0x20]                          // 0x0083942d    db442420
                         mov.s              eax, esi                                        // 0x00839431    8bc6
                         cdq                                                                // 0x00839433    99
                         sub.s              eax, edx                                        // 0x00839434    2bc2
                         fdivr              st, st(1)                                       // 0x00839436    d8f9
                         sar                eax, 1                                          // 0x00839438    d1f8
                         {disp8} mov        dword ptr [esp + 0x2c], eax                     // 0x0083943a    8944242c
                         mov.s              eax, edi                                        // 0x0083943e    8bc7
                         cdq                                                                // 0x00839440    99
                         sub.s              eax, edx                                        // 0x00839441    2bc2
                         sar                eax, 1                                          // 0x00839443    d1f8
                         {disp8} mov        dword ptr [esp + 0x58], eax                     // 0x00839445    89442458
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000              // 0x00839449    c744244800000000
                         {disp8} fstp       dword ptr [esp + 0x24]                          // 0x00839451    d95c2424
                         fstp               st(0)                                           // 0x00839455    ddd8
                         {disp8} fild       dword ptr [esp + 0x58]                          // 0x00839457    db442458
                         {disp8} fstp       dword ptr [esp + 0x58]                          // 0x0083945b    d95c2458
                         {disp8} fld        dword ptr [esp + 0x50]                          // 0x0083945f    d9442450
                         {disp8} fsub       dword ptr [esp + 0x58]                          // 0x00839463    d8642458
                         {disp8} fst        dword ptr [esp + 0x14]                          // 0x00839467    d9542414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083946b    d81d98a38a00
                         fnstsw             ax                                              // 0x00839471    dfe0
                         test               ah, 0x01                                        // 0x00839473    f6c401
                         {disp32} jne       _jmp_addr_0x00839660                            // 0x00839476    0f85e4010000
                         {disp8} fld        dword ptr [esp + 0x58]                          // 0x0083947c    d9442458
                         {disp8} fadd       dword ptr [esp + 0x50]                          // 0x00839480    d8442450
                         {disp8} fild       dword ptr [esp + 0x3c]                          // 0x00839484    db44243c
                         fcompp                                                             // 0x00839488    ded9
                         fnstsw             ax                                              // 0x0083948a    dfe0
                         test               ah, 0x41                                        // 0x0083948c    f6c441
                         {disp32} jne       _jmp_addr_0x00839660                            // 0x0083948f    0f85cb010000
                         {disp8} fld        dword ptr [esp + 0x54]                          // 0x00839495    d9442454
                         {disp8} fsub       dword ptr [esp + 0x58]                          // 0x00839499    d8642458
                         {disp8} fst        dword ptr [esp + 0x50]                          // 0x0083949d    d9542450
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x008394a1    d81d98a38a00
                         fnstsw             ax                                              // 0x008394a7    dfe0
                         test               ah, 0x01                                        // 0x008394a9    f6c401
                         {disp32} jne       _jmp_addr_0x00839660                            // 0x008394ac    0f85ae010000
                         {disp8} fld        dword ptr [esp + 0x58]                          // 0x008394b2    d9442458
                         {disp8} fadd       dword ptr [esp + 0x54]                          // 0x008394b6    d8442454
                         {disp8} fild       dword ptr [esp + 0x40]                          // 0x008394ba    db442440
                         fcompp                                                             // 0x008394be    ded9
                         fnstsw             ax                                              // 0x008394c0    dfe0
                         test               ah, 0x41                                        // 0x008394c2    f6c441
                         {disp32} jne       _jmp_addr_0x00839660                            // 0x008394c5    0f8595010000
                         {disp8} fld        dword ptr [esp + 0x50]                          // 0x008394cb    d9442450
                         call               _jmp_addr_0x007a1400                            // 0x008394cf    e82c7ff6ff
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x008394d4    d9442414
                         imul               eax, esi                                        // 0x008394d8    0fafc6
                         cdq                                                                // 0x008394db    99
                         sub.s              eax, edx                                        // 0x008394dc    2bc2
                         mov.s              esi, eax                                        // 0x008394de    8bf0
                         sar                esi, 1                                          // 0x008394e0    d1fe
                         call               _jmp_addr_0x007a1400                            // 0x008394e2    e8197ff6ff
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                     // 0x008394e7    8b4c2434
                         add.s              esi, eax                                        // 0x008394eb    03f0
                         xor.s              eax, eax                                        // 0x008394ed    33c0
                         lea                ebx, dword ptr [ecx + esi * 0x2]                // 0x008394ef    8d1c71
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                     // 0x008394f2    8b4c244c
                         {disp8} mov        al, byte ptr [ecx + 0x02]                       // 0x008394f6    8a4102
                         and                eax, 0xfffffff0                                 // 0x008394f9    83e0f0
                         shl                eax, 4                                          // 0x008394fc    c1e004
                         {disp8} mov        dword ptr [esp + 0x28], eax                     // 0x008394ff    89442428
                         xor.s              eax, eax                                        // 0x00839503    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x01]                       // 0x00839505    8a4101
                         and                eax, 0xfffffff0                                 // 0x00839508    83e0f0
                         {disp8} mov        dword ptr [esp + 0x4c], eax                     // 0x0083950b    8944244c
                         xor.s              eax, eax                                        // 0x0083950f    33c0
                         mov                al, byte ptr [ecx]                              // 0x00839511    8a01
                         shr                eax, 4                                          // 0x00839513    c1e804
                         test               edi, edi                                        // 0x00839516    85ff
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x00839518    89442414
                         {disp32} jle       _jmp_addr_0x00839620                            // 0x0083951c    0f8efe000000
                         {disp8} mov        dword ptr [esp + 0x50], edi                     // 0x00839522    897c2450
                         {disp8} jmp        _jmp_addr_0x0083952c                            // 0x00839526    eb04
_jmp_addr_0x00839528:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                     // 0x00839528    8b6c241c
_jmp_addr_0x0083952c:    {disp32} fld       dword ptr [_rdata_float0p0]                     // 0x0083952c    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x48]                          // 0x00839532    d9442448
                         call               _jmp_addr_0x007a1400                            // 0x00839536    e8c57ef6ff
                         mov.s              esi, eax                                        // 0x0083953b    8bf0
                         imul               esi, ebp                                        // 0x0083953d    0faff5
                         {disp8} mov        dword ptr [esp + 0x54], esi                     // 0x00839540    89742454
                         {disp8} mov        dword ptr [esp + 0x58], edi                     // 0x00839544    897c2458
                         {disp8} jmp        _jmp_addr_0x0083954e                            // 0x00839548    eb04
_jmp_addr_0x0083954a:    {disp8} mov        esi, dword ptr [esp + 0x54]                     // 0x0083954a    8b742454
_jmp_addr_0x0083954e:    fld                st(0)                                           // 0x0083954e    d9c0
                         call               _jmp_addr_0x007a1400                            // 0x00839550    e8ab7ef6ff
                         {disp8} fadd       dword ptr [esp + 0x24]                          // 0x00839555    d8442424
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x00839559    8b4c2418
                         xor.s              edx, edx                                        // 0x0083955d    33d2
                         add.s              eax, esi                                        // 0x0083955f    03c6
                         mov                dl, byte ptr [eax + ecx * 0x1]                  // 0x00839561    8a1408
                         xor.s              ecx, ecx                                        // 0x00839564    33c9
                         mov                cx, word ptr [ebx]                              // 0x00839566    668b0b
                         mov                edi, 0x0000000f                                 // 0x00839569    bf0f000000
                         add                ebx, 0x02                                       // 0x0083956e    83c302
                         mov.s              esi, edx                                        // 0x00839571    8bf2
                         sub.s              edi, esi                                        // 0x00839573    2bfe
                         mov.s              edx, ecx                                        // 0x00839575    8bd1
                         and                edx, 0x000000f0                                 // 0x00839577    81e2f0000000
                         imul               edx, edi                                        // 0x0083957d    0fafd7
                         mov.s              eax, esi                                        // 0x00839580    8bc6
                         imul               eax, dword ptr [esp + 0x4c]                     // 0x00839582    0faf44244c
                         add.s              edx, eax                                        // 0x00839587    03d0
                         mov                eax, 0x88888889                                 // 0x00839589    b889888888
                         mul                edx                                             // 0x0083958e    f7e2
                         shr                edx, 3                                          // 0x00839590    c1ea03
                         mov.s              ebp, edx                                        // 0x00839593    8bea
                         mov.s              edx, ecx                                        // 0x00839595    8bd1
                         and                edx, 0x0f                                       // 0x00839597    83e20f
                         imul               edx, edi                                        // 0x0083959a    0fafd7
                         mov.s              eax, esi                                        // 0x0083959d    8bc6
                         imul               esi, dword ptr [esp + 0x28]                     // 0x0083959f    0faf742428
                         imul               eax, dword ptr [esp + 0x14]                     // 0x008395a4    0faf442414
                         add.s              edx, eax                                        // 0x008395a9    03d0
                         mov                eax, 0x88888889                                 // 0x008395ab    b889888888
                         mul                edx                                             // 0x008395b0    f7e2
                         and                ecx, 0x00000f00                                 // 0x008395b2    81e1000f0000
                         imul               ecx, edi                                        // 0x008395b8    0fafcf
                         shr                edx, 3                                          // 0x008395bb    c1ea03
                         and                edx, 0x0f                                       // 0x008395be    83e20f
                         and                ebp, 0x000000f0                                 // 0x008395c1    81e5f0000000
                         or.s               ebp, edx                                        // 0x008395c7    0bea
                         add.s              ecx, esi                                        // 0x008395c9    03ce
                         mov                eax, 0x88888889                                 // 0x008395cb    b889888888
                         mul                ecx                                             // 0x008395d0    f7e1
                         {disp8} mov        eax, dword ptr [esp + 0x58]                     // 0x008395d2    8b442458
                         shr                edx, 3                                          // 0x008395d6    c1ea03
                         and                edx, 0x0000ff00                                 // 0x008395d9    81e200ff0000
                         or.s               ebp, edx                                        // 0x008395df    0bea
                         or                 ebp, 0xf000                                     // 0x008395e1    81cd00f00000
                         {disp8} mov        word ptr [ebx + -0x02], bp                      // 0x008395e7    66896bfe
                         dec                eax                                             // 0x008395eb    48
                         {disp8} mov        dword ptr [esp + 0x58], eax                     // 0x008395ec    89442458
                         {disp32} jne       _jmp_addr_0x0083954a                            // 0x008395f0    0f8554ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                     // 0x008395f6    8b4c242c
                         fstp               st(0)                                           // 0x008395fa    ddd8
                         {disp8} fld        dword ptr [esp + 0x24]                          // 0x008395fc    d9442424
                         {disp8} mov        edi, dword ptr [esp + 0x20]                     // 0x00839600    8b7c2420
                         {disp8} mov        eax, dword ptr [esp + 0x50]                     // 0x00839604    8b442450
                         {disp8} fadd       dword ptr [esp + 0x48]                          // 0x00839608    d8442448
                         sub.s              ecx, edi                                        // 0x0083960c    2bcf
                         dec                eax                                             // 0x0083960e    48
                         {disp8} fstp       dword ptr [esp + 0x48]                          // 0x0083960f    d95c2448
                         lea                ebx, dword ptr [ebx + ecx * 0x2]                // 0x00839613    8d1c4b
                         {disp8} mov        dword ptr [esp + 0x50], eax                     // 0x00839616    89442450
                         {disp32} jne       _jmp_addr_0x00839528                            // 0x0083961a    0f8508ffffff
_jmp_addr_0x00839620:    {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x00839620    8b742410
_jmp_addr_0x00839624:    mov.s              ecx, esi                                        // 0x00839624    8bce
                         call               _jmp_addr_0x00838eb0                            // 0x00839626    e885f8ffff
                         {disp8} mov        eax, dword ptr [esi + 0x10]                     // 0x0083962b    8b4610
                         and                eax, 0x3f                                       // 0x0083962e    83e03f
                         cmp                eax, 0x08                                       // 0x00839631    83f808
                         {disp8} je         _jmp_addr_0x0083963b                            // 0x00839634    7405
                         cmp                eax, 0x04                                       // 0x00839636    83f804
                         {disp8} jne        _jmp_addr_0x00839645                            // 0x00839639    750a
_jmp_addr_0x0083963b:    {disp32} mov       dword ptr [esi + 0x00000138], 0x00000001        // 0x0083963b    c7863801000001000000
_jmp_addr_0x00839645:    {disp8} mov        eax, dword ptr [esp + 0x18]                     // 0x00839645    8b442418
                         test               eax, eax                                        // 0x00839649    85c0
                         {disp8} je         _jmp_addr_0x00839656                            // 0x0083964b    7409
                         push               eax                                             // 0x0083964d    50
                         call               _free                                           // 0x0083964e    e833d1f8ff
                         add                esp, 0x04                                       // 0x00839653    83c404
_jmp_addr_0x00839656:    pop                edi                                             // 0x00839656    5f
                         pop                esi                                             // 0x00839657    5e
                         pop                ebp                                             // 0x00839658    5d
                         pop                ebx                                             // 0x00839659    5b
                         add                esp, 0x34                                       // 0x0083965a    83c434
                         ret                0x0014                                          // 0x0083965d    c21400
_jmp_addr_0x00839660:    {disp8} mov        ecx, dword ptr [esp + 0x10]                     // 0x00839660    8b4c2410
                         call               _jmp_addr_0x00838eb0                            // 0x00839664    e847f8ffff
                         pop                edi                                             // 0x00839669    5f
                         pop                esi                                             // 0x0083966a    5e
                         pop                ebp                                             // 0x0083966b    5d
                         pop                ebx                                             // 0x0083966c    5b
                         add                esp, 0x34                                       // 0x0083966d    83c434
                         ret                0x0014                                          // 0x00839670    c21400
                         nop                                                                // 0x00839673    90
                         nop                                                                // 0x00839674    90
                         nop                                                                // 0x00839675    90
                         nop                                                                // 0x00839676    90
                         nop                                                                // 0x00839677    90
                         nop                                                                // 0x00839678    90
                         nop                                                                // 0x00839679    90
                         nop                                                                // 0x0083967a    90
                         nop                                                                // 0x0083967b    90
                         nop                                                                // 0x0083967c    90
                         nop                                                                // 0x0083967d    90
                         nop                                                                // 0x0083967e    90
                         nop                                                                // 0x0083967f    90
_jmp_addr_0x00839680:    {disp8} mov        eax, dword ptr [esp + 0x04]                     // 0x00839680    8b442404
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                     // 0x00839684    8b500c
                         {disp8} mov        dword ptr [ecx + 0x08], edx                     // 0x00839687    895108
                         {disp8} mov        edx, dword ptr [eax + 0x08]                     // 0x0083968a    8b5008
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                     // 0x0083968d    89510c
                         {disp8} mov        edx, dword ptr [eax + 0x10]                     // 0x00839690    8b5010
                         {disp8} mov        dword ptr [ecx + 0x04], edx                     // 0x00839693    895104
                         {disp8} mov        eax, dword ptr [eax + 0x24]                     // 0x00839696    8b4024
                         mov                dword ptr [ecx], eax                            // 0x00839699    8901
                         ret                0x0004                                          // 0x0083969b    c20400
                         nop                                                                // 0x0083969e    90
                         nop                                                                // 0x0083969f    90
_jmp_addr_0x008396a0:    sub                esp, 0x7c                                       // 0x008396a0    83ec7c
                         push               ebx                                             // 0x008396a3    53
                         push               esi                                             // 0x008396a4    56
                         push               edi                                             // 0x008396a5    57
                         call               _jmp_addr_0x008397f0                            // 0x008396a6    e845010000
                         xor.s              eax, eax                                        // 0x008396ab    33c0
                         mov                ecx, 0x0000001f                                 // 0x008396ad    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x0c]                     // 0x008396b2    8d7c240c
                         rep stosd                                                          // 0x008396b6    f3ab
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]          // 0x008396b8    a170d4ed00
                         test               eax, eax                                        // 0x008396bd    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], 0x0000007c              // 0x008396bf    c744240c7c000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00021007              // 0x008396c7    c744241007100200
                         mov                ebx, 0x00000100                                 // 0x008396cf    bb00010000
                         {disp8} je         _jmp_addr_0x008396e5                            // 0x008396d4    740f
                         mov                eax, 0x00000080                                 // 0x008396d6    b880000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x008396db    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x008396df    89442414
                         {disp8} jmp        _jmp_addr_0x008396ed                            // 0x008396e3    eb08
_jmp_addr_0x008396e5:    {disp8} mov        dword ptr [esp + 0x18], ebx                     // 0x008396e5    895c2418
                         {disp8} mov        dword ptr [esp + 0x14], ebx                     // 0x008396e9    895c2414
_jmp_addr_0x008396ed:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]          // 0x008396ed    a17c50e800
                         push               0x0                                             // 0x008396f2    6a00
                         push               0x00edd474                                      // 0x008396f4    6874d4ed00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                     // 0x008396f9    8d542414
                         {disp8} mov        dword ptr [esp + 0x7c], 0x20405008              // 0x008396fd    c744247c08504020
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000001              // 0x00839705    c744242c01000000
                         mov                ecx, 0x00000008                                 // 0x0083970d    b908000000
                         mov                esi, 0x00f05190                                 // 0x00839712    be9051f000
                         {disp8} lea        edi, dword ptr [esp + 0x5c]                     // 0x00839717    8d7c245c
                         push               edx                                             // 0x0083971b    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083971c    f3a5
                         mov                ecx, dword ptr [eax]                            // 0x0083971e    8b08
                         push               eax                                             // 0x00839720    50
                         call               dword ptr [ecx + 0x18]                          // 0x00839721    ff5118
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517474]          // 0x00839724    a174d4ed00
                         test               eax, eax                                        // 0x00839729    85c0
                         {disp8} jne        _jmp_addr_0x0083974f                            // 0x0083972b    7522
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]          // 0x0083972d    a17c50e800
                         push               0x0                                             // 0x00839732    6a00
                         push               0x00edd474                                      // 0x00839734    6874d4ed00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                     // 0x00839739    8d542414
                         push               edx                                             // 0x0083973d    52
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00401808        // 0x0083973e    c784248000000008184000
                         mov                ecx, dword ptr [eax]                            // 0x00839749    8b08
                         push               eax                                             // 0x0083974b    50
                         call               dword ptr [ecx + 0x18]                          // 0x0083974c    ff5118
_jmp_addr_0x0083974f:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]          // 0x0083974f    a17c50e800
                         push               0x0                                             // 0x00839754    6a00
                         push               0x00edd478                                      // 0x00839756    6878d4ed00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                     // 0x0083975b    8d542414
                         mov                ecx, 0x00000008                                 // 0x0083975f    b908000000
                         mov                esi, 0x00f051b4                                 // 0x00839764    beb451f000
                         {disp8} lea        edi, dword ptr [esp + 0x5c]                     // 0x00839769    8d7c245c
                         push               edx                                             // 0x0083976d    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083976e    f3a5
                         mov                ecx, dword ptr [eax]                            // 0x00839770    8b08
                         push               eax                                             // 0x00839772    50
                         call               dword ptr [ecx + 0x18]                          // 0x00839773    ff5118
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]          // 0x00839776    a170d4ed00
                         test               eax, eax                                        // 0x0083977b    85c0
                         {disp8} je         _jmp_addr_0x008397ae                            // 0x0083977d    742f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]          // 0x0083977f    a17c50e800
                         push               0x0                                             // 0x00839784    6a00
                         push               0x00edd47c                                      // 0x00839786    687cd4ed00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                     // 0x0083978b    8d542414
                         mov                ecx, 0x00000008                                 // 0x0083978f    b908000000
                         mov                esi, 0x00f05190                                 // 0x00839794    be9051f000
                         {disp8} lea        edi, dword ptr [esp + 0x5c]                     // 0x00839799    8d7c245c
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083979d    f3a5
                         push               edx                                             // 0x0083979f    52
                         {disp8} mov        dword ptr [esp + 0x24], ebx                     // 0x008397a0    895c2424
                         {disp8} mov        dword ptr [esp + 0x20], ebx                     // 0x008397a4    895c2420
                         mov                ecx, dword ptr [eax]                            // 0x008397a8    8b08
                         push               eax                                             // 0x008397aa    50
                         call               dword ptr [ecx + 0x18]                          // 0x008397ab    ff5118
_jmp_addr_0x008397ae:    push               0x0                                             // 0x008397ae    6a00
                         mov                eax, 0x00000020                                 // 0x008397b0    b820000000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x008397b5    8944241c
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x008397b9    89442418
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]          // 0x008397bd    a17c50e800
                         push               0x00edd480                                      // 0x008397c2    6880d4ed00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                     // 0x008397c7    8d542414
                         mov                ecx, 0x00000008                                 // 0x008397cb    b908000000
                         mov                esi, 0x00f05190                                 // 0x008397d0    be9051f000
                         {disp8} lea        edi, dword ptr [esp + 0x5c]                     // 0x008397d5    8d7c245c
                         push               edx                                             // 0x008397d9    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x008397da    f3a5
                         mov                ecx, dword ptr [eax]                            // 0x008397dc    8b08
                         push               eax                                             // 0x008397de    50
                         call               dword ptr [ecx + 0x18]                          // 0x008397df    ff5118
                         pop                edi                                             // 0x008397e2    5f
                         pop                esi                                             // 0x008397e3    5e
                         pop                ebx                                             // 0x008397e4    5b
                         add                esp, 0x7c                                       // 0x008397e5    83c47c
                         ret                                                                // 0x008397e8    c3
                         nop                                                                // 0x008397e9    90
                         nop                                                                // 0x008397ea    90
                         nop                                                                // 0x008397eb    90
                         nop                                                                // 0x008397ec    90
                         nop                                                                // 0x008397ed    90
                         nop                                                                // 0x008397ee    90
                         nop                                                                // 0x008397ef    90
_jmp_addr_0x008397f0:    {disp32} mov       eax, dword ptr [data_bytes + 0x517478]          // 0x008397f0    a178d4ed00
                         push               esi                                             // 0x008397f5    56
                         xor.s              esi, esi                                        // 0x008397f6    33f6
                         cmp.s              eax, esi                                        // 0x008397f8    3bc6
                         {disp8} je         _jmp_addr_0x00839808                            // 0x008397fa    740c
                         mov                ecx, dword ptr [eax]                            // 0x008397fc    8b08
                         push               eax                                             // 0x008397fe    50
                         call               dword ptr [ecx + 8]                             // 0x008397ff    ff5108
                         {disp32} mov       dword ptr [data_bytes + 0x517478], esi          // 0x00839802    893578d4ed00
_jmp_addr_0x00839808:    {disp32} mov       eax, dword ptr [data_bytes + 0x517474]          // 0x00839808    a174d4ed00
                         cmp.s              eax, esi                                        // 0x0083980d    3bc6
                         {disp8} je         _jmp_addr_0x0083981d                            // 0x0083980f    740c
                         mov                edx, dword ptr [eax]                            // 0x00839811    8b10
                         push               eax                                             // 0x00839813    50
                         call               dword ptr [edx + 8]                             // 0x00839814    ff5208
                         {disp32} mov       dword ptr [data_bytes + 0x517474], esi          // 0x00839817    893574d4ed00
_jmp_addr_0x0083981d:    {disp32} mov       eax, dword ptr [data_bytes + 0x517480]          // 0x0083981d    a180d4ed00
                         cmp.s              eax, esi                                        // 0x00839822    3bc6
                         {disp8} je         _jmp_addr_0x00839832                            // 0x00839824    740c
                         mov                ecx, dword ptr [eax]                            // 0x00839826    8b08
                         push               eax                                             // 0x00839828    50
                         call               dword ptr [ecx + 8]                             // 0x00839829    ff5108
                         {disp32} mov       dword ptr [data_bytes + 0x517480], esi          // 0x0083982c    893580d4ed00
_jmp_addr_0x00839832:    {disp32} mov       eax, dword ptr [data_bytes + 0x51747c]          // 0x00839832    a17cd4ed00
                         cmp.s              eax, esi                                        // 0x00839837    3bc6
                         {disp8} je         _jmp_addr_0x00839847                            // 0x00839839    740c
                         mov                edx, dword ptr [eax]                            // 0x0083983b    8b10
                         push               eax                                             // 0x0083983d    50
                         call               dword ptr [edx + 8]                             // 0x0083983e    ff5208
                         {disp32} mov       dword ptr [data_bytes + 0x51747c], esi          // 0x00839841    89357cd4ed00
_jmp_addr_0x00839847:    {disp32} mov       eax, dword ptr [data_bytes + 0x517484]          // 0x00839847    a184d4ed00
                         cmp.s              eax, esi                                        // 0x0083984c    3bc6
                         {disp8} je         _jmp_addr_0x0083985c                            // 0x0083984e    740c
                         mov                ecx, dword ptr [eax]                            // 0x00839850    8b08
                         push               eax                                             // 0x00839852    50
                         call               dword ptr [ecx + 8]                             // 0x00839853    ff5108
                         {disp32} mov       dword ptr [data_bytes + 0x517484], esi          // 0x00839856    893584d4ed00
_jmp_addr_0x0083985c:    pop                esi                                             // 0x0083985c    5e
                         ret                                                                // 0x0083985d    c3
                         nop                                                                // 0x0083985e    90
                         nop                                                                // 0x0083985f    90
_jmp_addr_0x00839860:    push               0x0                                             // 0x00839860    6a00
                         push               0x1                                             // 0x00839862    6a01
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                            // 0x00839864    e8c764ffff
                         {disp32} mov       dword ptr [data_bytes + 0x517494], eax          // 0x00839869    a394d4ed00
                         {disp8} mov        cl, byte ptr [eax + 0x05]                       // 0x0083986e    8a4805
                         or                 cl, 1                                           // 0x00839871    80c901
                         add                esp, 0x08                                       // 0x00839874    83c408
                         {disp8} mov        byte ptr [eax + 0x05], cl                       // 0x00839877    884805
                         ret                                                                // 0x0083987a    c3
                         nop                                                                // 0x0083987b    90
                         nop                                                                // 0x0083987c    90
                         nop                                                                // 0x0083987d    90
                         nop                                                                // 0x0083987e    90
                         nop                                                                // 0x0083987f    90
_jmp_addr_0x00839880:    {disp32} mov       eax, dword ptr [data_bytes + 0x517494]          // 0x00839880    a194d4ed00
                         test               eax, eax                                        // 0x00839885    85c0
                         {disp8} je         _jmp_addr_0x0083989d                            // 0x00839887    7414
                         dec                dword ptr [data_bytes + 0x504654]               // 0x00839889    ff0d54a6ec00
                         push               eax                                             // 0x0083988f    50
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000              // 0x00839890    c7400800000000
                         call               ??3@YAXPAX@Z                                    // 0x00839897    e8fc55f7ff
                         pop                ecx                                             // 0x0083989c    59
_jmp_addr_0x0083989d:    ret                                                                // 0x0083989d    c3
                         nop                                                                // 0x0083989e    90
                         nop                                                                // 0x0083989f    90
_jmp_addr_0x008398a0:    ret                                                                // 0x008398a0    c3
                         nop                                                                // 0x008398a1    90
                         nop                                                                // 0x008398a2    90
                         nop                                                                // 0x008398a3    90
                         nop                                                                // 0x008398a4    90
                         nop                                                                // 0x008398a5    90
                         nop                                                                // 0x008398a6    90
                         nop                                                                // 0x008398a7    90
                         nop                                                                // 0x008398a8    90
                         nop                                                                // 0x008398a9    90
                         nop                                                                // 0x008398aa    90
                         nop                                                                // 0x008398ab    90
                         nop                                                                // 0x008398ac    90
                         nop                                                                // 0x008398ad    90
                         nop                                                                // 0x008398ae    90
                         nop                                                                // 0x008398af    90
_jmp_addr_0x008398b0:    ret                                                                // 0x008398b0    c3
                         nop                                                                // 0x008398b1    90
                         nop                                                                // 0x008398b2    90
                         nop                                                                // 0x008398b3    90
                         nop                                                                // 0x008398b4    90
                         nop                                                                // 0x008398b5    90
                         nop                                                                // 0x008398b6    90
                         nop                                                                // 0x008398b7    90
                         nop                                                                // 0x008398b8    90
                         nop                                                                // 0x008398b9    90
                         nop                                                                // 0x008398ba    90
                         nop                                                                // 0x008398bb    90
                         nop                                                                // 0x008398bc    90
                         nop                                                                // 0x008398bd    90
                         nop                                                                // 0x008398be    90
                         nop                                                                // 0x008398bf    90
_globl_ct_0x008398c0:    call               _jmp_addr_0x008398d0                            // 0x008398c0    e80b000000
                         {disp32} jmp       _jmp_addr_0x008398e0                            // 0x008398c5    e916000000
                         nop                                                                // 0x008398ca    90
                         nop                                                                // 0x008398cb    90
                         nop                                                                // 0x008398cc    90
                         nop                                                                // 0x008398cd    90
                         nop                                                                // 0x008398ce    90
                         nop                                                                // 0x008398cf    90
_jmp_addr_0x008398d0:    push               0x00c39040                                      // 0x008398d0    684090c300
                         mov                ecx, 0x00edd498                                 // 0x008398d5    b998d4ed00
                         call               @__ct__14LHReleasedFileFPCc@12                  // 0x008398da    e871daffff
                         ret                                                                // 0x008398df    c3
_jmp_addr_0x008398e0:    push               0x008398f0                                      // 0x008398e0    68f0988300
                         call               _atexit                                         // 0x008398e5    e8a7bef8ff
                         pop                ecx                                             // 0x008398ea    59
                         ret                                                                // 0x008398eb    c3
                         nop                                                                // 0x008398ec    90
                         nop                                                                // 0x008398ed    90
                         nop                                                                // 0x008398ee    90
                         nop                                                                // 0x008398ef    90
                         mov                ecx, 0x00edd498                                 // 0x008398f0    b998d4ed00
                         {disp32} jmp       _jmp_addr_0x00804780                            // 0x008398f5    e986aefcff
                         nop                                                                // 0x008398fa    90
                         nop                                                                // 0x008398fb    90
                         nop                                                                // 0x008398fc    90
                         nop                                                                // 0x008398fd    90
                         nop                                                                // 0x008398fe    90
                         nop                                                                // 0x008398ff    90
_jmp_addr_0x00839900:    push               esi                                             // 0x00839900    56
                         push               edi                                             // 0x00839901    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                     // 0x00839902    8b7c240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                     // 0x00839906    8d44240c
                         push               eax                                             // 0x0083990a    50
                         push               edi                                             // 0x0083990b    57
                         call               _LHFileLength__FPcPUl                           // 0x0083990c    e84f30f8ff
                         add                esp, 0x08                                       // 0x00839911    83c408
                         test               eax, eax                                        // 0x00839914    85c0
                         {disp8} je         _jmp_addr_0x0083991d                            // 0x00839916    7405
                         pop                edi                                             // 0x00839918    5f
                         xor.s              eax, eax                                        // 0x00839919    33c0
                         pop                esi                                             // 0x0083991b    5e
                         ret                                                                // 0x0083991c    c3
_jmp_addr_0x0083991d:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                     // 0x0083991d    8b4c240c
                         push               ecx                                             // 0x00839921    51
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                        // 0x00839922    e8b9930000
                         mov.s              esi, eax                                        // 0x00839927    8bf0
                         add                esp, 0x04                                       // 0x00839929    83c404
                         test               esi, esi                                        // 0x0083992c    85f6
                         {disp8} jne        _jmp_addr_0x00839933                            // 0x0083992e    7503
                         pop                edi                                             // 0x00839930    5f
                         pop                esi                                             // 0x00839931    5e
                         ret                                                                // 0x00839932    c3
_jmp_addr_0x00839933:    {disp8} mov        edx, dword ptr [esp + 0x0c]                     // 0x00839933    8b54240c
                         push               0x0                                             // 0x00839937    6a00
                         push               edx                                             // 0x00839939    52
                         push               esi                                             // 0x0083993a    56
                         push               edi                                             // 0x0083993b    57
                         call               _LHLoadData__FPcPvUlPUl                         // 0x0083993c    e8af34f8ff
                         add                esp, 0x10                                       // 0x00839941    83c410
                         test               eax, eax                                        // 0x00839944    85c0
                         {disp8} je         _jmp_addr_0x00839956                            // 0x00839946    740e
                         push               esi                                             // 0x00839948    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                         // 0x00839949    e812940000
                         add                esp, 0x04                                       // 0x0083994e    83c404
                         pop                edi                                             // 0x00839951    5f
                         xor.s              eax, eax                                        // 0x00839952    33c0
                         pop                esi                                             // 0x00839954    5e
                         ret                                                                // 0x00839955    c3
_jmp_addr_0x00839956:    mov.s              ecx, esi                                        // 0x00839956    8bce
                         call               _jmp_addr_0x0083a610                            // 0x00839958    e8b30c0000
                         pop                edi                                             // 0x0083995d    5f
                         mov.s              eax, esi                                        // 0x0083995e    8bc6
                         pop                esi                                             // 0x00839960    5e
                         ret                                                                // 0x00839961    c3
                         nop                                                                // 0x00839962    90
                         nop                                                                // 0x00839963    90
                         nop                                                                // 0x00839964    90
                         nop                                                                // 0x00839965    90
                         nop                                                                // 0x00839966    90
                         nop                                                                // 0x00839967    90
                         nop                                                                // 0x00839968    90
                         nop                                                                // 0x00839969    90
                         nop                                                                // 0x0083996a    90
                         nop                                                                // 0x0083996b    90
                         nop                                                                // 0x0083996c    90
                         nop                                                                // 0x0083996d    90
                         nop                                                                // 0x0083996e    90
                         nop                                                                // 0x0083996f    90
_jmp_addr_0x00839970:    push               ecx                                             // 0x00839970    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                         // 0x00839971    e8ea930000
                         pop                ecx                                             // 0x00839976    59
                         ret                                                                // 0x00839977    c3
                         nop                                                                // 0x00839978    90
                         nop                                                                // 0x00839979    90
                         nop                                                                // 0x0083997a    90
                         nop                                                                // 0x0083997b    90
                         nop                                                                // 0x0083997c    90
                         nop                                                                // 0x0083997d    90
                         nop                                                                // 0x0083997e    90
                         nop                                                                // 0x0083997f    90
_jmp_addr_0x00839980:    sub                esp, 0x1c                                       // 0x00839980    83ec1c
                         push               ebx                                             // 0x00839983    53
                         push               ebp                                             // 0x00839984    55
                         push               esi                                             // 0x00839985    56
                         mov.s              ebx, ecx                                        // 0x00839986    8bd9
                         push               edi                                             // 0x00839988    57
                         {disp8} mov        edi, dword ptr [ebx + 0x50]                     // 0x00839989    8b7b50
                         and                edi, 0x00000100                                 // 0x0083998c    81e700010000
                         {disp8} mov        dword ptr [esp + 0x20], ebx                     // 0x00839992    895c2420
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x00839996    c744241400000000
                         {disp8} je         _jmp_addr_0x008399a5                            // 0x0083999e    7405
                         {disp8} mov        esi, dword ptr [ebx + 0x20]                     // 0x008399a0    8b7320
                         {disp8} jmp        _jmp_addr_0x008399b4                            // 0x008399a3    eb0f
_jmp_addr_0x008399a5:    {disp8} mov        ecx, dword ptr [ebx + 0x38]                     // 0x008399a5    8b4b38
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                     // 0x008399a8    8b4320
                         imul               eax, ecx                                        // 0x008399ab    0fafc1
                         cdq                                                                // 0x008399ae    99
                         dec                ecx                                             // 0x008399af    49
                         idiv               ecx                                             // 0x008399b0    f7f9
                         mov.s              esi, eax                                        // 0x008399b2    8bf0
_jmp_addr_0x008399b4:    {disp8} mov        ecx, dword ptr [ebx + 0x38]                     // 0x008399b4    8b4b38
                         mov.s              eax, ecx                                        // 0x008399b7    8bc1
                         imul               eax, dword ptr [esp + 0x38]                     // 0x008399b9    0faf442438
                         cdq                                                                // 0x008399be    99
                         idiv               esi                                             // 0x008399bf    f7fe
                         {disp8} mov        dword ptr [esp + 0x1c], esi                     // 0x008399c1    8974241c
                         {disp8} mov        dword ptr [esp + 0x24], ecx                     // 0x008399c5    894c2424
                         mov.s              esi, eax                                        // 0x008399c9    8bf0
                         cmp.s              esi, ecx                                        // 0x008399cb    3bf1
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x008399cd    89742410
                         {disp8} jl         _jmp_addr_0x008399e1                            // 0x008399d1    7c0e
                         xor.s              ebp, ebp                                        // 0x008399d3    33ed
                         {disp8} mov        dword ptr [esp + 0x10], ebp                     // 0x008399d5    896c2410
                         {disp8} mov        dword ptr [esp + 0x38], ebp                     // 0x008399d9    896c2438
                         mov.s              esi, ebp                                        // 0x008399dd    8bf5
                         {disp8} jmp        _jmp_addr_0x008399e3                            // 0x008399df    eb02
_jmp_addr_0x008399e1:    xor.s              ebp, ebp                                        // 0x008399e1    33ed
_jmp_addr_0x008399e3:    {disp8} lea        eax, dword ptr [esi + 0x01]                     // 0x008399e3    8d4601
                         cmp.s              eax, ecx                                        // 0x008399e6    3bc1
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x008399e8    89442418
                         {disp8} jne        _jmp_addr_0x008399fd                            // 0x008399ec    750f
                         cmp.s              edi, ebp                                        // 0x008399ee    3bfd
                         {disp8} je         _jmp_addr_0x008399f8                            // 0x008399f0    7406
                         {disp8} mov        dword ptr [esp + 0x18], ebp                     // 0x008399f2    896c2418
                         {disp8} jmp        _jmp_addr_0x008399fd                            // 0x008399f6    eb05
_jmp_addr_0x008399f8:    dec                ecx                                             // 0x008399f8    49
                         {disp8} mov        dword ptr [esp + 0x18], ecx                     // 0x008399f9    894c2418
_jmp_addr_0x008399fd:    {disp8} fild       dword ptr [esp + 0x24]                          // 0x008399fd    db442424
                         {disp8} mov        eax, dword ptr [ebx + 0x3c]                     // 0x00839a01    8b433c
                         cmp.s              eax, ebp                                        // 0x00839a04    3bc5
                         {disp8} mov        edi, dword ptr [esp + 0x30]                     // 0x00839a06    8b7c2430
                         {disp8} fidiv      dword ptr [esp + 0x1c]                          // 0x00839a0a    da74241c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                     // 0x00839a0e    896c2430
                         {disp8} fimul      dword ptr [esp + 0x38]                          // 0x00839a12    da4c2438
                         {disp8} fisub      dword ptr [esp + 0x10]                          // 0x00839a16    da642410
                         {disp8} fstp       dword ptr [esp + 0x38]                          // 0x00839a1a    d95c2438
                         {disp32} jle       _jmp_addr_0x00839ba6                            // 0x00839a1e    0f8e82010000
                         {disp8} jmp        _jmp_addr_0x00839a32                            // 0x00839a24    eb0c
_jmp_addr_0x00839a26:    {disp8} mov        ebx, dword ptr [esp + 0x20]                     // 0x00839a26    8b5c2420
                         {disp8} mov        ebp, dword ptr [esp + 0x30]                     // 0x00839a2a    8b6c2430
                         {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x00839a2e    8b742410
_jmp_addr_0x00839a32:    mov.s              ecx, ebx                                        // 0x00839a32    8bcb
                         {disp8} mov        dword ptr [esp + 0x28], edi                     // 0x00839a34    897c2428
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x00839a38    e8630c0000
                         mov                eax, dword ptr [eax + esi * 0x4]                // 0x00839a3d    8b04b0
                         mov                ecx, dword ptr [eax]                            // 0x00839a40    8b08
                         mov                eax, dword ptr [ecx + ebp * 0x4]                // 0x00839a42    8b04a9
                         mov                edx, dword ptr [eax]                            // 0x00839a45    8b10
                         {disp8} mov        esi, dword ptr [eax + 0x04]                     // 0x00839a47    8b7004
                         mov.s              ecx, ebx                                        // 0x00839a4a    8bcb
                         {disp8} mov        dword ptr [esp + 0x24], edx                     // 0x00839a4c    89542424
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x00839a50    e84b0c0000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x00839a55    8b4c2418
                         mov                edx, dword ptr [eax + ecx * 0x4]                // 0x00839a59    8b1488
                         mov                eax, dword ptr [edx]                            // 0x00839a5c    8b02
                         mov                ecx, dword ptr [eax + ebp * 0x4]                // 0x00839a5e    8b0ca8
                         {disp8} mov        edx, dword ptr [esp + 0x34]                     // 0x00839a61    8b542434
                         {disp8} mov        eax, dword ptr [edx + 0x10]                     // 0x00839a65    8b4210
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                     // 0x00839a68    8b5904
                         mov                ecx, dword ptr [eax + ebp * 0x4]                // 0x00839a6b    8b0ca8
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x00839a6e    8b442424
                         test               eax, eax                                        // 0x00839a72    85c0
                         {disp8} mov        ebp, dword ptr [ecx + 0x10]                     // 0x00839a74    8b6910
                         {disp32} jle       _jmp_addr_0x00839b8e                            // 0x00839a77    0f8e11010000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x00839a7d    8944241c
_jmp_addr_0x00839a81:    fld                dword ptr [ebx]                                 // 0x00839a81    d903
                         fsub               dword ptr [esi]                                 // 0x00839a83    d826
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839a85    d84c2438
                         fadd               dword ptr [esi]                                 // 0x00839a89    d806
                         fstp               dword ptr [edi]                                 // 0x00839a8b    d91f
                         {disp8} fld        dword ptr [ebx + 0x04]                          // 0x00839a8d    d94304
                         {disp8} fsub       dword ptr [esi + 0x04]                          // 0x00839a90    d86604
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839a93    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x04]                          // 0x00839a97    d84604
                         {disp8} fstp       dword ptr [edi + 0x04]                          // 0x00839a9a    d95f04
                         {disp8} fld        dword ptr [ebx + 0x08]                          // 0x00839a9d    d94308
                         {disp8} fsub       dword ptr [esi + 0x08]                          // 0x00839aa0    d86608
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839aa3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x00839aa7    d84608
                         {disp8} fstp       dword ptr [edi + 0x08]                          // 0x00839aaa    d95f08
                         {disp8} fld        dword ptr [ebx + 0x0c]                          // 0x00839aad    d9430c
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x00839ab0    d8660c
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839ab3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x00839ab7    d8460c
                         {disp8} fstp       dword ptr [edi + 0x0c]                          // 0x00839aba    d95f0c
                         {disp8} fld        dword ptr [ebx + 0x10]                          // 0x00839abd    d94310
                         {disp8} fsub       dword ptr [esi + 0x10]                          // 0x00839ac0    d86610
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839ac3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x10]                          // 0x00839ac7    d84610
                         {disp8} fstp       dword ptr [edi + 0x10]                          // 0x00839aca    d95f10
                         {disp8} fld        dword ptr [ebx + 0x14]                          // 0x00839acd    d94314
                         {disp8} fsub       dword ptr [esi + 0x14]                          // 0x00839ad0    d86614
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839ad3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x14]                          // 0x00839ad7    d84614
                         {disp8} fstp       dword ptr [edi + 0x14]                          // 0x00839ada    d95f14
                         {disp8} fld        dword ptr [ebx + 0x18]                          // 0x00839add    d94318
                         {disp8} fsub       dword ptr [esi + 0x18]                          // 0x00839ae0    d86618
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839ae3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x18]                          // 0x00839ae7    d84618
                         {disp8} fstp       dword ptr [edi + 0x18]                          // 0x00839aea    d95f18
                         {disp8} fld        dword ptr [ebx + 0x1c]                          // 0x00839aed    d9431c
                         {disp8} fsub       dword ptr [esi + 0x1c]                          // 0x00839af0    d8661c
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839af3    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x1c]                          // 0x00839af7    d8461c
                         {disp8} fstp       dword ptr [edi + 0x1c]                          // 0x00839afa    d95f1c
                         {disp8} fld        dword ptr [ebx + 0x20]                          // 0x00839afd    d94320
                         {disp8} fsub       dword ptr [esi + 0x20]                          // 0x00839b00    d86620
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839b03    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x20]                          // 0x00839b07    d84620
                         {disp8} fstp       dword ptr [edi + 0x20]                          // 0x00839b0a    d95f20
                         {disp8} fld        dword ptr [ebx + 0x24]                          // 0x00839b0d    d94324
                         {disp8} fsub       dword ptr [esi + 0x24]                          // 0x00839b10    d86624
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839b13    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x24]                          // 0x00839b17    d84624
                         {disp8} fstp       dword ptr [edi + 0x24]                          // 0x00839b1a    d95f24
                         {disp8} fld        dword ptr [ebx + 0x28]                          // 0x00839b1d    d94328
                         {disp8} fsub       dword ptr [esi + 0x28]                          // 0x00839b20    d86628
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839b23    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x28]                          // 0x00839b27    d84628
                         {disp8} fstp       dword ptr [edi + 0x28]                          // 0x00839b2a    d95f28
                         {disp8} fld        dword ptr [ebx + 0x2c]                          // 0x00839b2d    d9432c
                         {disp8} fsub       dword ptr [esi + 0x2c]                          // 0x00839b30    d8662c
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x00839b33    d84c2438
                         {disp8} fadd       dword ptr [esi + 0x2c]                          // 0x00839b37    d8462c
                         {disp8} fstp       dword ptr [edi + 0x2c]                          // 0x00839b3a    d95f2c
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                     // 0x00839b3d    8b4500
                         cmp                eax, -0x01                                      // 0x00839b40    83f8ff
                         {disp8} je         _jmp_addr_0x00839b53                            // 0x00839b43    740e
                         lea                edx, dword ptr [eax + eax * 0x2]                // 0x00839b45    8d1440
                         {disp8} mov        eax, dword ptr [esp + 0x28]                     // 0x00839b48    8b442428
                         shl                edx, 4                                          // 0x00839b4c    c1e204
                         add.s              edx, eax                                        // 0x00839b4f    03d0
                         {disp8} jmp        _jmp_addr_0x00839b57                            // 0x00839b51    eb04
_jmp_addr_0x00839b53:    {disp8} mov        edx, dword ptr [esp + 0x3c]                     // 0x00839b53    8b54243c
_jmp_addr_0x00839b57:    mov.s              ecx, edi                                        // 0x00839b57    8bcf
                         call               _jmp_addr_0x007faff0                            // 0x00839b59    e89214fcff
                         {disp8} fld        dword ptr [edi + 0x28]                          // 0x00839b5e    d94728
                         {disp8} fcomp      dword ptr [esp + 0x14]                          // 0x00839b61    d85c2414
                         fnstsw             ax                                              // 0x00839b65    dfe0
                         test               ah, 0x41                                        // 0x00839b67    f6c441
                         {disp8} jne        _jmp_addr_0x00839b73                            // 0x00839b6a    7507
                         {disp8} mov        edx, dword ptr [edi + 0x28]                     // 0x00839b6c    8b5728
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x00839b6f    89542414
_jmp_addr_0x00839b73:    {disp8} mov        eax, dword ptr [esp + 0x1c]                     // 0x00839b73    8b44241c
                         add                edi, 0x30                                       // 0x00839b77    83c730
                         add                esi, 0x30                                       // 0x00839b7a    83c630
                         add                ebx, 0x30                                       // 0x00839b7d    83c330
                         add                ebp, 0x3c                                       // 0x00839b80    83c53c
                         dec                eax                                             // 0x00839b83    48
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x00839b84    8944241c
                         {disp32} jne       _jmp_addr_0x00839a81                            // 0x00839b88    0f85f3feffff
_jmp_addr_0x00839b8e:    {disp8} mov        eax, dword ptr [esp + 0x30]                     // 0x00839b8e    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                     // 0x00839b92    8b4c2420
                         {disp8} mov        edx, dword ptr [ecx + 0x3c]                     // 0x00839b96    8b513c
                         inc                eax                                             // 0x00839b99    40
                         cmp.s              eax, edx                                        // 0x00839b9a    3bc2
                         {disp8} mov        dword ptr [esp + 0x30], eax                     // 0x00839b9c    89442430
                         {disp32} jl        _jmp_addr_0x00839a26                            // 0x00839ba0    0f8c80feffff
_jmp_addr_0x00839ba6:    {disp8} fld        dword ptr [esp + 0x14]                          // 0x00839ba6    d9442414
                         pop                edi                                             // 0x00839baa    5f
                         pop                esi                                             // 0x00839bab    5e
                         pop                ebp                                             // 0x00839bac    5d
                         pop                ebx                                             // 0x00839bad    5b
                         add                esp, 0x1c                                       // 0x00839bae    83c41c
                         ret                0x0010                                          // 0x00839bb1    c21000
                         nop                                                                // 0x00839bb4    90
                         nop                                                                // 0x00839bb5    90
                         nop                                                                // 0x00839bb6    90
                         nop                                                                // 0x00839bb7    90
                         nop                                                                // 0x00839bb8    90
                         nop                                                                // 0x00839bb9    90
                         nop                                                                // 0x00839bba    90
                         nop                                                                // 0x00839bbb    90
                         nop                                                                // 0x00839bbc    90
                         nop                                                                // 0x00839bbd    90
                         nop                                                                // 0x00839bbe    90
                         nop                                                                // 0x00839bbf    90
_jmp_addr_0x00839bc0:    sub                esp, 0x40                                       // 0x00839bc0    83ec40
                         push               ebp                                             // 0x00839bc3    55
                         mov.s              ebp, ecx                                        // 0x00839bc4    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x50]                     // 0x00839bc6    8b4550
                         test               ah, 0x01                                        // 0x00839bc9    f6c401
                         push               esi                                             // 0x00839bcc    56
                         push               edi                                             // 0x00839bcd    57
                         {disp8} je         _jmp_addr_0x00839bd5                            // 0x00839bce    7405
                         {disp8} mov        esi, dword ptr [ebp + 0x20]                     // 0x00839bd0    8b7520
                         {disp8} jmp        _jmp_addr_0x00839be4                            // 0x00839bd3    eb0f
_jmp_addr_0x00839bd5:    {disp8} mov        ecx, dword ptr [ebp + 0x38]                     // 0x00839bd5    8b4d38
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                     // 0x00839bd8    8b4520
                         imul               eax, ecx                                        // 0x00839bdb    0fafc1
                         cdq                                                                // 0x00839bde    99
                         dec                ecx                                             // 0x00839bdf    49
                         idiv               ecx                                             // 0x00839be0    f7f9
                         mov.s              esi, eax                                        // 0x00839be2    8bf0
_jmp_addr_0x00839be4:    {disp8} mov        ecx, dword ptr [ebp + 0x38]                     // 0x00839be4    8b4d38
                         mov.s              eax, ecx                                        // 0x00839be7    8bc1
                         imul               eax, dword ptr [esp + 0x54]                     // 0x00839be9    0faf442454
                         cdq                                                                // 0x00839bee    99
                         idiv               esi                                             // 0x00839bef    f7fe
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x00839bf1    89742410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                     // 0x00839bf5    894c2418
                         mov.s              esi, eax                                        // 0x00839bf9    8bf0
                         cmp.s              esi, ecx                                        // 0x00839bfb    3bf1
                         {disp8} mov        dword ptr [esp + 0x0c], esi                     // 0x00839bfd    8974240c
                         {disp8} jl         _jmp_addr_0x00839c11                            // 0x00839c01    7c0e
                         xor.s              edx, edx                                        // 0x00839c03    33d2
                         {disp8} mov        dword ptr [esp + 0x0c], edx                     // 0x00839c05    8954240c
                         {disp8} mov        dword ptr [esp + 0x54], edx                     // 0x00839c09    89542454
                         mov.s              esi, edx                                        // 0x00839c0d    8bf2
                         {disp8} jmp        _jmp_addr_0x00839c13                            // 0x00839c0f    eb02
_jmp_addr_0x00839c11:    xor.s              edx, edx                                        // 0x00839c11    33d2
_jmp_addr_0x00839c13:    {disp8} lea        eax, dword ptr [esi + 0x01]                     // 0x00839c13    8d4601
                         cmp.s              eax, ecx                                        // 0x00839c16    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x00839c18    89442414
                         {disp8} jne        _jmp_addr_0x00839c22                            // 0x00839c1c    7504
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x00839c1e    89542414
_jmp_addr_0x00839c22:    {disp8} fild       dword ptr [esp + 0x18]                          // 0x00839c22    db442418
                         {disp8} mov        eax, dword ptr [ebp + 0x3c]                     // 0x00839c26    8b453c
                         cmp.s              eax, edx                                        // 0x00839c29    3bc2
                         {disp8} mov        edi, dword ptr [esp + 0x50]                     // 0x00839c2b    8b7c2450
                         {disp8} fidiv      dword ptr [esp + 0x10]                          // 0x00839c2f    da742410
                         {disp8} mov        dword ptr [esp + 0x50], edx                     // 0x00839c33    89542450
                         {disp8} fimul      dword ptr [esp + 0x54]                          // 0x00839c37    da4c2454
                         {disp8} fisub      dword ptr [esp + 0x0c]                          // 0x00839c3b    da64240c
                         {disp8} fstp       dword ptr [esp + 0x54]                          // 0x00839c3f    d95c2454
                         {disp32} jle       _jmp_addr_0x00839efe                            // 0x00839c43    0f8eb5020000
                         push               ebx                                             // 0x00839c49    53
                         {disp8} jmp        _jmp_addr_0x00839c50                            // 0x00839c4a    eb04
_jmp_addr_0x00839c4c:    {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x00839c4c    8b742410
_jmp_addr_0x00839c50:    mov.s              ecx, ebp                                        // 0x00839c50    8bcd
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x00839c52    e8490a0000
                         mov                eax, dword ptr [eax + esi * 0x4]                // 0x00839c57    8b04b0
                         mov                ecx, dword ptr [eax]                            // 0x00839c5a    8b08
                         {disp8} mov        edx, dword ptr [esp + 0x54]                     // 0x00839c5c    8b542454
                         mov                eax, dword ptr [ecx + edx * 0x4]                // 0x00839c60    8b0491
                         {disp8} mov        esi, dword ptr [eax + 0x04]                     // 0x00839c63    8b7004
                         mov                ebx, dword ptr [eax]                            // 0x00839c66    8b18
                         mov.s              ecx, ebp                                        // 0x00839c68    8bcd
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x00839c6a    e8310a0000
                         test               ebx, ebx                                        // 0x00839c6f    85db
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x00839c71    8b4c2418
                         mov                edx, dword ptr [eax + ecx * 0x4]                // 0x00839c75    8b1488
                         mov                eax, dword ptr [edx]                            // 0x00839c78    8b02
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                     // 0x00839c7a    8b4c2454
                         mov                edx, dword ptr [eax + ecx * 0x4]                // 0x00839c7e    8b1488
                         {disp8} mov        eax, dword ptr [edx + 0x04]                     // 0x00839c81    8b4204
                         {disp32} jle       _jmp_addr_0x00839eed                            // 0x00839c84    0f8e63020000
_jmp_addr_0x00839c8a:    fld                dword ptr [eax]                                 // 0x00839c8a    d900
                         {disp8} mov        edx, dword ptr [esp + 0x60]                     // 0x00839c8c    8b542460
                         test               edx, edx                                        // 0x00839c90    85d2
                         fsub               dword ptr [esi]                                 // 0x00839c92    d826
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839c94    d84c2458
                         fadd               dword ptr [esi]                                 // 0x00839c98    d806
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839c9a    d84c245c
                         {disp32} je        _jmp_addr_0x00839d84                            // 0x00839c9e    0f84e0000000
                         fstp               dword ptr [edi]                                 // 0x00839ca4    d91f
                         {disp8} fld        dword ptr [eax + 0x04]                          // 0x00839ca6    d94004
                         {disp8} fsub       dword ptr [esi + 0x04]                          // 0x00839ca9    d86604
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839cac    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x04]                          // 0x00839cb0    d84604
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839cb3    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x04]                          // 0x00839cb7    d95f04
                         {disp8} fld        dword ptr [eax + 0x08]                          // 0x00839cba    d94008
                         {disp8} fsub       dword ptr [esi + 0x08]                          // 0x00839cbd    d86608
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839cc0    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x00839cc4    d84608
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839cc7    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x08]                          // 0x00839ccb    d95f08
                         {disp8} fld        dword ptr [eax + 0x0c]                          // 0x00839cce    d9400c
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x00839cd1    d8660c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839cd4    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x00839cd8    d8460c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839cdb    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x0c]                          // 0x00839cdf    d95f0c
                         {disp8} fld        dword ptr [eax + 0x10]                          // 0x00839ce2    d94010
                         {disp8} fsub       dword ptr [esi + 0x10]                          // 0x00839ce5    d86610
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839ce8    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x10]                          // 0x00839cec    d84610
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839cef    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x10]                          // 0x00839cf3    d95f10
                         {disp8} fld        dword ptr [eax + 0x14]                          // 0x00839cf6    d94014
                         {disp8} fsub       dword ptr [esi + 0x14]                          // 0x00839cf9    d86614
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839cfc    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x14]                          // 0x00839d00    d84614
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d03    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x14]                          // 0x00839d07    d95f14
                         {disp8} fld        dword ptr [eax + 0x18]                          // 0x00839d0a    d94018
                         {disp8} fsub       dword ptr [esi + 0x18]                          // 0x00839d0d    d86618
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d10    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x18]                          // 0x00839d14    d84618
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d17    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x18]                          // 0x00839d1b    d95f18
                         {disp8} fld        dword ptr [eax + 0x1c]                          // 0x00839d1e    d9401c
                         {disp8} fsub       dword ptr [esi + 0x1c]                          // 0x00839d21    d8661c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d24    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x1c]                          // 0x00839d28    d8461c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d2b    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x1c]                          // 0x00839d2f    d95f1c
                         {disp8} fld        dword ptr [eax + 0x20]                          // 0x00839d32    d94020
                         {disp8} fsub       dword ptr [esi + 0x20]                          // 0x00839d35    d86620
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d38    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x20]                          // 0x00839d3c    d84620
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d3f    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x20]                          // 0x00839d43    d95f20
                         {disp8} fld        dword ptr [eax + 0x24]                          // 0x00839d46    d94024
                         {disp8} fsub       dword ptr [esi + 0x24]                          // 0x00839d49    d86624
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d4c    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x24]                          // 0x00839d50    d84624
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d53    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x24]                          // 0x00839d57    d95f24
                         {disp8} fld        dword ptr [eax + 0x28]                          // 0x00839d5a    d94028
                         {disp8} fsub       dword ptr [esi + 0x28]                          // 0x00839d5d    d86628
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d60    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x28]                          // 0x00839d64    d84628
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d67    d84c245c
                         {disp8} fstp       dword ptr [edi + 0x28]                          // 0x00839d6b    d95f28
                         {disp8} fld        dword ptr [eax + 0x2c]                          // 0x00839d6e    d9402c
                         {disp8} fsub       dword ptr [esi + 0x2c]                          // 0x00839d71    d8662c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d74    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x2c]                          // 0x00839d78    d8462c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d7b    d84c245c
                         {disp32} jmp       _jmp_addr_0x00839eda                            // 0x00839d7f    e956010000
_jmp_addr_0x00839d84:    {disp8} fld        dword ptr [eax + 0x04]                          // 0x00839d84    d94004
                         {disp8} fsub       dword ptr [esi + 0x04]                          // 0x00839d87    d86604
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d8a    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x04]                          // 0x00839d8e    d84604
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839d91    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x24]                          // 0x00839d95    d95c2424
                         {disp8} fld        dword ptr [eax + 0x08]                          // 0x00839d99    d94008
                         {disp8} fsub       dword ptr [esi + 0x08]                          // 0x00839d9c    d86608
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839d9f    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x00839da3    d84608
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839da6    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x28]                          // 0x00839daa    d95c2428
                         {disp8} fld        dword ptr [eax + 0x0c]                          // 0x00839dae    d9400c
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x00839db1    d8660c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839db4    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x00839db8    d8460c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839dbb    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x2c]                          // 0x00839dbf    d95c242c
                         {disp8} fld        dword ptr [eax + 0x10]                          // 0x00839dc3    d94010
                         {disp8} fsub       dword ptr [esi + 0x10]                          // 0x00839dc6    d86610
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839dc9    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x10]                          // 0x00839dcd    d84610
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839dd0    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x00839dd4    d95c2430
                         {disp8} fld        dword ptr [eax + 0x14]                          // 0x00839dd8    d94014
                         {disp8} fsub       dword ptr [esi + 0x14]                          // 0x00839ddb    d86614
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839dde    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x14]                          // 0x00839de2    d84614
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839de5    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x34]                          // 0x00839de9    d95c2434
                         {disp8} fld        dword ptr [eax + 0x18]                          // 0x00839ded    d94018
                         {disp8} fsub       dword ptr [esi + 0x18]                          // 0x00839df0    d86618
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839df3    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x18]                          // 0x00839df7    d84618
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839dfa    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x38]                          // 0x00839dfe    d95c2438
                         {disp8} fld        dword ptr [eax + 0x1c]                          // 0x00839e02    d9401c
                         {disp8} fsub       dword ptr [esi + 0x1c]                          // 0x00839e05    d8661c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839e08    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x1c]                          // 0x00839e0c    d8461c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839e0f    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x3c]                          // 0x00839e13    d95c243c
                         {disp8} fld        dword ptr [eax + 0x20]                          // 0x00839e17    d94020
                         {disp8} fsub       dword ptr [esi + 0x20]                          // 0x00839e1a    d86620
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839e1d    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x20]                          // 0x00839e21    d84620
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839e24    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x40]                          // 0x00839e28    d95c2440
                         {disp8} fld        dword ptr [eax + 0x24]                          // 0x00839e2c    d94024
                         {disp8} fsub       dword ptr [esi + 0x24]                          // 0x00839e2f    d86624
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839e32    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x24]                          // 0x00839e36    d84624
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839e39    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x44]                          // 0x00839e3d    d95c2444
                         {disp8} fld        dword ptr [eax + 0x28]                          // 0x00839e41    d94028
                         {disp8} fsub       dword ptr [esi + 0x28]                          // 0x00839e44    d86628
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839e47    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x28]                          // 0x00839e4b    d84628
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839e4e    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x48]                          // 0x00839e52    d95c2448
                         {disp8} fld        dword ptr [eax + 0x2c]                          // 0x00839e56    d9402c
                         {disp8} fsub       dword ptr [esi + 0x2c]                          // 0x00839e59    d8662c
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x00839e5c    d84c2458
                         {disp8} fadd       dword ptr [esi + 0x2c]                          // 0x00839e60    d8462c
                         {disp8} fmul       dword ptr [esp + 0x5c]                          // 0x00839e63    d84c245c
                         {disp8} fstp       dword ptr [esp + 0x4c]                          // 0x00839e67    d95c244c
                         fadd               dword ptr [edi]                                 // 0x00839e6b    d807
                         fstp               dword ptr [edi]                                 // 0x00839e6d    d91f
                         {disp8} fld        dword ptr [esp + 0x24]                          // 0x00839e6f    d9442424
                         {disp8} fadd       dword ptr [edi + 0x04]                          // 0x00839e73    d84704
                         {disp8} fstp       dword ptr [edi + 0x04]                          // 0x00839e76    d95f04
                         {disp8} fld        dword ptr [esp + 0x28]                          // 0x00839e79    d9442428
                         {disp8} fadd       dword ptr [edi + 0x08]                          // 0x00839e7d    d84708
                         {disp8} fstp       dword ptr [edi + 0x08]                          // 0x00839e80    d95f08
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x00839e83    d944242c
                         {disp8} fadd       dword ptr [edi + 0x0c]                          // 0x00839e87    d8470c
                         {disp8} fstp       dword ptr [edi + 0x0c]                          // 0x00839e8a    d95f0c
                         {disp8} fld        dword ptr [esp + 0x30]                          // 0x00839e8d    d9442430
                         {disp8} fadd       dword ptr [edi + 0x10]                          // 0x00839e91    d84710
                         {disp8} fstp       dword ptr [edi + 0x10]                          // 0x00839e94    d95f10
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x00839e97    d9442434
                         {disp8} fadd       dword ptr [edi + 0x14]                          // 0x00839e9b    d84714
                         {disp8} fstp       dword ptr [edi + 0x14]                          // 0x00839e9e    d95f14
                         {disp8} fld        dword ptr [esp + 0x38]                          // 0x00839ea1    d9442438
                         {disp8} fadd       dword ptr [edi + 0x18]                          // 0x00839ea5    d84718
                         {disp8} fstp       dword ptr [edi + 0x18]                          // 0x00839ea8    d95f18
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x00839eab    d944243c
                         {disp8} fadd       dword ptr [edi + 0x1c]                          // 0x00839eaf    d8471c
                         {disp8} fstp       dword ptr [edi + 0x1c]                          // 0x00839eb2    d95f1c
                         {disp8} fld        dword ptr [esp + 0x40]                          // 0x00839eb5    d9442440
                         {disp8} fadd       dword ptr [edi + 0x20]                          // 0x00839eb9    d84720
                         {disp8} fstp       dword ptr [edi + 0x20]                          // 0x00839ebc    d95f20
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x00839ebf    d9442444
                         {disp8} fadd       dword ptr [edi + 0x24]                          // 0x00839ec3    d84724
                         {disp8} fstp       dword ptr [edi + 0x24]                          // 0x00839ec6    d95f24
                         {disp8} fld        dword ptr [esp + 0x48]                          // 0x00839ec9    d9442448
                         {disp8} fadd       dword ptr [edi + 0x28]                          // 0x00839ecd    d84728
                         {disp8} fstp       dword ptr [edi + 0x28]                          // 0x00839ed0    d95f28
                         {disp8} fld        dword ptr [esp + 0x4c]                          // 0x00839ed3    d944244c
                         {disp8} fadd       dword ptr [edi + 0x2c]                          // 0x00839ed7    d8472c
_jmp_addr_0x00839eda:    {disp8} fstp       dword ptr [edi + 0x2c]                          // 0x00839eda    d95f2c
                         add                esi, 0x30                                       // 0x00839edd    83c630
                         add                eax, 0x30                                       // 0x00839ee0    83c030
                         add                edi, 0x30                                       // 0x00839ee3    83c730
                         dec                ebx                                             // 0x00839ee6    4b
                         {disp32} jne       _jmp_addr_0x00839c8a                            // 0x00839ee7    0f859dfdffff
_jmp_addr_0x00839eed:    {disp8} mov        eax, dword ptr [ebp + 0x3c]                     // 0x00839eed    8b453c
                         inc                ecx                                             // 0x00839ef0    41
                         cmp.s              ecx, eax                                        // 0x00839ef1    3bc8
                         {disp8} mov        dword ptr [esp + 0x54], ecx                     // 0x00839ef3    894c2454
                         {disp32} jl        _jmp_addr_0x00839c4c                            // 0x00839ef7    0f8c4ffdffff
                         pop                ebx                                             // 0x00839efd    5b
_jmp_addr_0x00839efe:    pop                edi                                             // 0x00839efe    5f
                         pop                esi                                             // 0x00839eff    5e
                         pop                ebp                                             // 0x00839f00    5d
                         add                esp, 0x40                                       // 0x00839f01    83c440
                         ret                0x0010                                          // 0x00839f04    c21000
                         nop                                                                // 0x00839f07    90
                         nop                                                                // 0x00839f08    90
                         nop                                                                // 0x00839f09    90
                         nop                                                                // 0x00839f0a    90
                         nop                                                                // 0x00839f0b    90
                         nop                                                                // 0x00839f0c    90
                         nop                                                                // 0x00839f0d    90
                         nop                                                                // 0x00839f0e    90
                         nop                                                                // 0x00839f0f    90
_jmp_addr_0x00839f10:    sub                esp, 0x08                                       // 0x00839f10    83ec08
                         {disp8} mov        edx, dword ptr [esp + 0x10]                     // 0x00839f13    8b542410
                         {disp8} mov        eax, dword ptr [edx + 0x0c]                     // 0x00839f17    8b420c
                         xor.s              ecx, ecx                                        // 0x00839f1a    33c9
                         test               eax, eax                                        // 0x00839f1c    85c0
                         push               esi                                             // 0x00839f1e    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x00839f1f    8b742410
                         {disp8} mov        dword ptr [esp + 0x04], ecx                     // 0x00839f23    894c2404
                         {disp8} jle        _jmp_addr_0x00839f96                            // 0x00839f27    7e6d
                         push               ebx                                             // 0x00839f29    53
                         push               ebp                                             // 0x00839f2a    55
                         push               edi                                             // 0x00839f2b    57
_jmp_addr_0x00839f2c:    {disp8} mov        eax, dword ptr [edx + 0x10]                     // 0x00839f2c    8b4210
                         mov                ebx, dword ptr [eax + ecx * 0x4]                // 0x00839f2f    8b1c88
                         {disp8} mov        eax, dword ptr [ebx + 0x0c]                     // 0x00839f32    8b430c
                         test               eax, eax                                        // 0x00839f35    85c0
                         {disp8} mov        ebp, dword ptr [ebx + 0x10]                     // 0x00839f37    8b6b10
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x00839f3a    89742414
                         {disp8} jle        _jmp_addr_0x00839f87                            // 0x00839f3e    7e47
                         xor.s              edi, edi                                        // 0x00839f40    33ff
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x00839f42    8944241c
_jmp_addr_0x00839f46:    cmp                dword ptr [ebp + 0x00], -0x01                   // 0x00839f46    837d00ff
                         {disp8} je         _jmp_addr_0x00839f60                            // 0x00839f4a    7414
                         {disp8} mov        ecx, dword ptr [ebx + 0x10]                     // 0x00839f4c    8b4b10
                         mov                eax, dword ptr [ecx + edi * 0x1]                // 0x00839f4f    8b0439
                         lea                edx, dword ptr [eax + eax * 0x2]                // 0x00839f52    8d1440
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x00839f55    8b442414
                         shl                edx, 4                                          // 0x00839f59    c1e204
                         add.s              edx, eax                                        // 0x00839f5c    03d0
                         {disp8} jmp        _jmp_addr_0x00839f64                            // 0x00839f5e    eb04
_jmp_addr_0x00839f60:    {disp8} mov        edx, dword ptr [esp + 0x24]                     // 0x00839f60    8b542424
_jmp_addr_0x00839f64:    mov.s              ecx, esi                                        // 0x00839f64    8bce
                         call               _jmp_addr_0x007faff0                            // 0x00839f66    e88510fcff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                     // 0x00839f6b    8b44241c
                         add                esi, 0x30                                       // 0x00839f6f    83c630
                         add                ebp, 0x3c                                       // 0x00839f72    83c53c
                         add                edi, 0x3c                                       // 0x00839f75    83c73c
                         dec                eax                                             // 0x00839f78    48
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x00839f79    8944241c
                         {disp8} jne        _jmp_addr_0x00839f46                            // 0x00839f7d    75c7
                         {disp8} mov        edx, dword ptr [esp + 0x20]                     // 0x00839f7f    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                     // 0x00839f83    8b4c2410
_jmp_addr_0x00839f87:    {disp8} mov        eax, dword ptr [edx + 0x0c]                     // 0x00839f87    8b420c
                         inc                ecx                                             // 0x00839f8a    41
                         cmp.s              ecx, eax                                        // 0x00839f8b    3bc8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                     // 0x00839f8d    894c2410
                         {disp8} jl         _jmp_addr_0x00839f2c                            // 0x00839f91    7c99
                         pop                edi                                             // 0x00839f93    5f
                         pop                ebp                                             // 0x00839f94    5d
                         pop                ebx                                             // 0x00839f95    5b
_jmp_addr_0x00839f96:    pop                esi                                             // 0x00839f96    5e
                         add                esp, 0x08                                       // 0x00839f97    83c408
                         ret                                                                // 0x00839f9a    c3
                         nop                                                                // 0x00839f9b    90
                         nop                                                                // 0x00839f9c    90
                         nop                                                                // 0x00839f9d    90
                         nop                                                                // 0x00839f9e    90
                         nop                                                                // 0x00839f9f    90
_jmp_addr_0x00839fa0:    {disp8} mov        eax, dword ptr [esp + 0x0c]                     // 0x00839fa0    8b44240c
                         sub                esp, 0x30                                       // 0x00839fa4    83ec30
                         push               ebx                                             // 0x00839fa7    53
                         {disp8} mov        ebx, dword ptr [esp + 0x48]                     // 0x00839fa8    8b5c2448
                         push               ebp                                             // 0x00839fac    55
                         {disp8} mov        ebp, dword ptr [esp + 0x40]                     // 0x00839fad    8b6c2440
                         push               esi                                             // 0x00839fb1    56
                         lea                esi, dword ptr [ebx + ebx * 0x2]                // 0x00839fb2    8d345b
                         shl                esi, 4                                          // 0x00839fb5    c1e604
                         push               edi                                             // 0x00839fb8    57
                         add.s              esi, ebp                                        // 0x00839fb9    03f5
                         mov                ecx, 0x0000000c                                 // 0x00839fbb    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x10]                     // 0x00839fc0    8d7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x00839fc4    f3a5
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                     // 0x00839fc6    8b4810
                         mov                edx, dword ptr [ecx]                            // 0x00839fc9    8b11
                         {disp8} mov        esi, dword ptr [edx + 0x10]                     // 0x00839fcb    8b7210
_jmp_addr_0x00839fce:    lea                eax, dword ptr [ebx + ebx * 0x2]                // 0x00839fce    8d045b
                         lea                eax, dword ptr [eax + eax * 0x4]                // 0x00839fd1    8d0480
                         mov                ebx, dword ptr [esi + eax * 0x4]                // 0x00839fd4    8b1c86
                         cmp                ebx, -0x01                                      // 0x00839fd7    83fbff
                         {disp8} je         _jmp_addr_0x00839fef                            // 0x00839fda    7413
                         lea                edx, dword ptr [ebx + ebx * 0x2]                // 0x00839fdc    8d145b
                         shl                edx, 4                                          // 0x00839fdf    c1e204
                         add.s              edx, ebp                                        // 0x00839fe2    03d5
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                     // 0x00839fe4    8d4c2410
                         call               _jmp_addr_0x007faff0                            // 0x00839fe8    e80310fcff
                         {disp8} jmp        _jmp_addr_0x00839fce                            // 0x00839fed    ebdf
_jmp_addr_0x00839fef:    {disp8} mov        edx, dword ptr [esp + 0x50]                     // 0x00839fef    8b542450
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                     // 0x00839ff3    8d4c2410
                         call               _jmp_addr_0x007faff0                            // 0x00839ff7    e8f40ffcff
                         {disp8} mov        eax, dword ptr [esp + 0x44]                     // 0x00839ffc    8b442444
                         mov                ecx, 0x0000000c                                 // 0x0083a000    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x10]                     // 0x0083a005    8d742410
                         mov.s              edi, eax                                        // 0x0083a009    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a00b    f3a5
                         pop                edi                                             // 0x0083a00d    5f
                         pop                esi                                             // 0x0083a00e    5e
                         pop                ebp                                             // 0x0083a00f    5d
                         pop                ebx                                             // 0x0083a010    5b
                         add                esp, 0x30                                       // 0x0083a011    83c430
                         ret                                                                // 0x0083a014    c3
                         nop                                                                // 0x0083a015    90
                         nop                                                                // 0x0083a016    90
                         nop                                                                // 0x0083a017    90
                         nop                                                                // 0x0083a018    90
                         nop                                                                // 0x0083a019    90
                         nop                                                                // 0x0083a01a    90
                         nop                                                                // 0x0083a01b    90
                         nop                                                                // 0x0083a01c    90
                         nop                                                                // 0x0083a01d    90
                         nop                                                                // 0x0083a01e    90
                         nop                                                                // 0x0083a01f    90
_jmp_addr_0x0083a020:    sub                esp, 0x3c                                       // 0x0083a020    83ec3c
                         {disp8} mov        eax, dword ptr [esp + 0x40]                     // 0x0083a023    8b442440
                         push               esi                                             // 0x0083a027    56
                         {disp8} mov        esi, dword ptr [esp + 0x48]                     // 0x0083a028    8b742448
                         {disp8} mov        dword ptr [esp + 0x04], eax                     // 0x0083a02c    89442404
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                     // 0x0083a030    8b460c
                         xor.s              edx, edx                                        // 0x0083a033    33d2
                         test               eax, eax                                        // 0x0083a035    85c0
                         {disp8} mov        dword ptr [esp + 0x08], edx                     // 0x0083a037    89542408
                         {disp32} jle       _jmp_addr_0x0083a0d9                            // 0x0083a03b    0f8e98000000
                         push               ebx                                             // 0x0083a041    53
                         push               ebp                                             // 0x0083a042    55
                         push               edi                                             // 0x0083a043    57
_jmp_addr_0x0083a044:    {disp8} mov        ecx, dword ptr [esi + 0x10]                     // 0x0083a044    8b4e10
                         mov                ebp, dword ptr [ecx + edx * 0x4]                // 0x0083a047    8b2c91
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                     // 0x0083a04a    8b4d0c
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                    // 0x0083a04d    8d41ff
                         test               eax, eax                                        // 0x0083a050    85c0
                         {disp8} mov        dword ptr [esp + 0x18], ecx                     // 0x0083a052    894c2418
                         {disp8} jl         _jmp_addr_0x0083a0b6                            // 0x0083a056    7c5e
                         lea                ecx, dword ptr [eax + eax * 0x2]                // 0x0083a058    8d0c40
                         lea                edi, dword ptr [ecx + ecx * 0x4]                // 0x0083a05b    8d3c89
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                     // 0x0083a05e    8b4c2450
                         lea                esi, dword ptr [eax + eax * 0x2]                // 0x0083a062    8d3440
                         shl                esi, 4                                          // 0x0083a065    c1e604
                         shl                edi, 2                                          // 0x0083a068    c1e702
                         add.s              esi, ecx                                        // 0x0083a06b    03f1
                         {disp8} lea        ebx, dword ptr [eax + 0x01]                     // 0x0083a06d    8d5801
_jmp_addr_0x0083a070:    {disp8} mov        edx, dword ptr [ebp + 0x10]                     // 0x0083a070    8b5510
                         mov                eax, dword ptr [edx + edi * 0x1]                // 0x0083a073    8b043a
                         cmp                eax, -0x01                                      // 0x0083a076    83f8ff
                         {disp8} je         _jmp_addr_0x0083a089                            // 0x0083a079    740e
                         lea                edx, dword ptr [eax + eax * 0x2]                // 0x0083a07b    8d1440
                         {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a07e    8b442410
                         shl                edx, 4                                          // 0x0083a082    c1e204
                         add.s              edx, eax                                        // 0x0083a085    03d0
                         {disp8} jmp        _jmp_addr_0x0083a08d                            // 0x0083a087    eb04
_jmp_addr_0x0083a089:    {disp8} mov        edx, dword ptr [esp + 0x58]                     // 0x0083a089    8b542458
_jmp_addr_0x0083a08d:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                     // 0x0083a08d    8d4c241c
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z               // 0x0083a091    e8fa11fcff
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                     // 0x0083a096    8d54241c
                         mov.s              ecx, esi                                        // 0x0083a09a    8bce
                         call               _jmp_addr_0x007faff0                            // 0x0083a09c    e84f0ffcff
                         sub                esi, 0x30                                       // 0x0083a0a1    83ee30
                         sub                edi, 0x3c                                       // 0x0083a0a4    83ef3c
                         dec                ebx                                             // 0x0083a0a7    4b
                         {disp8} jne        _jmp_addr_0x0083a070                            // 0x0083a0a8    75c6
                         {disp8} mov        esi, dword ptr [esp + 0x54]                     // 0x0083a0aa    8b742454
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083a0ae    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x0083a0b2    8b542414
_jmp_addr_0x0083a0b6:    {disp8} mov        edi, dword ptr [esp + 0x10]                     // 0x0083a0b6    8b7c2410
                         lea                eax, dword ptr [ecx + ecx * 0x2]                // 0x0083a0ba    8d0449
                         shl                eax, 4                                          // 0x0083a0bd    c1e004
                         add.s              edi, eax                                        // 0x0083a0c0    03f8
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                     // 0x0083a0c2    8b460c
                         inc                edx                                             // 0x0083a0c5    42
                         cmp.s              edx, eax                                        // 0x0083a0c6    3bd0
                         {disp8} mov        dword ptr [esp + 0x10], edi                     // 0x0083a0c8    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083a0cc    89542414
                         {disp32} jl        _jmp_addr_0x0083a044                            // 0x0083a0d0    0f8c6effffff
                         pop                edi                                             // 0x0083a0d6    5f
                         pop                ebp                                             // 0x0083a0d7    5d
                         pop                ebx                                             // 0x0083a0d8    5b
_jmp_addr_0x0083a0d9:    pop                esi                                             // 0x0083a0d9    5e
                         add                esp, 0x3c                                       // 0x0083a0da    83c43c
                         ret                                                                // 0x0083a0dd    c3
                         nop                                                                // 0x0083a0de    90
                         nop                                                                // 0x0083a0df    90
_jmp_addr_0x0083a0e0:    {disp8} mov        eax, dword ptr [esp + 0x08]                     // 0x0083a0e0    8b442408
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                     // 0x0083a0e4    8b4810
                         mov                eax, dword ptr [ecx]                            // 0x0083a0e7    8b01
                         push               esi                                             // 0x0083a0e9    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x0083a0ea    8b742410
                         xor.s              ecx, ecx                                        // 0x0083a0ee    33c9
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                     // 0x0083a0f0    8d54240c
                         push               edx                                             // 0x0083a0f4    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                     // 0x0083a0f5    8b54240c
                         {disp8} mov        dword ptr [esi + 0x08], ecx                     // 0x0083a0f9    894e08
                         {disp8} mov        dword ptr [esi + 0x04], ecx                     // 0x0083a0fc    894e04
                         mov                dword ptr [esi], ecx                            // 0x0083a0ff    890e
                         {disp8} mov        dword ptr [esp + 0x10], ecx                     // 0x0083a101    894c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083a105    8b4c2418
                         push               esi                                             // 0x0083a109    56
                         push               ecx                                             // 0x0083a10a    51
                         push               eax                                             // 0x0083a10b    50
                         push               edx                                             // 0x0083a10c    52
                         call               _jmp_addr_0x0083a140                            // 0x0083a10d    e82e000000
                         {disp8} fild       dword ptr [esp + 0x20]                          // 0x0083a112    db442420
                         add                esp, 0x14                                       // 0x0083a116    83c414
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                     // 0x0083a119    d83d90a38a00
                         fld                st(0)                                           // 0x0083a11f    d9c0
                         fmul               dword ptr [esi]                                 // 0x0083a121    d80e
                         fstp               dword ptr [esi]                                 // 0x0083a123    d91e
                         fld                st(0)                                           // 0x0083a125    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                          // 0x0083a127    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                          // 0x0083a12a    d95e04
                         {disp8} fmul       dword ptr [esi + 0x08]                          // 0x0083a12d    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                          // 0x0083a130    d95e08
                         pop                esi                                             // 0x0083a133    5e
                         ret                                                                // 0x0083a134    c3
                         nop                                                                // 0x0083a135    90
                         nop                                                                // 0x0083a136    90
                         nop                                                                // 0x0083a137    90
                         nop                                                                // 0x0083a138    90
                         nop                                                                // 0x0083a139    90
                         nop                                                                // 0x0083a13a    90
                         nop                                                                // 0x0083a13b    90
                         nop                                                                // 0x0083a13c    90
                         nop                                                                // 0x0083a13d    90
                         nop                                                                // 0x0083a13e    90
                         nop                                                                // 0x0083a13f    90
_jmp_addr_0x0083a140:    {disp8} mov        eax, dword ptr [esp + 0x0c]                     // 0x0083a140    8b44240c
                         sub                esp, 0x30                                       // 0x0083a144    83ec30
                         push               ebx                                             // 0x0083a147    53
                         {disp8} mov        ebx, dword ptr [esp + 0x48]                     // 0x0083a148    8b5c2448
                         push               ebp                                             // 0x0083a14c    55
                         {disp8} mov        ebp, dword ptr [esp + 0x40]                     // 0x0083a14d    8b6c2440
                         push               esi                                             // 0x0083a151    56
                         {disp8} mov        esi, dword ptr [esp + 0x4c]                     // 0x0083a152    8b74244c
                         push               edi                                             // 0x0083a156    57
_jmp_addr_0x0083a157:    {disp8} mov        edx, dword ptr [ebp + 0x10]                     // 0x0083a157    8b5510
                         lea                ecx, dword ptr [eax + eax * 0x2]                // 0x0083a15a    8d0c40
                         lea                ecx, dword ptr [ecx + ecx * 0x4]                // 0x0083a15d    8d0c89
                         lea                edi, dword ptr [edx + ecx * 0x4]                // 0x0083a160    8d3c8a
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                     // 0x0083a163    8b4f04
                         cmp                ecx, -0x01                                      // 0x0083a166    83f9ff
                         {disp8} jne        _jmp_addr_0x0083a1a9                            // 0x0083a169    753e
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                     // 0x0083a16b    8b4c2444
                         lea                eax, dword ptr [eax + eax * 0x2]                // 0x0083a16f    8d0440
                         shl                eax, 4                                          // 0x0083a172    c1e004
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x24]              // 0x0083a175    d9440824
                         {disp8} mov        edx, dword ptr [eax + ecx * 0x1 + 0x2c]         // 0x0083a179    8b54082c
                         add.s              eax, ecx                                        // 0x0083a17d    03c1
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                     // 0x0083a17f    8b4828
                         fadd               dword ptr [esi]                                 // 0x0083a182    d806
                         {disp8} mov        dword ptr [esp + 0x38], ecx                     // 0x0083a184    894c2438
                         {disp8} mov        dword ptr [esp + 0x3c], edx                     // 0x0083a188    8954243c
                         fstp               dword ptr [esi]                                 // 0x0083a18c    d91e
                         {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083a18e    d9442438
                         {disp8} fadd       dword ptr [esi + 0x04]                          // 0x0083a192    d84604
                         {disp8} fstp       dword ptr [esi + 0x04]                          // 0x0083a195    d95e04
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083a198    d944243c
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x0083a19c    d84608
                         {disp8} fstp       dword ptr [esi + 0x08]                          // 0x0083a19f    d95e08
                         mov                eax, dword ptr [ebx]                            // 0x0083a1a2    8b03
                         inc                eax                                             // 0x0083a1a4    40
                         mov                dword ptr [ebx], eax                            // 0x0083a1a5    8903
                         {disp8} jmp        _jmp_addr_0x0083a1ba                            // 0x0083a1a7    eb11
_jmp_addr_0x0083a1a9:    {disp8} mov        eax, dword ptr [esp + 0x44]                     // 0x0083a1a9    8b442444
                         push               ebx                                             // 0x0083a1ad    53
                         push               esi                                             // 0x0083a1ae    56
                         push               ecx                                             // 0x0083a1af    51
                         push               ebp                                             // 0x0083a1b0    55
                         push               eax                                             // 0x0083a1b1    50
                         call               _jmp_addr_0x0083a140                            // 0x0083a1b2    e889ffffff
                         add                esp, 0x14                                       // 0x0083a1b7    83c414
_jmp_addr_0x0083a1ba:    {disp8} mov        eax, dword ptr [edi + 0x08]                     // 0x0083a1ba    8b4708
                         cmp                eax, -0x01                                      // 0x0083a1bd    83f8ff
                         {disp8} jne        _jmp_addr_0x0083a157                            // 0x0083a1c0    7595
                         pop                edi                                             // 0x0083a1c2    5f
                         pop                esi                                             // 0x0083a1c3    5e
                         pop                ebp                                             // 0x0083a1c4    5d
                         pop                ebx                                             // 0x0083a1c5    5b
                         add                esp, 0x30                                       // 0x0083a1c6    83c430
                         ret                                                                // 0x0083a1c9    c3
                         nop                                                                // 0x0083a1ca    90
                         nop                                                                // 0x0083a1cb    90
                         nop                                                                // 0x0083a1cc    90
                         nop                                                                // 0x0083a1cd    90
                         nop                                                                // 0x0083a1ce    90
                         nop                                                                // 0x0083a1cf    90
?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z:
                                                            sub                esp, 0x1c                                       // 0x0083a1d0    83ec1c
                         push               ebx                                             // 0x0083a1d3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                     // 0x0083a1d4    8b5c2424
                         push               esi                                             // 0x0083a1d8    56
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                     // 0x0083a1d9    8b74242c
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                     // 0x0083a1dd    8b460c
                         xor.s              edx, edx                                        // 0x0083a1e0    33d2
                         test               eax, eax                                        // 0x0083a1e2    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000              // 0x0083a1e4    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000              // 0x0083a1ec    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083a1f4    89542418
                         {disp32} jle       _jmp_addr_0x0083a2ea                            // 0x0083a1f8    0f8eec000000
                         push               ebp                                             // 0x0083a1fe    55
                         push               edi                                             // 0x0083a1ff    57
_jmp_addr_0x0083a200:    {disp8} mov        eax, dword ptr [esi + 0x10]                     // 0x0083a200    8b4610
                         mov                eax, dword ptr [eax + edx * 0x4]                // 0x0083a203    8b0490
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                     // 0x0083a206    8b480c
                         test               ecx, ecx                                        // 0x0083a209    85c9
                         {disp8} mov        ebp, dword ptr [eax + 0x10]                     // 0x0083a20b    8b6810
                         {disp8} mov        dword ptr [esp + 0x24], eax                     // 0x0083a20e    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ebx                     // 0x0083a212    895c2428
                         {disp32} jle       _jmp_addr_0x0083a2ca                            // 0x0083a216    0f8eae000000
                         {disp8} lea        edx, dword ptr [ebp + 0x0c]                     // 0x0083a21c    8d550c
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000              // 0x0083a21f    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x30], edx                     // 0x0083a227    89542430
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                     // 0x0083a22b    894c241c
                         {disp8} jmp        _jmp_addr_0x0083a235                            // 0x0083a22f    eb04
_jmp_addr_0x0083a231:    {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x0083a231    8b442424
_jmp_addr_0x0083a235:    {disp8} mov        esi, dword ptr [esp + 0x30]                     // 0x0083a235    8b742430
                         mov                ecx, 0x0000000c                                 // 0x0083a239    b90c000000
                         mov.s              edi, ebx                                        // 0x0083a23e    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a240    f3a5
                         cmp                dword ptr [ebp + 0x00], -0x01                   // 0x0083a242    837d00ff
                         {disp8} je         _jmp_addr_0x0083a260                            // 0x0083a246    7418
                         {disp8} mov        eax, dword ptr [eax + 0x10]                     // 0x0083a248    8b4010
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083a24b    8b4c2418
                         mov                eax, dword ptr [eax + ecx * 0x1]                // 0x0083a24f    8b0408
                         lea                edx, dword ptr [eax + eax * 0x2]                // 0x0083a252    8d1440
                         {disp8} mov        eax, dword ptr [esp + 0x28]                     // 0x0083a255    8b442428
                         shl                edx, 4                                          // 0x0083a259    c1e204
                         add.s              edx, eax                                        // 0x0083a25c    03d0
                         {disp8} jmp        _jmp_addr_0x0083a264                            // 0x0083a25e    eb04
_jmp_addr_0x0083a260:    {disp8} mov        edx, dword ptr [esp + 0x38]                     // 0x0083a260    8b542438
_jmp_addr_0x0083a264:    mov.s              ecx, ebx                                        // 0x0083a264    8bcb
                         call               _jmp_addr_0x007faff0                            // 0x0083a266    e8850dfcff
                         {disp8} fld        dword ptr [ebx + 0x28]                          // 0x0083a26b    d94328
                         {disp8} fcomp      dword ptr [esp + 0x10]                          // 0x0083a26e    d85c2410
                         fnstsw             ax                                              // 0x0083a272    dfe0
                         test               ah, 0x41                                        // 0x0083a274    f6c441
                         {disp8} jne        _jmp_addr_0x0083a280                            // 0x0083a277    7507
                         {disp8} mov        edx, dword ptr [ebx + 0x28]                     // 0x0083a279    8b5328
                         {disp8} mov        dword ptr [esp + 0x10], edx                     // 0x0083a27c    89542410
_jmp_addr_0x0083a280:    {disp8} fld        dword ptr [ebx + 0x28]                          // 0x0083a280    d94328
                         {disp8} fcomp      dword ptr [esp + 0x14]                          // 0x0083a283    d85c2414
                         fnstsw             ax                                              // 0x0083a287    dfe0
                         test               ah, 0x01                                        // 0x0083a289    f6c401
                         {disp8} je         _jmp_addr_0x0083a295                            // 0x0083a28c    7407
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                     // 0x0083a28e    8b4328
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x0083a291    89442414
_jmp_addr_0x0083a295:    {disp8} mov        edx, dword ptr [esp + 0x30]                     // 0x0083a295    8b542430
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083a299    8b4c2418
                         mov                eax, 0x0000003c                                 // 0x0083a29d    b83c000000
                         add.s              edx, eax                                        // 0x0083a2a2    03d0
                         add.s              ecx, eax                                        // 0x0083a2a4    03c8
                         add.s              ebp, eax                                        // 0x0083a2a6    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                     // 0x0083a2a8    8b44241c
                         add                ebx, 0x30                                       // 0x0083a2ac    83c330
                         dec                eax                                             // 0x0083a2af    48
                         {disp8} mov        dword ptr [esp + 0x30], edx                     // 0x0083a2b0    89542430
                         {disp8} mov        dword ptr [esp + 0x18], ecx                     // 0x0083a2b4    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x0083a2b8    8944241c
                         {disp32} jne       _jmp_addr_0x0083a231                            // 0x0083a2bc    0f856fffffff
                         {disp8} mov        edx, dword ptr [esp + 0x20]                     // 0x0083a2c2    8b542420
                         {disp8} mov        esi, dword ptr [esp + 0x34]                     // 0x0083a2c6    8b742434
_jmp_addr_0x0083a2ca:    {disp8} mov        eax, dword ptr [esi + 0x0c]                     // 0x0083a2ca    8b460c
                         inc                edx                                             // 0x0083a2cd    42
                         cmp.s              edx, eax                                        // 0x0083a2ce    3bd0
                         {disp8} mov        dword ptr [esp + 0x20], edx                     // 0x0083a2d0    89542420
                         {disp32} jl        _jmp_addr_0x0083a200                            // 0x0083a2d4    0f8c26ffffff
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083a2da    d9442410
                         pop                edi                                             // 0x0083a2de    5f
                         {disp8} fsub       dword ptr [esp + 0x10]                          // 0x0083a2df    d8642410
                         pop                ebp                                             // 0x0083a2e3    5d
                         pop                esi                                             // 0x0083a2e4    5e
                         pop                ebx                                             // 0x0083a2e5    5b
                         add                esp, 0x1c                                       // 0x0083a2e6    83c41c
                         ret                                                                // 0x0083a2e9    c3
_jmp_addr_0x0083a2ea:    {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083a2ea    d9442408
                         pop                esi                                             // 0x0083a2ee    5e
                         {disp8} fsub       dword ptr [esp + 0x08]                          // 0x0083a2ef    d8642408
                         pop                ebx                                             // 0x0083a2f3    5b
                         add                esp, 0x1c                                       // 0x0083a2f4    83c41c
                         ret                                                                // 0x0083a2f7    c3
                         nop                                                                // 0x0083a2f8    90
                         nop                                                                // 0x0083a2f9    90
                         nop                                                                // 0x0083a2fa    90
                         nop                                                                // 0x0083a2fb    90
                         nop                                                                // 0x0083a2fc    90
                         nop                                                                // 0x0083a2fd    90
                         nop                                                                // 0x0083a2fe    90
                         nop                                                                // 0x0083a2ff    90
                         sub                esp, 0x74                                       // 0x0083a300    83ec74
                         {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083a303    8b442478
                         {disp8} mov        edx, dword ptr [eax + 0x04]                     // 0x0083a307    8b5004
                         test               dh, 0x01                                        // 0x0083a30a    f6c601
                         push               esi                                             // 0x0083a30d    56
                         {disp8} mov        dword ptr [esp + 0x14], ecx                     // 0x0083a30e    894c2414
                         {disp32} je        _jmp_addr_0x0083a47a                            // 0x0083a312    0f8462010000
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                     // 0x0083a318    8b4138
                         xor.s              esi, esi                                        // 0x0083a31b    33f6
                         test               eax, eax                                        // 0x0083a31d    85c0
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x0083a31f    89742410
                         {disp32} jle       _jmp_addr_0x0083a47a                            // 0x0083a323    0f8e51010000
                         push               ebx                                             // 0x0083a329    53
                         push               ebp                                             // 0x0083a32a    55
                         push               edi                                             // 0x0083a32b    57
_jmp_addr_0x0083a32c:    {disp32} mov       edx, dword ptr [esp + 0x00000088]               // 0x0083a32c    8b942488000000
                         {disp8} mov        eax, dword ptr [edx + 0x10]                     // 0x0083a333    8b4210
                         mov                edx, dword ptr [eax]                            // 0x0083a336    8b10
                         {disp8} mov        edi, dword ptr [edx + 0x10]                     // 0x0083a338    8b7a10
                         {disp8} mov        dword ptr [esp + 0x18], edi                     // 0x0083a33b    897c2418
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083a33f    e85c030000
                         mov                eax, dword ptr [eax + esi * 0x4]                // 0x0083a344    8b04b0
                         mov                ecx, dword ptr [eax]                            // 0x0083a347    8b08
                         mov                ebx, dword ptr [ecx]                            // 0x0083a349    8b19
                         mov                eax, dword ptr [ebx]                            // 0x0083a34b    8b03
                         xor.s              ebp, ebp                                        // 0x0083a34d    33ed
                         cmp.s              eax, ebp                                        // 0x0083a34f    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], ebp                     // 0x0083a351    896c2410
                         {disp8} jle        _jmp_addr_0x0083a3b3                            // 0x0083a355    7e5c
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083a357    897c2414
_jmp_addr_0x0083a35b:    {disp32} mov       edx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a35b    8b159c7dc300
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                     // 0x0083a361    8b7304
                         lea                eax, dword ptr [edx + ebp * 0x1]                // 0x0083a364    8d042a
                         add.s              esi, ebp                                        // 0x0083a367    03f5
                         mov                ecx, 0x0000000c                                 // 0x0083a369    b90c000000
                         mov.s              edi, eax                                        // 0x0083a36e    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a370    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x0083a372    8b4c2414
                         mov                ecx, dword ptr [ecx]                            // 0x0083a376    8b09
                         cmp                ecx, -0x01                                      // 0x0083a378    83f9ff
                         {disp8} je         _jmp_addr_0x0083a392                            // 0x0083a37b    7415
                         lea                edx, dword ptr [ecx + ecx * 0x2]                // 0x0083a37d    8d1449
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a380    8b0d9c7dc300
                         shl                edx, 4                                          // 0x0083a386    c1e204
                         add.s              edx, ecx                                        // 0x0083a389    03d1
                         mov.s              ecx, eax                                        // 0x0083a38b    8bc8
                         call               _jmp_addr_0x007faff0                            // 0x0083a38d    e85e0cfcff
_jmp_addr_0x0083a392:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a392    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x0083a396    8b542414
                         mov                ecx, dword ptr [ebx]                            // 0x0083a39a    8b0b
                         inc                eax                                             // 0x0083a39c    40
                         add                edx, 0x3c                                       // 0x0083a39d    83c23c
                         add                ebp, 0x30                                       // 0x0083a3a0    83c530
                         cmp.s              eax, ecx                                        // 0x0083a3a3    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083a3a5    89442410
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083a3a9    89542414
                         {disp8} jl         _jmp_addr_0x0083a35b                            // 0x0083a3ad    7cac
                         {disp8} mov        edi, dword ptr [esp + 0x18]                     // 0x0083a3af    8b7c2418
_jmp_addr_0x0083a3b3:    mov                eax, dword ptr [ebx]                            // 0x0083a3b3    8b03
                         xor.s              esi, esi                                        // 0x0083a3b5    33f6
                         test               eax, eax                                        // 0x0083a3b7    85c0
                         {disp8} jle        _jmp_addr_0x0083a3d5                            // 0x0083a3b9    7e1a
                         xor.s              ebp, ebp                                        // 0x0083a3bb    33ed
_jmp_addr_0x0083a3bd:    {disp32} mov       edx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a3bd    8b159c7dc300
                         lea                ecx, dword ptr [edx + ebp * 0x1]                // 0x0083a3c3    8d0c2a
                         call               _jmp_addr_0x007fb5c0                            // 0x0083a3c6    e8f511fcff
                         mov                eax, dword ptr [ebx]                            // 0x0083a3cb    8b03
                         inc                esi                                             // 0x0083a3cd    46
                         add                ebp, 0x30                                       // 0x0083a3ce    83c530
                         cmp.s              esi, eax                                        // 0x0083a3d1    3bf0
                         {disp8} jl         _jmp_addr_0x0083a3bd                            // 0x0083a3d3    7ce8
_jmp_addr_0x0083a3d5:    mov                eax, dword ptr [ebx]                            // 0x0083a3d5    8b03
                         xor.s              edx, edx                                        // 0x0083a3d7    33d2
                         cmp.s              eax, edx                                        // 0x0083a3d9    3bc2
                         {disp8} mov        dword ptr [esp + 0x10], edx                     // 0x0083a3db    89542410
                         {disp8} jle        _jmp_addr_0x0083a45f                            // 0x0083a3df    7e7e
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083a3e1    89542418
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083a3e5    897c2414
_jmp_addr_0x0083a3e9:    {disp8} mov        ebp, dword ptr [ebx + 0x04]                     // 0x0083a3e9    8b6b04
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271d9c]          // 0x0083a3ec    a19c7dc300
                         add.s              ebp, edx                                        // 0x0083a3f1    03ea
                         lea                esi, dword ptr [edx + eax * 0x1]                // 0x0083a3f3    8d3402
                         mov                ecx, 0x0000000c                                 // 0x0083a3f6    b90c000000
                         mov.s              edi, ebp                                        // 0x0083a3fb    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a3fd    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x0083a3ff    8b4c2414
                         mov                eax, dword ptr [ecx]                            // 0x0083a403    8b01
                         cmp                eax, -0x01                                      // 0x0083a405    83f8ff
                         {disp8} je         _jmp_addr_0x0083a43e                            // 0x0083a408    7434
                         lea                esi, dword ptr [eax + eax * 0x2]                // 0x0083a40a    8d3440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271d9c]          // 0x0083a40d    a19c7dc300
                         shl                esi, 4                                          // 0x0083a412    c1e604
                         add.s              esi, eax                                        // 0x0083a415    03f0
                         mov                ecx, 0x0000000c                                 // 0x0083a417    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x24]                     // 0x0083a41c    8d7c2424
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a420    f3a5
                         {disp8} lea        edx, dword ptr [esp + 0x24]                     // 0x0083a422    8d542424
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                     // 0x0083a426    8d4c2454
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z               // 0x0083a42a    e8610efcff
                         {disp8} lea        edx, dword ptr [esp + 0x54]                     // 0x0083a42f    8d542454
                         mov.s              ecx, ebp                                        // 0x0083a433    8bcd
                         call               _jmp_addr_0x007faff0                            // 0x0083a435    e8b60bfcff
                         {disp8} mov        edx, dword ptr [esp + 0x18]                     // 0x0083a43a    8b542418
_jmp_addr_0x0083a43e:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a43e    8b442410
                         {disp8} mov        esi, dword ptr [esp + 0x14]                     // 0x0083a442    8b742414
                         mov                ecx, dword ptr [ebx]                            // 0x0083a446    8b0b
                         inc                eax                                             // 0x0083a448    40
                         add                edx, 0x30                                       // 0x0083a449    83c230
                         add                esi, 0x3c                                       // 0x0083a44c    83c63c
                         cmp.s              eax, ecx                                        // 0x0083a44f    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083a451    89442410
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083a455    89542418
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x0083a459    89742414
                         {disp8} jl         _jmp_addr_0x0083a3e9                            // 0x0083a45d    7c8a
_jmp_addr_0x0083a45f:    {disp8} mov        esi, dword ptr [esp + 0x1c]                     // 0x0083a45f    8b74241c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                     // 0x0083a463    8b4c2420
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                     // 0x0083a467    8b4138
                         inc                esi                                             // 0x0083a46a    46
                         cmp.s              esi, eax                                        // 0x0083a46b    3bf0
                         {disp8} mov        dword ptr [esp + 0x1c], esi                     // 0x0083a46d    8974241c
                         {disp32} jl        _jmp_addr_0x0083a32c                            // 0x0083a471    0f8cb5feffff
                         pop                edi                                             // 0x0083a477    5f
                         pop                ebp                                             // 0x0083a478    5d
                         pop                ebx                                             // 0x0083a479    5b
_jmp_addr_0x0083a47a:    pop                esi                                             // 0x0083a47a    5e
                         add                esp, 0x74                                       // 0x0083a47b    83c474
                         ret                0x0004                                          // 0x0083a47e    c20400
                         nop                                                                // 0x0083a481    90
                         nop                                                                // 0x0083a482    90
                         nop                                                                // 0x0083a483    90
                         nop                                                                // 0x0083a484    90
                         nop                                                                // 0x0083a485    90
                         nop                                                                // 0x0083a486    90
                         nop                                                                // 0x0083a487    90
                         nop                                                                // 0x0083a488    90
                         nop                                                                // 0x0083a489    90
                         nop                                                                // 0x0083a48a    90
                         nop                                                                // 0x0083a48b    90
                         nop                                                                // 0x0083a48c    90
                         nop                                                                // 0x0083a48d    90
                         nop                                                                // 0x0083a48e    90
                         nop                                                                // 0x0083a48f    90
                         sub                esp, 0x74                                       // 0x0083a490    83ec74
                         push               ebp                                             // 0x0083a493    55
                         mov.s              ebp, ecx                                        // 0x0083a494    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x38]                     // 0x0083a496    8b4538
                         push               esi                                             // 0x0083a499    56
                         xor.s              esi, esi                                        // 0x0083a49a    33f6
                         test               eax, eax                                        // 0x0083a49c    85c0
                         {disp8} mov        dword ptr [esp + 0x14], ebp                     // 0x0083a49e    896c2414
                         {disp8} mov        dword ptr [esp + 0x18], esi                     // 0x0083a4a2    89742418
                         {disp32} jle       _jmp_addr_0x0083a600                            // 0x0083a4a6    0f8e54010000
                         push               ebx                                             // 0x0083a4ac    53
                         push               edi                                             // 0x0083a4ad    57
_jmp_addr_0x0083a4ae:    mov.s              ecx, ebp                                        // 0x0083a4ae    8bcd
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083a4b0    e8eb010000
                         mov                eax, dword ptr [eax + esi * 0x4]                // 0x0083a4b5    8b04b0
                         mov                ecx, dword ptr [eax]                            // 0x0083a4b8    8b08
                         mov                ebx, dword ptr [ecx]                            // 0x0083a4ba    8b19
                         cmp                dword ptr [ebx], 0x00                           // 0x0083a4bc    833b00
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000              // 0x0083a4bf    c744241000000000
                         {disp8} jle        _jmp_addr_0x0083a52c                            // 0x0083a4c7    7e63
                         {disp32} mov       edx, dword ptr [esp + 0x00000088]               // 0x0083a4c9    8b942488000000
                         xor.s              ebp, ebp                                        // 0x0083a4d0    33ed
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083a4d2    89542414
_jmp_addr_0x0083a4d6:    {disp32} mov       eax, dword ptr [data_bytes + 0x271d9c]          // 0x0083a4d6    a19c7dc300
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                     // 0x0083a4db    8b7304
                         add.s              eax, ebp                                        // 0x0083a4de    03c5
                         add.s              esi, ebp                                        // 0x0083a4e0    03f5
                         mov                ecx, 0x0000000c                                 // 0x0083a4e2    b90c000000
                         mov.s              edi, eax                                        // 0x0083a4e7    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a4e9    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x0083a4eb    8b4c2414
                         mov                ecx, dword ptr [ecx]                            // 0x0083a4ef    8b09
                         cmp                ecx, -0x01                                      // 0x0083a4f1    83f9ff
                         {disp8} je         _jmp_addr_0x0083a50b                            // 0x0083a4f4    7415
                         lea                edx, dword ptr [ecx + ecx * 0x2]                // 0x0083a4f6    8d1449
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a4f9    8b0d9c7dc300
                         shl                edx, 4                                          // 0x0083a4ff    c1e204
                         add.s              edx, ecx                                        // 0x0083a502    03d1
                         mov.s              ecx, eax                                        // 0x0083a504    8bc8
                         call               _jmp_addr_0x007faff0                            // 0x0083a506    e8e50afcff
_jmp_addr_0x0083a50b:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a50b    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x0083a50f    8b542414
                         mov                ecx, dword ptr [ebx]                            // 0x0083a513    8b0b
                         inc                eax                                             // 0x0083a515    40
                         add                edx, 0x04                                       // 0x0083a516    83c204
                         add                ebp, 0x30                                       // 0x0083a519    83c530
                         cmp.s              eax, ecx                                        // 0x0083a51c    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083a51e    89442410
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083a522    89542414
                         {disp8} jl         _jmp_addr_0x0083a4d6                            // 0x0083a526    7cae
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                     // 0x0083a528    8b6c241c
_jmp_addr_0x0083a52c:    mov                eax, dword ptr [ebx]                            // 0x0083a52c    8b03
                         xor.s              esi, esi                                        // 0x0083a52e    33f6
                         test               eax, eax                                        // 0x0083a530    85c0
                         {disp8} jle        _jmp_addr_0x0083a54e                            // 0x0083a532    7e1a
                         xor.s              edi, edi                                        // 0x0083a534    33ff
_jmp_addr_0x0083a536:    {disp32} mov       edx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a536    8b159c7dc300
                         lea                ecx, dword ptr [edi + edx * 0x1]                // 0x0083a53c    8d0c17
                         call               _jmp_addr_0x007fb5c0                            // 0x0083a53f    e87c10fcff
                         mov                eax, dword ptr [ebx]                            // 0x0083a544    8b03
                         inc                esi                                             // 0x0083a546    46
                         add                edi, 0x30                                       // 0x0083a547    83c730
                         cmp.s              esi, eax                                        // 0x0083a54a    3bf0
                         {disp8} jl         _jmp_addr_0x0083a536                            // 0x0083a54c    7ce8
_jmp_addr_0x0083a54e:    mov                eax, dword ptr [ebx]                            // 0x0083a54e    8b03
                         xor.s              edx, edx                                        // 0x0083a550    33d2
                         cmp.s              eax, edx                                        // 0x0083a552    3bc2
                         {disp8} mov        dword ptr [esp + 0x10], edx                     // 0x0083a554    89542410
                         {disp32} jle       _jmp_addr_0x0083a5ea                            // 0x0083a558    0f8e8c000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]               // 0x0083a55e    8b842488000000
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083a565    89542418
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x0083a569    89442414
_jmp_addr_0x0083a56d:    {disp8} mov        esi, dword ptr [ebx + 0x04]                     // 0x0083a56d    8b7304
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x271d9c]          // 0x0083a570    8b0d9c7dc300
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083a576    8b442414
                         mov.s              ebp, edx                                        // 0x0083a57a    8bea
                         add.s              ebp, esi                                        // 0x0083a57c    03ee
                         lea                esi, dword ptr [edx + ecx * 0x1]                // 0x0083a57e    8d340a
                         mov                ecx, 0x0000000c                                 // 0x0083a581    b90c000000
                         mov.s              edi, ebp                                        // 0x0083a586    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a588    f3a5
                         mov                eax, dword ptr [eax]                            // 0x0083a58a    8b00
                         cmp                eax, -0x01                                      // 0x0083a58c    83f8ff
                         {disp8} je         _jmp_addr_0x0083a5c5                            // 0x0083a58f    7434
                         lea                esi, dword ptr [eax + eax * 0x2]                // 0x0083a591    8d3440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271d9c]          // 0x0083a594    a19c7dc300
                         shl                esi, 4                                          // 0x0083a599    c1e604
                         add.s              esi, eax                                        // 0x0083a59c    03f0
                         mov                ecx, 0x0000000c                                 // 0x0083a59e    b90c000000
                         {disp8} lea        edi, dword ptr [esp + 0x24]                     // 0x0083a5a3    8d7c2424
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a5a7    f3a5
                         {disp8} lea        edx, dword ptr [esp + 0x24]                     // 0x0083a5a9    8d542424
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                     // 0x0083a5ad    8d4c2454
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z               // 0x0083a5b1    e8da0cfcff
                         {disp8} lea        edx, dword ptr [esp + 0x54]                     // 0x0083a5b6    8d542454
                         mov.s              ecx, ebp                                        // 0x0083a5ba    8bcd
                         call               _jmp_addr_0x007faff0                            // 0x0083a5bc    e82f0afcff
                         {disp8} mov        edx, dword ptr [esp + 0x18]                     // 0x0083a5c1    8b542418
_jmp_addr_0x0083a5c5:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a5c5    8b442410
                         {disp8} mov        esi, dword ptr [esp + 0x14]                     // 0x0083a5c9    8b742414
                         mov                ecx, dword ptr [ebx]                            // 0x0083a5cd    8b0b
                         inc                eax                                             // 0x0083a5cf    40
                         add                edx, 0x30                                       // 0x0083a5d0    83c230
                         add                esi, 0x04                                       // 0x0083a5d3    83c604
                         cmp.s              eax, ecx                                        // 0x0083a5d6    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083a5d8    89442410
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083a5dc    89542418
                         {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x0083a5e0    89742414
                         {disp8} jl         _jmp_addr_0x0083a56d                            // 0x0083a5e4    7c87
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                     // 0x0083a5e6    8b6c241c
_jmp_addr_0x0083a5ea:    {disp8} mov        esi, dword ptr [esp + 0x20]                     // 0x0083a5ea    8b742420
                         {disp8} mov        eax, dword ptr [ebp + 0x38]                     // 0x0083a5ee    8b4538
                         inc                esi                                             // 0x0083a5f1    46
                         cmp.s              esi, eax                                        // 0x0083a5f2    3bf0
                         {disp8} mov        dword ptr [esp + 0x20], esi                     // 0x0083a5f4    89742420
                         {disp32} jl        _jmp_addr_0x0083a4ae                            // 0x0083a5f8    0f8cb0feffff
                         pop                edi                                             // 0x0083a5fe    5f
                         pop                ebx                                             // 0x0083a5ff    5b
_jmp_addr_0x0083a600:    pop                esi                                             // 0x0083a600    5e
                         pop                ebp                                             // 0x0083a601    5d
                         add                esp, 0x74                                       // 0x0083a602    83c474
                         ret                0x0008                                          // 0x0083a605    c20800
                         nop                                                                // 0x0083a608    90
                         nop                                                                // 0x0083a609    90
                         nop                                                                // 0x0083a60a    90
                         nop                                                                // 0x0083a60b    90
                         nop                                                                // 0x0083a60c    90
                         nop                                                                // 0x0083a60d    90
                         nop                                                                // 0x0083a60e    90
                         nop                                                                // 0x0083a60f    90
_jmp_addr_0x0083a610:    push               esi                                             // 0x0083a610    56
                         mov.s              esi, ecx                                        // 0x0083a611    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                     // 0x0083a613    8b464c
                         push               edi                                             // 0x0083a616    57
                         add.s              eax, esi                                        // 0x0083a617    03c6
                         push               eax                                             // 0x0083a619    50
                         call               _jmp_addr_0x0083abf0                            // 0x0083a61a    e8d1050000
                         {disp8} mov        eax, dword ptr [esi + 0x38]                     // 0x0083a61f    8b4638
                         xor.s              edi, edi                                        // 0x0083a622    33ff
                         test               eax, eax                                        // 0x0083a624    85c0
                         {disp8} jle        _jmp_addr_0x0083a679                            // 0x0083a626    7e51
                         push               ebx                                             // 0x0083a628    53
_jmp_addr_0x0083a629:    mov.s              ecx, esi                                        // 0x0083a629    8bce
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083a62b    e870000000
                         mov                ebx, dword ptr [eax + edi * 0x4]                // 0x0083a630    8b1cb8
                         mov.s              ecx, esi                                        // 0x0083a633    8bce
                         add.s              ebx, esi                                        // 0x0083a635    03de
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083a637    e864000000
                         mov.s              ecx, esi                                        // 0x0083a63c    8bce
                         mov                dword ptr [eax + edi * 0x4], ebx                // 0x0083a63e    891cb8
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083a641    e85a000000
                         mov                eax, dword ptr [eax + edi * 0x4]                // 0x0083a646    8b04b8
                         add                dword ptr [eax], esi                            // 0x0083a649    0130
                         {disp8} mov        edx, dword ptr [esi + 0x3c]                     // 0x0083a64b    8b563c
                         xor.s              ecx, ecx                                        // 0x0083a64e    33c9
                         test               edx, edx                                        // 0x0083a650    85d2
                         {disp8} jle        _jmp_addr_0x0083a670                            // 0x0083a652    7e1c
_jmp_addr_0x0083a654:    mov                edx, dword ptr [eax]                            // 0x0083a654    8b10
                         mov                ebx, dword ptr [edx + ecx * 0x4]                // 0x0083a656    8b1c8a
                         lea                edx, dword ptr [edx + ecx * 0x4]                // 0x0083a659    8d148a
                         add.s              ebx, esi                                        // 0x0083a65c    03de
                         mov                dword ptr [edx], ebx                            // 0x0083a65e    891a
                         mov                edx, dword ptr [eax]                            // 0x0083a660    8b10
                         mov                edx, dword ptr [edx + ecx * 0x4]                // 0x0083a662    8b148a
                         add                dword ptr [edx + 0x04], esi                     // 0x0083a665    017204
                         {disp8} mov        edx, dword ptr [esi + 0x3c]                     // 0x0083a668    8b563c
                         inc                ecx                                             // 0x0083a66b    41
                         cmp.s              ecx, edx                                        // 0x0083a66c    3bca
                         {disp8} jl         _jmp_addr_0x0083a654                            // 0x0083a66e    7ce4
_jmp_addr_0x0083a670:    {disp8} mov        eax, dword ptr [esi + 0x38]                     // 0x0083a670    8b4638
                         inc                edi                                             // 0x0083a673    47
                         cmp.s              edi, eax                                        // 0x0083a674    3bf8
                         {disp8} jl         _jmp_addr_0x0083a629                            // 0x0083a676    7cb1
                         pop                ebx                                             // 0x0083a678    5b
_jmp_addr_0x0083a679:    {disp8} fld        dword ptr [esi + 0x28]                          // 0x0083a679    d94628
                         fabs                                                               // 0x0083a67c    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0xfaad8]               // 0x0083a67e    dc1dd83a9a00
                         fnstsw             ax                                              // 0x0083a684    dfe0
                         test               ah, 0x01                                        // 0x0083a686    f6c401
                         {disp8} je         _jmp_addr_0x0083a692                            // 0x0083a689    7407
                         or                 dword ptr [esi + 0x50], 0x200                   // 0x0083a68b    814e5000020000
_jmp_addr_0x0083a692:    pop                edi                                             // 0x0083a692    5f
                         pop                esi                                             // 0x0083a693    5e
                         ret                                                                // 0x0083a694    c3
                         nop                                                                // 0x0083a695    90
                         nop                                                                // 0x0083a696    90
                         nop                                                                // 0x0083a697    90
                         nop                                                                // 0x0083a698    90
                         nop                                                                // 0x0083a699    90
                         nop                                                                // 0x0083a69a    90
                         nop                                                                // 0x0083a69b    90
                         nop                                                                // 0x0083a69c    90
                         nop                                                                // 0x0083a69d    90
                         nop                                                                // 0x0083a69e    90
                         nop                                                                // 0x0083a69f    90
?GetListPtrFrames@LH3DAnim@@QAEHXZ:
                                     push               esi                                             // 0x0083a6a0    56
                         mov.s              esi, ecx                                        // 0x0083a6a1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x50]                     // 0x0083a6a3    8b4650
                         test               ah, 0x08                                        // 0x0083a6a6    f6c408
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                     // 0x0083a6a9    8b464c
                         {disp8} je         _jmp_addr_0x0083a6c2                            // 0x0083a6ac    7414
                         test               eax, eax                                        // 0x0083a6ae    85c0
                         {disp8} jne        _jmp_addr_0x0083a6b7                            // 0x0083a6b0    7505
                         call               _jmp_addr_0x0083a950                            // 0x0083a6b2    e899020000
_jmp_addr_0x0083a6b7:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3eb0]          // 0x0083a6b7    a1b09eea00
                         {disp8} mov        dword ptr [esi + 0x54], eax                     // 0x0083a6bc    894654
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                     // 0x0083a6bf    8b464c
_jmp_addr_0x0083a6c2:    pop                esi                                             // 0x0083a6c2    5e
                         ret                                                                // 0x0083a6c3    c3
                         nop                                                                // 0x0083a6c4    90
                         nop                                                                // 0x0083a6c5    90
                         nop                                                                // 0x0083a6c6    90
                         nop                                                                // 0x0083a6c7    90
                         nop                                                                // 0x0083a6c8    90
                         nop                                                                // 0x0083a6c9    90
                         nop                                                                // 0x0083a6ca    90
                         nop                                                                // 0x0083a6cb    90
                         nop                                                                // 0x0083a6cc    90
                         nop                                                                // 0x0083a6cd    90
                         nop                                                                // 0x0083a6ce    90
                         nop                                                                // 0x0083a6cf    90
                         push               -0x1                                            // 0x0083a6d0    6aff
                         push               0x008a8141                                      // 0x0083a6d2    6841818a00
                         {disp32} mov       eax, fs:[0x0]                                   // 0x0083a6d7    64a100000000
                         push               eax                                             // 0x0083a6dd    50
                         {disp32} mov       fs:[0x0], esp                                   // 0x0083a6de    64892500000000
                         sub                esp, 0x000000d4                                 // 0x0083a6e5    81ecd4000000
                         push               ebx                                             // 0x0083a6eb    53
                         push               ebp                                             // 0x0083a6ec    55
                         push               esi                                             // 0x0083a6ed    56
                         push               edi                                             // 0x0083a6ee    57
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                     // 0x0083a6ef    8d4c245c
                         call               _jmp_addr_0x0046edb0                            // 0x0083a6f3    e8b846c3ff
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                     // 0x0083a6f8    8d4c246c
                         {disp32} mov       dword ptr [esp + 0x000000ec], 0x00000000        // 0x0083a6fc    c78424ec00000000000000
                         call               _jmp_addr_0x0046d720                            // 0x0083a707    e81430c3ff
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                     // 0x0083a70c    8d4c2458
                         {disp8} mov        dword ptr [esp + 0x58], 0x008c4d14              // 0x0083a710    c7442458144d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                       // 0x0083a718    e8433abfff
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                     // 0x0083a71d    8d4c2458
                         {disp32} mov       dword ptr [esp + 0x000000ec], 0x00000001        // 0x0083a721    c78424ec00000001000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x008c4d0c              // 0x0083a72c    c74424580c4d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                       // 0x0083a734    e8273abfff
                         {disp32} mov       eax, dword ptr [esp + 0x000000f8]               // 0x0083a739    8b8424f8000000
                         push               eax                                             // 0x0083a740    50
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                     // 0x0083a741    8d4c245c
                         call               @SetName__6LHFileFPCc@12                        // 0x0083a745    e8462cf8ff
                         push               0x0                                             // 0x0083a74a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                     // 0x0083a74c    8d4c245c
                         {disp32} mov       dword ptr [esp + 0x000000f0], 0x00000002        // 0x0083a750    c78424f000000002000000
                         call               @Open__14LHReleasedFileF12LH_FILE_MODE@12       // 0x0083a75b    e8d02ff8ff
                         {disp32} mov       ebp, dword ptr [esp + 0x000000f4]               // 0x0083a760    8bac24f4000000
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                     // 0x0083a767    8b4504
                         lea                ecx, dword ptr [eax + eax * 0x2]                // 0x0083a76a    8d0c40
                         shl                ecx, 3                                          // 0x0083a76d    c1e103
                         sub.s              ecx, eax                                        // 0x0083a770    2bc8
                         {disp32} lea       esi, dword ptr [ecx * 0x4 + 0x00000008]         // 0x0083a772    8d348d08000000
                         push               esi                                             // 0x0083a779    56
                         {disp8} mov        dword ptr [esp + 0x28], esi                     // 0x0083a77a    89742428
                         call               _malloc                                         // 0x0083a77e    e8c9bef8ff
                         mov.s              ebx, eax                                        // 0x0083a783    8bd8
                         mov.s              ecx, esi                                        // 0x0083a785    8bce
                         mov.s              edx, ecx                                        // 0x0083a787    8bd1
                         shr                ecx, 2                                          // 0x0083a789    c1e902
                         xor.s              eax, eax                                        // 0x0083a78c    33c0
                         mov.s              edi, ebx                                        // 0x0083a78e    8bfb
                         rep stosd                                                          // 0x0083a790    f3ab
                         mov.s              ecx, edx                                        // 0x0083a792    8bca
                         and                ecx, 0x03                                       // 0x0083a794    83e103
                         rep stosb                                                          // 0x0083a797    f3aa
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                     // 0x0083a799    8b4504
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000008]         // 0x0083a79c    8d0cc508000000
                         mov.s              eax, ecx                                        // 0x0083a7a3    8bc1
                         shr                ecx, 2                                          // 0x0083a7a5    c1e902
                         mov.s              esi, ebp                                        // 0x0083a7a8    8bf5
                         mov.s              edi, ebx                                        // 0x0083a7aa    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a7ac    f3a5
                         mov.s              ecx, eax                                        // 0x0083a7ae    8bc8
                         and                ecx, 0x03                                       // 0x0083a7b0    83e103
                         rep movsb                                                          // 0x0083a7b3    f3a4
                         {disp8} mov        esi, dword ptr [ebp + 0x04]                     // 0x0083a7b5    8b7504
                         xor.s              eax, eax                                        // 0x0083a7b8    33c0
                         {disp8} mov        dword ptr [esp + 0x54], eax                     // 0x0083a7ba    89442454
                         {disp8} mov        dword ptr [esp + 0x58], eax                     // 0x0083a7be    89442458
                         mov                ecx, 0x00000008                                 // 0x0083a7c2    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x30]                     // 0x0083a7c7    8d7c2430
                         rep stosd                                                          // 0x0083a7cb    f3ab
                         add                esp, 0x04                                       // 0x0083a7cd    83c404
                         test               esi, esi                                        // 0x0083a7d0    85f6
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                     // 0x0083a7d2    895c241c
                         {disp8} lea        edx, dword ptr [ebx + esi * 0x8 + 0x08]         // 0x0083a7d6    8d54f308
                         stosb                                                              // 0x0083a7da    aa
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083a7db    c744241400000000
                         {disp32} jle       _jmp_addr_0x0083a8d1                            // 0x0083a7e3    0f8ee8000000
                         {disp8} lea        ecx, dword ptr [ebp + 0x0c]                     // 0x0083a7e9    8d4d0c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                     // 0x0083a7ec    894c2418
                         mov.s              ecx, ebp                                        // 0x0083a7f0    8bcd
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                     // 0x0083a7f2    8d4308
                         sub.s              ecx, ebx                                        // 0x0083a7f5    2bcb
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083a7f7    89442410
                         {disp8} mov        dword ptr [esp + 0x20], ecx                     // 0x0083a7fb    894c2420
                         {disp8} jmp        _jmp_addr_0x0083a80d                            // 0x0083a7ff    eb0c
_jmp_addr_0x0083a801:    {disp8} mov        edx, dword ptr [esp + 0x28]                     // 0x0083a801    8b542428
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                     // 0x0083a805    8b4c2420
                         {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083a809    8b442410
_jmp_addr_0x0083a80d:    mov                ebx, dword ptr [ecx + eax * 0x1]                // 0x0083a80d    8b1c01
                         add.s              ebx, ebp                                        // 0x0083a810    03dd
                         mov.s              edi, edx                                        // 0x0083a812    8bfa
                         mov.s              esi, ebx                                        // 0x0083a814    8bf3
                         mov                ecx, 0x00000015                                 // 0x0083a816    b915000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a81b    f3a5
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                     // 0x0083a81d    8b74241c
                         mov.s              ecx, edx                                        // 0x0083a821    8bca
                         add                edx, 0x54                                       // 0x0083a823    83c254
                         {disp8} mov        dword ptr [esp + 0x28], edx                     // 0x0083a826    89542428
                         {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x0083a82a    8b542414
                         sub.s              ecx, esi                                        // 0x0083a82e    2bce
                         push               edx                                             // 0x0083a830    52
                         mov                dword ptr [eax], ecx                            // 0x0083a831    8908
                         {disp32} lea       eax, dword ptr [esp + 0x000000c8]               // 0x0083a833    8d8424c8000000
                         push               0x00c39064                                      // 0x0083a83a    686490c300
                         push               eax                                             // 0x0083a83f    50
                         add                ebx, 0x54                                       // 0x0083a840    83c354
                         call               _sprintf                                        // 0x0083a843    e88aaff8ff
                         or                 ecx, 0xffffffff                                 // 0x0083a848    83c9ff
                         xor.s              eax, eax                                        // 0x0083a84b    33c0
                         add                esp, 0x0c                                       // 0x0083a84d    83c40c
                         {disp32} lea       edi, dword ptr [esp + 0x000000c4]               // 0x0083a850    8dbc24c4000000
                         repne scasb                                                        // 0x0083a857    f2ae
                         not                ecx                                             // 0x0083a859    f7d1
                         sub.s              edi, ecx                                        // 0x0083a85b    2bf9
                         mov.s              eax, ecx                                        // 0x0083a85d    8bc1
                         shr                ecx, 2                                          // 0x0083a85f    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                     // 0x0083a862    8d54242c
                         mov.s              esi, edi                                        // 0x0083a866    8bf7
                         mov.s              edi, edx                                        // 0x0083a868    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a86a    f3a5
                         mov.s              ecx, eax                                        // 0x0083a86c    8bc8
                         and                ecx, 0x03                                       // 0x0083a86e    83e103
                         rep movsb                                                          // 0x0083a871    f3a4
                         {disp8} mov        esi, dword ptr [esp + 0x18]                     // 0x0083a873    8b742418
                         mov                ecx, dword ptr [esi]                            // 0x0083a877    8b0e
                         {disp32} lea       edx, dword ptr [esp + 0x000000c4]               // 0x0083a879    8d9424c4000000
                         push               edx                                             // 0x0083a880    52
                         sub                ecx, 0x54                                       // 0x0083a881    83e954
                         push               0x00c3905c                                      // 0x0083a884    685c90c300
                         {disp8} mov        dword ptr [esp + 0x58], ecx                     // 0x0083a889    894c2458
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                     // 0x0083a88d    895c245c
                         call               _Report3D__FPCce                                // 0x0083a891    e83a13feff
                         add                esp, 0x08                                       // 0x0083a896    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                     // 0x0083a899    8d44242c
                         push               eax                                             // 0x0083a89d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                     // 0x0083a89e    8d4c245c
                         call               _jmp_addr_0x007bda90                            // 0x0083a8a2    e8e931f8ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083a8a7    8b442414
                         {disp8} mov        edi, dword ptr [esp + 0x10]                     // 0x0083a8ab    8b7c2410
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                     // 0x0083a8af    8b4d04
                         inc                eax                                             // 0x0083a8b2    40
                         add                edi, 0x08                                       // 0x0083a8b3    83c708
                         add                esi, 0x08                                       // 0x0083a8b6    83c608
                         cmp.s              eax, ecx                                        // 0x0083a8b9    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x0083a8bb    89442414
                         {disp8} mov        dword ptr [esp + 0x10], edi                     // 0x0083a8bf    897c2410
                         {disp8} mov        dword ptr [esp + 0x18], esi                     // 0x0083a8c3    89742418
                         {disp32} jl        _jmp_addr_0x0083a801                            // 0x0083a8c7    0f8c34ffffff
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                     // 0x0083a8cd    8b5c241c
_jmp_addr_0x0083a8d1:    or                 ecx, 0xffffffff                                 // 0x0083a8d1    83c9ff
                         xor.s              eax, eax                                        // 0x0083a8d4    33c0
                         mov                edi, 0x00c39054                                 // 0x0083a8d6    bf5490c300
                         repne scasb                                                        // 0x0083a8db    f2ae
                         not                ecx                                             // 0x0083a8dd    f7d1
                         sub.s              edi, ecx                                        // 0x0083a8df    2bf9
                         mov.s              eax, ecx                                        // 0x0083a8e1    8bc1
                         shr                ecx, 2                                          // 0x0083a8e3    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                     // 0x0083a8e6    8d54242c
                         mov.s              esi, edi                                        // 0x0083a8ea    8bf7
                         mov.s              edi, edx                                        // 0x0083a8ec    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a8ee    f3a5
                         mov.s              ecx, eax                                        // 0x0083a8f0    8bc8
                         and                ecx, 0x03                                       // 0x0083a8f2    83e103
                         rep movsb                                                          // 0x0083a8f5    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                     // 0x0083a8f7    8b4c2424
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                     // 0x0083a8fb    8d54242c
                         {disp8} mov        dword ptr [esp + 0x50], ecx                     // 0x0083a8ff    894c2450
                         push               edx                                             // 0x0083a903    52
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                     // 0x0083a904    8d4c245c
                         {disp8} mov        dword ptr [esp + 0x58], ebx                     // 0x0083a908    895c2458
                         call               _jmp_addr_0x007bda90                            // 0x0083a90c    e87f31f8ff
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                     // 0x0083a911    8d4c2458
                         call               ?Close@LHFile@@QAEIXZ                           // 0x0083a915    e8a632f8ff
                         push               ebx                                             // 0x0083a91a    53
                         call               _free                                           // 0x0083a91b    e866bef8ff
                         add                esp, 0x04                                       // 0x0083a920    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                     // 0x0083a923    8d4c2458
                         {disp32} mov       dword ptr [esp + 0x000000ec], 0xffffffff        // 0x0083a927    c78424ec000000ffffffff
                         call               _jmp_addr_0x007bda20                            // 0x0083a932    e8e930f8ff
                         {disp32} mov       ecx, dword ptr [esp + 0x000000e4]               // 0x0083a937    8b8c24e4000000
                         pop                edi                                             // 0x0083a93e    5f
                         pop                esi                                             // 0x0083a93f    5e
                         pop                ebp                                             // 0x0083a940    5d
                         pop                ebx                                             // 0x0083a941    5b
                         {disp32} mov       fs:[0x0], ecx                                   // 0x0083a942    64890d00000000
                         add                esp, 0x000000e0                                 // 0x0083a949    81c4e0000000
                         ret                                                                // 0x0083a94f    c3
_jmp_addr_0x0083a950:    sub                esp, 0x0000014c                                 // 0x0083a950    81ec4c010000
                         push               ebx                                             // 0x0083a956    53
                         push               edi                                             // 0x0083a957    57
                         xor.s              eax, eax                                        // 0x0083a958    33c0
                         mov.s              ebx, ecx                                        // 0x0083a95a    8bd9
                         {disp8} mov        dword ptr [esp + 0x2c], eax                     // 0x0083a95c    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                     // 0x0083a960    89442430
                         mov                ecx, 0x00000008                                 // 0x0083a964    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x08]                     // 0x0083a969    8d7c2408
                         rep stosd                                                          // 0x0083a96d    f3ab
                         stosb                                                              // 0x0083a96f    aa
                         xor.s              eax, eax                                        // 0x0083a970    33c0
                         {disp8} mov        ax, word ptr [ebx + 0x52]                       // 0x0083a972    668b4352
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                     // 0x0083a976    8d4c2434
                         push               eax                                             // 0x0083a97a    50
                         push               0x00c39064                                      // 0x0083a97b    686490c300
                         push               ecx                                             // 0x0083a980    51
                         call               _sprintf                                        // 0x0083a981    e84caef8ff
                         add                esp, 0x0c                                       // 0x0083a986    83c40c
                         push               0x1                                             // 0x0083a989    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                     // 0x0083a98b    8d54240c
                         push               edx                                             // 0x0083a98f    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                     // 0x0083a990    8d44243c
                         push               eax                                             // 0x0083a994    50
                         mov                ecx, 0x00edd498                                 // 0x0083a995    b998d4ed00
                         call               @GetSegment__6LHFileFPcP9LHSegmenti@20          // 0x0083a99a    e83134f8ff
                         cmp                eax, 0x02                                       // 0x0083a99f    83f802
                         {disp8} jne        _jmp_addr_0x0083a9c4                            // 0x0083a9a2    7520
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                     // 0x0083a9a4    8d4c2434
                         push               ecx                                             // 0x0083a9a8    51
                         {disp8} lea        edx, dword ptr [esp + 0x58]                     // 0x0083a9a9    8d542458
                         push               0x00c3901c                                      // 0x0083a9ad    681c90c300
                         push               edx                                             // 0x0083a9b2    52
                         call               _sprintf                                        // 0x0083a9b3    e81aaef8ff
                         add                esp, 0x0c                                       // 0x0083a9b8    83c40c
                         pop                edi                                             // 0x0083a9bb    5f
                         pop                ebx                                             // 0x0083a9bc    5b
                         add                esp, 0x0000014c                                 // 0x0083a9bd    81c44c010000
                         ret                                                                // 0x0083a9c3    c3
_jmp_addr_0x0083a9c4:    {disp8} mov        eax, dword ptr [esp + 0x2c]                     // 0x0083a9c4    8b44242c
                         push               ebp                                             // 0x0083a9c8    55
                         push               esi                                             // 0x0083a9c9    56
                         push               eax                                             // 0x0083a9ca    50
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                        // 0x0083a9cb    e810830000
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                     // 0x0083a9d0    8b4c2438
                         {disp8} mov        esi, dword ptr [esp + 0x3c]                     // 0x0083a9d4    8b74243c
                         mov.s              edx, ecx                                        // 0x0083a9d8    8bd1
                         shr                ecx, 2                                          // 0x0083a9da    c1e902
                         mov.s              ebp, eax                                        // 0x0083a9dd    8be8
                         mov.s              edi, ebp                                        // 0x0083a9df    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083a9e1    f3a5
                         mov.s              ecx, edx                                        // 0x0083a9e3    8bca
                         and                ecx, 0x03                                       // 0x0083a9e5    83e103
                         rep movsb                                                          // 0x0083a9e8    f3a4
                         {disp8} mov        eax, dword ptr [esp + 0x38]                     // 0x0083a9ea    8b442438
                         {disp8} mov        dword ptr [ebx + 0x58], eax                     // 0x0083a9ee    894358
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517504]          // 0x0083a9f1    8b0d04d5ed00
                         add.s              ecx, eax                                        // 0x0083a9f7    03c8
                         add                esp, 0x04                                       // 0x0083a9f9    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x517504], ecx          // 0x0083a9fc    890d04d5ed00
                         call               _jmp_addr_0x0083ab70                            // 0x0083aa02    e869010000
                         push               ebp                                             // 0x0083aa07    55
                         mov.s              ecx, ebx                                        // 0x0083aa08    8bcb
                         call               _jmp_addr_0x0083abf0                            // 0x0083aa0a    e8e1010000
                         mov.s              ecx, ebx                                        // 0x0083aa0f    8bcb
                         call               _jmp_addr_0x0083ac00                            // 0x0083aa11    e8ea010000
                         mov                ecx, 0x00edd498                                 // 0x0083aa16    b998d4ed00
                         call               _jmp_addr_0x007bda70                            // 0x0083aa1b    e85030f8ff
                         pop                esi                                             // 0x0083aa20    5e
                         pop                ebp                                             // 0x0083aa21    5d
                         pop                edi                                             // 0x0083aa22    5f
                         pop                ebx                                             // 0x0083aa23    5b
                         add                esp, 0x0000014c                                 // 0x0083aa24    81c44c010000
                         ret                                                                // 0x0083aa2a    c3
                         nop                                                                // 0x0083aa2b    90
                         nop                                                                // 0x0083aa2c    90
                         nop                                                                // 0x0083aa2d    90
                         nop                                                                // 0x0083aa2e    90
                         nop                                                                // 0x0083aa2f    90

?CreatePack@LH3DAnim@@SAXXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517508]          // 0x0083aa30    a108d5ed00
                         sub                esp, 0x38                                       // 0x0083aa35    83ec38
                         push               ebp                                             // 0x0083aa38    55
                         xor.s              ebp, ebp                                        // 0x0083aa39    33ed
                         cmp.s              eax, ebp                                        // 0x0083aa3b    3bc5
                         push               esi                                             // 0x0083aa3d    56
                         push               edi                                             // 0x0083aa3e    57
                         {disp8} je         _jmp_addr_0x0083aa55                            // 0x0083aa3f    7414
                         push               0x00c39070                                      // 0x0083aa41    687090c300
                         call               _Report3D__FPCce                                // 0x0083aa46    e88511feff
                         add                esp, 0x04                                       // 0x0083aa4b    83c404
                         pop                edi                                             // 0x0083aa4e    5f
                         pop                esi                                             // 0x0083aa4f    5e
                         pop                ebp                                             // 0x0083aa50    5d
                         add                esp, 0x38                                       // 0x0083aa51    83c438
                         ret                                                                // 0x0083aa54    c3
_jmp_addr_0x0083aa55:    push               0x2                                             // 0x0083aa55    6a02
                         mov                ecx, 0x00edd498                                 // 0x0083aa57    b998d4ed00
                         call               @Open__14LHReleasedFileF12LH_FILE_MODE@12       // 0x0083aa5c    e8cf2cf8ff
                         xor.s              eax, eax                                        // 0x0083aa61    33c0
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                     // 0x0083aa63    896c243c
                         {disp8} mov        dword ptr [esp + 0x40], ebp                     // 0x0083aa67    896c2440
                         mov                ecx, 0x00000008                                 // 0x0083aa6b    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x18]                     // 0x0083aa70    8d7c2418
                         rep stosd                                                          // 0x0083aa74    f3ab
                         stosb                                                              // 0x0083aa76    aa
                         push               0x1                                             // 0x0083aa77    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                     // 0x0083aa79    8d44241c
                         push               eax                                             // 0x0083aa7d    50
                         push               0x00c39054                                      // 0x0083aa7e    685490c300
                         mov                ecx, 0x00edd498                                 // 0x0083aa83    b998d4ed00
                         call               @GetSegment__6LHFileFPcP9LHSegmenti@20          // 0x0083aa88    e84333f8ff
                         cmp                eax, 0x02                                       // 0x0083aa8d    83f802
                         {disp32} je        _jmp_addr_0x0083ab64                            // 0x0083aa90    0f84ce000000
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                     // 0x0083aa96    8b4c243c
                         {disp8} mov        esi, dword ptr [esp + 0x40]                     // 0x0083aa9a    8b742440
                         push               ecx                                             // 0x0083aa9e    51
                         {disp8} mov        dword ptr [esp + 0x18], esi                     // 0x0083aa9f    89742418
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                        // 0x0083aaa3    e838820000
                         {disp32} mov       dword ptr [data_bytes + 0x517508], eax          // 0x0083aaa8    a308d5ed00
                         {disp8} mov        edx, dword ptr [esi + 0x04]                     // 0x0083aaad    8b5604
                         mov                dword ptr [eax], edx                            // 0x0083aab0    8910
                         {disp8} mov        eax, dword ptr [esi + 0x04]                     // 0x0083aab2    8b4604
                         add                esp, 0x04                                       // 0x0083aab5    83c404
                         cmp.s              eax, ebp                                        // 0x0083aab8    3bc5
                         {disp32} jle       _jmp_addr_0x0083ab64                            // 0x0083aaba    0f8ea4000000
                         add                esi, 0x08                                       // 0x0083aac0    83c608
                         push               ebx                                             // 0x0083aac3    53
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000004              // 0x0083aac4    c744241404000000
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x0083aacc    89742410
_jmp_addr_0x0083aad0:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083aad0    8b442410
                         {disp8} mov        esi, dword ptr [esp + 0x44]                     // 0x0083aad4    8b742444
                         mov                ebx, dword ptr [eax]                            // 0x0083aad8    8b18
                         push               0x60                                            // 0x0083aada    6a60
                         add.s              esi, ebx                                        // 0x0083aadc    03f3
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                        // 0x0083aade    e8fd810000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517508]          // 0x0083aae3    8b0d08d5ed00
                         {disp8} mov        edx, dword ptr [esp + 0x18]                     // 0x0083aae9    8b542418
                         mov.s              ebx, eax                                        // 0x0083aaed    8bd8
                         mov                dword ptr [edx + ecx * 0x1], ebx                // 0x0083aaef    891c0a
                         mov                ecx, 0x00000015                                 // 0x0083aaf2    b915000000
                         mov.s              edi, ebx                                        // 0x0083aaf7    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                    // 0x0083aaf9    f3a5
                         add                esp, 0x04                                       // 0x0083aafb    83c404
                         xor.s              esi, esi                                        // 0x0083aafe    33f6
                         push               esi                                             // 0x0083ab00    56
                         mov.s              ecx, ebx                                        // 0x0083ab01    8bcb
                         call               _jmp_addr_0x0083abf0                            // 0x0083ab03    e8e8000000
                         {disp8} mov        word ptr [ebx + 0x52], bp                       // 0x0083ab08    66896b52
                         {disp8} fld        dword ptr [ebx + 0x28]                          // 0x0083ab0c    d94328
                         {disp8} mov        eax, dword ptr [ebx + 0x50]                     // 0x0083ab0f    8b4350
                         fabs                                                               // 0x0083ab12    d9e1
                         or                 eax, 0x800                                      // 0x0083ab14    0d00080000
                         {disp32} fcomp     qword ptr [rdata_bytes + 0xfaad8]               // 0x0083ab19    dc1dd83a9a00
                         {disp8} mov        dword ptr [ebx + 0x50], eax                     // 0x0083ab1f    894350
                         mov.s              ecx, eax                                        // 0x0083ab22    8bc8
                         {disp8} mov        dword ptr [ebx + 0x54], esi                     // 0x0083ab24    897354
                         fnstsw             ax                                              // 0x0083ab27    dfe0
                         test               ah, 0x01                                        // 0x0083ab29    f6c401
                         {disp8} je         _jmp_addr_0x0083ab37                            // 0x0083ab2c    7409
                         or                 ecx, 0x200                                      // 0x0083ab2e    81c900020000
                         {disp8} mov        dword ptr [ebx + 0x50], ecx                     // 0x0083ab34    894b50
_jmp_addr_0x0083ab37:    {disp8} mov        edx, dword ptr [esp + 0x14]                     // 0x0083ab37    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                     // 0x0083ab3b    8b442418
                         {disp8} mov        dword ptr [ebx + 0x58], esi                     // 0x0083ab3f    897358
                         {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x0083ab42    8b742410
                         {disp8} mov        dword ptr [ebx + 0x5c], ebp                     // 0x0083ab46    896b5c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                     // 0x0083ab49    8b4804
                         inc                ebp                                             // 0x0083ab4c    45
                         add                esi, 0x08                                       // 0x0083ab4d    83c608
                         add                edx, 0x04                                       // 0x0083ab50    83c204
                         cmp.s              ebp, ecx                                        // 0x0083ab53    3be9
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x0083ab55    89742410
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083ab59    89542414
                         {disp32} jl        _jmp_addr_0x0083aad0                            // 0x0083ab5d    0f8c6dffffff
                         pop                ebx                                             // 0x0083ab63    5b
_jmp_addr_0x0083ab64:    pop                edi                                             // 0x0083ab64    5f
                         pop                esi                                             // 0x0083ab65    5e
                         pop                ebp                                             // 0x0083ab66    5d
                         add                esp, 0x38                                       // 0x0083ab67    83c438
                         ret                                                                // 0x0083ab6a    c3
                         nop                                                                // 0x0083ab6b    90
                         nop                                                                // 0x0083ab6c    90
                         nop                                                                // 0x0083ab6d    90
                         nop                                                                // 0x0083ab6e    90
                         nop                                                                // 0x0083ab6f    90
_jmp_addr_0x0083ab70:    cmp                dword ptr [data_bytes + 0x517504], 0x00100000   // 0x0083ab70    813d04d5ed0000001000
                         push               ebx                                             // 0x0083ab7a    53
                         push               ebp                                             // 0x0083ab7b    55
                         {disp8} jle        _jmp_addr_0x0083abe0                            // 0x0083ab7c    7e62
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3eb0]          // 0x0083ab7e    a1b09eea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517508]          // 0x0083ab83    8b0d08d5ed00
                         {disp32} lea       ebp, dword ptr [eax + -0x00002710]              // 0x0083ab89    8da8f0d8ffff
                         mov                eax, dword ptr [ecx]                            // 0x0083ab8f    8b01
                         xor.s              ebx, ebx                                        // 0x0083ab91    33db
                         test               eax, eax                                        // 0x0083ab93    85c0
                         {disp8} jle        _jmp_addr_0x0083abe0                            // 0x0083ab95    7e49
                         push               esi                                             // 0x0083ab97    56
                         push               edi                                             // 0x0083ab98    57
                         mov                edi, 0x00000004                                 // 0x0083ab99    bf04000000
_jmp_addr_0x0083ab9e:    mov                esi, dword ptr [edi + ecx * 0x1]                // 0x0083ab9e    8b340f
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                     // 0x0083aba1    8b464c
                         test               eax, eax                                        // 0x0083aba4    85c0
                         {disp8} je         _jmp_addr_0x0083abd4                            // 0x0083aba6    742c
                         cmp                dword ptr [esi + 0x54], ebp                     // 0x0083aba8    396e54
                         {disp8} jge        _jmp_addr_0x0083abd4                            // 0x0083abab    7d27
                         push               eax                                             // 0x0083abad    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                         // 0x0083abae    e8ad810000
                         add                esp, 0x04                                       // 0x0083abb3    83c404
                         push               0x0                                             // 0x0083abb6    6a00
                         mov.s              ecx, esi                                        // 0x0083abb8    8bce
                         call               _jmp_addr_0x0083abf0                            // 0x0083abba    e831000000
                         {disp8} mov        ecx, dword ptr [esi + 0x58]                     // 0x0083abbf    8b4e58
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517504]          // 0x0083abc2    a104d5ed00
                         sub.s              eax, ecx                                        // 0x0083abc7    2bc1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517508]          // 0x0083abc9    8b0d08d5ed00
                         {disp32} mov       dword ptr [data_bytes + 0x517504], eax          // 0x0083abcf    a304d5ed00
_jmp_addr_0x0083abd4:    mov                eax, dword ptr [ecx]                            // 0x0083abd4    8b01
                         inc                ebx                                             // 0x0083abd6    43
                         add                edi, 0x04                                       // 0x0083abd7    83c704
                         cmp.s              ebx, eax                                        // 0x0083abda    3bd8
                         {disp8} jl         _jmp_addr_0x0083ab9e                            // 0x0083abdc    7cc0
                         pop                edi                                             // 0x0083abde    5f
                         pop                esi                                             // 0x0083abdf    5e
_jmp_addr_0x0083abe0:    pop                ebp                                             // 0x0083abe0    5d
                         pop                ebx                                             // 0x0083abe1    5b
                         ret                                                                // 0x0083abe2    c3
                         nop                                                                // 0x0083abe3    90
                         nop                                                                // 0x0083abe4    90
                         nop                                                                // 0x0083abe5    90
                         nop                                                                // 0x0083abe6    90
                         nop                                                                // 0x0083abe7    90
                         nop                                                                // 0x0083abe8    90
                         nop                                                                // 0x0083abe9    90
                         nop                                                                // 0x0083abea    90
                         nop                                                                // 0x0083abeb    90
                         nop                                                                // 0x0083abec    90
                         nop                                                                // 0x0083abed    90
                         nop                                                                // 0x0083abee    90
                         nop                                                                // 0x0083abef    90
_jmp_addr_0x0083abf0:    {disp8} mov        eax, dword ptr [esp + 0x04]                     // 0x0083abf0    8b442404
                         {disp8} mov        dword ptr [ecx + 0x4c], eax                     // 0x0083abf4    89414c
                         ret                0x0004                                          // 0x0083abf7    c20400
                         nop                                                                // 0x0083abfa    90
                         nop                                                                // 0x0083abfb    90
                         nop                                                                // 0x0083abfc    90
                         nop                                                                // 0x0083abfd    90
                         nop                                                                // 0x0083abfe    90
                         nop                                                                // 0x0083abff    90
_jmp_addr_0x0083ac00:    push               ebx                                             // 0x0083ac00    53
                         push               edi                                             // 0x0083ac01    57
                         mov.s              edi, ecx                                        // 0x0083ac02    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x38]                     // 0x0083ac04    8b4738
                         xor.s              ebx, ebx                                        // 0x0083ac07    33db
                         test               eax, eax                                        // 0x0083ac09    85c0
                         {disp8} jle        _jmp_addr_0x0083ac6c                            // 0x0083ac0b    7e5f
                         push               ebp                                             // 0x0083ac0d    55
                         push               esi                                             // 0x0083ac0e    56
_jmp_addr_0x0083ac0f:    mov.s              ecx, edi                                        // 0x0083ac0f    8bcf
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083ac11    e88afaffff
                         mov.s              esi, eax                                        // 0x0083ac16    8bf0
                         mov.s              ecx, edi                                        // 0x0083ac18    8bcf
                         sub                esi, 0x54                                       // 0x0083ac1a    83ee54
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083ac1d    e87efaffff
                         mov                ebp, dword ptr [eax + ebx * 0x4]                // 0x0083ac22    8b2c98
                         mov.s              ecx, edi                                        // 0x0083ac25    8bcf
                         add.s              ebp, esi                                        // 0x0083ac27    03ee
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083ac29    e872faffff
                         mov.s              ecx, edi                                        // 0x0083ac2e    8bcf
                         mov                dword ptr [eax + ebx * 0x4], ebp                // 0x0083ac30    892c98
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083ac33    e868faffff
                         mov                eax, dword ptr [eax + ebx * 0x4]                // 0x0083ac38    8b0498
                         add                dword ptr [eax], esi                            // 0x0083ac3b    0130
                         {disp8} mov        edx, dword ptr [edi + 0x3c]                     // 0x0083ac3d    8b573c
                         xor.s              ecx, ecx                                        // 0x0083ac40    33c9
                         test               edx, edx                                        // 0x0083ac42    85d2
                         {disp8} jle        _jmp_addr_0x0083ac62                            // 0x0083ac44    7e1c
_jmp_addr_0x0083ac46:    mov                edx, dword ptr [eax]                            // 0x0083ac46    8b10
                         mov                ebp, dword ptr [edx + ecx * 0x4]                // 0x0083ac48    8b2c8a
                         lea                edx, dword ptr [edx + ecx * 0x4]                // 0x0083ac4b    8d148a
                         add.s              ebp, esi                                        // 0x0083ac4e    03ee
                         mov                dword ptr [edx], ebp                            // 0x0083ac50    892a
                         mov                edx, dword ptr [eax]                            // 0x0083ac52    8b10
                         mov                edx, dword ptr [edx + ecx * 0x4]                // 0x0083ac54    8b148a
                         add                dword ptr [edx + 0x04], esi                     // 0x0083ac57    017204
                         {disp8} mov        edx, dword ptr [edi + 0x3c]                     // 0x0083ac5a    8b573c
                         inc                ecx                                             // 0x0083ac5d    41
                         cmp.s              ecx, edx                                        // 0x0083ac5e    3bca
                         {disp8} jl         _jmp_addr_0x0083ac46                            // 0x0083ac60    7ce4
_jmp_addr_0x0083ac62:    {disp8} mov        eax, dword ptr [edi + 0x38]                     // 0x0083ac62    8b4738
                         inc                ebx                                             // 0x0083ac65    43
                         cmp.s              ebx, eax                                        // 0x0083ac66    3bd8
                         {disp8} jl         _jmp_addr_0x0083ac0f                            // 0x0083ac68    7ca5
                         pop                esi                                             // 0x0083ac6a    5e
                         pop                ebp                                             // 0x0083ac6b    5d
_jmp_addr_0x0083ac6c:    pop                edi                                             // 0x0083ac6c    5f
                         pop                ebx                                             // 0x0083ac6d    5b
                         ret                                                                // 0x0083ac6e    c3
                         nop                                                                // 0x0083ac6f    90
_jmp_addr_0x0083ac70:    sub                esp, 0x08                                       // 0x0083ac70    83ec08
                         push               ebx                                             // 0x0083ac73    53
                         push               esi                                             // 0x0083ac74    56
                         push               edi                                             // 0x0083ac75    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                     // 0x0083ac76    8b7c2418
                         {disp8} mov        eax, dword ptr [edi + 0x50]                     // 0x0083ac7a    8b4750
                         test               ah, 0x01                                        // 0x0083ac7d    f6c401
                         {disp8} je         _jmp_addr_0x0083ac87                            // 0x0083ac80    7405
                         {disp8} mov        esi, dword ptr [edi + 0x20]                     // 0x0083ac82    8b7720
                         {disp8} jmp        _jmp_addr_0x0083ac96                            // 0x0083ac85    eb0f
_jmp_addr_0x0083ac87:    {disp8} mov        ecx, dword ptr [edi + 0x38]                     // 0x0083ac87    8b4f38
                         {disp8} mov        eax, dword ptr [edi + 0x20]                     // 0x0083ac8a    8b4720
                         imul               eax, ecx                                        // 0x0083ac8d    0fafc1
                         cdq                                                                // 0x0083ac90    99
                         dec                ecx                                             // 0x0083ac91    49
                         idiv               ecx                                             // 0x0083ac92    f7f9
                         mov.s              esi, eax                                        // 0x0083ac94    8bf0
_jmp_addr_0x0083ac96:    {disp8} mov        ecx, dword ptr [edi + 0x38]                     // 0x0083ac96    8b4f38
                         mov.s              eax, ecx                                        // 0x0083ac99    8bc1
                         imul               eax, dword ptr [esp + 0x20]                     // 0x0083ac9b    0faf442420
                         cdq                                                                // 0x0083aca0    99
                         idiv               esi                                             // 0x0083aca1    f7fe
                         {disp8} mov        dword ptr [esp + 0x18], esi                     // 0x0083aca3    89742418
                         {disp8} mov        dword ptr [esp + 0x10], ecx                     // 0x0083aca7    894c2410
                         mov.s              esi, eax                                        // 0x0083acab    8bf0
                         cmp.s              esi, ecx                                        // 0x0083acad    3bf1
                         {disp8} mov        dword ptr [esp + 0x0c], esi                     // 0x0083acaf    8974240c
                         {disp8} jl         _jmp_addr_0x0083acbf                            // 0x0083acb3    7c0a
                         xor.s              esi, esi                                        // 0x0083acb5    33f6
                         {disp8} mov        dword ptr [esp + 0x0c], esi                     // 0x0083acb7    8974240c
                         {disp8} mov        dword ptr [esp + 0x20], esi                     // 0x0083acbb    89742420
_jmp_addr_0x0083acbf:    {disp8} lea        ebx, dword ptr [esi + 0x01]                     // 0x0083acbf    8d5e01
                         cmp.s              ebx, ecx                                        // 0x0083acc2    3bd9
                         {disp8} jne        _jmp_addr_0x0083acc8                            // 0x0083acc4    7502
                         xor.s              ebx, ebx                                        // 0x0083acc6    33db
_jmp_addr_0x0083acc8:    {disp8} fild       dword ptr [esp + 0x10]                          // 0x0083acc8    db442410
                         mov.s              ecx, edi                                        // 0x0083accc    8bcf
                         {disp8} fidiv      dword ptr [esp + 0x18]                          // 0x0083acce    da742418
                         {disp8} fimul      dword ptr [esp + 0x20]                          // 0x0083acd2    da4c2420
                         {disp8} fisub      dword ptr [esp + 0x0c]                          // 0x0083acd6    da64240c
                         {disp8} fstp       dword ptr [esp + 0x20]                          // 0x0083acda    d95c2420
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083acde    e8bdf9ffff
                         mov                eax, dword ptr [eax + esi * 0x4]                // 0x0083ace3    8b04b0
                         mov                ecx, dword ptr [eax]                            // 0x0083ace6    8b08
                         mov                edx, dword ptr [ecx]                            // 0x0083ace8    8b11
                         {disp8} mov        esi, dword ptr [edx + 0x04]                     // 0x0083acea    8b7204
                         mov.s              ecx, edi                                        // 0x0083aced    8bcf
                         call               ?GetListPtrFrames@LH3DAnim@@QAEHXZ              // 0x0083acef    e8acf9ffff
                         mov                eax, dword ptr [eax + ebx * 0x4]                // 0x0083acf4    8b0498
                         mov                ecx, dword ptr [eax]                            // 0x0083acf7    8b08
                         mov                edx, dword ptr [ecx]                            // 0x0083acf9    8b11
                         {disp8} mov        eax, dword ptr [edx + 0x04]                     // 0x0083acfb    8b4204
                         fld                dword ptr [eax]                                 // 0x0083acfe    d900
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                     // 0x0083ad00    8b4c241c
                         fsub               dword ptr [esi]                                 // 0x0083ad04    d826
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad06    d84c2420
                         fadd               dword ptr [esi]                                 // 0x0083ad0a    d806
                         fstp               dword ptr [ecx]                                 // 0x0083ad0c    d919
                         {disp8} fld        dword ptr [eax + 0x04]                          // 0x0083ad0e    d94004
                         {disp8} fsub       dword ptr [esi + 0x04]                          // 0x0083ad11    d86604
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad14    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x04]                          // 0x0083ad18    d84604
                         {disp8} fstp       dword ptr [ecx + 0x04]                          // 0x0083ad1b    d95904
                         {disp8} fld        dword ptr [eax + 0x08]                          // 0x0083ad1e    d94008
                         {disp8} fsub       dword ptr [esi + 0x08]                          // 0x0083ad21    d86608
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad24    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x0083ad28    d84608
                         {disp8} fstp       dword ptr [ecx + 0x08]                          // 0x0083ad2b    d95908
                         {disp8} fld        dword ptr [eax + 0x0c]                          // 0x0083ad2e    d9400c
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x0083ad31    d8660c
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad34    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x0083ad38    d8460c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                          // 0x0083ad3b    d9590c
                         {disp8} fld        dword ptr [eax + 0x10]                          // 0x0083ad3e    d94010
                         {disp8} fsub       dword ptr [esi + 0x10]                          // 0x0083ad41    d86610
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad44    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x10]                          // 0x0083ad48    d84610
                         {disp8} fstp       dword ptr [ecx + 0x10]                          // 0x0083ad4b    d95910
                         {disp8} fld        dword ptr [eax + 0x14]                          // 0x0083ad4e    d94014
                         {disp8} fsub       dword ptr [esi + 0x14]                          // 0x0083ad51    d86614
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad54    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x14]                          // 0x0083ad58    d84614
                         {disp8} fstp       dword ptr [ecx + 0x14]                          // 0x0083ad5b    d95914
                         {disp8} fld        dword ptr [eax + 0x18]                          // 0x0083ad5e    d94018
                         {disp8} fsub       dword ptr [esi + 0x18]                          // 0x0083ad61    d86618
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad64    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x18]                          // 0x0083ad68    d84618
                         {disp8} fstp       dword ptr [ecx + 0x18]                          // 0x0083ad6b    d95918
                         {disp8} fld        dword ptr [eax + 0x1c]                          // 0x0083ad6e    d9401c
                         {disp8} fsub       dword ptr [esi + 0x1c]                          // 0x0083ad71    d8661c
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad74    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x1c]                          // 0x0083ad78    d8461c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                          // 0x0083ad7b    d9591c
                         {disp8} fld        dword ptr [eax + 0x20]                          // 0x0083ad7e    d94020
                         {disp8} fsub       dword ptr [esi + 0x20]                          // 0x0083ad81    d86620
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad84    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x20]                          // 0x0083ad88    d84620
                         {disp8} fstp       dword ptr [ecx + 0x20]                          // 0x0083ad8b    d95920
                         {disp8} fld        dword ptr [eax + 0x24]                          // 0x0083ad8e    d94024
                         {disp8} fsub       dword ptr [esi + 0x24]                          // 0x0083ad91    d86624
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ad94    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x24]                          // 0x0083ad98    d84624
                         {disp8} fstp       dword ptr [ecx + 0x24]                          // 0x0083ad9b    d95924
                         {disp8} fld        dword ptr [eax + 0x28]                          // 0x0083ad9e    d94028
                         {disp8} fsub       dword ptr [esi + 0x28]                          // 0x0083ada1    d86628
                         {disp8} mov        edx, dword ptr [esp + 0x24]                     // 0x0083ada4    8b542424
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083ada8    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x28]                          // 0x0083adac    d84628
                         {disp8} fstp       dword ptr [ecx + 0x28]                          // 0x0083adaf    d95928
                         {disp8} fld        dword ptr [eax + 0x2c]                          // 0x0083adb2    d9402c
                         {disp8} fsub       dword ptr [esi + 0x2c]                          // 0x0083adb5    d8662c
                         {disp8} fmul       dword ptr [esp + 0x20]                          // 0x0083adb8    d84c2420
                         {disp8} fadd       dword ptr [esi + 0x2c]                          // 0x0083adbc    d8462c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                          // 0x0083adbf    d9592c
                         call               _jmp_addr_0x007faff0                            // 0x0083adc2    e82902fcff
                         pop                edi                                             // 0x0083adc7    5f
                         pop                esi                                             // 0x0083adc8    5e
                         pop                ebx                                             // 0x0083adc9    5b
                         add                esp, 0x08                                       // 0x0083adca    83c408
                         ret                                                                // 0x0083adcd    c3
                         nop                                                                // 0x0083adce    90
                         nop                                                                // 0x0083adcf    90
_jmp_addr_0x0083add0:    {disp8} mov        eax, dword ptr [ecx + 0x50]                     // 0x0083add0    8b4150
                         test               ah, 0x08                                        // 0x0083add3    f6c408
                         {disp8} je         _jmp_addr_0x0083addc                            // 0x0083add6    7404
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                     // 0x0083add8    8b415c
                         ret                                                                // 0x0083addb    c3
_jmp_addr_0x0083addc:    or                 eax, -0x1                                       // 0x0083addc    83c8ff
                         ret                                                                // 0x0083addf    c3
_jmp_addr_0x0083ade0:    sub                esp, 0x0c                                       // 0x0083ade0    83ec0c
                         xor.s              edx, edx                                        // 0x0083ade3    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x0c]                       // 0x0083ade5    8a510c
                         push               ebx                                             // 0x0083ade8    53
                         push               ebp                                             // 0x0083ade9    55
                         push               esi                                             // 0x0083adea    56
                         push               edi                                             // 0x0083adeb    57
                         xor.s              eax, eax                                        // 0x0083adec    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x04]                       // 0x0083adee    8a4104
                         mov.s              esi, edx                                        // 0x0083adf1    8bf2
                         xor.s              edx, edx                                        // 0x0083adf3    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x0000008c]                 // 0x0083adf5    8a918c000000
                         xor.s              ebx, ebx                                        // 0x0083adfb    33db
                         {disp8} mov        dword ptr [esp + 0x14], ebx                     // 0x0083adfd    895c2414
                         {disp8} mov        dword ptr [esp + 0x10], ebx                     // 0x0083ae01    895c2410
                         mov.s              edi, edx                                        // 0x0083ae05    8bfa
                         xor.s              edx, edx                                        // 0x0083ae07    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x00000094]                 // 0x0083ae09    8a9194000000
                         lea                ebx, dword ptr [edx + edi * 0x1]                // 0x0083ae0f    8d1c3a
                         add.s              edx, esi                                        // 0x0083ae12    03d6
                         add.s              edx, eax                                        // 0x0083ae14    03d0
                         lea                ebp, dword ptr [ebx + eax * 0x1]                // 0x0083ae16    8d2c03
                         cmp.s              edx, ebp                                        // 0x0083ae19    3bd5
                         {disp8} mov        dword ptr [esp + 0x18], edx                     // 0x0083ae1b    89542418
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x0083ae23     // 0x0083ae1f    7202
                         mov.s              edx, ebp                                        // 0x0083ae21    8bd5
_jmp_addr_0x0083ae23:    add.s              edi, esi                                        // 0x0083ae23    03fe
                         add.s              ebx, esi                                        // 0x0083ae25    03de
                         add.s              eax, edi                                        // 0x0083ae27    03c7
                         cmp.s              eax, ebx                                        // 0x0083ae29    3bc3
                         mov.s              esi, eax                                        // 0x0083ae2b    8bf0
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x0083ae31     // 0x0083ae2d    7202
                         mov.s              esi, ebx                                        // 0x0083ae2f    8bf3
_jmp_addr_0x0083ae31:    cmp.s              edx, esi                                        // 0x0083ae31    3bd6
                         {disp8} jge        _jmp_addr_0x0083ae40                            // 0x0083ae33    7d0b
                         {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x0083ae35    8b742410
                         mov                edi, 0x00000001                                 // 0x0083ae39    bf01000000
                         {disp8} jmp        _jmp_addr_0x0083ae49                            // 0x0083ae3e    eb09
_jmp_addr_0x0083ae40:    {disp8} mov        edi, dword ptr [esp + 0x14]                     // 0x0083ae40    8b7c2414
                         mov                esi, 0x00000001                                 // 0x0083ae44    be01000000
_jmp_addr_0x0083ae49:    {disp8} mov        edx, dword ptr [esp + 0x18]                     // 0x0083ae49    8b542418
                         cmp.s              edx, ebp                                        // 0x0083ae4d    3bd5
                         {disp8} ja         _jmp_addr_0x0083ae53                            // 0x0083ae4f    7702
                         mov.s              edx, ebp                                        // 0x0083ae51    8bd5
_jmp_addr_0x0083ae53:    cmp.s              eax, ebx                                        // 0x0083ae53    3bc3
                         {disp8} ja         _jmp_addr_0x0083ae59                            // 0x0083ae55    7702
                         mov.s              eax, ebx                                        // 0x0083ae57    8bc3
_jmp_addr_0x0083ae59:    cmp.s              edx, eax                                        // 0x0083ae59    3bd0
                         {disp8} jle        _jmp_addr_0x0083ae60                            // 0x0083ae5b    7e03
                         inc                edi                                             // 0x0083ae5d    47
                         {disp8} jmp        _jmp_addr_0x0083ae61                            // 0x0083ae5e    eb01
_jmp_addr_0x0083ae60:    inc                esi                                             // 0x0083ae60    46
_jmp_addr_0x0083ae61:    cmp.s              edi, esi                                        // 0x0083ae61    3bfe
                         pop                edi                                             // 0x0083ae63    5f
                         pop                esi                                             // 0x0083ae64    5e
                         pop                ebp                                             // 0x0083ae65    5d
                         pop                ebx                                             // 0x0083ae66    5b
                         {disp8} jge        _jmp_addr_0x0083ae71                            // 0x0083ae67    7d08
                         or                 byte ptr [ecx + 6], 0x80                        // 0x0083ae69    80490680
                         add                esp, 0x0c                                       // 0x0083ae6d    83c40c
                         ret                                                                // 0x0083ae70    c3
_jmp_addr_0x0083ae71:    .byte              0x66, 0x81, 0x61, 0x6, 0x7f, 0xff// and word ptr [ecx + 0x06], -0x0081 // 0x0083ae71    668161067fff
                         add                esp, 0x0c                                       // 0x0083ae77    83c40c
                         ret                                                                // 0x0083ae7a    c3
                         nop                                                                // 0x0083ae7b    90
                         nop                                                                // 0x0083ae7c    90
                         nop                                                                // 0x0083ae7d    90
                         nop                                                                // 0x0083ae7e    90
                         nop                                                                // 0x0083ae7f    90
_jmp_addr_0x0083ae80:    sub                esp, 0x20                                       // 0x0083ae80    83ec20
                         test               ecx, ecx                                        // 0x0083ae83    85c9
                         push               ebx                                             // 0x0083ae85    53
                         push               esi                                             // 0x0083ae86    56
                         push               edi                                             // 0x0083ae87    57
                         {disp8} mov        dword ptr [esp + 0x1c], edx                     // 0x0083ae88    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                     // 0x0083ae8c    894c2420
                         {disp32} jl        _jmp_addr_0x0083b26a                            // 0x0083ae90    0f8cd4030000
                         cmp                ecx, 0x000001ff                                 // 0x0083ae96    81f9ff010000
                         {disp32} jg        _jmp_addr_0x0083b26a                            // 0x0083ae9c    0f8fc8030000
                         test               edx, edx                                        // 0x0083aea2    85d2
                         {disp32} jl        _jmp_addr_0x0083b26a                            // 0x0083aea4    0f8cc0030000
                         cmp                edx, 0x000001ff                                 // 0x0083aeaa    81faff010000
                         {disp32} jg        _jmp_addr_0x0083b26a                            // 0x0083aeb0    0f8fb4030000
                         mov.s              eax, ecx                                        // 0x0083aeb6    8bc1
                         sar                eax, 4                                          // 0x0083aeb8    c1f804
                         shl                eax, 5                                          // 0x0083aebb    c1e005
                         mov.s              esi, edx                                        // 0x0083aebe    8bf2
                         xor.s              ebx, ebx                                        // 0x0083aec0    33db
                         sar                esi, 4                                          // 0x0083aec2    c1fe04
                         {disp32} mov       bl, byte ptr [eax + esi + ?g_index_block@LH3DIsland@@3PAY0CA@EA]     // 0x0083aec5    8a9c3064c9e900
                         mov.s              eax, ebx                                        // 0x0083aecc    8bc3
                         test               eax, eax                                        // 0x0083aece    85c0
                         {disp32} je        _jmp_addr_0x0083b26a                            // 0x0083aed0    0f8494030000
                         and                ecx, 0x0f                                       // 0x0083aed6    83e10f
                         mov.s              esi, ecx                                        // 0x0083aed9    8bf1
                         shl                esi, 4                                          // 0x0083aedb    c1e604
                         add.s              esi, ecx                                        // 0x0083aede    03f1
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]         // 0x0083aee0    8b0c8564c5e900
                         and                edx, 0x0f                                       // 0x0083aee7    83e20f
                         add.s              esi, edx                                        // 0x0083aeea    03f2
                         lea                eax, dword ptr [ecx + esi * 0x8]                // 0x0083aeec    8d04f1
                         test               eax, eax                                        // 0x0083aeef    85c0
                         {disp32} je        _jmp_addr_0x0083b26a                            // 0x0083aef1    0f8473030000
                         xor.s              ecx, ecx                                        // 0x0083aef7    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x0c]                       // 0x0083aef9    8a480c
                         xor.s              edx, edx                                        // 0x0083aefc    33d2
                         {disp8} mov        dl, byte ptr [eax + 0x04]                       // 0x0083aefe    8a5004
                         mov.s              edi, ecx                                        // 0x0083af01    8bf9
                         xor.s              ecx, ecx                                        // 0x0083af03    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0000008c]                 // 0x0083af05    8a888c000000
                         {disp8} mov        dword ptr [esp + 0x24], edx                     // 0x0083af0b    89542424
                         mov.s              ebx, edx                                        // 0x0083af0f    8bda
                         mov.s              esi, ecx                                        // 0x0083af11    8bf1
                         xor.s              ecx, ecx                                        // 0x0083af13    33c9
                         cmp.s              edx, esi                                        // 0x0083af15    3bd6
                         {disp32} mov       cl, byte ptr [eax + 0x00000094]                 // 0x0083af17    8a8894000000
                         {disp8} mov        dword ptr [esp + 0x28], esi                     // 0x0083af1d    89742428
                         {disp8} jg         _jmp_addr_0x0083af25                            // 0x0083af21    7f02
                         mov.s              ebx, esi                                        // 0x0083af23    8bde
_jmp_addr_0x0083af25:    cmp.s              edi, ecx                                        // 0x0083af25    3bf9
                         mov.s              eax, edi                                        // 0x0083af27    8bc7
                         {disp8} jg         _jmp_addr_0x0083af2d                            // 0x0083af29    7f02
                         mov.s              eax, ecx                                        // 0x0083af2b    8bc1
_jmp_addr_0x0083af2d:    cmp.s              ebx, eax                                        // 0x0083af2d    3bd8
                         {disp8} jle        _jmp_addr_0x0083af41                            // 0x0083af2f    7e10
                         cmp.s              edx, esi                                        // 0x0083af31    3bd6
                         {disp8} jle        _jmp_addr_0x0083af3b                            // 0x0083af33    7e06
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083af35    89542414
                         {disp8} jmp        _jmp_addr_0x0083af4d                            // 0x0083af39    eb12
_jmp_addr_0x0083af3b:    {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x0083af3b    89742414
                         {disp8} jmp        _jmp_addr_0x0083af4d                            // 0x0083af3f    eb0c
_jmp_addr_0x0083af41:    cmp.s              edi, ecx                                        // 0x0083af41    3bf9
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083af43    897c2414
                         {disp8} jg         _jmp_addr_0x0083af4d                            // 0x0083af47    7f04
                         {disp8} mov        dword ptr [esp + 0x14], ecx                     // 0x0083af49    894c2414
_jmp_addr_0x0083af4d:    cmp.s              edx, esi                                        // 0x0083af4d    3bd6
                         {disp8} fild       dword ptr [esp + 0x14]                          // 0x0083af4f    db442414
                         mov.s              ebx, edx                                        // 0x0083af53    8bda
                         {disp8} fstp       dword ptr [esp + 0x10]                          // 0x0083af55    d95c2410
                         {disp8} jl         _jmp_addr_0x0083af5d                            // 0x0083af59    7c02
                         mov.s              ebx, esi                                        // 0x0083af5b    8bde
_jmp_addr_0x0083af5d:    cmp.s              edi, ecx                                        // 0x0083af5d    3bf9
                         mov.s              eax, edi                                        // 0x0083af5f    8bc7
                         {disp8} jl         _jmp_addr_0x0083af65                            // 0x0083af61    7c02
                         mov.s              eax, ecx                                        // 0x0083af63    8bc1
_jmp_addr_0x0083af65:    cmp.s              ebx, eax                                        // 0x0083af65    3bd8
                         {disp8} jge        _jmp_addr_0x0083af79                            // 0x0083af67    7d10
                         cmp.s              edx, esi                                        // 0x0083af69    3bd6
                         {disp8} jge        _jmp_addr_0x0083af73                            // 0x0083af6b    7d06
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083af6d    89542414
                         {disp8} jmp        _jmp_addr_0x0083af85                            // 0x0083af71    eb12
_jmp_addr_0x0083af73:    {disp8} mov        dword ptr [esp + 0x14], esi                     // 0x0083af73    89742414
                         {disp8} jmp        _jmp_addr_0x0083af85                            // 0x0083af77    eb0c
_jmp_addr_0x0083af79:    cmp.s              edi, ecx                                        // 0x0083af79    3bf9
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083af7b    897c2414
                         {disp8} jl         _jmp_addr_0x0083af85                            // 0x0083af7f    7c04
                         {disp8} mov        dword ptr [esp + 0x14], ecx                     // 0x0083af81    894c2414
_jmp_addr_0x0083af85:    {disp8} fild       dword ptr [esp + 0x14]                          // 0x0083af85    db442414
                         {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083af89    d9442438
                         fcomp              st(1)                                           // 0x0083af8d    d8d9
                         fnstsw             ax                                              // 0x0083af8f    dfe0
                         test               ah, 0x01                                        // 0x0083af91    f6c401
                         {disp8} je         _jmp_addr_0x0083afb0                            // 0x0083af94    741a
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083af96    d9442444
                         fcomp              st(1)                                           // 0x0083af9a    d8d9
                         fnstsw             ax                                              // 0x0083af9c    dfe0
                         fstp               st(0)                                           // 0x0083af9e    ddd8
                         test               ah, 0x01                                        // 0x0083afa0    f6c401
                         {disp8} je         _jmp_addr_0x0083afb2                            // 0x0083afa3    740d
                         pop                edi                                             // 0x0083afa5    5f
                         pop                esi                                             // 0x0083afa6    5e
                         xor.s              eax, eax                                        // 0x0083afa7    33c0
                         pop                ebx                                             // 0x0083afa9    5b
                         add                esp, 0x20                                       // 0x0083afaa    83c420
                         ret                0x0018                                          // 0x0083afad    c21800
_jmp_addr_0x0083afb0:    fstp               st(0)                                           // 0x0083afb0    ddd8
_jmp_addr_0x0083afb2:    {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083afb2    d9442438
                         {disp8} fcomp      dword ptr [esp + 0x10]                          // 0x0083afb6    d85c2410
                         fnstsw             ax                                              // 0x0083afba    dfe0
                         test               ah, 0x41                                        // 0x0083afbc    f6c441
                         {disp8} jne        _jmp_addr_0x0083afd4                            // 0x0083afbf    7513
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083afc1    d9442444
                         {disp8} fcomp      dword ptr [esp + 0x10]                          // 0x0083afc5    d85c2410
                         fnstsw             ax                                              // 0x0083afc9    dfe0
                         test               ah, 0x41                                        // 0x0083afcb    f6c441
                         {disp32} je        _jmp_addr_0x0083b26a                            // 0x0083afce    0f8496020000
_jmp_addr_0x0083afd4:    {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083afd4    d944243c
                         mov.s              eax, esi                                        // 0x0083afd8    8bc6
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083afda    d8642430
                         sub.s              eax, edx                                        // 0x0083afde    2bc2
                         {disp8} fstp       dword ptr [esp + 0x0c]                          // 0x0083afe0    d95c240c
                         {disp8} fld        dword ptr [esp + 0x40]                          // 0x0083afe4    d9442440
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083afe8    d8642434
                         {disp8} fstp       dword ptr [esp + 0x40]                          // 0x0083afec    d95c2440
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083aff0    d9442444
                         {disp8} mov        dword ptr [esp + 0x44], eax                     // 0x0083aff4    89442444
                         {disp8} fsub       dword ptr [esp + 0x38]                          // 0x0083aff8    d8642438
                         mov.s              eax, edi                                        // 0x0083affc    8bc7
                         sub.s              eax, edx                                        // 0x0083affe    2bc2
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083b000    d95c2418
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083b004    db442444
                         {disp8} mov        dword ptr [esp + 0x44], eax                     // 0x0083b008    89442444
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083b00c    db442444
                         fld                st(1)                                           // 0x0083b010    d9c1
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b012    d84c240c
                         {disp8} fsubr      dword ptr [esp + 0x18]                          // 0x0083b016    d86c2418
                         fld                st(1)                                           // 0x0083b01a    d9c1
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b01c    d84c2440
                         fsubp              st(1), st                                       // 0x0083b020    dee9
                         fld                st(0)                                           // 0x0083b022    d9c0
                         fabs                                                               // 0x0083b024    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]               // 0x0083b026    dc1dd8798c00
                         fnstsw             ax                                              // 0x0083b02c    dfe0
                         test               ah, 0x01                                        // 0x0083b02e    f6c401
                         {disp32} jne       _jmp_addr_0x0083b264                            // 0x0083b031    0f852d020000
                         {disp8} fild       dword ptr [esp + 0x20]                          // 0x0083b037    db442420
                         {disp8} fstp       dword ptr [esp + 0x14]                          // 0x0083b03b    d95c2414
                         {disp8} fld        dword ptr [esp + 0x30]                          // 0x0083b03f    d9442430
                         {disp8} fsub       dword ptr [esp + 0x14]                          // 0x0083b043    d8642414
                         {disp8} fstp       dword ptr [esp + 0x20]                          // 0x0083b047    d95c2420
                         {disp8} fild       dword ptr [esp + 0x1c]                          // 0x0083b04b    db44241c
                         {disp8} fstp       dword ptr [esp + 0x10]                          // 0x0083b04f    d95c2410
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b053    d9442434
                         {disp8} fsub       dword ptr [esp + 0x10]                          // 0x0083b057    d8642410
                         {disp8} fst        dword ptr [esp + 0x1c]                          // 0x0083b05b    d954241c
                         fmul               st, st(2)                                       // 0x0083b05f    d8ca
                         {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083b061    d9442420
                         fmul               st, st(4)                                       // 0x0083b065    d8cc
                         faddp              st(1), st                                       // 0x0083b067    dec1
                         {disp8} fild       dword ptr [esp + 0x24]                          // 0x0083b069    db442424
                         faddp              st(1), st                                       // 0x0083b06d    dec1
                         {disp8} fsub       dword ptr [esp + 0x38]                          // 0x0083b06f    d8642438
                         fdiv               st, st(1)                                       // 0x0083b073    d8f1
                         fstp               st(3)                                           // 0x0083b075    dddb
                         fstp               st(0)                                           // 0x0083b077    ddd8
                         fstp               st(0)                                           // 0x0083b079    ddd8
                         fld                st(0)                                           // 0x0083b07b    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b07d    d84c240c
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083b081    d8442430
                         {disp8} fsub       dword ptr [esp + 0x14]                          // 0x0083b085    d8642414
                         {disp8} fstp       dword ptr [esp + 0x3c]                          // 0x0083b089    d95c243c
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b08d    d84c2440
                         {disp8} fadd       dword ptr [esp + 0x34]                          // 0x0083b091    d8442434
                         {disp8} fsub       dword ptr [esp + 0x10]                          // 0x0083b095    d8642410
                         {disp8} fstp       dword ptr [esp + 0x44]                          // 0x0083b099    d95c2444
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083b09d    d944243c
                         {disp32} fcomp     dword ptr [__real@3f8ccccd]                     // 0x0083b0a1    d81d30b28a00
                         fnstsw             ax                                              // 0x0083b0a7    dfe0
                         test               ah, 0x41                                        // 0x0083b0a9    f6c441
                         {disp32} je        _jmp_addr_0x0083b135                            // 0x0083b0ac    0f8483000000
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083b0b2    d9442444
                         {disp32} fcomp     dword ptr [__real@3f8ccccd]                     // 0x0083b0b6    d81d30b28a00
                         fnstsw             ax                                              // 0x0083b0bc    dfe0
                         test               ah, 0x41                                        // 0x0083b0be    f6c441
                         {disp8} je         _jmp_addr_0x0083b135                            // 0x0083b0c1    7472
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083b0c3    d944243c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x20b2c]               // 0x0083b0c7    d81d2c9b8c00
                         fnstsw             ax                                              // 0x0083b0cd    dfe0
                         test               ah, 0x01                                        // 0x0083b0cf    f6c401
                         {disp8} jne        _jmp_addr_0x0083b135                            // 0x0083b0d2    7561
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083b0d4    d9442444
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x20b2c]               // 0x0083b0d8    d81d2c9b8c00
                         fnstsw             ax                                              // 0x0083b0de    dfe0
                         test               ah, 0x01                                        // 0x0083b0e0    f6c401
                         {disp8} jne        _jmp_addr_0x0083b135                            // 0x0083b0e3    7550
                         {disp32} fld       dword ptr [__real@3f8ccccd]                     // 0x0083b0e5    d90530b28a00
                         {disp8} fsub       dword ptr [esp + 0x44]                          // 0x0083b0eb    d8642444
                         {disp8} fcomp      dword ptr [esp + 0x3c]                          // 0x0083b0ef    d85c243c
                         fnstsw             ax                                              // 0x0083b0f3    dfe0
                         test               ah, 0x01                                        // 0x0083b0f5    f6c401
                         {disp8} jne        _jmp_addr_0x0083b135                            // 0x0083b0f8    753b
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083b0fa    d9442410
                         {disp8} fadd       dword ptr [esp + 0x44]                          // 0x0083b0fe    d8442444
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083b102    d9442414
                         {disp8} fadd       dword ptr [esp + 0x3c]                          // 0x0083b106    d844243c
                         fld                st(0)                                           // 0x0083b10a    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083b10c    d8642430
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b110    d84c240c
                         fld                st(2)                                           // 0x0083b114    d9c2
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083b116    d8642434
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b11a    d84c2440
                         faddp              st(1), st                                       // 0x0083b11e    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083b120    d81d98a38a00
                         fnstsw             ax                                              // 0x0083b126    dfe0
                         test               ah, 0x01                                        // 0x0083b128    f6c401
                         {disp32} je        _jmp_addr_0x0083b24a                            // 0x0083b12b    0f8419010000
                         fstp               st(0)                                           // 0x0083b131    ddd8
                         fstp               st(0)                                           // 0x0083b133    ddd8
_jmp_addr_0x0083b135:    mov.s              edx, ecx                                        // 0x0083b135    8bd1
                         sub.s              edx, esi                                        // 0x0083b137    2bd6
                         {disp8} mov        dword ptr [esp + 0x44], edx                     // 0x0083b139    89542444
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083b13d    db442444
                         sub.s              ecx, edi                                        // 0x0083b141    2bcf
                         {disp8} mov        dword ptr [esp + 0x44], ecx                     // 0x0083b143    894c2444
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083b147    db442444
                         fld                st(0)                                           // 0x0083b14b    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b14d    d84c240c
                         {disp8} fsubr      dword ptr [esp + 0x18]                          // 0x0083b151    d86c2418
                         fld                st(2)                                           // 0x0083b155    d9c2
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b157    d84c2440
                         fsubp              st(1), st                                       // 0x0083b15b    dee9
                         fld                st(0)                                           // 0x0083b15d    d9c0
                         fabs                                                               // 0x0083b15f    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]               // 0x0083b161    dc1dd8798c00
                         fnstsw             ax                                              // 0x0083b167    dfe0
                         test               ah, 0x01                                        // 0x0083b169    f6c401
                         {disp32} jne       _jmp_addr_0x0083b264                            // 0x0083b16c    0f85f2000000
                         {disp8} fild       dword ptr [esp + 0x28]                          // 0x0083b172    db442428
                         fsub               st, st(2)                                       // 0x0083b176    d8e2
                         {disp8} fld        dword ptr [esp + 0x1c]                          // 0x0083b178    d944241c
                         fmul               st, st(4)                                       // 0x0083b17c    d8cc
                         faddp              st(1), st                                       // 0x0083b17e    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083b180    d9442420
                         fmul               st, st(3)                                       // 0x0083b184    d8cb
                         faddp              st(1), st                                       // 0x0083b186    dec1
                         {disp8} fsub       dword ptr [esp + 0x38]                          // 0x0083b188    d8642438
                         fdiv               st, st(1)                                       // 0x0083b18c    d8f1
                         fstp               st(3)                                           // 0x0083b18e    dddb
                         fstp               st(0)                                           // 0x0083b190    ddd8
                         fstp               st(0)                                           // 0x0083b192    ddd8
                         fld                st(0)                                           // 0x0083b194    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b196    d84c240c
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083b19a    d8442430
                         {disp8} fsub       dword ptr [esp + 0x14]                          // 0x0083b19e    d8642414
                         {disp8} fstp       dword ptr [esp + 0x3c]                          // 0x0083b1a2    d95c243c
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b1a6    d84c2440
                         {disp8} fadd       dword ptr [esp + 0x34]                          // 0x0083b1aa    d8442434
                         {disp8} fsub       dword ptr [esp + 0x10]                          // 0x0083b1ae    d8642410
                         {disp8} fstp       dword ptr [esp + 0x44]                          // 0x0083b1b2    d95c2444
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083b1b6    d944243c
                         {disp32} fcomp     dword ptr [__real@3f8ccccd]                     // 0x0083b1ba    d81d30b28a00
                         fnstsw             ax                                              // 0x0083b1c0    dfe0
                         test               ah, 0x41                                        // 0x0083b1c2    f6c441
                         {disp32} je        _jmp_addr_0x0083b26a                            // 0x0083b1c5    0f849f000000
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083b1cb    d9442444
                         {disp32} fcomp     dword ptr [__real@3f8ccccd]                     // 0x0083b1cf    d81d30b28a00
                         fnstsw             ax                                              // 0x0083b1d5    dfe0
                         test               ah, 0x41                                        // 0x0083b1d7    f6c441
                         {disp32} je        _jmp_addr_0x0083b26a                            // 0x0083b1da    0f848a000000
                         {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083b1e0    d944243c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x20b2c]               // 0x0083b1e4    d81d2c9b8c00
                         fnstsw             ax                                              // 0x0083b1ea    dfe0
                         test               ah, 0x01                                        // 0x0083b1ec    f6c401
                         {disp8} jne        _jmp_addr_0x0083b26a                            // 0x0083b1ef    7579
                         {disp8} fld        dword ptr [esp + 0x44]                          // 0x0083b1f1    d9442444
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x20b2c]               // 0x0083b1f5    d81d2c9b8c00
                         fnstsw             ax                                              // 0x0083b1fb    dfe0
                         test               ah, 0x01                                        // 0x0083b1fd    f6c401
                         {disp8} jne        _jmp_addr_0x0083b26a                            // 0x0083b200    7568
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c844]               // 0x0083b202    d90544588c00
                         {disp8} fsub       dword ptr [esp + 0x44]                          // 0x0083b208    d8642444
                         {disp8} fcomp      dword ptr [esp + 0x3c]                          // 0x0083b20c    d85c243c
                         fnstsw             ax                                              // 0x0083b210    dfe0
                         test               ah, 0x41                                        // 0x0083b212    f6c441
                         {disp8} je         _jmp_addr_0x0083b26a                            // 0x0083b215    7453
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083b217    d9442410
                         {disp8} fadd       dword ptr [esp + 0x44]                          // 0x0083b21b    d8442444
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083b21f    d9442414
                         {disp8} fadd       dword ptr [esp + 0x3c]                          // 0x0083b223    d844243c
                         fld                st(0)                                           // 0x0083b227    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083b229    d8642430
                         {disp8} fmul       dword ptr [esp + 0x0c]                          // 0x0083b22d    d84c240c
                         fld                st(2)                                           // 0x0083b231    d9c2
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083b233    d8642434
                         {disp8} fmul       dword ptr [esp + 0x40]                          // 0x0083b237    d84c2440
                         faddp              st(1), st                                       // 0x0083b23b    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083b23d    d81d98a38a00
                         fnstsw             ax                                              // 0x0083b243    dfe0
                         test               ah, 0x01                                        // 0x0083b245    f6c401
                         {disp8} jne        _jmp_addr_0x0083b266                            // 0x0083b248    751c
_jmp_addr_0x0083b24a:    pop                edi                                             // 0x0083b24a    5f
                         {disp32} fstp      dword ptr [data_bytes + 0x4d6d80]               // 0x0083b24b    d91d80cde900
                         pop                esi                                             // 0x0083b251    5e
                         {disp32} fstp      dword ptr [data_bytes + 0x4d6d84]               // 0x0083b252    d91d84cde900
                         mov                eax, 0x00000001                                 // 0x0083b258    b801000000
                         pop                ebx                                             // 0x0083b25d    5b
                         add                esp, 0x20                                       // 0x0083b25e    83c420
                         ret                0x0018                                          // 0x0083b261    c21800
_jmp_addr_0x0083b264:    fstp               st(0)                                           // 0x0083b264    ddd8
_jmp_addr_0x0083b266:    fstp               st(0)                                           // 0x0083b266    ddd8
                         fstp               st(0)                                           // 0x0083b268    ddd8
_jmp_addr_0x0083b26a:    pop                edi                                             // 0x0083b26a    5f
                         pop                esi                                             // 0x0083b26b    5e
                         xor.s              eax, eax                                        // 0x0083b26c    33c0
                         pop                ebx                                             // 0x0083b26e    5b
                         add                esp, 0x20                                       // 0x0083b26f    83c420
                         ret                0x0018                                          // 0x0083b272    c21800
                         nop                                                                // 0x0083b275    90
                         nop                                                                // 0x0083b276    90
                         nop                                                                // 0x0083b277    90
                         nop                                                                // 0x0083b278    90
                         nop                                                                // 0x0083b279    90
                         nop                                                                // 0x0083b27a    90
                         nop                                                                // 0x0083b27b    90
                         nop                                                                // 0x0083b27c    90
                         nop                                                                // 0x0083b27d    90
                         nop                                                                // 0x0083b27e    90
                         nop                                                                // 0x0083b27f    90
_globl_ct_0x0083b280:    {disp32} jmp       _jmp_addr_0x0083b290                            // 0x0083b280    e90b000000
                         nop                                                                // 0x0083b285    90
                         nop                                                                // 0x0083b286    90
                         nop                                                                // 0x0083b287    90
                         nop                                                                // 0x0083b288    90
                         nop                                                                // 0x0083b289    90
                         nop                                                                // 0x0083b28a    90
                         nop                                                                // 0x0083b28b    90
                         nop                                                                // 0x0083b28c    90
                         nop                                                                // 0x0083b28d    90
                         nop                                                                // 0x0083b28e    90
                         nop                                                                // 0x0083b28f    90
_jmp_addr_0x0083b290:    {disp32} fld       dword ptr [rdata_bytes + 0xfaae0]               // 0x0083b290    d905e03a9a00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]        // 0x0083b296    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x517d10]               // 0x0083b29c    d91d10dded00
                         ret                                                                // 0x0083b2a2    c3
                         nop                                                                // 0x0083b2a3    90
                         nop                                                                // 0x0083b2a4    90
                         nop                                                                // 0x0083b2a5    90
                         nop                                                                // 0x0083b2a6    90
                         nop                                                                // 0x0083b2a7    90
                         nop                                                                // 0x0083b2a8    90
                         nop                                                                // 0x0083b2a9    90
                         nop                                                                // 0x0083b2aa    90
                         nop                                                                // 0x0083b2ab    90
                         nop                                                                // 0x0083b2ac    90
                         nop                                                                // 0x0083b2ad    90
                         nop                                                                // 0x0083b2ae    90
                         nop                                                                // 0x0083b2af    90
_globl_ct_0x0083b2b0:    {disp32} jmp       _jmp_addr_0x0083b2c0                            // 0x0083b2b0    e90b000000
                         nop                                                                // 0x0083b2b5    90
                         nop                                                                // 0x0083b2b6    90
                         nop                                                                // 0x0083b2b7    90
                         nop                                                                // 0x0083b2b8    90
                         nop                                                                // 0x0083b2b9    90
                         nop                                                                // 0x0083b2ba    90
                         nop                                                                // 0x0083b2bb    90
                         nop                                                                // 0x0083b2bc    90
                         nop                                                                // 0x0083b2bd    90
                         nop                                                                // 0x0083b2be    90
                         nop                                                                // 0x0083b2bf    90
_jmp_addr_0x0083b2c0:    {disp32} fld       dword ptr [rdata_bytes + 0xfaae4]               // 0x0083b2c0    d905e43a9a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                     // 0x0083b2c6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x517d0c]               // 0x0083b2cc    d91d0cdded00
                         ret                                                                // 0x0083b2d2    c3
                         nop                                                                // 0x0083b2d3    90
                         nop                                                                // 0x0083b2d4    90
                         nop                                                                // 0x0083b2d5    90
                         nop                                                                // 0x0083b2d6    90
                         nop                                                                // 0x0083b2d7    90
                         nop                                                                // 0x0083b2d8    90
                         nop                                                                // 0x0083b2d9    90
                         nop                                                                // 0x0083b2da    90
                         nop                                                                // 0x0083b2db    90
                         nop                                                                // 0x0083b2dc    90
                         nop                                                                // 0x0083b2dd    90
                         nop                                                                // 0x0083b2de    90
                         nop                                                                // 0x0083b2df    90
??0RPHolder@@QAE@XZ:
                         push               esi                                             // 0x0083b2e0    56
                         mov.s              esi, ecx                                        // 0x0083b2e1    8bf1
                         {disp32} mov       dword ptr [esi + 0x00050024], 0x00000000        // 0x0083b2e3    c7862400050000000000
                         call               ?Empty@RPHolder@@QAEXXZ                         // 0x0083b2ed    e83e000000
                         mov.s              eax, esi                                        // 0x0083b2f2    8bc6
                         pop                esi                                             // 0x0083b2f4    5e
                         ret                                                                // 0x0083b2f5    c3
                         nop                                                                // 0x0083b2f6    90
                         nop                                                                // 0x0083b2f7    90
                         nop                                                                // 0x0083b2f8    90
                         nop                                                                // 0x0083b2f9    90
                         nop                                                                // 0x0083b2fa    90
                         nop                                                                // 0x0083b2fb    90
                         nop                                                                // 0x0083b2fc    90
                         nop                                                                // 0x0083b2fd    90
                         nop                                                                // 0x0083b2fe    90
                         nop                                                                // 0x0083b2ff    90
?InitialiseSystem@RPHolder@@QAEXP6AXHHPAV1@@ZP6AX0@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                     // 0x0083b300    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                     // 0x0083b304    8b4c2408
                         {disp32} mov       dword ptr [data_bytes + 0x517d14], eax          // 0x0083b308    a314dded00
                         {disp32} mov       dword ptr [data_bytes + 0x517d18], ecx          // 0x0083b30d    890d18dded00
                         ret                                                                // 0x0083b313    c3
                         nop                                                                // 0x0083b314    90
                         nop                                                                // 0x0083b315    90
                         nop                                                                // 0x0083b316    90
                         nop                                                                // 0x0083b317    90
                         nop                                                                // 0x0083b318    90
                         nop                                                                // 0x0083b319    90
                         nop                                                                // 0x0083b31a    90
                         nop                                                                // 0x0083b31b    90
                         nop                                                                // 0x0083b31c    90
                         nop                                                                // 0x0083b31d    90
                         nop                                                                // 0x0083b31e    90
                         nop                                                                // 0x0083b31f    90
_jmp_addr_0x0083b320:    {disp8} mov        eax, dword ptr [esp + 0x04]                     // 0x0083b320    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00050024], eax               // 0x0083b324    898124000500
                         ret                0x0004                                          // 0x0083b32a    c20400
                         nop                                                                // 0x0083b32d    90
                         nop                                                                // 0x0083b32e    90
                         nop                                                                // 0x0083b32f    90
?Empty@RPHolder@@QAEXXZ:
                         xor.s              edx, edx                                        // 0x0083b330    33d2
                         {disp32} mov       dword ptr [ecx + 0x00050008], edx               // 0x0083b332    899108000500
                         {disp32} mov       dword ptr [ecx + 0x00050004], edx               // 0x0083b338    899104000500
                         {disp32} mov       byte ptr [ecx + 0x0005001c], dl                 // 0x0083b33e    88911c000500
                         {disp32} mov       dword ptr [ecx + 0x00050000], edx               // 0x0083b344    899100000500
                         {disp32} mov       dword ptr [ecx + 0x00050020], edx               // 0x0083b34a    899120000500
                         {disp32} mov       dword ptr [ecx + 0x00064028], edx               // 0x0083b350    899128400600
                         {disp32} lea       eax, dword ptr [ecx + 0x00050028]               // 0x0083b356    8d8128000500
                         mov                ecx, 0x00001000                                 // 0x0083b35c    b900100000
_jmp_addr_0x0083b361:    {disp8} mov        word ptr [eax + 0x02], -0x0001                  // 0x0083b361    66c74002ffff
                         mov                word ptr [eax], dx                              // 0x0083b367    668910
                         add                eax, 0x04                                       // 0x0083b36a    83c004
                         dec                ecx                                             // 0x0083b36d    49
                         {disp8} jne        _jmp_addr_0x0083b361                            // 0x0083b36e    75f1
                         ret                                                                // 0x0083b370    c3
                         nop                                                                // 0x0083b371    90
                         nop                                                                // 0x0083b372    90
                         nop                                                                // 0x0083b373    90
                         nop                                                                // 0x0083b374    90
                         nop                                                                // 0x0083b375    90
                         nop                                                                // 0x0083b376    90
                         nop                                                                // 0x0083b377    90
                         nop                                                                // 0x0083b378    90
                         nop                                                                // 0x0083b379    90
                         nop                                                                // 0x0083b37a    90
                         nop                                                                // 0x0083b37b    90
                         nop                                                                // 0x0083b37c    90
                         nop                                                                // 0x0083b37d    90
                         nop                                                                // 0x0083b37e    90
                         nop                                                                // 0x0083b37f    90
_jmp_addr_0x0083b380:    {disp8} mov        eax, dword ptr [esp + 0x08]                     // 0x0083b380    8b442408
                         push               ebx                                             // 0x0083b384    53
                         push               ebp                                             // 0x0083b385    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                     // 0x0083b386    8b6c240c
                         shl                eax, 6                                          // 0x0083b38a    c1e006
                         push               esi                                             // 0x0083b38d    56
                         mov.s              ebx, ecx                                        // 0x0083b38e    8bd9
                         add.s              eax, ebp                                        // 0x0083b390    03c5
                         push               edi                                             // 0x0083b392    57
                         {disp32} mov       word ptr [ebx + eax * 0x4 + 0x00050028], 0x0001 // 0x0083b393    66c78483280005000100
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083b39d    c744241400000000
_jmp_addr_0x0083b3a5:    {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x0083b3a5    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                     // 0x0083b3a9    8b542418
                         xor.s              esi, esi                                        // 0x0083b3ad    33f6
                         lea                edi, dword ptr [ecx + edx * 0x8]                // 0x0083b3af    8d3cd1
_jmp_addr_0x0083b3b2:    push               ebx                                             // 0x0083b3b2    53
                         lea                eax, dword ptr [esi + ebp * 0x8]                // 0x0083b3b3    8d04ee
                         push               edi                                             // 0x0083b3b6    57
                         push               eax                                             // 0x0083b3b7    50
                         call               dword ptr [data_bytes + 0x517d14]               // 0x0083b3b8    ff1514dded00
                         add                esp, 0x0c                                       // 0x0083b3be    83c40c
                         inc                esi                                             // 0x0083b3c1    46
                         cmp                esi, 0x08                                       // 0x0083b3c2    83fe08
                         {disp8} jl         _jmp_addr_0x0083b3b2                            // 0x0083b3c5    7ceb
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083b3c7    8b442414
                         inc                eax                                             // 0x0083b3cb    40
                         cmp                eax, 0x08                                       // 0x0083b3cc    83f808
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x0083b3cf    89442414
                         {disp8} jl         _jmp_addr_0x0083b3a5                            // 0x0083b3d3    7cd0
                         pop                edi                                             // 0x0083b3d5    5f
                         pop                esi                                             // 0x0083b3d6    5e
                         pop                ebp                                             // 0x0083b3d7    5d
                         pop                ebx                                             // 0x0083b3d8    5b
                         ret                0x0008                                          // 0x0083b3d9    c20800
                         nop                                                                // 0x0083b3dc    90
                         nop                                                                // 0x0083b3dd    90
                         nop                                                                // 0x0083b3de    90
                         nop                                                                // 0x0083b3df    90
_jmp_addr_0x0083b3e0:    {disp8} mov        eax, dword ptr [esp + 0x0c]                     // 0x0083b3e0    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                     // 0x0083b3e4    8b542408
                         sar                eax, 3                                          // 0x0083b3e8    c1f803
                         shl                eax, 6                                          // 0x0083b3eb    c1e006
                         sar                edx, 3                                          // 0x0083b3ee    c1fa03
                         add.s              eax, edx                                        // 0x0083b3f1    03c2
                         {disp32} lea       eax, dword ptr [ecx + eax * 0x4 + 0x00050028]   // 0x0083b3f3    8d848128000500
                         {disp8} mov        ax, word ptr [eax + 0x02]                       // 0x0083b3fa    668b4002
                         cmp                ax, -0x0001                                     // 0x0083b3fe    663dffff
                         push               esi                                             // 0x0083b402    56
                         {disp8} je         _jmp_addr_0x0083b43a                            // 0x0083b403    7435
                         movsx              eax, ax                                         // 0x0083b405    0fbfc0
                         {disp32} lea       eax, dword ptr [ecx + eax * 0x4 + 0x00054028]   // 0x0083b408    8d848128400500
                         test               eax, eax                                        // 0x0083b40f    85c0
                         {disp8} je         _jmp_addr_0x0083b43a                            // 0x0083b411    7427
                         {disp8} mov        esi, dword ptr [esp + 0x08]                     // 0x0083b413    8b742408
_jmp_addr_0x0083b417:    movsx              edx, word ptr [eax]                             // 0x0083b417    0fbf10
                         lea                edx, dword ptr [edx + edx * 0x4]                // 0x0083b41a    8d1492
                         cmp                dword ptr [ecx + edx * 0x4], esi                // 0x0083b41d    393491
                         {disp8} je         _jmp_addr_0x0083b443                            // 0x0083b420    7421
                         {disp8} mov        ax, word ptr [eax + 0x02]                       // 0x0083b422    668b4002
                         cmp                ax, -0x0001                                     // 0x0083b426    663dffff
                         {disp8} je         _jmp_addr_0x0083b43a                            // 0x0083b42a    740e
                         movsx              eax, ax                                         // 0x0083b42c    0fbfc0
                         {disp32} lea       eax, dword ptr [ecx + eax * 0x4 + 0x00054028]   // 0x0083b42f    8d848128400500
                         test               eax, eax                                        // 0x0083b436    85c0
                         {disp8} jne        _jmp_addr_0x0083b417                            // 0x0083b438    75dd
_jmp_addr_0x0083b43a:    mov                eax, 0x00000001                                 // 0x0083b43a    b801000000
                         pop                esi                                             // 0x0083b43f    5e
                         ret                0x000c                                          // 0x0083b440    c20c00
_jmp_addr_0x0083b443:    xor.s              eax, eax                                        // 0x0083b443    33c0
                         pop                esi                                             // 0x0083b445    5e
                         ret                0x000c                                          // 0x0083b446    c20c00
                         nop                                                                // 0x0083b449    90
                         nop                                                                // 0x0083b44a    90
                         nop                                                                // 0x0083b44b    90
                         nop                                                                // 0x0083b44c    90
                         nop                                                                // 0x0083b44d    90
                         nop                                                                // 0x0083b44e    90
                         nop                                                                // 0x0083b44f    90
_jmp_addr_0x0083b450:    sub                esp, 0x18                                       // 0x0083b450    83ec18
                         push               ebx                                             // 0x0083b453    53
                         push               ebp                                             // 0x0083b454    55
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                     // 0x0083b455    8b6c2428
                         mov.s              ebx, ecx                                        // 0x0083b459    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00050004]               // 0x0083b45b    8b8304000500
                         test               eax, eax                                        // 0x0083b461    85c0
                         push               esi                                             // 0x0083b463    56
                         push               edi                                             // 0x0083b464    57
                         {disp8} je         _jmp_addr_0x0083b495                            // 0x0083b465    742e
                         fld                dword ptr [eax]                                 // 0x0083b467    d900
                         {disp8} fsub       dword ptr [ebp + 0x00]                          // 0x0083b469    d86500
                         {disp8} fld        dword ptr [eax + 0x04]                          // 0x0083b46c    d94004
                         {disp8} fsub       dword ptr [ebp + 0x04]                          // 0x0083b46f    d86504
                         fld                st(0)                                           // 0x0083b472    d9c0
                         fmul               st, st(1)                                       // 0x0083b474    d8c9
                         fld                st(2)                                           // 0x0083b476    d9c2
                         fmul               st, st(3)                                       // 0x0083b478    d8cb
                         faddp              st(1), st                                       // 0x0083b47a    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b47c    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                          // 0x0083b480    d84c2434
                         fcompp                                                             // 0x0083b484    ded9
                         fnstsw             ax                                              // 0x0083b486    dfe0
                         fstp               st(0)                                           // 0x0083b488    ddd8
                         test               ah, 0x41                                        // 0x0083b48a    f6c441
                         fstp               st(0)                                           // 0x0083b48d    ddd8
                         {disp32} je        _jmp_addr_0x0083b739                            // 0x0083b48f    0f84a4020000
_jmp_addr_0x0083b495:    {disp32} mov       eax, dword ptr [ebx + 0x00050008]               // 0x0083b495    8b8308000500
                         test               eax, eax                                        // 0x0083b49b    85c0
                         {disp8} je         _jmp_addr_0x0083b4cd                            // 0x0083b49d    742e
                         fld                dword ptr [eax]                                 // 0x0083b49f    d900
                         {disp8} fsub       dword ptr [ebp + 0x00]                          // 0x0083b4a1    d86500
                         {disp8} fld        dword ptr [eax + 0x04]                          // 0x0083b4a4    d94004
                         {disp8} fsub       dword ptr [ebp + 0x04]                          // 0x0083b4a7    d86504
                         fld                st(0)                                           // 0x0083b4aa    d9c0
                         fmul               st, st(1)                                       // 0x0083b4ac    d8c9
                         fld                st(2)                                           // 0x0083b4ae    d9c2
                         fmul               st, st(3)                                       // 0x0083b4b0    d8cb
                         faddp              st(1), st                                       // 0x0083b4b2    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b4b4    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                          // 0x0083b4b8    d84c2434
                         fcompp                                                             // 0x0083b4bc    ded9
                         fnstsw             ax                                              // 0x0083b4be    dfe0
                         fstp               st(0)                                           // 0x0083b4c0    ddd8
                         test               ah, 0x41                                        // 0x0083b4c2    f6c441
                         fstp               st(0)                                           // 0x0083b4c5    ddd8
                         {disp32} je        _jmp_addr_0x0083b739                            // 0x0083b4c7    0f846c020000
_jmp_addr_0x0083b4cd:    cmp                dword ptr [ebx + 0x00050000], 0x00004000        // 0x0083b4cd    81bb0000050000400000
                         {disp32} jge       _jmp_addr_0x0083b739                            // 0x0083b4d7    0f8d5c020000
                         {disp32} mov       eax, dword ptr [ebx + 0x00050024]               // 0x0083b4dd    8b8324000500
                         test               eax, eax                                        // 0x0083b4e3    85c0
                         {disp8} je         _jmp_addr_0x0083b519                            // 0x0083b4e5    7432
                         push               ebp                                             // 0x0083b4e7    55
                         {disp32} lea       ecx, dword ptr [eax + 0x0006402c]               // 0x0083b4e8    8d882c400600
                         call               @GetRange__7Point2DCFRC7Point2D@12              // 0x0083b4ee    e8cd480300
                         {disp32} fcom      dword ptr [__real@3dcccccd]                     // 0x0083b4f3    d8152cb28a00
                         fnstsw             ax                                              // 0x0083b4f9    dfe0
                         test               ah, 0x01                                        // 0x0083b4fb    f6c401
                         {disp32} jne       _jmp_addr_0x0083b737                            // 0x0083b4fe    0f8533020000
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b504    d9442434
                         fcomp              st(1)                                           // 0x0083b508    d8d9
                         fnstsw             ax                                              // 0x0083b50a    dfe0
                         test               ah, 0x41                                        // 0x0083b50c    f6c441
                         {disp8} jne        _jmp_addr_0x0083b517                            // 0x0083b50f    7506
                         {disp8} fstp       dword ptr [esp + 0x34]                          // 0x0083b511    d95c2434
                         {disp8} jmp        _jmp_addr_0x0083b519                            // 0x0083b515    eb02
_jmp_addr_0x0083b517:    fstp               st(0)                                           // 0x0083b517    ddd8
_jmp_addr_0x0083b519:    {disp8} fld        dword ptr [ebp + 0x00]                          // 0x0083b519    d94500
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083b51c    d8642434
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b520    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b526    e8d55ef6ff
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b52b    d9442434
                         {disp8} fadd       dword ptr [ebp + 0x00]                          // 0x0083b52f    d84500
                         mov.s              edi, eax                                        // 0x0083b532    8bf8
                         {disp8} mov        dword ptr [esp + 0x20], edi                     // 0x0083b534    897c2420
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b538    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b53e    e8bd5ef6ff
                         {disp8} fld        dword ptr [ebp + 0x04]                          // 0x0083b543    d94504
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083b546    d8642434
                         {disp8} mov        dword ptr [esp + 0x30], eax                     // 0x0083b54a    89442430
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b54e    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b554    e8a75ef6ff
                         {disp8} fld        dword ptr [esp + 0x34]                          // 0x0083b559    d9442434
                         {disp8} fadd       dword ptr [ebp + 0x04]                          // 0x0083b55d    d84504
                         mov.s              esi, eax                                        // 0x0083b560    8bf0
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b562    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b568    e8935ef6ff
                         {disp8} mov        edx, dword ptr [esp + 0x30]                     // 0x0083b56d    8b542430
                         mov.s              ecx, eax                                        // 0x0083b571    8bc8
                         sub.s              eax, esi                                        // 0x0083b573    2bc6
                         inc                eax                                             // 0x0083b575    40
                         sub.s              edx, edi                                        // 0x0083b576    2bd7
                         inc                edx                                             // 0x0083b578    42
                         imul               eax, edx                                        // 0x0083b579    0fafc2
                         add                eax, dword ptr [ebx + 0x00064028]               // 0x0083b57c    038328400600
                         cmp                eax, 0x00004000                                 // 0x0083b582    3d00400000
                         {disp8} mov        dword ptr [esp + 0x24], ecx                     // 0x0083b587    894c2424
                         {disp32} jg        _jmp_addr_0x0083b739                            // 0x0083b58b    0f8fa8010000
                         test               edi, edi                                        // 0x0083b591    85ff
                         {disp32} jl        _jmp_addr_0x0083b739                            // 0x0083b593    0f8ca0010000
                         cmp                dword ptr [esp + 0x30], 0x40                    // 0x0083b599    837c243040
                         {disp32} jge       _jmp_addr_0x0083b739                            // 0x0083b59e    0f8d95010000
                         test               esi, esi                                        // 0x0083b5a4    85f6
                         {disp32} jl        _jmp_addr_0x0083b739                            // 0x0083b5a6    0f8c8d010000
                         cmp                ecx, 0x40                                       // 0x0083b5ac    83f940
                         {disp32} jge       _jmp_addr_0x0083b739                            // 0x0083b5af    0f8d84010000
                         mov.s              eax, esi                                        // 0x0083b5b5    8bc6
                         shl                eax, 6                                          // 0x0083b5b7    c1e006
                         add.s              eax, edi                                        // 0x0083b5ba    03c7
                         cmp.s              esi, ecx                                        // 0x0083b5bc    3bf1
                         {disp8} mov        dword ptr [esp + 0x1c], esi                     // 0x0083b5be    8974241c
                         {disp32} jg        _jmp_addr_0x0083b6de                            // 0x0083b5c2    0f8f16010000
                         {disp32} lea       eax, dword ptr [ebx + eax * 0x4 + 0x0005002a]   // 0x0083b5c8    8d84832a000500
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x0083b5cf    89442418
_jmp_addr_0x0083b5d3:    cmp                edi, dword ptr [esp + 0x30]                     // 0x0083b5d3    3b7c2430
                         {disp8} mov        dword ptr [esp + 0x14], edi                     // 0x0083b5d7    897c2414
                         {disp32} jg        _jmp_addr_0x0083b6c0                            // 0x0083b5db    0f8fdf000000
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083b5e1    89442410
_jmp_addr_0x0083b5e5:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083b5e5    8b442410
                         mov                ax, word ptr [eax]                              // 0x0083b5e9    668b00
                         cmp                ax, -0x0001                                     // 0x0083b5ec    663dffff
                         {disp32} je        _jmp_addr_0x0083b698                            // 0x0083b5f0    0f84a2000000
                         movsx              ecx, ax                                         // 0x0083b5f6    0fbfc8
                         {disp32} lea       edi, dword ptr [ebx + ecx * 0x4 + 0x00054028]   // 0x0083b5f9    8dbc8b28400500
                         test               edi, edi                                        // 0x0083b600    85ff
                         {disp32} je        _jmp_addr_0x0083b698                            // 0x0083b602    0f8490000000
_jmp_addr_0x0083b608:    movsx              eax, word ptr [edi]                             // 0x0083b608    0fbf07
                         lea                edx, dword ptr [eax + eax * 0x4]                // 0x0083b60b    8d1480
                         mov                eax, dword ptr [ebx + edx * 0x4]                // 0x0083b60e    8b0493
                         cmp                eax, -0x01                                      // 0x0083b611    83f8ff
                         lea                esi, dword ptr [ebx + edx * 0x4]                // 0x0083b614    8d3493
                         {disp8} jne        _jmp_addr_0x0083b63e                            // 0x0083b617    7525
                         cmp                dword ptr [esp + 0x2c], -0x01                   // 0x0083b619    837c242cff
                         {disp8} jne        _jmp_addr_0x0083b63e                            // 0x0083b61e    751e
                         {disp8} fld        dword ptr [esi + 0x08]                          // 0x0083b620    d94608
                         {disp8} fcomp      dword ptr [ebp + 0x00]                          // 0x0083b623    d85d00
                         fnstsw             ax                                              // 0x0083b626    dfe0
                         test               ah, 0x40                                        // 0x0083b628    f6c440
                         {disp8} je         _jmp_addr_0x0083b63e                            // 0x0083b62b    7411
                         {disp8} fld        dword ptr [esi + 0x0c]                          // 0x0083b62d    d9460c
                         {disp8} fcomp      dword ptr [ebp + 0x04]                          // 0x0083b630    d85d04
                         fnstsw             ax                                              // 0x0083b633    dfe0
                         test               ah, 0x40                                        // 0x0083b635    f6c440
                         {disp32} jne       _jmp_addr_0x0083b739                            // 0x0083b638    0f85fb000000
_jmp_addr_0x0083b63e:    push               ebp                                             // 0x0083b63e    55
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                     // 0x0083b63f    8d4e08
                         call               @GetRange__7Point2DCFRC7Point2D@12              // 0x0083b642    e879470300
                         fld                st(0)                                           // 0x0083b647    d9c0
                         {disp8} fadd       dword ptr [esp + 0x34]                          // 0x0083b649    d8442434
                         {disp32} fsub      dword ptr [_rdata_float0p001]                   // 0x0083b64d    d825b0a38a00
                         {disp8} fcomp      dword ptr [esi + 0x10]                          // 0x0083b653    d85e10
                         fnstsw             ax                                              // 0x0083b656    dfe0
                         test               ah, 0x01                                        // 0x0083b658    f6c401
                         {disp32} jne       _jmp_addr_0x0083b737                            // 0x0083b65b    0f85d6000000
                         {disp8} fadd       dword ptr [esi + 0x10]                          // 0x0083b661    d84610
                         {disp32} fsub      dword ptr [_rdata_float0p001]                   // 0x0083b664    d825b0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x34]                          // 0x0083b66a    d85c2434
                         fnstsw             ax                                              // 0x0083b66e    dfe0
                         test               ah, 0x01                                        // 0x0083b670    f6c401
                         {disp8} je         _jmp_addr_0x0083b67c                            // 0x0083b673    7407
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000              // 0x0083b675    c7460400000000
_jmp_addr_0x0083b67c:    {disp8} mov        di, word ptr [edi + 0x02]                       // 0x0083b67c    668b7f02
                         cmp                di, -0x01                                       // 0x0083b680    6683ffff
                         {disp8} je         _jmp_addr_0x0083b698                            // 0x0083b684    7412
                         movsx              eax, di                                         // 0x0083b686    0fbfc7
                         {disp32} lea       edi, dword ptr [ebx + eax * 0x4 + 0x00054028]   // 0x0083b689    8dbc8328400500
                         test               edi, edi                                        // 0x0083b690    85ff
                         {disp32} jne       _jmp_addr_0x0083b608                            // 0x0083b692    0f8570ffffff
_jmp_addr_0x0083b698:    {disp8} mov        esi, dword ptr [esp + 0x10]                     // 0x0083b698    8b742410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083b69c    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                     // 0x0083b6a0    8b4c2430
                         add                esi, 0x04                                       // 0x0083b6a4    83c604
                         inc                eax                                             // 0x0083b6a7    40
                         cmp.s              eax, ecx                                        // 0x0083b6a8    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], esi                     // 0x0083b6aa    89742410
                         {disp8} mov        dword ptr [esp + 0x14], eax                     // 0x0083b6ae    89442414
                         {disp32} jle       _jmp_addr_0x0083b5e5                            // 0x0083b6b2    0f8e2dffffff
                         {disp8} mov        edi, dword ptr [esp + 0x20]                     // 0x0083b6b8    8b7c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                     // 0x0083b6bc    8b4c2424
_jmp_addr_0x0083b6c0:    {disp8} mov        eax, dword ptr [esp + 0x18]                     // 0x0083b6c0    8b442418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                     // 0x0083b6c4    8b54241c
                         add                eax, 0x00000100                                 // 0x0083b6c8    0500010000
                         inc                edx                                             // 0x0083b6cd    42
                         cmp.s              edx, ecx                                        // 0x0083b6ce    3bd1
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x0083b6d0    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                     // 0x0083b6d4    8954241c
                         {disp32} jle       _jmp_addr_0x0083b5d3                            // 0x0083b6d8    0f8ef5feffff
_jmp_addr_0x0083b6de:    {disp32} mov       eax, dword ptr [ebx + 0x00050000]               // 0x0083b6de    8b8300000500
                         {disp8} mov        edx, dword ptr [esp + 0x34]                     // 0x0083b6e4    8b542434
                         lea                ecx, dword ptr [eax + eax * 0x4]                // 0x0083b6e8    8d0c80
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                     // 0x0083b6eb    8b44242c
                         push               edx                                             // 0x0083b6ef    52
                         lea                esi, dword ptr [ebx + ecx * 0x4]                // 0x0083b6f0    8d348b
                         push               ebp                                             // 0x0083b6f3    55
                         push               eax                                             // 0x0083b6f4    50
                         mov.s              ecx, esi                                        // 0x0083b6f5    8bce
                         call               _jmp_addr_0x00869020                            // 0x0083b6f7    e824d90200
                         {disp32} mov       ecx, dword ptr [ebx + 0x00050000]               // 0x0083b6fc    8b8b00000500
                         push               ecx                                             // 0x0083b702    51
                         push               esi                                             // 0x0083b703    56
                         mov.s              ecx, ebx                                        // 0x0083b704    8bcb
                         call               _jmp_addr_0x0083b770                            // 0x0083b706    e865000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00050000]               // 0x0083b70b    8b8b00000500
                         {disp8} mov        eax, dword ptr [esp + 0x38]                     // 0x0083b711    8b442438
                         inc                ecx                                             // 0x0083b715    41
                         cmp                eax, 0x01                                       // 0x0083b716    83f801
                         {disp32} mov       dword ptr [ebx + 0x00050000], ecx               // 0x0083b719    898b00000500
                         {disp8} jne        _jmp_addr_0x0083b739                            // 0x0083b71f    7518
                         {disp32} mov       ecx, dword ptr [ebx + 0x00050024]               // 0x0083b721    8b8b24000500
                         push               esi                                             // 0x0083b727    56
                         call               _jmp_addr_0x00864d30                            // 0x0083b728    e803960200
                         pop                edi                                             // 0x0083b72d    5f
                         pop                esi                                             // 0x0083b72e    5e
                         pop                ebp                                             // 0x0083b72f    5d
                         pop                ebx                                             // 0x0083b730    5b
                         add                esp, 0x18                                       // 0x0083b731    83c418
                         ret                0x0010                                          // 0x0083b734    c21000
_jmp_addr_0x0083b737:    fstp               st(0)                                           // 0x0083b737    ddd8
_jmp_addr_0x0083b739:    pop                edi                                             // 0x0083b739    5f
                         pop                esi                                             // 0x0083b73a    5e
                         pop                ebp                                             // 0x0083b73b    5d
                         pop                ebx                                             // 0x0083b73c    5b
                         add                esp, 0x18                                       // 0x0083b73d    83c418
                         ret                0x0010                                          // 0x0083b740    c21000
                         nop                                                                // 0x0083b743    90
                         nop                                                                // 0x0083b744    90
                         nop                                                                // 0x0083b745    90
                         nop                                                                // 0x0083b746    90
                         nop                                                                // 0x0083b747    90
                         nop                                                                // 0x0083b748    90
                         nop                                                                // 0x0083b749    90
                         nop                                                                // 0x0083b74a    90
                         nop                                                                // 0x0083b74b    90
                         nop                                                                // 0x0083b74c    90
                         nop                                                                // 0x0083b74d    90
                         nop                                                                // 0x0083b74e    90
                         nop                                                                // 0x0083b74f    90
_jmp_addr_0x0083b750:    {disp8} mov        ax, word ptr [esp + 0x04]                       // 0x0083b750    668b442404
                         {disp8} mov        dx, word ptr [esp + 0x08]                       // 0x0083b755    668b542408
                         mov                word ptr [ecx], ax                              // 0x0083b75a    668901
                         {disp8} mov        word ptr [ecx + 0x02], dx                       // 0x0083b75d    66895102
                         ret                0x0008                                          // 0x0083b761    c20800
                         nop                                                                // 0x0083b764    90
                         nop                                                                // 0x0083b765    90
                         nop                                                                // 0x0083b766    90
                         nop                                                                // 0x0083b767    90
                         nop                                                                // 0x0083b768    90
                         nop                                                                // 0x0083b769    90
                         nop                                                                // 0x0083b76a    90
                         nop                                                                // 0x0083b76b    90
                         nop                                                                // 0x0083b76c    90
                         nop                                                                // 0x0083b76d    90
                         nop                                                                // 0x0083b76e    90
                         nop                                                                // 0x0083b76f    90
_jmp_addr_0x0083b770:    sub                esp, 0x0c                                       // 0x0083b770    83ec0c
                         push               ebx                                             // 0x0083b773    53
                         push               ebp                                             // 0x0083b774    55
                         push               esi                                             // 0x0083b775    56
                         push               edi                                             // 0x0083b776    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                     // 0x0083b777    8b7c2420
                         {disp8} fld        dword ptr [edi + 0x08]                          // 0x0083b77b    d94708
                         mov.s              esi, ecx                                        // 0x0083b77e    8bf1
                         {disp8} fsub       dword ptr [edi + 0x10]                          // 0x0083b780    d86710
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b783    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b789    e8725cf6ff
                         {disp8} fld        dword ptr [edi + 0x10]                          // 0x0083b78e    d94710
                         {disp8} fadd       dword ptr [edi + 0x08]                          // 0x0083b791    d84708
                         mov.s              ebp, eax                                        // 0x0083b794    8be8
                         {disp8} mov        dword ptr [esp + 0x14], ebp                     // 0x0083b796    896c2414
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b79a    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b7a0    e85b5cf6ff
                         {disp8} fld        dword ptr [edi + 0x0c]                          // 0x0083b7a5    d9470c
                         {disp8} fsub       dword ptr [edi + 0x10]                          // 0x0083b7a8    d86710
                         {disp8} mov        dword ptr [esp + 0x18], eax                     // 0x0083b7ab    89442418
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b7af    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b7b5    e8465cf6ff
                         {disp8} fld        dword ptr [edi + 0x0c]                          // 0x0083b7ba    d9470c
                         {disp8} fadd       dword ptr [edi + 0x10]                          // 0x0083b7bd    d84710
                         mov.s              ebx, eax                                        // 0x0083b7c0    8bd8
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083b7c2    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083b7c8    e8335cf6ff
                         mov.s              ecx, ebx                                        // 0x0083b7cd    8bcb
                         shl                ecx, 6                                          // 0x0083b7cf    c1e106
                         add.s              ecx, ebp                                        // 0x0083b7d2    03cd
                         cmp.s              ebx, eax                                        // 0x0083b7d4    3bd8
                         {disp8} jg         _jmp_addr_0x0083b84e                            // 0x0083b7d6    7f76
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                     // 0x0083b7d8    8b6c2424
                         sub.s              eax, ebx                                        // 0x0083b7dc    2bc3
                         {disp32} lea       edi, dword ptr [esi + ecx * 0x4 + 0x0005002a]   // 0x0083b7de    8dbc8e2a000500
                         inc                eax                                             // 0x0083b7e5    40
                         {disp8} mov        dword ptr [esp + 0x20], edi                     // 0x0083b7e6    897c2420
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083b7ea    89442410
_jmp_addr_0x0083b7ee:    {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083b7ee    8b442414
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                     // 0x0083b7f2    8b5c2418
                         cmp.s              eax, ebx                                        // 0x0083b7f6    3bc3
                         {disp8} jg         _jmp_addr_0x0083b835                            // 0x0083b7f8    7f3b
                         sub.s              ebx, eax                                        // 0x0083b7fa    2bd8
                         inc                ebx                                             // 0x0083b7fc    43
_jmp_addr_0x0083b7fd:    {disp32} mov       ax, word ptr [esi + 0x00064028]                 // 0x0083b7fd    668b8628400600
                         mov                dx, word ptr [edi]                              // 0x0083b804    668b17
                         mov                word ptr [edi], ax                              // 0x0083b807    668907
                         {disp32} mov       eax, dword ptr [esi + 0x00064028]               // 0x0083b80a    8b8628400600
                         cmp                eax, 0x00004000                                 // 0x0083b810    3d00400000
                         {disp8} jge        _jmp_addr_0x0083b82f                            // 0x0083b815    7d18
                         movsx              edx, dx                                         // 0x0083b817    0fbfd2
                         {disp32} lea       ecx, dword ptr [esi + eax * 0x4 + 0x00054028]   // 0x0083b81a    8d8c8628400500
                         push               edx                                             // 0x0083b821    52
                         inc                eax                                             // 0x0083b822    40
                         push               ebp                                             // 0x0083b823    55
                         {disp32} mov       dword ptr [esi + 0x00064028], eax               // 0x0083b824    898628400600
                         call               _jmp_addr_0x0083b750                            // 0x0083b82a    e821ffffff
_jmp_addr_0x0083b82f:    add                edi, 0x04                                       // 0x0083b82f    83c704
                         dec                ebx                                             // 0x0083b832    4b
                         {disp8} jne        _jmp_addr_0x0083b7fd                            // 0x0083b833    75c8
_jmp_addr_0x0083b835:    {disp8} mov        edi, dword ptr [esp + 0x20]                     // 0x0083b835    8b7c2420
                         {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083b839    8b442410
                         add                edi, 0x00000100                                 // 0x0083b83d    81c700010000
                         dec                eax                                             // 0x0083b843    48
                         {disp8} mov        dword ptr [esp + 0x20], edi                     // 0x0083b844    897c2420
                         {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083b848    89442410
                         {disp8} jne        _jmp_addr_0x0083b7ee                            // 0x0083b84c    75a0
_jmp_addr_0x0083b84e:    pop                edi                                             // 0x0083b84e    5f
                         pop                esi                                             // 0x0083b84f    5e
                         pop                ebp                                             // 0x0083b850    5d
                         pop                ebx                                             // 0x0083b851    5b
                         add                esp, 0x0c                                       // 0x0083b852    83c40c
                         ret                0x0008                                          // 0x0083b855    c20800
                         nop                                                                // 0x0083b858    90
                         nop                                                                // 0x0083b859    90
                         nop                                                                // 0x0083b85a    90
                         nop                                                                // 0x0083b85b    90
                         nop                                                                // 0x0083b85c    90
                         nop                                                                // 0x0083b85d    90
                         nop                                                                // 0x0083b85e    90
                         nop                                                                // 0x0083b85f    90
@GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di@24:    sub                esp, 0x10                                       // 0x0083b860    83ec10
                         {disp8} mov        eax, dword ptr [esp + 0x14]                     // 0x0083b863    8b442414
                         push               esi                                             // 0x0083b867    56
                         lea                eax, dword ptr [eax + eax * 0x4]                // 0x0083b868    8d0480
                         {disp8} fld        dword ptr [ecx + eax * 0x4 + 0x08]              // 0x0083b86b    d9448108
                         lea                esi, dword ptr [ecx + eax * 0x4]                // 0x0083b86f    8d3481
                         push               edi                                             // 0x0083b872    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                     // 0x0083b873    8b7c2420
                         fsub               dword ptr [edi]                                 // 0x0083b877    d827
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                     // 0x0083b879    8d4c2408
                         {disp8} fstp       dword ptr [esp + 0x08]                          // 0x0083b87d    d95c2408
                         {disp8} fld        dword ptr [esi + 0x0c]                          // 0x0083b881    d9460c
                         {disp8} fsub       dword ptr [edi + 0x04]                          // 0x0083b884    d86704
                         {disp8} fstp       dword ptr [esp + 0x0c]                          // 0x0083b887    d95c240c
                         call               @GetNormSq__7Point2DFv2@4                       // 0x0083b88b    e810450300
                         {disp8} fst        dword ptr [esp + 0x20]                          // 0x0083b890    d9542420
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]               // 0x0083b894    d81d18f58b00
                         fnstsw             ax                                              // 0x0083b89a    dfe0
                         test               ah, 0x01                                        // 0x0083b89c    f6c401
                         {disp8} je         _jmp_addr_0x0083b8bd                            // 0x0083b89f    741c
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                     // 0x0083b8a1    8b4e08
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x0083b8a4    8b442424
                         mov                dword ptr [eax], ecx                            // 0x0083b8a8    8908
                         {disp8} fld        dword ptr [esi + 0x10]                          // 0x0083b8aa    d94610
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x0083b8ad    d8460c
                         pop                edi                                             // 0x0083b8b0    5f
                         pop                esi                                             // 0x0083b8b1    5e
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083b8b2    d95804
                         xor.s              eax, eax                                        // 0x0083b8b5    33c0
                         add                esp, 0x10                                       // 0x0083b8b7    83c410
                         ret                0x0010                                          // 0x0083b8ba    c21000
_jmp_addr_0x0083b8bd:    {disp8} mov        edx, dword ptr [esi + 0x10]                     // 0x0083b8bd    8b5610
                         {disp8} mov        dword ptr [esp + 0x1c], edx                     // 0x0083b8c0    8954241c
                         {disp8} fld        dword ptr [esp + 0x1c]                          // 0x0083b8c4    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083b8c8    d84c241c
                         fld                st(0)                                           // 0x0083b8cc    d9c0
                         {disp32} fadd      dword ptr [_rdata_float0p001]                   // 0x0083b8ce    d805b0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x20]                          // 0x0083b8d4    d85c2420
                         fnstsw             ax                                              // 0x0083b8d8    dfe0
                         test               ah, 0x41                                        // 0x0083b8da    f6c441
                         {disp8} jne        _jmp_addr_0x0083b923                            // 0x0083b8dd    7544
                         fstp               st(0)                                           // 0x0083b8df    ddd8
                         mov.s              eax, edx                                        // 0x0083b8e1    8bc2
                         fld                dword ptr [edi]                                 // 0x0083b8e3    d907
                         push               eax                                             // 0x0083b8e5    50
                         {disp8} fsub       dword ptr [esi + 0x08]                          // 0x0083b8e6    d86608
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                     // 0x0083b8e9    8d4c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                          // 0x0083b8ed    d95c2414
                         {disp8} fld        dword ptr [edi + 0x04]                          // 0x0083b8f1    d94704
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x0083b8f4    d8660c
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083b8f7    d95c2418
                         call               @SetSize__7Point2DFf@12                         // 0x0083b8fb    e870440300
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083b900    d9442410
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x0083b904    d84608
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x0083b907    8b442424
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083b90b    d9442414
                         pop                edi                                             // 0x0083b90f    5f
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x0083b910    d8460c
                         pop                esi                                             // 0x0083b913    5e
                         fxch               st(1)                                           // 0x0083b914    d9c9
                         fstp               dword ptr [eax]                                 // 0x0083b916    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083b918    d95804
                         xor.s              eax, eax                                        // 0x0083b91b    33c0
                         add                esp, 0x10                                       // 0x0083b91d    83c410
                         ret                0x0010                                          // 0x0083b920    c21000
_jmp_addr_0x0083b923:    {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083b923    d9442420
                         fsub               st, st(1)                                       // 0x0083b927    d8e1
                         fdivp              st(1), st                                       // 0x0083b929    def9
                         {disp32} fcom      dword ptr [_rdata_float0p0]                     // 0x0083b92b    d81598a38a00
                         fnstsw             ax                                              // 0x0083b931    dfe0
                         test               ah, 0x41                                        // 0x0083b933    f6c441
                         {disp8} je         _jmp_addr_0x0083b940                            // 0x0083b936    7408
                         fstp               st(0)                                           // 0x0083b938    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                     // 0x0083b93a    d90598a38a00
_jmp_addr_0x0083b940:    fld                st(0)                                           // 0x0083b940    d9c0
                         {disp8} mov        eax, dword ptr [esp + 0x28]                     // 0x0083b942    8b442428
                         cmp                eax, 0x02                                       // 0x0083b946    83f802
                         {disp32} fadd      dword ptr [_rdata_float1p0]                     // 0x0083b949    d80590a38a00
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                     // 0x0083b94f    d83d90a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                          // 0x0083b955    d95c241c
                         fsqrt                                                              // 0x0083b959    d9fa
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083b95b    d84c241c
                         {disp8} jne        _jmp_addr_0x0083b99e                            // 0x0083b95f    753d
                         {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083b961    d9442408
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x0083b965    8b442424
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083b969    d84c241c
                         fadd               dword ptr [edi]                                 // 0x0083b96d    d807
                         {disp8} fld        dword ptr [esp + 0x0c]                          // 0x0083b96f    d944240c
                         fmul               st, st(2)                                       // 0x0083b973    d8ca
                         fsubp              st(1), st                                       // 0x0083b975    dee9
                         fstp               dword ptr [eax]                                 // 0x0083b977    d918
                         {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083b979    d9442408
                         fmul               st, st(1)                                       // 0x0083b97d    d8c9
                         {disp8} fld        dword ptr [esp + 0x0c]                          // 0x0083b97f    d944240c
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083b983    d84c241c
                         faddp              st(1), st                                       // 0x0083b987    dec1
                         {disp8} fadd       dword ptr [edi + 0x04]                          // 0x0083b989    d84704
                         pop                edi                                             // 0x0083b98c    5f
                         pop                esi                                             // 0x0083b98d    5e
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083b98e    d95804
                         mov                eax, 0x00000001                                 // 0x0083b991    b801000000
                         fstp               st(0)                                           // 0x0083b996    ddd8
                         add                esp, 0x10                                       // 0x0083b998    83c410
                         ret                0x0010                                          // 0x0083b99b    c21000
_jmp_addr_0x0083b99e:    {disp8} fld        dword ptr [esp + 0x0c]                          // 0x0083b99e    d944240c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                     // 0x0083b9a2    8b442424
                         fmul               st, st(1)                                       // 0x0083b9a6    d8c9
                         {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083b9a8    d9442408
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083b9ac    d84c241c
                         faddp              st(1), st                                       // 0x0083b9b0    dec1
                         fadd               dword ptr [edi]                                 // 0x0083b9b2    d807
                         fstp               dword ptr [eax]                                 // 0x0083b9b4    d918
                         {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083b9b6    d9442408
                         fmul               st, st(1)                                       // 0x0083b9ba    d8c9
                         {disp8} fsubr      dword ptr [edi + 0x04]                          // 0x0083b9bc    d86f04
                         pop                edi                                             // 0x0083b9bf    5f
                         {disp8} fld        dword ptr [esp + 0x08]                          // 0x0083b9c0    d9442408
                         pop                esi                                             // 0x0083b9c4    5e
                         {disp8} fmul       dword ptr [esp + 0x14]                          // 0x0083b9c5    d84c2414
                         faddp              st(1), st                                       // 0x0083b9c9    dec1
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083b9cb    d95804
                         mov                eax, 0x00000001                                 // 0x0083b9ce    b801000000
                         fstp               st(0)                                           // 0x0083b9d3    ddd8
                         add                esp, 0x10                                       // 0x0083b9d5    83c410
                         ret                0x0010                                          // 0x0083b9d8    c21000
                         nop                                                                // 0x0083b9db    90
                         nop                                                                // 0x0083b9dc    90
                         nop                                                                // 0x0083b9dd    90
                         nop                                                                // 0x0083b9de    90
                         nop                                                                // 0x0083b9df    90
_jmp_addr_0x0083b9e0:    sub                esp, 0x18                                       // 0x0083b9e0    83ec18
                         {disp8} mov        eax, dword ptr [esp + 0x28]                     // 0x0083b9e3    8b442428
                         push               ebx                                             // 0x0083b9e7    53
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                     // 0x0083b9e8    8b5c2424
                         cmp                ebx, 0x01                                       // 0x0083b9ec    83fb01
                         push               ebp                                             // 0x0083b9ef    55
                         push               esi                                             // 0x0083b9f0    56
                         lea                eax, dword ptr [eax + eax * 0x4]                // 0x0083b9f1    8d0480
                         {disp8} fld        dword ptr [ecx + eax * 0x4 + 0x08]              // 0x0083b9f4    d9448108
                         push               edi                                             // 0x0083b9f8    57
                         lea                edi, dword ptr [ecx + eax * 0x4]                // 0x0083b9f9    8d3c81
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                     // 0x0083b9fc    8b44242c
                         lea                edx, dword ptr [eax + eax * 0x4]                // 0x0083ba00    8d1480
                         {disp8} fsub       dword ptr [ecx + edx * 0x4 + 0x08]              // 0x0083ba03    d8649108
                         lea                esi, dword ptr [ecx + edx * 0x4]                // 0x0083ba07    8d3491
                         {disp8} fstp       dword ptr [esp + 0x10]                          // 0x0083ba0a    d95c2410
                         {disp8} fld        dword ptr [edi + 0x0c]                          // 0x0083ba0e    d9470c
                         {disp8} fsub       dword ptr [esi + 0x0c]                          // 0x0083ba11    d8660c
                         {disp8} fstp       dword ptr [esp + 0x14]                          // 0x0083ba14    d95c2414
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083ba18    d9442414
                         {disp8} jne        _jmp_addr_0x0083ba2a                            // 0x0083ba1c    750c
                         fchs                                                               // 0x0083ba1e    d9e0
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083ba20    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083ba24    d9442410
                         {disp8} jmp        _jmp_addr_0x0083ba34                            // 0x0083ba28    eb0a
_jmp_addr_0x0083ba2a:    {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083ba2a    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083ba2e    d9442410
                         fchs                                                               // 0x0083ba32    d9e0
_jmp_addr_0x0083ba34:    {disp8} mov        ebp, dword ptr [esp + 0x3c]                     // 0x0083ba34    8b6c243c
                         cmp.s              ebp, ebx                                        // 0x0083ba38    3beb
                         {disp8} mov        eax, dword ptr [esi + 0x10]                     // 0x0083ba3a    8b4610
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                     // 0x0083ba3d    8b4f10
                         {disp8} fstp       dword ptr [esp + 0x1c]                          // 0x0083ba40    d95c241c
                         {disp8} mov        dword ptr [esp + 0x2c], eax                     // 0x0083ba44    8944242c
                         {disp8} mov        dword ptr [esp + 0x38], ecx                     // 0x0083ba48    894c2438
                         {disp8} jne        _jmp_addr_0x0083ba58                            // 0x0083ba4c    750a
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x0083ba4e    d944242c
                         {disp8} fsub       dword ptr [esp + 0x38]                          // 0x0083ba52    d8642438
                         {disp8} jmp        _jmp_addr_0x0083ba60                            // 0x0083ba56    eb08
_jmp_addr_0x0083ba58:    {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083ba58    d9442438
                         {disp8} fadd       dword ptr [esp + 0x2c]                          // 0x0083ba5c    d844242c
_jmp_addr_0x0083ba60:    {disp8} lea        ecx, dword ptr [esp + 0x10]                     // 0x0083ba60    8d4c2410
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083ba64    d95c2430
                         call               _jmp_addr_0x0086fd50                            // 0x0083ba68    e8e3420300
                         {disp8} fstp       dword ptr [esp + 0x3c]                          // 0x0083ba6d    d95c243c
                         {disp8} fld        dword ptr [esp + 0x30]                          // 0x0083ba71    d9442430
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083ba75    d874243c
                         {disp8} fst        dword ptr [esp + 0x30]                          // 0x0083ba79    d9542430
                         {disp8} fmul       dword ptr [esp + 0x30]                          // 0x0083ba7d    d84c2430
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                     // 0x0083ba81    d82d90a38a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                     // 0x0083ba87    d81598a38a00
                         fnstsw             ax                                              // 0x0083ba8d    dfe0
                         test               ah, 0x41                                        // 0x0083ba8f    f6c441
                         {disp8} je         _jmp_addr_0x0083baa2                            // 0x0083ba92    740e
                         pop                edi                                             // 0x0083ba94    5f
                         fstp               st(0)                                           // 0x0083ba95    ddd8
                         pop                esi                                             // 0x0083ba97    5e
                         pop                ebp                                             // 0x0083ba98    5d
                         xor.s              eax, eax                                        // 0x0083ba99    33c0
                         pop                ebx                                             // 0x0083ba9b    5b
                         add                esp, 0x18                                       // 0x0083ba9c    83c418
                         ret                0x0018                                          // 0x0083ba9f    c21800
_jmp_addr_0x0083baa2:    cmp.s              ebp, ebx                                        // 0x0083baa2    3beb
                         fsqrt                                                              // 0x0083baa4    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x34]                     // 0x0083baa6    8b442434
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083baaa    d874243c
                         fld                st(0)                                           // 0x0083baae    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                          // 0x0083bab0    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x20]                          // 0x0083bab4    d95c2420
                         {disp8} fmul       dword ptr [esp + 0x1c]                          // 0x0083bab8    d84c241c
                         {disp8} fld        dword ptr [esp + 0x30]                          // 0x0083babc    d9442430
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083bac0    d874243c
                         fld                st(0)                                           // 0x0083bac4    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                          // 0x0083bac6    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083baca    d95c2418
                         {disp8} fmul       dword ptr [esp + 0x14]                          // 0x0083bace    d84c2414
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083bad2    d9442418
                         {disp8} fadd       dword ptr [esp + 0x20]                          // 0x0083bad6    d8442420
                         {disp8} fstp       dword ptr [esp + 0x10]                          // 0x0083bada    d95c2410
                         fadd               st, st(1)                                       // 0x0083bade    d8c1
                         {disp8} fstp       dword ptr [esp + 0x14]                          // 0x0083bae0    d95c2414
                         fstp               st(0)                                           // 0x0083bae4    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083bae6    d9442410
                         {disp8} fmul       dword ptr [esp + 0x2c]                          // 0x0083baea    d84c242c
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083baee    d9442414
                         {disp8} fmul       dword ptr [esp + 0x2c]                          // 0x0083baf2    d84c242c
                         {disp8} fstp       dword ptr [esp + 0x24]                          // 0x0083baf6    d95c2424
                         {disp8} fadd       dword ptr [esi + 0x08]                          // 0x0083bafa    d84608
                         {disp8} fld        dword ptr [esp + 0x24]                          // 0x0083bafd    d9442424
                         {disp8} fadd       dword ptr [esi + 0x0c]                          // 0x0083bb01    d8460c
                         fxch               st(1)                                           // 0x0083bb04    d9c9
                         fstp               dword ptr [eax]                                 // 0x0083bb06    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083bb08    d95804
                         {disp8} fld        dword ptr [esp + 0x10]                          // 0x0083bb0b    d9442410
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083bb0f    d84c2438
                         {disp8} fld        dword ptr [esp + 0x14]                          // 0x0083bb13    d9442414
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083bb17    d84c2438
                         {disp8} jne        _jmp_addr_0x0083bb2d                            // 0x0083bb1b    7510
                         {disp8} fstp       dword ptr [esp + 0x24]                          // 0x0083bb1d    d95c2424
                         {disp8} fadd       dword ptr [edi + 0x08]                          // 0x0083bb21    d84708
                         {disp8} fld        dword ptr [esp + 0x24]                          // 0x0083bb24    d9442424
                         {disp8} fadd       dword ptr [edi + 0x0c]                          // 0x0083bb28    d8470c
                         {disp8} jmp        _jmp_addr_0x0083bb3b                            // 0x0083bb2b    eb0e
_jmp_addr_0x0083bb2d:    {disp8} fstp       dword ptr [esp + 0x24]                          // 0x0083bb2d    d95c2424
                         {disp8} fsubr      dword ptr [edi + 0x08]                          // 0x0083bb31    d86f08
                         {disp8} fld        dword ptr [edi + 0x0c]                          // 0x0083bb34    d9470c
                         {disp8} fsub       dword ptr [esp + 0x24]                          // 0x0083bb37    d8642424
_jmp_addr_0x0083bb3b:    {disp8} mov        eax, dword ptr [esp + 0x40]                     // 0x0083bb3b    8b442440
                         fxch               st(1)                                           // 0x0083bb3f    d9c9
                         pop                edi                                             // 0x0083bb41    5f
                         fstp               dword ptr [eax]                                 // 0x0083bb42    d918
                         pop                esi                                             // 0x0083bb44    5e
                         pop                ebp                                             // 0x0083bb45    5d
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083bb46    d95804
                         mov                eax, 0x00000001                                 // 0x0083bb49    b801000000
                         pop                ebx                                             // 0x0083bb4e    5b
                         add                esp, 0x18                                       // 0x0083bb4f    83c418
                         ret                0x0018                                          // 0x0083bb52    c21800
                         nop                                                                // 0x0083bb55    90
                         nop                                                                // 0x0083bb56    90
                         nop                                                                // 0x0083bb57    90
                         nop                                                                // 0x0083bb58    90
                         nop                                                                // 0x0083bb59    90
                         nop                                                                // 0x0083bb5a    90
                         nop                                                                // 0x0083bb5b    90
                         nop                                                                // 0x0083bb5c    90
                         nop                                                                // 0x0083bb5d    90
                         nop                                                                // 0x0083bb5e    90
                         nop                                                                // 0x0083bb5f    90
@GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32:    sub                esp, 0x50                                       // 0x0083bb60    83ec50
                         push               ebx                                             // 0x0083bb63    53
                         {disp8} mov        ebx, dword ptr [esp + 0x58]                     // 0x0083bb64    8b5c2458
                         push               ebp                                             // 0x0083bb68    55
                         push               esi                                             // 0x0083bb69    56
                         {disp8} mov        esi, dword ptr [esp + 0x64]                     // 0x0083bb6a    8b742464
                         fld                dword ptr [esi]                                 // 0x0083bb6e    d906
                         push               edi                                             // 0x0083bb70    57
                         fsub               dword ptr [ebx]                                 // 0x0083bb71    d823
                         mov.s              ebp, ecx                                        // 0x0083bb73    8be9
                         {disp8} fstp       dword ptr [esp + 0x38]                          // 0x0083bb75    d95c2438
                         {disp8} fld        dword ptr [esi + 0x04]                          // 0x0083bb79    d94604
                         {disp8} fsub       dword ptr [ebx + 0x04]                          // 0x0083bb7c    d86304
                         {disp8} fst        dword ptr [esp + 0x3c]                          // 0x0083bb7f    d954243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                          // 0x0083bb83    d84c243c
                         {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083bb87    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083bb8b    d84c2438
                         faddp              st(1), st                                       // 0x0083bb8f    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]               // 0x0083bb91    d81d18f58b00
                         fnstsw             ax                                              // 0x0083bb97    dfe0
                         test               ah, 0x01                                        // 0x0083bb99    f6c401
                         {disp32} jne       _jmp_addr_0x0083c275                            // 0x0083bb9c    0f85d3060000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                     // 0x0083bba2    8d4c2438
                         call               _jmp_addr_0x0086fe80                            // 0x0083bba6    e8d5420300
                         {disp8} fstp       dword ptr [esp + 0x68]                          // 0x0083bbab    d95c2468
                         {disp8} fld        dword ptr [esp + 0x78]                          // 0x0083bbaf    d9442478
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083bbb3    d81d98a38a00
                         fnstsw             ax                                              // 0x0083bbb9    dfe0
                         test               ah, 0x41                                        // 0x0083bbbb    f6c441
                         {disp8} jne        _jmp_addr_0x0083bc20                            // 0x0083bbbe    7560
                         {disp8} fld        dword ptr [esp + 0x68]                          // 0x0083bbc0    d9442468
                         {disp8} fsub       dword ptr [esp + 0x78]                          // 0x0083bbc4    d8642478
                         {disp8} fst        dword ptr [esp + 0x68]                          // 0x0083bbc8    d9542468
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                   // 0x0083bbcc    d81db0a38a00
                         fnstsw             ax                                              // 0x0083bbd2    dfe0
                         test               ah, 0x01                                        // 0x0083bbd4    f6c401
                         {disp8} je         _jmp_addr_0x0083bbf0                            // 0x0083bbd7    7417
                         mov                eax, dword ptr [ebx]                            // 0x0083bbd9    8b03
                         mov                dword ptr [esi], eax                            // 0x0083bbdb    8906
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                     // 0x0083bbdd    8b4b04
                         pop                edi                                             // 0x0083bbe0    5f
                         {disp8} mov        dword ptr [esi + 0x04], ecx                     // 0x0083bbe1    894e04
                         pop                esi                                             // 0x0083bbe4    5e
                         pop                ebp                                             // 0x0083bbe5    5d
                         or                 eax, -0x1                                       // 0x0083bbe6    83c8ff
                         pop                ebx                                             // 0x0083bbe9    5b
                         add                esp, 0x50                                       // 0x0083bbea    83c450
                         ret                0x0018                                          // 0x0083bbed    c21800
_jmp_addr_0x0083bbf0:    {disp8} fld        dword ptr [esp + 0x68]                          // 0x0083bbf0    d9442468
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e674]               // 0x0083bbf4    d82574768c00
                         fld                st(0)                                           // 0x0083bbfa    d9c0
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083bbfc    d84c2438
                         {disp8} fstp       dword ptr [esp + 0x58]                          // 0x0083bc00    d95c2458
                         {disp8} fmul       dword ptr [esp + 0x3c]                          // 0x0083bc04    d84c243c
                         {disp8} fld        dword ptr [esp + 0x58]                          // 0x0083bc08    d9442458
                         fadd               dword ptr [ebx]                                 // 0x0083bc0c    d803
                         fxch               st(1)                                           // 0x0083bc0e    d9c9
                         {disp8} fadd       dword ptr [ebx + 0x04]                          // 0x0083bc10    d84304
                         {disp8} fstp       dword ptr [esp + 0x5c]                          // 0x0083bc13    d95c245c
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                     // 0x0083bc17    8b54245c
                         fstp               dword ptr [esi]                                 // 0x0083bc1b    d91e
                         {disp8} mov        dword ptr [esi + 0x04], edx                     // 0x0083bc1d    895604
_jmp_addr_0x0083bc20:    {disp8} fld        dword ptr [esp + 0x3c]                          // 0x0083bc20    d944243c
                         {disp8} mov        dword ptr [esp + 0x1c], 0xffffffff              // 0x0083bc24    c744241cffffffff
                         fchs                                                               // 0x0083bc2c    d9e0
                         {disp8} fstp       dword ptr [esp + 0x58]                          // 0x0083bc2e    d95c2458
                         {disp8} fld        dword ptr [esp + 0x38]                          // 0x0083bc32    d9442438
                         {disp8} fstp       dword ptr [esp + 0x5c]                          // 0x0083bc36    d95c245c
                         fld                dword ptr [ebx]                                 // 0x0083bc3a    d903
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083bc3c    d835e83a9a00
                         call               _jmp_addr_0x007a1400                            // 0x0083bc42    e8b957f6ff
                         {disp8} fld        dword ptr [ebx + 0x04]                          // 0x0083bc47    d94304
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083bc4a    d835e83a9a00
                         mov.s              edi, eax                                        // 0x0083bc50    8bf8
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083bc52    897c2440
                         call               _jmp_addr_0x007a1400                            // 0x0083bc56    e8a557f6ff
                         fld                dword ptr [esi]                                 // 0x0083bc5b    d906
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083bc5d    d835e83a9a00
                         mov.s              ebx, eax                                        // 0x0083bc63    8bd8
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083bc65    895c2444
                         call               _jmp_addr_0x007a1400                            // 0x0083bc69    e89257f6ff
                         {disp8} fld        dword ptr [esi + 0x04]                          // 0x0083bc6e    d94604
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083bc71    d835e83a9a00
                         {disp8} mov        dword ptr [esp + 0x48], eax                     // 0x0083bc77    89442448
                         call               _jmp_addr_0x007a1400                            // 0x0083bc7b    e88057f6ff
                         mov.s              ecx, eax                                        // 0x0083bc80    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x48]                     // 0x0083bc82    8b442448
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                     // 0x0083bc86    894c244c
                         sub.s              eax, edi                                        // 0x0083bc8a    2bc7
                         sub.s              ecx, ebx                                        // 0x0083bc8c    2bcb
                         test               eax, eax                                        // 0x0083bc8e    85c0
                         {disp8} jne        _jmp_addr_0x0083bca8                            // 0x0083bc90    7516
                         test               ecx, ecx                                        // 0x0083bc92    85c9
                         {disp8} jne        _jmp_addr_0x0083bc9c                            // 0x0083bc94    7506
                         {disp8} mov        dword ptr [esp + 0x10], ecx                     // 0x0083bc96    894c2410
                         {disp8} jmp        _jmp_addr_0x0083bce4                            // 0x0083bc9a    eb48
_jmp_addr_0x0083bc9c:    xor.s              eax, eax                                        // 0x0083bc9c    33c0
                         test               ecx, ecx                                        // 0x0083bc9e    85c9
                         setl               al                                              // 0x0083bca0    0f9cc0
                         add                eax, 0x03                                       // 0x0083bca3    83c003
                         {disp8} jmp        _jmp_addr_0x0083bce0                            // 0x0083bca6    eb38
_jmp_addr_0x0083bca8:    {disp8} jge        _jmp_addr_0x0083bcc8                            // 0x0083bca8    7d1e
                         test               ecx, ecx                                        // 0x0083bcaa    85c9
                         {disp8} jne        _jmp_addr_0x0083bcb8                            // 0x0083bcac    750a
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000002              // 0x0083bcae    c744241002000000
                         {disp8} jmp        _jmp_addr_0x0083bce4                            // 0x0083bcb6    eb2c
_jmp_addr_0x0083bcb8:    xor.s              edx, edx                                        // 0x0083bcb8    33d2
                         test               ecx, ecx                                        // 0x0083bcba    85c9
                         setl               dl                                              // 0x0083bcbc    0f9cc2
                         add                edx, 0x07                                       // 0x0083bcbf    83c207
                         {disp8} mov        dword ptr [esp + 0x10], edx                     // 0x0083bcc2    89542410
                         {disp8} jmp        _jmp_addr_0x0083bce4                            // 0x0083bcc6    eb1c
_jmp_addr_0x0083bcc8:    test               ecx, ecx                                        // 0x0083bcc8    85c9
                         {disp8} jne        _jmp_addr_0x0083bcd6                            // 0x0083bcca    750a
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001              // 0x0083bccc    c744241001000000
                         {disp8} jmp        _jmp_addr_0x0083bce4                            // 0x0083bcd4    eb0e
_jmp_addr_0x0083bcd6:    xor.s              eax, eax                                        // 0x0083bcd6    33c0
                         test               ecx, ecx                                        // 0x0083bcd8    85c9
                         setl               al                                              // 0x0083bcda    0f9cc0
                         add                eax, 0x05                                       // 0x0083bcdd    83c005
_jmp_addr_0x0083bce0:    {disp8} mov        dword ptr [esp + 0x10], eax                     // 0x0083bce0    89442410
_jmp_addr_0x0083bce4:    test               edi, edi                                        // 0x0083bce4    85ff
                         {disp8} mov        eax, dword ptr [esp + 0x64]                     // 0x0083bce6    8b442464
                         mov                ecx, dword ptr [eax]                            // 0x0083bcea    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                     // 0x0083bcec    8b5004
                         {disp8} mov        dword ptr [esp + 0x30], ecx                     // 0x0083bcef    894c2430
                         {disp8} mov        dword ptr [esp + 0x34], edx                     // 0x0083bcf3    89542434
                         {disp32} jle       _jmp_addr_0x0083c263                            // 0x0083bcf7    0f8e66050000
                         {disp8} lea        eax, dword ptr [edi + 0x01]                     // 0x0083bcfd    8d4701
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083bd00    89442478
_jmp_addr_0x0083bd04:    cmp                edi, 0x40                                       // 0x0083bd04    83ff40
                         {disp32} jge       _jmp_addr_0x0083c263                            // 0x0083bd07    0f8d56050000
                         test               ebx, ebx                                        // 0x0083bd0d    85db
                         {disp32} jle       _jmp_addr_0x0083c263                            // 0x0083bd0f    0f8e4e050000
                         cmp                ebx, 0x40                                       // 0x0083bd15    83fb40
                         {disp32} jge       _jmp_addr_0x0083c263                            // 0x0083bd18    0f8d45050000
                         mov.s              ecx, ebx                                        // 0x0083bd1e    8bcb
                         shl                ecx, 6                                          // 0x0083bd20    c1e106
                         add.s              ecx, edi                                        // 0x0083bd23    03cf
                         cmp                word ptr [ebp + ecx * 0x4 + 0x00050028], 0x00   // 0x0083bd25    6683bc8d2800050000
                         {disp32} lea       esi, dword ptr [ebp + ecx * 0x4 + 0x00050028]   // 0x0083bd2e    8db48d28000500
                         {disp8} jne        _jmp_addr_0x0083bd40                            // 0x0083bd35    7509
                         push               ebx                                             // 0x0083bd37    53
                         push               edi                                             // 0x0083bd38    57
                         mov.s              ecx, ebp                                        // 0x0083bd39    8bcd
                         call               _jmp_addr_0x0083b380                            // 0x0083bd3b    e840f6ffff
_jmp_addr_0x0083bd40:    {disp8} mov        si, word ptr [esi + 0x02]                       // 0x0083bd40    668b7602
                         cmp                si, -0x01                                       // 0x0083bd44    6683feff
                         {disp32} je        _jmp_addr_0x0083bf05                            // 0x0083bd48    0f84b7010000
                         movsx              edx, si                                         // 0x0083bd4e    0fbfd6
                         {disp32} lea       esi, dword ptr [ebp + edx * 0x4 + 0x00054028]   // 0x0083bd51    8db49528400500
                         test               esi, esi                                        // 0x0083bd58    85f6
                         {disp32} je        _jmp_addr_0x0083bef8                            // 0x0083bd5a    0f8498010000
_jmp_addr_0x0083bd60:    movsx              eax, word ptr [esi]                             // 0x0083bd60    0fbf06
                         lea                ecx, dword ptr [eax + eax * 0x4]                // 0x0083bd63    8d0c80
                         {disp8} mov        edx, dword ptr [ebp + ecx * 0x4 + 0x04]         // 0x0083bd66    8b548d04
                         test               edx, edx                                        // 0x0083bd6a    85d2
                         {disp8} lea        ecx, dword ptr [ebp + ecx * 0x4 + 0x00]         // 0x0083bd6c    8d4c8d00
                         {disp32} je        _jmp_addr_0x0083bedc                            // 0x0083bd70    0f8466010000
                         cmp                eax, dword ptr [esp + 0x6c]                     // 0x0083bd76    3b44246c
                         {disp32} je        _jmp_addr_0x0083bedc                            // 0x0083bd7a    0f845c010000
                         {disp8} mov        eax, dword ptr [esp + 0x64]                     // 0x0083bd80    8b442464
                         {disp8} fld        dword ptr [ecx + 0x08]                          // 0x0083bd84    d94108
                         fsub               dword ptr [eax]                                 // 0x0083bd87    d820
                         {disp8} fstp       dword ptr [esp + 0x50]                          // 0x0083bd89    d95c2450
                         {disp8} fld        dword ptr [ecx + 0x0c]                          // 0x0083bd8d    d9410c
                         {disp8} fsub       dword ptr [eax + 0x04]                          // 0x0083bd90    d86004
                         {disp8} fst        dword ptr [esp + 0x54]                          // 0x0083bd93    d9542454
                         {disp8} fmul       dword ptr [esp + 0x3c]                          // 0x0083bd97    d84c243c
                         {disp8} fld        dword ptr [esp + 0x50]                          // 0x0083bd9b    d9442450
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083bd9f    d84c2438
                         faddp              st(1), st                                       // 0x0083bda3    dec1
                         {disp8} fst        dword ptr [esp + 0x18]                          // 0x0083bda5    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083bda9    d81d98a38a00
                         fnstsw             ax                                              // 0x0083bdaf    dfe0
                         test               ah, 0x41                                        // 0x0083bdb1    f6c441
                         {disp32} jne       _jmp_addr_0x0083bedc                            // 0x0083bdb4    0f8522010000
                         {disp8} fld        dword ptr [esp + 0x68]                          // 0x0083bdba    d9442468
                         {disp8} fadd       dword ptr [ecx + 0x10]                          // 0x0083bdbe    d84110
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083bdc1    d85c2418
                         fnstsw             ax                                              // 0x0083bdc5    dfe0
                         test               ah, 0x41                                        // 0x0083bdc7    f6c441
                         {disp32} jne       _jmp_addr_0x0083bedc                            // 0x0083bdca    0f850c010000
                         {disp8} fld        dword ptr [esp + 0x5c]                          // 0x0083bdd0    d944245c
                         {disp8} fmul       dword ptr [esp + 0x54]                          // 0x0083bdd4    d84c2454
                         {disp8} fld        dword ptr [esp + 0x50]                          // 0x0083bdd8    d9442450
                         {disp8} fmul       dword ptr [esp + 0x58]                          // 0x0083bddc    d84c2458
                         faddp              st(1), st                                       // 0x0083bde0    dec1
                         {disp8} fstp       dword ptr [esp + 0x20]                          // 0x0083bde2    d95c2420
                         {disp8} fld        dword ptr [ecx + 0x10]                          // 0x0083bde6    d94110
                         {disp32} fsub      dword ptr [rdata_bytes + 0x81544]               // 0x0083bde9    d82544a59200
                         fld                st(0)                                           // 0x0083bdef    d9c0
                         fchs                                                               // 0x0083bdf1    d9e0
                         {disp8} fcomp      dword ptr [esp + 0x20]                          // 0x0083bdf3    d85c2420
                         fnstsw             ax                                              // 0x0083bdf7    dfe0
                         test               ah, 0x01                                        // 0x0083bdf9    f6c401
                         {disp32} je        _jmp_addr_0x0083beda                            // 0x0083bdfc    0f84d8000000
                         {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083be02    d9442420
                         fcomp              st(1)                                           // 0x0083be06    d8d9
                         fnstsw             ax                                              // 0x0083be08    dfe0
                         fstp               st(0)                                           // 0x0083be0a    ddd8
                         test               ah, 0x01                                        // 0x0083be0c    f6c401
                         {disp32} je        _jmp_addr_0x0083bedc                            // 0x0083be0f    0f84c7000000
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083be15    d9442418
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                     // 0x0083be19    8b5110
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ece0]               // 0x0083be1c    d80de07c8c00
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                     // 0x0083be22    8d4c2450
                         {disp8} mov        dword ptr [esp + 0x28], edx                     // 0x0083be26    89542428
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083be2a    d95c2418
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083be2e    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                          // 0x0083be32    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x2c]                          // 0x0083be36    d95c242c
                         call               @GetNormSq__7Point2DFv2@4                       // 0x0083be3a    e8613f0300
                         {disp8} fld        dword ptr [esp + 0x28]                          // 0x0083be3f    d9442428
                         {disp8} fmul       dword ptr [esp + 0x28]                          // 0x0083be43    d84c2428
                         fsubp              st(1), st                                       // 0x0083be47    dee9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                // 0x0083be49    d80d18b48a00
                         {disp8} fsubr      dword ptr [esp + 0x2c]                          // 0x0083be4f    d86c242c
                         {disp32} fcom      dword ptr [_rdata_float0p0]                     // 0x0083be53    d81598a38a00
                         fnstsw             ax                                              // 0x0083be59    dfe0
                         test               ah, 0x01                                        // 0x0083be5b    f6c401
                         {disp8} jne        _jmp_addr_0x0083beda                            // 0x0083be5e    757a
                         fsqrt                                                              // 0x0083be60    d9fa
                         {disp8} fadd       dword ptr [esp + 0x18]                          // 0x0083be62    d8442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fcc]               // 0x0083be66    d80dccef8c00
                         {disp8} fst        dword ptr [esp + 0x18]                          // 0x0083be6c    d9542418
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x826bc]               // 0x0083be70    d81dbcb69200
                         fnstsw             ax                                              // 0x0083be76    dfe0
                         test               ah, 0x41                                        // 0x0083be78    f6c441
                         {disp8} jne        _jmp_addr_0x0083bedc                            // 0x0083be7b    755f
                         {disp8} fld        dword ptr [esp + 0x68]                          // 0x0083be7d    d9442468
                         {disp32} fsub      dword ptr [_rdata_float0p001]                   // 0x0083be81    d825b0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083be87    d85c2418
                         fnstsw             ax                                              // 0x0083be8b    dfe0
                         test               ah, 0x41                                        // 0x0083be8d    f6c441
                         {disp8} jne        _jmp_addr_0x0083bedc                            // 0x0083be90    754a
                         cmp                dword ptr [esp + 0x1c], -0x01                   // 0x0083be92    837c241cff
                         {disp8} je         _jmp_addr_0x0083bea8                            // 0x0083be97    740f
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083be99    d9442418
                         {disp8} fcomp      dword ptr [esp + 0x24]                          // 0x0083be9d    d85c2424
                         fnstsw             ax                                              // 0x0083bea1    dfe0
                         test               ah, 0x01                                        // 0x0083bea3    f6c401
                         {disp8} je         _jmp_addr_0x0083bedc                            // 0x0083bea6    7434
_jmp_addr_0x0083bea8:    movsx              eax, word ptr [esi]                             // 0x0083bea8    0fbf06
                         {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083beab    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                     // 0x0083beaf    d81d98a38a00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                     // 0x0083beb5    8b4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                     // 0x0083beb9    8944241c
                         {disp8} mov        dword ptr [esp + 0x24], ecx                     // 0x0083bebd    894c2424
                         fnstsw             ax                                              // 0x0083bec1    dfe0
                         test               ah, 0x41                                        // 0x0083bec3    f6c441
                         mov                eax, 0x00000002                                 // 0x0083bec6    b802000000
                         {disp8} je         _jmp_addr_0x0083bed2                            // 0x0083becb    7405
                         mov                eax, 0x00000001                                 // 0x0083becd    b801000000
_jmp_addr_0x0083bed2:    {disp8} mov        edx, dword ptr [esp + 0x74]                     // 0x0083bed2    8b542474
                         mov                dword ptr [edx], eax                            // 0x0083bed6    8902
                         {disp8} jmp        _jmp_addr_0x0083bedc                            // 0x0083bed8    eb02
_jmp_addr_0x0083beda:    fstp               st(0)                                           // 0x0083beda    ddd8
_jmp_addr_0x0083bedc:    {disp8} mov        si, word ptr [esi + 0x02]                       // 0x0083bedc    668b7602
                         cmp                si, -0x01                                       // 0x0083bee0    6683feff
                         {disp8} je         _jmp_addr_0x0083bef8                            // 0x0083bee4    7412
                         movsx              eax, si                                         // 0x0083bee6    0fbfc6
                         {disp32} lea       esi, dword ptr [ebp + eax * 0x4 + 0x00054028]   // 0x0083bee9    8db48528400500
                         test               esi, esi                                        // 0x0083bef0    85f6
                         {disp32} jne       _jmp_addr_0x0083bd60                            // 0x0083bef2    0f8568feffff
_jmp_addr_0x0083bef8:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                     // 0x0083bef8    8b4c241c
                         cmp                ecx, -0x01                                      // 0x0083befc    83f9ff
                         {disp32} jne       _jmp_addr_0x0083c204                            // 0x0083beff    0f85ff020000
_jmp_addr_0x0083bf05:    {disp8} mov        eax, dword ptr [esp + 0x10]                     // 0x0083bf05    8b442410
                         cmp                eax, 0x08                                       // 0x0083bf09    83f808
                         {disp8} ja         _jmp_addr_0x0083bf24                            // 0x0083bf0c    7716
                         jmp                dword ptr [eax*4 + 0x83c284]                    // 0x0083bf0e    ff248584c28300
                         {disp8} mov        edx, dword ptr [esp + 0x48]                     // 0x0083bf15    8b542448
                         xor.s              ecx, ecx                                        // 0x0083bf19    33c9
                         cmp.s              edi, edx                                        // 0x0083bf1b    3bfa
                         sete               cl                                              // 0x0083bf1d    0f94c1
                         {disp8} mov        dword ptr [esp + 0x14], ecx                     // 0x0083bf20    894c2414
_jmp_addr_0x0083bf24:    {disp8} mov        ecx, dword ptr [esp + 0x14]                     // 0x0083bf24    8b4c2414
                         test               ecx, ecx                                        // 0x0083bf28    85c9
                         {disp32} jne       _jmp_addr_0x0083c23c                            // 0x0083bf2a    0f850c030000
_jmp_addr_0x0083bf30:    dec                eax                                             // 0x0083bf30    48
                         cmp                eax, 0x07                                       // 0x0083bf31    83f807
                         {disp32} ja        _jmp_addr_0x0083c1fb                            // 0x0083bf34    0f87c1020000
                         jmp                dword ptr [eax*4 + 0x83c2a8]                    // 0x0083bf3a    ff2485a8c28300
                         {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083bf41    8b442478
                         inc                edi                                             // 0x0083bf45    47
                         inc                eax                                             // 0x0083bf46    40
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083bf47    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083bf4b    89442478
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083bf4f    e9a7020000
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                     // 0x0083bf54    8b4c244c
                         xor.s              edx, edx                                        // 0x0083bf58    33d2
                         cmp.s              ebx, ecx                                        // 0x0083bf5a    3bd9
                         sete               dl                                              // 0x0083bf5c    0f94c2
                         {disp8} mov        dword ptr [esp + 0x14], edx                     // 0x0083bf5f    89542414
                         {disp8} jmp        _jmp_addr_0x0083bf24                            // 0x0083bf63    ebbf
                         cmp                edi, dword ptr [esp + 0x48]                     // 0x0083bf65    3b7c2448
                         {disp8} jl         _jmp_addr_0x0083bfa9                            // 0x0083bf69    7c3e
                         cmp                ebx, dword ptr [esp + 0x4c]                     // 0x0083bf6b    3b5c244c
                         {disp32} jge       _jmp_addr_0x0083c23c                            // 0x0083bf6f    0f8dc7020000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083bf75    c744241400000000
                         {disp8} jmp        _jmp_addr_0x0083bf30                            // 0x0083bf7d    ebb1
                         cmp                edi, dword ptr [esp + 0x48]                     // 0x0083bf7f    3b7c2448
                         {disp8} jl         _jmp_addr_0x0083bfc6                            // 0x0083bf83    7c41
                         cmp                ebx, dword ptr [esp + 0x4c]                     // 0x0083bf85    3b5c244c
                         {disp32} jle       _jmp_addr_0x0083c23c                            // 0x0083bf89    0f8ead020000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083bf8f    c744241400000000
                         {disp8} jmp        _jmp_addr_0x0083bf30                            // 0x0083bf97    eb97
                         cmp                edi, dword ptr [esp + 0x48]                     // 0x0083bf99    3b7c2448
                         {disp8} jg         _jmp_addr_0x0083bfa9                            // 0x0083bf9d    7f0a
                         cmp                ebx, dword ptr [esp + 0x4c]                     // 0x0083bf9f    3b5c244c
                         {disp32} jge       _jmp_addr_0x0083c23c                            // 0x0083bfa3    0f8d93020000
_jmp_addr_0x0083bfa9:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083bfa9    c744241400000000
                         {disp32} jmp       _jmp_addr_0x0083bf30                            // 0x0083bfb1    e97affffff
                         cmp                edi, dword ptr [esp + 0x48]                     // 0x0083bfb6    3b7c2448
                         {disp8} jg         _jmp_addr_0x0083bfc6                            // 0x0083bfba    7f0a
                         cmp                ebx, dword ptr [esp + 0x4c]                     // 0x0083bfbc    3b5c244c
                         {disp32} jle       _jmp_addr_0x0083c23c                            // 0x0083bfc0    0f8e76020000
_jmp_addr_0x0083bfc6:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000              // 0x0083bfc6    c744241400000000
                         {disp32} jmp       _jmp_addr_0x0083bf30                            // 0x0083bfce    e95dffffff
                         {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083bfd3    8b442478
                         dec                edi                                             // 0x0083bfd7    4f
                         dec                eax                                             // 0x0083bfd8    48
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083bfd9    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083bfdd    89442478
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083bfe1    e915020000
                         inc                ebx                                             // 0x0083bfe6    43
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083bfe7    895c2444
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083bfeb    e90b020000
                         dec                ebx                                             // 0x0083bff0    4b
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083bff1    895c2444
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083bff5    e901020000
                         {disp8} fild       dword ptr [esp + 0x78]                          // 0x0083bffa    db442478
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                     // 0x0083bffe    8d4b01
                         {disp8} mov        dword ptr [esp + 0x20], ecx                     // 0x0083c001    894c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c005    d80de83a9a00
                         fld                st(0)                                           // 0x0083c00b    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083c00d    d8642430
                         {disp8} fdiv       dword ptr [esp + 0x38]                          // 0x0083c011    d8742438
                         {disp8} fst        dword ptr [esp + 0x2c]                          // 0x0083c015    d954242c
                         {disp8} fild       dword ptr [esp + 0x20]                          // 0x0083c019    db442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c01d    d80de83a9a00
                         {disp8} fst        dword ptr [esp + 0x20]                          // 0x0083c023    d9542420
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083c027    d8642434
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083c02b    d874243c
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083c02f    d95c2418
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083c033    d85c2418
                         fnstsw             ax                                              // 0x0083c037    dfe0
                         test               ah, 0x41                                        // 0x0083c039    f6c441
                         {disp8} jne        _jmp_addr_0x0083c063                            // 0x0083c03c    7525
                         {disp8} mov        eax, dword ptr [esp + 0x20]                     // 0x0083c03e    8b442420
                         fstp               st(0)                                           // 0x0083c042    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083c044    d9442418
                         mov.s              ebx, ecx                                        // 0x0083c048    8bd9
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083c04a    d84c2438
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083c04e    895c2444
                         {disp8} mov        dword ptr [esp + 0x34], eax                     // 0x0083c052    89442434
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083c056    d8442430
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c05a    d95c2430
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083c05e    e998010000
_jmp_addr_0x0083c063:    {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083c063    8b442478
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c067    d95c2430
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x0083c06b    d944242c
                         inc                edi                                             // 0x0083c06f    47
                         inc                eax                                             // 0x0083c070    40
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083c071    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083c075    89442478
                         {disp32} jmp       _jmp_addr_0x0083c1ef                            // 0x0083c079    e971010000
                         {disp8} fild       dword ptr [esp + 0x78]                          // 0x0083c07e    db442478
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c082    d80de83a9a00
                         fld                st(0)                                           // 0x0083c088    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083c08a    d8642430
                         {disp8} fdiv       dword ptr [esp + 0x38]                          // 0x0083c08e    d8742438
                         {disp8} fst        dword ptr [esp + 0x2c]                          // 0x0083c092    d954242c
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083c096    db442444
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c09a    d80de83a9a00
                         {disp8} fst        dword ptr [esp + 0x20]                          // 0x0083c0a0    d9542420
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083c0a4    d8642434
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083c0a8    d874243c
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083c0ac    d95c2418
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083c0b0    d85c2418
                         fnstsw             ax                                              // 0x0083c0b4    dfe0
                         test               ah, 0x41                                        // 0x0083c0b6    f6c441
                         {disp8} jne        _jmp_addr_0x0083c0df                            // 0x0083c0b9    7524
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                     // 0x0083c0bb    8b4c2420
                         fstp               st(0)                                           // 0x0083c0bf    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083c0c1    d9442418
                         dec                ebx                                             // 0x0083c0c5    4b
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083c0c6    d84c2438
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083c0ca    895c2444
                         {disp8} mov        dword ptr [esp + 0x34], ecx                     // 0x0083c0ce    894c2434
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083c0d2    d8442430
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c0d6    d95c2430
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083c0da    e91c010000
_jmp_addr_0x0083c0df:    {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083c0df    8b442478
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c0e3    d95c2430
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x0083c0e7    d944242c
                         inc                edi                                             // 0x0083c0eb    47
                         inc                eax                                             // 0x0083c0ec    40
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083c0ed    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083c0f1    89442478
                         {disp32} jmp       _jmp_addr_0x0083c1ef                            // 0x0083c0f5    e9f5000000
                         {disp8} fild       dword ptr [esp + 0x40]                          // 0x0083c0fa    db442440
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                     // 0x0083c0fe    8d4b01
                         {disp8} mov        dword ptr [esp + 0x20], ecx                     // 0x0083c101    894c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c105    d80de83a9a00
                         fld                st(0)                                           // 0x0083c10b    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083c10d    d8642430
                         {disp8} fdiv       dword ptr [esp + 0x38]                          // 0x0083c111    d8742438
                         {disp8} fst        dword ptr [esp + 0x2c]                          // 0x0083c115    d954242c
                         {disp8} fild       dword ptr [esp + 0x20]                          // 0x0083c119    db442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c11d    d80de83a9a00
                         {disp8} fst        dword ptr [esp + 0x20]                          // 0x0083c123    d9542420
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083c127    d8642434
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083c12b    d874243c
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083c12f    d95c2418
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083c133    d85c2418
                         fnstsw             ax                                              // 0x0083c137    dfe0
                         test               ah, 0x41                                        // 0x0083c139    f6c441
                         {disp8} jne        _jmp_addr_0x0083c163                            // 0x0083c13c    7525
                         {disp8} mov        edx, dword ptr [esp + 0x20]                     // 0x0083c13e    8b542420
                         fstp               st(0)                                           // 0x0083c142    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083c144    d9442418
                         mov.s              ebx, ecx                                        // 0x0083c148    8bd9
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083c14a    d84c2438
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083c14e    895c2444
                         {disp8} mov        dword ptr [esp + 0x34], edx                     // 0x0083c152    89542434
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083c156    d8442430
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c15a    d95c2430
                         {disp32} jmp       _jmp_addr_0x0083c1fb                            // 0x0083c15e    e998000000
_jmp_addr_0x0083c163:    {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083c163    8b442478
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c167    d95c2430
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x0083c16b    d944242c
                         dec                edi                                             // 0x0083c16f    4f
                         dec                eax                                             // 0x0083c170    48
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083c171    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083c175    89442478
                         {disp8} jmp        _jmp_addr_0x0083c1ef                            // 0x0083c179    eb74
                         {disp8} fild       dword ptr [esp + 0x40]                          // 0x0083c17b    db442440
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c17f    d80de83a9a00
                         fld                st(0)                                           // 0x0083c185    d9c0
                         {disp8} fsub       dword ptr [esp + 0x30]                          // 0x0083c187    d8642430
                         {disp8} fdiv       dword ptr [esp + 0x38]                          // 0x0083c18b    d8742438
                         {disp8} fst        dword ptr [esp + 0x2c]                          // 0x0083c18f    d954242c
                         {disp8} fild       dword ptr [esp + 0x44]                          // 0x0083c193    db442444
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfaae8]               // 0x0083c197    d80de83a9a00
                         {disp8} fst        dword ptr [esp + 0x20]                          // 0x0083c19d    d9542420
                         {disp8} fsub       dword ptr [esp + 0x34]                          // 0x0083c1a1    d8642434
                         {disp8} fdiv       dword ptr [esp + 0x3c]                          // 0x0083c1a5    d874243c
                         {disp8} fstp       dword ptr [esp + 0x18]                          // 0x0083c1a9    d95c2418
                         {disp8} fcomp      dword ptr [esp + 0x18]                          // 0x0083c1ad    d85c2418
                         fnstsw             ax                                              // 0x0083c1b1    dfe0
                         test               ah, 0x41                                        // 0x0083c1b3    f6c441
                         {disp8} jne        _jmp_addr_0x0083c1d9                            // 0x0083c1b6    7521
                         {disp8} mov        eax, dword ptr [esp + 0x20]                     // 0x0083c1b8    8b442420
                         fstp               st(0)                                           // 0x0083c1bc    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                          // 0x0083c1be    d9442418
                         dec                ebx                                             // 0x0083c1c2    4b
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083c1c3    d84c2438
                         {disp8} mov        dword ptr [esp + 0x44], ebx                     // 0x0083c1c7    895c2444
                         {disp8} mov        dword ptr [esp + 0x34], eax                     // 0x0083c1cb    89442434
                         {disp8} fadd       dword ptr [esp + 0x30]                          // 0x0083c1cf    d8442430
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c1d3    d95c2430
                         {disp8} jmp        _jmp_addr_0x0083c1fb                            // 0x0083c1d7    eb22
_jmp_addr_0x0083c1d9:    {disp8} mov        eax, dword ptr [esp + 0x78]                     // 0x0083c1d9    8b442478
                         {disp8} fstp       dword ptr [esp + 0x30]                          // 0x0083c1dd    d95c2430
                         {disp8} fld        dword ptr [esp + 0x2c]                          // 0x0083c1e1    d944242c
                         dec                edi                                             // 0x0083c1e5    4f
                         dec                eax                                             // 0x0083c1e6    48
                         {disp8} mov        dword ptr [esp + 0x40], edi                     // 0x0083c1e7    897c2440
                         {disp8} mov        dword ptr [esp + 0x78], eax                     // 0x0083c1eb    89442478
_jmp_addr_0x0083c1ef:    {disp8} fmul       dword ptr [esp + 0x3c]                          // 0x0083c1ef    d84c243c
                         {disp8} fadd       dword ptr [esp + 0x34]                          // 0x0083c1f3    d8442434
                         {disp8} fstp       dword ptr [esp + 0x34]                          // 0x0083c1f7    d95c2434
_jmp_addr_0x0083c1fb:    test               edi, edi                                        // 0x0083c1fb    85ff
                         {disp8} jle        _jmp_addr_0x0083c263                            // 0x0083c1fd    7e64
                         {disp32} jmp       _jmp_addr_0x0083bd04                            // 0x0083c1ff    e900fbffff
_jmp_addr_0x0083c204:    {disp8} fld        dword ptr [esp + 0x24]                          // 0x0083c204    d9442424
                         {disp8} mov        eax, dword ptr [esp + 0x64]                     // 0x0083c208    8b442464
                         {disp8} fmul       dword ptr [esp + 0x38]                          // 0x0083c20c    d84c2438
                         pop                edi                                             // 0x0083c210    5f
                         {disp8} fld        dword ptr [esp + 0x20]                          // 0x0083c211    d9442420
                         pop                esi                                             // 0x0083c215    5e
                         {disp8} fmul       dword ptr [esp + 0x34]                          // 0x0083c216    d84c2434
                         pop                ebp                                             // 0x0083c21a    5d
                         pop                ebx                                             // 0x0083c21b    5b
                         {disp8} fstp       dword ptr [esp + 0x4c]                          // 0x0083c21c    d95c244c
                         fadd               dword ptr [eax]                                 // 0x0083c220    d800
                         {disp8} fld        dword ptr [esp + 0x4c]                          // 0x0083c222    d944244c
                         {disp8} fadd       dword ptr [eax + 0x04]                          // 0x0083c226    d84004
                         {disp8} mov        eax, dword ptr [esp + 0x60]                     // 0x0083c229    8b442460
                         fxch               st(1)                                           // 0x0083c22d    d9c9
                         fstp               dword ptr [eax]                                 // 0x0083c22f    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                          // 0x0083c231    d95804
                         mov.s              eax, ecx                                        // 0x0083c234    8bc1
                         add                esp, 0x50                                       // 0x0083c236    83c450
                         ret                0x0018                                          // 0x0083c239    c21800
_jmp_addr_0x0083c23c:    {disp8} mov        edx, dword ptr [esp + 0x1c]                     // 0x0083c23c    8b54241c
                         cmp                edx, -0x01                                      // 0x0083c240    83faff
                         {disp8} jne        _jmp_addr_0x0083c257                            // 0x0083c243    7512
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                     // 0x0083c245    8b4c2464
                         mov                esi, dword ptr [ecx]                            // 0x0083c249    8b31
                         {disp8} mov        eax, dword ptr [esp + 0x70]                     // 0x0083c24b    8b442470
                         mov                dword ptr [eax], esi                            // 0x0083c24f    8930
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                     // 0x0083c251    8b4904
                         {disp8} mov        dword ptr [eax + 0x04], ecx                     // 0x0083c254    894804
_jmp_addr_0x0083c257:    pop                edi                                             // 0x0083c257    5f
                         pop                esi                                             // 0x0083c258    5e
                         pop                ebp                                             // 0x0083c259    5d
                         mov.s              eax, edx                                        // 0x0083c25a    8bc2
                         pop                ebx                                             // 0x0083c25c    5b
                         add                esp, 0x50                                       // 0x0083c25d    83c450
                         ret                0x0018                                          // 0x0083c260    c21800
_jmp_addr_0x0083c263:    {disp8} mov        ecx, dword ptr [esp + 0x64]                     // 0x0083c263    8b4c2464
                         mov                edx, dword ptr [ecx]                            // 0x0083c267    8b11
                         {disp8} mov        eax, dword ptr [esp + 0x70]                     // 0x0083c269    8b442470
                         mov                dword ptr [eax], edx                            // 0x0083c26d    8910
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                     // 0x0083c26f    8b4904
                         {disp8} mov        dword ptr [eax + 0x04], ecx                     // 0x0083c272    894804
_jmp_addr_0x0083c275:    pop                edi                                             // 0x0083c275    5f
                         pop                esi                                             // 0x0083c276    5e
                         pop                ebp                                             // 0x0083c277    5d
                         or                 eax, -0x1                                       // 0x0083c278    83c8ff
                         pop                ebx                                             // 0x0083c27b    5b
                         add                esp, 0x50                                       // 0x0083c27c    83c450
                         ret                0x0018                                          // 0x0083c27f    c21800

// Snippet: db, [0x0083c282, 0x0083c284)
.byte 0x8b, 0xff                  // 0x0083c282

// Snippet: jmptbl, [0x0083c284, 0x0083c2c8)
.byte 0x3c, 0xc2, 0x83, 0x00      // 0x0083c284
.byte 0x15, 0xbf, 0x83, 0x00      // 0x0083c288
.byte 0x15, 0xbf, 0x83, 0x00      // 0x0083c28c
.byte 0x54, 0xbf, 0x83, 0x00      // 0x0083c290
.byte 0x54, 0xbf, 0x83, 0x00      // 0x0083c294
.byte 0x65, 0xbf, 0x83, 0x00      // 0x0083c298
.byte 0x7f, 0xbf, 0x83, 0x00      // 0x0083c29c
.byte 0x99, 0xbf, 0x83, 0x00      // 0x0083c2a0
.byte 0xb6, 0xbf, 0x83, 0x00      // 0x0083c2a4
.byte 0x41, 0xbf, 0x83, 0x00      // 0x0083c2a8
.byte 0xd3, 0xbf, 0x83, 0x00      // 0x0083c2ac
.byte 0xe6, 0xbf, 0x83, 0x00      // 0x0083c2b0
.byte 0xf0, 0xbf, 0x83, 0x00      // 0x0083c2b4
.byte 0xfa, 0xbf, 0x83, 0x00      // 0x0083c2b8
.byte 0x7e, 0xc0, 0x83, 0x00      // 0x0083c2bc
.byte 0xfa, 0xc0, 0x83, 0x00      // 0x0083c2c0
.byte 0x7b, 0xc1, 0x83, 0x00      // 0x0083c2c4

// Snippet: db, [0x0083c2c8, 0x0083c2d0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0083c2c8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0083c2cc

