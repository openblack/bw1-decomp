.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0MapCoords@@QAE@XZ
.extern @__as__7Point2DFRC7Point2D@12
.extern _jmp_addr_0x005357c0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005dc8d0
.extern @__ct__9MapCoordsFllf@20
.extern ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12
.extern _DoWallHuggerLookahead__Fv
.extern _jmp_addr_0x00609cc0
.extern ?RebuildMoveByStep@MobileWallHug@@QAEXXZ
.extern ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ
.extern @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17
.extern _jmp_addr_0x0060a9f0
.extern @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16
.extern ?MoveTo@MobileWallHug@@QAEHXZ
.extern ?InitStepsXZ@MobileWallHug@@QAEXXZ
.extern _jmp_addr_0x0060c180
.extern _jmp_addr_0x0060c1a0
.extern @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12
.extern _jmp_addr_0x0060d520
.extern _jmp_addr_0x0060f630
.extern @__as__17Point2DCompare_1_@12
.extern @__as__17Point2DCompare_0_@12
.extern _jmp_addr_0x0060fc80
.extern _jmp_addr_0x00610010
.extern @__lt__17Point2DCompare_FRC17Point2DCompare_1_@12
.extern @Resolve__Point2DCompare_1_@4
.extern @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12
.extern @Resolve__Point2DCompare_0_@4
.extern _jmp_addr_0x00610340
.extern _jmp_addr_0x006103a0
.extern _jmp_addr_0x006103f0
.extern _jmp_addr_0x00610490
.extern _jmp_addr_0x00611080
.extern _jmp_addr_0x006110a0
.extern @__ml__7Point2DCFf@16
.extern @__as__7Point2DFRC7Point2D2@12
.extern @Cross__7Point2DCFRC7Point2D@12
.extern @DotProduct__7Point2DFP7Point2D@12
.extern ?Normalize@Point2D@@QAEMXZ
.extern _jmp_addr_0x00612970
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern _jmp_addr_0x00616c70
.extern _jmp_addr_0x00616d00
.extern _jmp_addr_0x00616ef0
.extern _jmp_addr_0x00616f10
.extern _jmp_addr_0x00636640
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern @SetYAngle__6ObjectFf@12
.extern _jmp_addr_0x007370b0
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern ?ConvertAngle3DToGame@GUtils@@SAIM@Z
.extern ?ConvertGameAngleTo3D@GUtils@@SAMJ@Z
.extern ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern __CIacos
.extern ___nw__FUl

.globl _jmp_addr_0x0060d740
.globl _jmp_addr_0x0060d750
.globl _jmp_addr_0x0060d760
.globl ?MoveToCircleHug@MobileWallHug@@QAEHXZ
.globl @SetGameAngle__13MobileWallHugFUs@10
.globl _jmp_addr_0x0060db00

.globl _globl_ct_0x0060dae0
.globl ?SetYAngle@MobileWallHug@@UAEXM@Z
.globl ?PrssKey@EditorHug@@UAEXW4LH_KEY@@G@Z

start_0x0060d740_0x0060f630:
// Snippet: asm, [0x0060d740, 0x0060f5d9)
_jmp_addr_0x0060d740:    {disp8} mov        ax, word ptr [esp + 0x04]                   // 0x0060d740    668b442404
                         add                word ptr [ecx + 0x02], ax                   // 0x0060d745    66014102
                         ret                0x0004                                      // 0x0060d749    c20400
                         nop                                                            // 0x0060d74c    90
                         nop                                                            // 0x0060d74d    90
                         nop                                                            // 0x0060d74e    90
                         nop                                                            // 0x0060d74f    90
_jmp_addr_0x0060d750:    {disp8} mov        ax, word ptr [esp + 0x04]                   // 0x0060d750    668b442404
                         add                word ptr [ecx + 0x06], ax                   // 0x0060d755    66014106
                         ret                0x0004                                      // 0x0060d759    c20400
                         nop                                                            // 0x0060d75c    90
                         nop                                                            // 0x0060d75d    90
                         nop                                                            // 0x0060d75e    90
                         nop                                                            // 0x0060d75f    90
_jmp_addr_0x0060d760:    {disp32} mov       eax, dword ptr [_game]                      // 0x0060d760    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059c8]           // 0x0060d765    8b88c8590000
                         {disp32} lea       edx, dword ptr [eax + 0x000059b8]           // 0x0060d76b    8d90b8590000
                         push               esi                                         // 0x0060d771    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                 // 0x0060d772    8b742408
                         xor.s              eax, eax                                    // 0x0060d776    33c0
                         {disp8} mov        ax, word ptr [esi + 0x02]                   // 0x0060d778    668b4602
                         cmp.s              eax, ecx                                    // 0x0060d77c    3bc1
                         {disp8} jae        _jmp_addr_0x0060d78b                        // 0x0060d77e    730b
                         xor.s              ecx, ecx                                    // 0x0060d780    33c9
                         {disp8} mov        cx, word ptr [esi + 0x06]                   // 0x0060d782    668b4e06
                         cmp                ecx, dword ptr [edx + 0x0c]                 // 0x0060d786    3b4a0c
                         .byte              0x72, 0x4// {disp8} jb _jmp_addr_0x0060d78f // 0x0060d789    7204
_jmp_addr_0x0060d78b:    xor.s              al, al                                      // 0x0060d78b    32c0
                         pop                esi                                         // 0x0060d78d    5e
                         ret                                                            // 0x0060d78e    c3
_jmp_addr_0x0060d78f:    test               eax, eax                                    // 0x0060d78f    85c0
                         {disp8} mov        dword ptr [esp + 0x08], edx                 // 0x0060d791    89542408
                         {disp8} jl         _jmp_addr_0x0060d7ef                        // 0x0060d795    7c58
                         cmp                eax, 0x000001ff                             // 0x0060d797    3dff010000
                         {disp8} jg         _jmp_addr_0x0060d7ef                        // 0x0060d79c    7f51
                         test               ecx, ecx                                    // 0x0060d79e    85c9
                         {disp8} jl         _jmp_addr_0x0060d7ef                        // 0x0060d7a0    7c4d
                         cmp                ecx, 0x000001ff                             // 0x0060d7a2    81f9ff010000
                         {disp8} jg         _jmp_addr_0x0060d7ef                        // 0x0060d7a8    7f45
                         mov.s              edx, eax                                    // 0x0060d7aa    8bd0
                         sar                edx, 4                                      // 0x0060d7ac    c1fa04
                         push               ebx                                         // 0x0060d7af    53
                         xor.s              ebx, ebx                                    // 0x0060d7b0    33db
                         shl                edx, 5                                      // 0x0060d7b2    c1e205
                         mov.s              esi, ecx                                    // 0x0060d7b5    8bf1
                         sar                esi, 4                                      // 0x0060d7b7    c1fe04
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@3PAY0CA@EA] // 0x0060d7ba    8a9c3264c9e900
                         mov.s              edx, ebx                                    // 0x0060d7c1    8bd3
                         test               edx, edx                                    // 0x0060d7c3    85d2
                         pop                ebx                                         // 0x0060d7c5    5b
                         {disp8} je         _jmp_addr_0x0060d7ef                        // 0x0060d7c6    7427
                         and                eax, 0x0f                                   // 0x0060d7c8    83e00f
                         mov.s              esi, eax                                    // 0x0060d7cb    8bf0
                         shl                esi, 4                                      // 0x0060d7cd    c1e604
                         add.s              esi, eax                                    // 0x0060d7d0    03f0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]     // 0x0060d7d2    8b049564c5e900
                         and                ecx, 0x0f                                   // 0x0060d7d9    83e10f
                         add.s              esi, ecx                                    // 0x0060d7dc    03f1
                         lea                eax, dword ptr [eax + esi * 0x8]            // 0x0060d7de    8d04f0
                         test               eax, eax                                    // 0x0060d7e1    85c0
                         {disp8} je         _jmp_addr_0x0060d7ef                        // 0x0060d7e3    740a
                         {disp8} mov        al, byte ptr [eax + 0x06]                   // 0x0060d7e5    8a4006
                         and                eax, 0x10                                   // 0x0060d7e8    83e010
                         test               eax, eax                                    // 0x0060d7eb    85c0
                         {disp8} je         _jmp_addr_0x0060d7f3                        // 0x0060d7ed    7404
_jmp_addr_0x0060d7ef:    xor.s              al, al                                      // 0x0060d7ef    32c0
                         pop                esi                                         // 0x0060d7f1    5e
                         ret                                                            // 0x0060d7f2    c3
_jmp_addr_0x0060d7f3:    mov                al, 0x01                                    // 0x0060d7f3    b001
                         pop                esi                                         // 0x0060d7f5    5e
                         ret                                                            // 0x0060d7f6    c3
                         nop                                                            // 0x0060d7f7    90
                         nop                                                            // 0x0060d7f8    90
                         nop                                                            // 0x0060d7f9    90
                         nop                                                            // 0x0060d7fa    90
                         nop                                                            // 0x0060d7fb    90
                         nop                                                            // 0x0060d7fc    90
                         nop                                                            // 0x0060d7fd    90
                         nop                                                            // 0x0060d7fe    90
                         nop                                                            // 0x0060d7ff    90
?MoveToCircleHug@MobileWallHug@@QAEHXZ:
                                          sub                esp, 0x44                                   // 0x0060d800    83ec44
                         push               ebx                                         // 0x0060d803    53
                         push               esi                                         // 0x0060d804    56
                         mov.s              esi, ecx                                    // 0x0060d805    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x18]                 // 0x0060d807    8b4618
                         {disp8} fld        dword ptr [esi + 0x1c]                      // 0x0060d80a    d9461c
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                 // 0x0060d80d    8b5e14
                         push               edi                                         // 0x0060d810    57
                         push               ecx                                         // 0x0060d811    51
                         add                eax, dword ptr [esi + 0x6c]                 // 0x0060d812    03466c
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                 // 0x0060d815    8b4e64
                         {disp8} lea        edi, dword ptr [esi + 0x14]                 // 0x0060d818    8d7e14
                         fstp               dword ptr [esp]                             // 0x0060d81b    d91c24
                         add.s              ecx, ebx                                    // 0x0060d81e    03cb
                         push               eax                                         // 0x0060d820    50
                         push               ecx                                         // 0x0060d821    51
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                 // 0x0060d822    8d4c2450
                         call               @__ct__9MapCoordsFllf@20                    // 0x0060d826    e88559ffff
                         {disp8} mov        dx, word ptr [esp + 0x46]                   // 0x0060d82b    668b542446
                         cmp                dx, word ptr [esi + 0x16]                   // 0x0060d830    663b5616
                         {disp8} jne        _jmp_addr_0x0060d841                        // 0x0060d834    750b
                         {disp8} mov        ax, word ptr [esp + 0x4a]                   // 0x0060d836    668b44244a
                         cmp                ax, word ptr [esi + 0x1a]                   // 0x0060d83b    663b461a
                         {disp8} je         _jmp_addr_0x0060d854                        // 0x0060d83f    7413
_jmp_addr_0x0060d841:    mov.s              ecx, esi                                    // 0x0060d841    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ          // 0x0060d843    e858e7ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                 // 0x0060d848    8d4c2444
                         push               ecx                                         // 0x0060d84c    51
                         mov.s              ecx, esi                                    // 0x0060d84d    8bce
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                        // 0x0060d84f    e8fcf1ffff
_jmp_addr_0x0060d854:    {disp8} mov        al, byte ptr [esi + 0x74]                   // 0x0060d854    8a4674
                         cmp                al, -0x01                                   // 0x0060d857    3cff
                         {disp32} je        _jmp_addr_0x0060da70                        // 0x0060d859    0f8411020000
                         mov.s              cl, al                                      // 0x0060d85f    8ac8
                         dec                cl                                          // 0x0060d861    fec9
                         test               al, al                                      // 0x0060d863    84c0
                         {disp8} mov        byte ptr [esi + 0x74], cl                   // 0x0060d865    884e74
                         {disp32} jne       _jmp_addr_0x0060da70                        // 0x0060d868    0f8502020000
                         {disp8} mov        edx, dword ptr [esi + 0x6c]                 // 0x0060d86e    8b566c
                         {disp8} mov        eax, dword ptr [esi + 0x64]                 // 0x0060d871    8b4664
                         push               ebp                                         // 0x0060d874    55
                         push               edx                                         // 0x0060d875    52
                         push               eax                                         // 0x0060d876    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060d877    8d4c243c
                         push               ecx                                         // 0x0060d87b    51
                         call               _jmp_addr_0x0060c1a0                        // 0x0060d87c    e81fe9ffff
                         {disp8} lea        edx, dword ptr [esp + 0x30]                 // 0x0060d881    8d542430
                         push               edi                                         // 0x0060d885    57
                         push               edx                                         // 0x0060d886    52
                         call               _jmp_addr_0x0060c180                        // 0x0060d887    e8f4e8ffff
                         add                esp, 0x14                                   // 0x0060d88c    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060d88f    8d4c243c
                         call               ??0MapCoords@@QAE@XZ                        // 0x0060d893    e8c842e3ff
                         {disp8} lea        edi, dword ptr [esi + 0x70]                 // 0x0060d898    8d7e70
                         mov.s              ecx, edi                                    // 0x0060d89b    8bcf
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060d89d    e8becdffff
                         mov.s              ebx, eax                                    // 0x0060d8a2    8bd8
                         fld                dword ptr [ebx]                             // 0x0060d8a4    d903
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]            // 0x0060d8a6    d80d00c48a00
                         call               _jmp_addr_0x007a1400                        // 0x0060d8ac    e84f3b1900
                         mov.s              ebp, eax                                    // 0x0060d8b1    8be8
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                 // 0x0060d8b3    896c243c
                         {disp8} fld        dword ptr [ebx + 0x08]                      // 0x0060d8b7    d94308
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]            // 0x0060d8ba    d80d00c48a00
                         call               _jmp_addr_0x007a1400                        // 0x0060d8c0    e83b3b1900
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                 // 0x0060d8c5    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x40], eax                 // 0x0060d8c9    89442440
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000          // 0x0060d8cd    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                 // 0x0060d8d5    8944241c
                         {disp8} mov        eax, dword ptr [esp + 0x44]                 // 0x0060d8d9    8b442444
                         push               ecx                                         // 0x0060d8dd    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                 // 0x0060d8de    8d542430
                         push               edx                                         // 0x0060d8e2    52
                         {disp8} mov        dword ptr [esp + 0x20], ebp                 // 0x0060d8e3    896c2420
                         {disp8} mov        dword ptr [esp + 0x28], eax                 // 0x0060d8e7    89442428
                         call               _jmp_addr_0x0060c180                        // 0x0060d8eb    e890e8ffff
                         add                esp, 0x08                                   // 0x0060d8f0    83c408
                         mov.s              ecx, edi                                    // 0x0060d8f3    8bcf
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060d8f5    e866cdffff
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060d8fa    8d4c243c
                         mov.s              edi, eax                                    // 0x0060d8fe    8bf8
                         call               ??0MapCoords@@QAE@XZ                        // 0x0060d900    e85b42e3ff
                         fld                dword ptr [edi]                             // 0x0060d905    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]            // 0x0060d907    d80d00c48a00
                         call               _jmp_addr_0x007a1400                        // 0x0060d90d    e8ee3a1900
                         {disp8} fld        dword ptr [edi + 0x08]                      // 0x0060d912    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]            // 0x0060d915    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x3c], eax                 // 0x0060d91b    8944243c
                         call               _jmp_addr_0x007a1400                        // 0x0060d91f    e8dc3a1900
                         {disp8} mov        dword ptr [esp + 0x40], eax                 // 0x0060d924    89442440
                         mov                eax, 0x00008000                             // 0x0060d928    b800800000
                         {disp8} mov        word ptr [esp + 0x3c], ax                   // 0x0060d92d    668944243c
                         {disp8} mov        word ptr [esp + 0x40], ax                   // 0x0060d932    6689442440
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                 // 0x0060d937    8d44243c
                         push               eax                                         // 0x0060d93b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                 // 0x0060d93c    8d4c2414
                         push               ecx                                         // 0x0060d940    51
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000          // 0x0060d941    c744244c00000000
                         call               _jmp_addr_0x007370b0                        // 0x0060d949    e862971200
                         add                esp, 0x08                                   // 0x0060d94e    83c408
                         {disp8} lea        edx, dword ptr [esp + 0x10]                 // 0x0060d951    8d542410
                         push               edx                                         // 0x0060d955    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                 // 0x0060d956    8d44241c
                         push               eax                                         // 0x0060d95a    50
                         mov                ecx, 0x00d3eebc                             // 0x0060d95b    b9bceed300
                         call               _jmp_addr_0x00610010                        // 0x0060d960    e8ab260000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                 // 0x0060d965    8b442418
                         cmp                eax, dword ptr [data_bytes + 0x378ec0]      // 0x0060d969    3b05c0eed300
                         pop                ebp                                         // 0x0060d96f    5d
                         {disp8} je         _jmp_addr_0x0060d97e                        // 0x0060d970    740c
                         cmp                dword ptr [eax + 0x10], edi                 // 0x0060d972    397810
                         {disp8} jne        _jmp_addr_0x0060d97e                        // 0x0060d975    7507
                         {disp32} mov       byte ptr [_DAT_00d3eed0], 0x01              // 0x0060d977    c605d0eed30001
_jmp_addr_0x0060d97e:    {disp8} mov        al, byte ptr [esi + 0x5e]                   // 0x0060d97e    8a465e
                         cmp                al, 0x0c                                    // 0x0060d981    3c0c
                         {disp8} jne        _jmp_addr_0x0060d9bf                        // 0x0060d983    753a
                         {disp8} fld        dword ptr [esp + 0x20]                      // 0x0060d985    d9442420
                         {disp8} fsub       dword ptr [esp + 0x28]                      // 0x0060d989    d8642428
                         {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060d98d    d9442424
                         {disp8} fsub       dword ptr [esp + 0x2c]                      // 0x0060d991    d864242c
                         {disp8} fmul       dword ptr [esp + 0x30]                      // 0x0060d995    d84c2430
                         {disp8} fld        dword ptr [esp + 0x34]                      // 0x0060d999    d9442434
                         fmul               st, st(2)                                   // 0x0060d99d    d8ca
                         fsubp              st(1), st                                   // 0x0060d99f    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060d9a1    d81d98a38a00
                         fnstsw             ax                                          // 0x0060d9a7    dfe0
                         fstp               st(0)                                       // 0x0060d9a9    ddd8
                         test               ah, 0x41                                    // 0x0060d9ab    f6c441
                         mov                eax, 0x0000000f                             // 0x0060d9ae    b80f000000
                         {disp8} je         _jmp_addr_0x0060d9ba                        // 0x0060d9b3    7405
                         mov                eax, 0x00000010                             // 0x0060d9b5    b810000000
_jmp_addr_0x0060d9ba:    {disp8} mov        byte ptr [esi + 0x5e], al                   // 0x0060d9ba    88465e
                         {disp8} jmp        _jmp_addr_0x0060d9ca                        // 0x0060d9bd    eb0b
_jmp_addr_0x0060d9bf:    cmp                al, 0x0d                                    // 0x0060d9bf    3c0d
                         setne              cl                                          // 0x0060d9c1    0f95c1
                         add                ecx, 0xf                                    // 0x0060d9c4    83c10f
                         {disp8} mov        byte ptr [esi + 0x5e], cl                   // 0x0060d9c7    884e5e
_jmp_addr_0x0060d9ca:    cmp                byte ptr [esi + 0x5e], 0x0f                 // 0x0060d9ca    807e5e0f
                         {disp8} lea        eax, dword ptr [esi + 0x14]                 // 0x0060d9ce    8d4614
                         push               eax                                         // 0x0060d9d1    50
                         push               esi                                         // 0x0060d9d2    56
                         {disp8} jne        _jmp_addr_0x0060d9dc                        // 0x0060d9d3    7507
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z                 // 0x0060d9d5    e816800000
                         {disp8} jmp        _jmp_addr_0x0060d9e1                        // 0x0060d9da    eb05
_jmp_addr_0x0060d9dc:    call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z                 // 0x0060d9dc    e85f720000
_jmp_addr_0x0060d9e1:    add                esp, 0x08                                   // 0x0060d9e1    83c408
                         {disp32} lea       edi, dword ptr [esi + 0x00000080]           // 0x0060d9e4    8dbe80000000
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                 // 0x0060d9ea    8d5e14
                         push               edi                                         // 0x0060d9ed    57
                         mov.s              ecx, ebx                                    // 0x0060d9ee    8bcb
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                        // 0x0060d9f0    e8bb85ffff
                         fsqrt                                                          // 0x0060d9f5    d9fa
                         {disp32} fmul      qword ptr [rdata_bytes + 0x87670]           // 0x0060d9f7    dc0d70069300
                         {disp32} fsub      qword ptr [__real@8@3fff8000000000000000] // 0x0060d9fd    dc2580b68a00
                         {disp32} fcomp     qword ptr [__real@8@00000000000000000000]   // 0x0060da03    dc1d482c8c00
                         fnstsw             ax                                          // 0x0060da09    dfe0
                         test               ah, 0x41                                    // 0x0060da0b    f6c441
                         {disp8} jne        _jmp_addr_0x0060da28                        // 0x0060da0e    7518
                         push               edi                                         // 0x0060da10    57
                         mov.s              ecx, ebx                                    // 0x0060da11    8bcb
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                        // 0x0060da13    e89885ffff
                         fsqrt                                                          // 0x0060da18    d9fa
                         {disp32} fmul      qword ptr [rdata_bytes + 0x87670]           // 0x0060da1a    dc0d70069300
                         {disp32} fsub      qword ptr [__real@8@3fff8000000000000000] // 0x0060da20    dc2580b68a00
                         {disp8} jmp        _jmp_addr_0x0060da2e                        // 0x0060da26    eb06
_jmp_addr_0x0060da28:    {disp32} fld       qword ptr [__real@8@00000000000000000000]   // 0x0060da28    dd05482c8c00
_jmp_addr_0x0060da2e:    call               _jmp_addr_0x007a1400                        // 0x0060da2e    e8cd391900
                         mov.s              edi, eax                                    // 0x0060da33    8bf8
                         cmp                edi, 0x0000ffff                             // 0x0060da35    81ffffff0000
                         .byte              0x72, 0x2f// {disp8} jb _jmp_addr_0x0060da6c // 0x0060da3b    722f
                         {disp8} lea        edx, dword ptr [esp + 0x14]                 // 0x0060da3d    8d542414
                         push               edx                                         // 0x0060da41    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]                 // 0x0060da42    8d442410
                         push               eax                                         // 0x0060da46    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78      // 0x0060da47    b978eed300
                         {disp8} mov        dword ptr [esp + 0x1c], esi                 // 0x0060da4c    8974241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000          // 0x0060da50    c744242000000000
                         call               _jmp_addr_0x00612970                        // 0x0060da58    e8134f0000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                 // 0x0060da5d    8b4c240c
                         {disp8} mov        dword ptr [ecx + 0x10], edi                 // 0x0060da61    897910
                         {disp8} mov        word ptr [esi + 0x76], -0x0001              // 0x0060da64    66c74676ffff
                         {disp8} jmp        _jmp_addr_0x0060da70                        // 0x0060da6a    eb04
_jmp_addr_0x0060da6c:    {disp8} mov        word ptr [esi + 0x76], di                   // 0x0060da6c    66897e76
_jmp_addr_0x0060da70:    mov                edx, dword ptr [esi]                        // 0x0060da70    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x44]                 // 0x0060da72    8d442444
                         push               eax                                         // 0x0060da76    50
                         mov.s              ecx, esi                                    // 0x0060da77    8bce
                         call               dword ptr [edx + 0x55c]                     // 0x0060da79    ff925c050000
                         pop                edi                                         // 0x0060da7f    5f
                         pop                esi                                         // 0x0060da80    5e
                         pop                ebx                                         // 0x0060da81    5b
                         add                esp, 0x44                                   // 0x0060da82    83c444
                         ret                                                            // 0x0060da85    c3
                         nop                                                            // 0x0060da86    90
                         nop                                                            // 0x0060da87    90
                         nop                                                            // 0x0060da88    90
                         nop                                                            // 0x0060da89    90
                         nop                                                            // 0x0060da8a    90
                         nop                                                            // 0x0060da8b    90
                         nop                                                            // 0x0060da8c    90
                         nop                                                            // 0x0060da8d    90
                         nop                                                            // 0x0060da8e    90
                         nop                                                            // 0x0060da8f    90
@SetGameAngle__13MobileWallHugFUs@10:    {disp8} mov        eax, dword ptr [esp + 0x04]                 // 0x0060da90    8b442404
                         push               esi                                         // 0x0060da94    56
                         mov.s              esi, ecx                                    // 0x0060da95    8bf1
                         {disp8} mov        word ptr [esi + 0x5c], ax                   // 0x0060da97    6689465c
                         and                eax, 0x0000ffff                             // 0x0060da9b    25ffff0000
                         push               eax                                         // 0x0060daa0    50
                         call               ?ConvertGameAngleTo3D@GUtils@@SAMJ@Z        // 0x0060daa1    e8aa011400
                         fstp               dword ptr [esp]                             // 0x0060daa6    d91c24
                         mov.s              ecx, esi                                    // 0x0060daa9    8bce
                         call               @SetYAngle__6ObjectFf@12                    // 0x0060daab    e8b0b70200
                         pop                esi                                         // 0x0060dab0    5e
                         ret                0x0004                                      // 0x0060dab1    c20400
                         nop                                                            // 0x0060dab4    90
                         nop                                                            // 0x0060dab5    90
                         nop                                                            // 0x0060dab6    90
                         nop                                                            // 0x0060dab7    90
                         nop                                                            // 0x0060dab8    90
                         nop                                                            // 0x0060dab9    90
                         nop                                                            // 0x0060daba    90
                         nop                                                            // 0x0060dabb    90
                         nop                                                            // 0x0060dabc    90
                         nop                                                            // 0x0060dabd    90
                         nop                                                            // 0x0060dabe    90
                         nop                                                            // 0x0060dabf    90
?SetYAngle@MobileWallHug@@UAEXM@Z:
                         push               esi                                         // 0x0060dac0    56
                         push               edi                                         // 0x0060dac1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                 // 0x0060dac2    8b7c240c
                         mov.s              esi, ecx                                    // 0x0060dac6    8bf1
                         push               edi                                         // 0x0060dac8    57
                         call               @SetYAngle__6ObjectFf@12                    // 0x0060dac9    e892b70200
                         push               edi                                         // 0x0060dace    57
                         call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z        // 0x0060dacf    e85c011400
                         add                esp, 0x04                                   // 0x0060dad4    83c404
                         pop                edi                                         // 0x0060dad7    5f
                         {disp8} mov        word ptr [esi + 0x5c], ax                   // 0x0060dad8    6689465c
                         pop                esi                                         // 0x0060dadc    5e
                         ret                0x0004                                      // 0x0060dadd    c20400
_globl_ct_0x0060dae0:    {disp32} jmp       _jmp_addr_0x0060daf0                        // 0x0060dae0    e90b000000
                         nop                                                            // 0x0060dae5    90
                         nop                                                            // 0x0060dae6    90
                         nop                                                            // 0x0060dae7    90
                         nop                                                            // 0x0060dae8    90
                         nop                                                            // 0x0060dae9    90
                         nop                                                            // 0x0060daea    90
                         nop                                                            // 0x0060daeb    90
                         nop                                                            // 0x0060daec    90
                         nop                                                            // 0x0060daed    90
                         nop                                                            // 0x0060daee    90
                         nop                                                            // 0x0060daef    90
_jmp_addr_0x0060daf0:    ret                                                            // 0x0060daf0    c3
                         nop                                                            // 0x0060daf1    90
                         nop                                                            // 0x0060daf2    90
                         nop                                                            // 0x0060daf3    90
                         nop                                                            // 0x0060daf4    90
                         nop                                                            // 0x0060daf5    90
                         nop                                                            // 0x0060daf6    90
                         nop                                                            // 0x0060daf7    90
                         nop                                                            // 0x0060daf8    90
                         nop                                                            // 0x0060daf9    90
                         nop                                                            // 0x0060dafa    90
                         nop                                                            // 0x0060dafb    90
                         nop                                                            // 0x0060dafc    90
                         nop                                                            // 0x0060dafd    90
                         nop                                                            // 0x0060dafe    90
                         nop                                                            // 0x0060daff    90
_jmp_addr_0x0060db00:    push               esi                                         // 0x0060db00    56
                         mov.s              esi, ecx                                    // 0x0060db01    8bf1
                         push               esi                                         // 0x0060db03    56
                         {disp8} lea        ecx, dword ptr [esi + 0x70]                 // 0x0060db04    8d4e70
                         mov                dword ptr [esi], 0x008cded8                 // 0x0060db07    c706d8de8c00
                         call               _jmp_addr_0x0060a9f0                        // 0x0060db0d    e8deceffff
                         mov.s              ecx, esi                                    // 0x0060db12    8bce
                         mov                dword ptr [esi], 0x008ce750                 // 0x0060db14    c70650e78c00
                         call               _jmp_addr_0x00636640                        // 0x0060db1a    e8218b0200
                         pop                esi                                         // 0x0060db1f    5e
                         ret                                                            // 0x0060db20    c3
                         nop                                                            // 0x0060db21    90
                         nop                                                            // 0x0060db22    90
                         nop                                                            // 0x0060db23    90
                         nop                                                            // 0x0060db24    90
                         nop                                                            // 0x0060db25    90
                         nop                                                            // 0x0060db26    90
                         nop                                                            // 0x0060db27    90
                         nop                                                            // 0x0060db28    90
                         nop                                                            // 0x0060db29    90
                         nop                                                            // 0x0060db2a    90
                         nop                                                            // 0x0060db2b    90
                         nop                                                            // 0x0060db2c    90
                         nop                                                            // 0x0060db2d    90
                         nop                                                            // 0x0060db2e    90
                         nop                                                            // 0x0060db2f    90
?PrssKey@EditorHug@@UAEXW4LH_KEY@@G@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                 // 0x0060db30    8b442404
                         sub                esp, 0x00000288                             // 0x0060db34    81ec88020000
                         push               ebx                                         // 0x0060db3a    53
                         push               ebp                                         // 0x0060db3b    55
                         dec                eax                                         // 0x0060db3c    48
                         cmp                eax, 0x38                                   // 0x0060db3d    83f838
                         push               esi                                         // 0x0060db40    56
                         push               edi                                         // 0x0060db41    57
                         mov.s              ebx, ecx                                    // 0x0060db42    8bd9
                         {disp32} ja        _jmp_addr_0x0060f5cc                        // 0x0060db44    0f87821a0000
                         xor.s              ecx, ecx                                    // 0x0060db4a    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0060f5f4]             // 0x0060db4c    8a88f4f56000
                         jmp                dword ptr [ecx*4 + 0x60f5dc]                // 0x0060db52    ff248ddcf56000
                         {disp8} mov        eax, dword ptr [ebx + 0x34]                 // 0x0060db59    8b4334
                         mov                ecx, dword ptr [eax]                        // 0x0060db5c    8b08
                         {disp8} lea        esi, dword ptr [ebx + 0x30]                 // 0x0060db5e    8d7330
                         push               eax                                         // 0x0060db61    50
                         push               ecx                                         // 0x0060db62    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                 // 0x0060db63    8d542434
                         push               edx                                         // 0x0060db67    52
                         mov.s              ecx, esi                                    // 0x0060db68    8bce
                         call               _jmp_addr_0x006103a0                        // 0x0060db6a    e831280000
                         push               0x0                                         // 0x0060db6f    6a00
                         push               0x15                                        // 0x0060db71    6a15
                         {disp8} lea        eax, dword ptr [ebx + 0x10]                 // 0x0060db73    8d4310
                         push               0x00da6be8 /* _VillagerInfos                */ // 0x0060db76    68e86bda00
                         push               eax                                         // 0x0060db7b    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z              // 0x0060db7c    e85f201400
                         add                esp, 0x10                                   // 0x0060db81    83c410
                         push               0x0                                         // 0x0060db84    6a00
                         mov.s              edi, eax                                    // 0x0060db86    8bf8
                         push               0x0                                         // 0x0060db88    6a00
                         push               0x0                                         // 0x0060db8a    6a00
                         {disp8} lea        ecx, dword ptr [edi + 0x70]                 // 0x0060db8c    8d4f70
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                        // 0x0060db8f    e8dccbffff
                         push               0xc                                         // 0x0060db94    6a0c
                         add                ebx, 0x1c                                   // 0x0060db96    83c31c
                         push               ebx                                         // 0x0060db99    53
                         mov.s              ecx, edi                                    // 0x0060db9a    8bcf
                         call               @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16                        // 0x0060db9c    e81fd0ffff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                 // 0x0060dba1    8b4604
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                 // 0x0060dba4    8d5f14
                         push               ebx                                         // 0x0060dba7    53
                         push               eax                                         // 0x0060dba8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                 // 0x0060dba9    8d4c2434
                         push               ecx                                         // 0x0060dbad    51
                         mov.s              ecx, esi                                    // 0x0060dbae    8bce
                         call               _jmp_addr_0x00610340                        // 0x0060dbb0    e88b270000
                         mov.s              ecx, edi                                    // 0x0060dbb5    8bcf
                         mov                ebp, 0x00002710                             // 0x0060dbb7    bd10270000
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060dbbc    e85fd3ffff
                         cmp                eax, 0x0a                                   // 0x0060dbc1    83f80a
                         {disp8} je         _jmp_addr_0x0060dbef                        // 0x0060dbc4    7429
_jmp_addr_0x0060dbc6:    mov.s              edx, ebp                                    // 0x0060dbc6    8bd5
                         dec                ebp                                         // 0x0060dbc8    4d
                         test               edx, edx                                    // 0x0060dbc9    85d2
                         {disp8} jle        _jmp_addr_0x0060dbef                        // 0x0060dbcb    7e22
                         {disp8} mov        eax, dword ptr [esi + 0x04]                 // 0x0060dbcd    8b4604
                         push               ebx                                         // 0x0060dbd0    53
                         push               eax                                         // 0x0060dbd1    50
                         {disp8} lea        eax, dword ptr [esp + 0x34]                 // 0x0060dbd2    8d442434
                         push               eax                                         // 0x0060dbd6    50
                         mov.s              ecx, esi                                    // 0x0060dbd7    8bce
                         call               _jmp_addr_0x00610340                        // 0x0060dbd9    e862270000
                         call               _DoWallHuggerLookahead__Fv                  // 0x0060dbde    e86dbeffff
                         mov.s              ecx, edi                                    // 0x0060dbe3    8bcf
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060dbe5    e836d3ffff
                         cmp                eax, 0x0a                                   // 0x0060dbea    83f80a
                         {disp8} jne        _jmp_addr_0x0060dbc6                        // 0x0060dbed    75d7
_jmp_addr_0x0060dbef:    {disp8} mov        eax, dword ptr [esi + 0x04]                 // 0x0060dbef    8b4604
                         push               ebx                                         // 0x0060dbf2    53
                         push               eax                                         // 0x0060dbf3    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                 // 0x0060dbf4    8d4c2434
                         push               ecx                                         // 0x0060dbf8    51
                         mov.s              ecx, esi                                    // 0x0060dbf9    8bce
                         call               _jmp_addr_0x00610340                        // 0x0060dbfb    e840270000
                         mov                edx, dword ptr [edi]                        // 0x0060dc00    8b17
                         push               0x0                                         // 0x0060dc02    6a00
                         mov.s              ecx, edi                                    // 0x0060dc04    8bcf
                         call               dword ptr [edx + 0xc]                       // 0x0060dc06    ff520c
                         pop                edi                                         // 0x0060dc09    5f
                         pop                esi                                         // 0x0060dc0a    5e
                         pop                ebp                                         // 0x0060dc0b    5d
                         pop                ebx                                         // 0x0060dc0c    5b
                         add                esp, 0x00000288                             // 0x0060dc0d    81c488020000
                         ret                0x0008                                      // 0x0060dc13    c20800
                         mov                ecx, 0x00cc6340                             // 0x0060dc16    b94063cc00
                         call               _jmp_addr_0x006103f0                        // 0x0060dc1b    e8d0270000
                         pop                edi                                         // 0x0060dc20    5f
                         pop                esi                                         // 0x0060dc21    5e
                         pop                ebp                                         // 0x0060dc22    5d
                         pop                ebx                                         // 0x0060dc23    5b
                         add                esp, 0x00000288                             // 0x0060dc24    81c488020000
                         ret                0x0008                                      // 0x0060dc2a    c20800
                         {disp32} mov       ecx, dword ptr [_game]                      // 0x0060dc2d    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ    // 0x0060dc33    e8187cf4ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b0]           // 0x0060dc38    8d8c24b0000000
                         push               ecx                                         // 0x0060dc3f    51
                         {disp32} mov       ecx, dword ptr [eax + 0x0000039c]           // 0x0060dc40    8b889c030000
                         call               _jmp_addr_0x005dc8d0                        // 0x0060dc46    e885ecfcff
                         mov                eax, 0x00000001                             // 0x0060dc4b    b801000000
                         mov                ebp, 0x00000031                             // 0x0060dc50    bd31000000
                         {disp8} mov        dword ptr [esp + 0x14], eax                 // 0x0060dc55    89442414
                         {disp8} mov        dword ptr [esp + 0x64], eax                 // 0x0060dc59    89442464
_jmp_addr_0x0060dc5d:    {disp32} lea       ecx, dword ptr [esp + 0x000000b0]           // 0x0060dc5d    8d8c24b0000000
                         call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ                        // 0x0060dc64    e82758ffff
                         mov.s              esi, eax                                    // 0x0060dc69    8bf0
                         test               esi, esi                                    // 0x0060dc6b    85f6
                         {disp8} je         _jmp_addr_0x0060dca1                        // 0x0060dc6d    7432
_jmp_addr_0x0060dc6f:    push               0x0                                         // 0x0060dc6f    6a00
                         push               0x009cafc8                                  // 0x0060dc71    68c8af9c00
                         push               0x009c7f50                                  // 0x0060dc76    68507f9c00
                         push               0x0                                         // 0x0060dc7b    6a00
                         push               esi                                         // 0x0060dc7d    56
                         call               ___RTDynamicCast                            // 0x0060dc7e    e8967d1b00
                         mov.s              edi, eax                                    // 0x0060dc83    8bf8
                         add                esp, 0x14                                   // 0x0060dc85    83c414
                         test               edi, edi                                    // 0x0060dc88    85ff
                         {disp8} jne        _jmp_addr_0x0060dcd2                        // 0x0060dc8a    7546
                         {disp32} lea       edx, dword ptr [esp + 0x000000b0]           // 0x0060dc8c    8d9424b0000000
                         push               edx                                         // 0x0060dc93    52
                         mov.s              ecx, esi                                    // 0x0060dc94    8bce
                         call               @GetMapChild__6ObjectFRC9MapCoords@12       // 0x0060dc96    e8c5a80200
                         mov.s              esi, eax                                    // 0x0060dc9b    8bf0
                         test               esi, esi                                    // 0x0060dc9d    85f6
                         {disp8} jne        _jmp_addr_0x0060dc6f                        // 0x0060dc9f    75ce
_jmp_addr_0x0060dca1:    {disp8} lea        eax, dword ptr [esp + 0x64]                 // 0x0060dca1    8d442464
                         push               eax                                         // 0x0060dca5    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                 // 0x0060dca6    8d4c2418
                         push               ecx                                         // 0x0060dcaa    51
                         dec                ebp                                         // 0x0060dcab    4d
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z      // 0x0060dcac    e82ffb1300
                         add                esp, 0x08                                   // 0x0060dcb1    83c408
                         push               eax                                         // 0x0060dcb4    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]           // 0x0060dcb5    8d8c24b4000000
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12          // 0x0060dcbc    e8af77ffff
                         test               ebp, ebp                                    // 0x0060dcc1    85ed
                         {disp8} jne        _jmp_addr_0x0060dc5d                        // 0x0060dcc3    7598
                         pop                edi                                         // 0x0060dcc5    5f
                         pop                esi                                         // 0x0060dcc6    5e
                         pop                ebp                                         // 0x0060dcc7    5d
                         pop                ebx                                         // 0x0060dcc8    5b
                         add                esp, 0x00000288                             // 0x0060dcc9    81c488020000
                         ret                0x0008                                      // 0x0060dccf    c20800
_jmp_addr_0x0060dcd2:    {disp8} mov        eax, dword ptr [ebx + 0x34]                 // 0x0060dcd2    8b4334
                         mov                ecx, dword ptr [eax]                        // 0x0060dcd5    8b08
                         add                ebx, 0x30                                   // 0x0060dcd7    83c330
                         push               eax                                         // 0x0060dcda    50
                         push               ecx                                         // 0x0060dcdb    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                 // 0x0060dcdc    8d542434
                         push               edx                                         // 0x0060dce0    52
                         mov.s              ecx, ebx                                    // 0x0060dce1    8bcb
                         call               _jmp_addr_0x006103a0                        // 0x0060dce3    e8b8260000
                         push               0x0                                         // 0x0060dce8    6a00
                         push               0x15                                        // 0x0060dcea    6a15
                         {disp8} lea        eax, dword ptr [edi + 0x14]                 // 0x0060dcec    8d4714
                         push               0x00da6be8 /* _VillagerInfos                */ // 0x0060dcef    68e86bda00
                         push               eax                                         // 0x0060dcf4    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z              // 0x0060dcf5    e8e61e1400
                         {disp8} mov        cl, byte ptr [edi + 0x74]                   // 0x0060dcfa    8a4f74
                         mov.s              esi, eax                                    // 0x0060dcfd    8bf0
                         add                esp, 0x10                                   // 0x0060dcff    83c410
                         {disp8} mov        byte ptr [esi + 0x74], cl                   // 0x0060dd02    884e74
                         {disp8} mov        dx, word ptr [edi + 0x76]                   // 0x0060dd05    668b5776
                         push               0x0                                         // 0x0060dd09    6a00
                         push               esi                                         // 0x0060dd0b    56
                         {disp8} lea        ecx, dword ptr [edi + 0x70]                 // 0x0060dd0c    8d4f70
                         {disp8} mov        word ptr [esi + 0x76], dx                   // 0x0060dd0f    66895676
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060dd13    e848c9ffff
                         push               eax                                         // 0x0060dd18    50
                         {disp8} lea        ecx, dword ptr [esi + 0x70]                 // 0x0060dd19    8d4e70
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                        // 0x0060dd1c    e84fcaffff
                         {disp8} mov        al, byte ptr [edi + 0x5e]                   // 0x0060dd21    8a475e
                         {disp8} mov        byte ptr [esi + 0x5e], al                   // 0x0060dd24    88465e
                         {disp32} lea       ecx, dword ptr [edi + 0x00000080]           // 0x0060dd27    8d8f80000000
                         mov                eax, dword ptr [ecx]                        // 0x0060dd2d    8b01
                         {disp32} lea       ebp, dword ptr [esi + 0x00000080]           // 0x0060dd2f    8dae80000000
                         mov.s              edx, ebp                                    // 0x0060dd35    8bd5
                         mov                dword ptr [edx], eax                        // 0x0060dd37    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                 // 0x0060dd39    8b4104
                         {disp8} mov        dword ptr [edx + 0x04], eax                 // 0x0060dd3c    894204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                 // 0x0060dd3f    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                 // 0x0060dd42    894a08
                         {disp8} fld        dword ptr [edi + 0x68]                      // 0x0060dd45    d94768
                         {disp8} mov        eax, dword ptr [edi + 0x6c]                 // 0x0060dd48    8b476c
                         {disp8} mov        edx, dword ptr [edi + 0x64]                 // 0x0060dd4b    8b5764
                         {disp8} fstp       dword ptr [esi + 0x68]                      // 0x0060dd4e    d95e68
                         {disp8} mov        dword ptr [esi + 0x64], edx                 // 0x0060dd51    895664
                         {disp8} mov        dword ptr [esi + 0x6c], eax                 // 0x0060dd54    89466c
                         .byte              0x66, 0x81, 0x7e, 0x76, 0xff, 0xff// cmp word ptr [esi + 0x76], -0x0001 // 0x0060dd57    66817e76ffff
                         {disp8} mov        ax, word ptr [edi + 0x5c]                   // 0x0060dd5d    668b475c
                         {disp8} mov        word ptr [esi + 0x5c], ax                   // 0x0060dd61    6689465c
                         {disp8} jne        _jmp_addr_0x0060ddc9                        // 0x0060dd65    7562
                         {disp32} lea       ecx, dword ptr [esp + 0x00000094]           // 0x0060dd67    8d8c2494000000
                         push               ecx                                         // 0x0060dd6e    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000198]           // 0x0060dd6f    8d942498010000
                         push               edx                                         // 0x0060dd76    52
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78      // 0x0060dd77    b978eed300
                         {disp32} mov       dword ptr [esp + 0x0000009c], edi           // 0x0060dd7c    89bc249c000000
                         {disp32} mov       dword ptr [esp + 0x000000a0], 0x00000000    // 0x0060dd83    c78424a000000000000000
                         call               _jmp_addr_0x00610490                        // 0x0060dd8e    e8fd260000
                         mov                edi, dword ptr [eax]                        // 0x0060dd93    8b38
                         {disp32} lea       eax, dword ptr [esp + 0x0000008c]           // 0x0060dd95    8d84248c000000
                         push               eax                                         // 0x0060dd9c    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001b0]           // 0x0060dd9d    8d8c24b0010000
                         push               ecx                                         // 0x0060dda4    51
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78      // 0x0060dda5    b978eed300
                         {disp32} mov       dword ptr [esp + 0x00000094], esi           // 0x0060ddaa    89b42494000000
                         {disp32} mov       dword ptr [esp + 0x00000098], 0x00000000    // 0x0060ddb1    c784249800000000000000
                         call               _jmp_addr_0x00610490                        // 0x0060ddbc    e8cf260000
                         mov                eax, dword ptr [eax]                        // 0x0060ddc1    8b00
                         {disp8} mov        edx, dword ptr [edi + 0x10]                 // 0x0060ddc3    8b5710
                         {disp8} mov        dword ptr [eax + 0x10], edx                 // 0x0060ddc6    895010
_jmp_addr_0x0060ddc9:    {disp8} mov        eax, dword ptr [ebx + 0x04]                 // 0x0060ddc9    8b4304
                         {disp8} lea        edi, dword ptr [esi + 0x14]                 // 0x0060ddcc    8d7e14
                         push               edi                                         // 0x0060ddcf    57
                         push               eax                                         // 0x0060ddd0    50
                         {disp8} lea        eax, dword ptr [esp + 0x34]                 // 0x0060ddd1    8d442434
                         push               eax                                         // 0x0060ddd5    50
                         mov.s              ecx, ebx                                    // 0x0060ddd6    8bcb
                         call               _jmp_addr_0x00610340                        // 0x0060ddd8    e863250000
                         mov.s              ecx, esi                                    // 0x0060dddd    8bce
                         {disp8} mov        dword ptr [esp + 0x60], 0x00002710          // 0x0060dddf    c744246010270000
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060dde7    e834d1ffff
                         cmp                eax, 0x0a                                   // 0x0060ddec    83f80a
                         {disp8} je         _jmp_addr_0x0060de22                        // 0x0060ddef    7431
_jmp_addr_0x0060ddf1:    {disp8} mov        eax, dword ptr [esp + 0x60]                 // 0x0060ddf1    8b442460
                         mov.s              ecx, eax                                    // 0x0060ddf5    8bc8
                         dec                eax                                         // 0x0060ddf7    48
                         test               ecx, ecx                                    // 0x0060ddf8    85c9
                         {disp8} mov        dword ptr [esp + 0x60], eax                 // 0x0060ddfa    89442460
                         {disp8} jle        _jmp_addr_0x0060de22                        // 0x0060ddfe    7e22
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                 // 0x0060de00    8b4304
                         push               edi                                         // 0x0060de03    57
                         push               eax                                         // 0x0060de04    50
                         {disp8} lea        edx, dword ptr [esp + 0x34]                 // 0x0060de05    8d542434
                         push               edx                                         // 0x0060de09    52
                         mov.s              ecx, ebx                                    // 0x0060de0a    8bcb
                         call               _jmp_addr_0x00610340                        // 0x0060de0c    e82f250000
                         call               _DoWallHuggerLookahead__Fv                  // 0x0060de11    e83abcffff
                         mov.s              ecx, esi                                    // 0x0060de16    8bce
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060de18    e803d1ffff
                         cmp                eax, 0x0a                                   // 0x0060de1d    83f80a
                         {disp8} jne        _jmp_addr_0x0060ddf1                        // 0x0060de20    75cf
_jmp_addr_0x0060de22:    {disp8} mov        eax, dword ptr [ebx + 0x04]                 // 0x0060de22    8b4304
                         push               edi                                         // 0x0060de25    57
                         push               eax                                         // 0x0060de26    50
                         {disp8} lea        eax, dword ptr [esp + 0x34]                 // 0x0060de27    8d442434
                         push               eax                                         // 0x0060de2b    50
                         mov.s              ecx, ebx                                    // 0x0060de2c    8bcb
                         call               _jmp_addr_0x00610340                        // 0x0060de2e    e80d250000
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                 // 0x0060de33    8b4304
                         push               ebp                                         // 0x0060de36    55
                         push               eax                                         // 0x0060de37    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                 // 0x0060de38    8d4c2434
                         push               ecx                                         // 0x0060de3c    51
                         mov.s              ecx, ebx                                    // 0x0060de3d    8bcb
                         call               _jmp_addr_0x00610340                        // 0x0060de3f    e8fc240000
                         mov                edx, dword ptr [esi]                        // 0x0060de44    8b16
                         push               0x0                                         // 0x0060de46    6a00
                         mov.s              ecx, esi                                    // 0x0060de48    8bce
                         call               dword ptr [edx + 0xc]                       // 0x0060de4a    ff520c
                         pop                edi                                         // 0x0060de4d    5f
                         pop                esi                                         // 0x0060de4e    5e
                         pop                ebp                                         // 0x0060de4f    5d
                         pop                ebx                                         // 0x0060de50    5b
                         add                esp, 0x00000288                             // 0x0060de51    81c488020000
                         ret                0x0008                                      // 0x0060de57    c20800
                         {disp8} mov        eax, dword ptr [ebx + 0x34]                 // 0x0060de5a    8b4334
                         mov                ecx, dword ptr [eax]                        // 0x0060de5d    8b08
                         {disp8} lea        esi, dword ptr [ebx + 0x30]                 // 0x0060de5f    8d7330
                         push               eax                                         // 0x0060de62    50
                         push               ecx                                         // 0x0060de63    51
                         {disp8} lea        eax, dword ptr [esp + 0x34]                 // 0x0060de64    8d442434
                         push               eax                                         // 0x0060de68    50
                         mov.s              ecx, esi                                    // 0x0060de69    8bce
                         {disp8} mov        dword ptr [esp + 0x6c], esi                 // 0x0060de6b    8974246c
                         call               _jmp_addr_0x006103a0                        // 0x0060de6f    e82c250000
                         push               0x0                                         // 0x0060de74    6a00
                         push               0x15                                        // 0x0060de76    6a15
                         {disp8} lea        ecx, dword ptr [ebx + 0x10]                 // 0x0060de78    8d4b10
                         push               0x00da6be8 /* _VillagerInfos                */ // 0x0060de7b    68e86bda00
                         push               ecx                                         // 0x0060de80    51
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z              // 0x0060de81    e85a1d1400
                         add                esp, 0x10                                   // 0x0060de86    83c410
                         push               0x0                                         // 0x0060de89    6a00
                         mov.s              ebp, eax                                    // 0x0060de8b    8be8
                         push               0x0                                         // 0x0060de8d    6a00
                         {disp8} lea        ecx, dword ptr [ebp + 0x70]                 // 0x0060de8f    8d4d70
                         push               0x0                                         // 0x0060de92    6a00
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                 // 0x0060de94    896c243c
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                        // 0x0060de98    e8d3c8ffff
                         push               0xc                                         // 0x0060de9d    6a0c
                         add                ebx, 0x1c                                   // 0x0060de9f    83c31c
                         push               ebx                                         // 0x0060dea2    53
                         mov.s              ecx, ebp                                    // 0x0060dea3    8bcd
                         call               @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16                        // 0x0060dea5    e816cdffff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                 // 0x0060deaa    8b4604
                         {disp8} lea        edi, dword ptr [ebp + 0x14]                 // 0x0060dead    8d7d14
                         push               edi                                         // 0x0060deb0    57
                         push               eax                                         // 0x0060deb1    50
                         {disp8} lea        edx, dword ptr [esp + 0x34]                 // 0x0060deb2    8d542434
                         push               edx                                         // 0x0060deb6    52
                         mov.s              ecx, esi                                    // 0x0060deb7    8bce
                         call               _jmp_addr_0x00610340                        // 0x0060deb9    e882240000
                         mov.s              ecx, ebp                                    // 0x0060debe    8bcd
                         mov                ebx, 0x000003e8                             // 0x0060dec0    bbe8030000
                         {disp32} mov       byte ptr [_DAT_00d3eed1], 0x00              // 0x0060dec5    c605d1eed30000
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060decc    e84fd0ffff
                         cmp                eax, 0x0a                                   // 0x0060ded1    83f80a
                         {disp32} je        _jmp_addr_0x0060f598                        // 0x0060ded4    0f84be160000
                         {disp8} jmp        _jmp_addr_0x0060dee3                        // 0x0060deda    eb07
_jmp_addr_0x0060dedc:    {disp32} mov       ebx, dword ptr [esp + 0x00000120]           // 0x0060dedc    8b9c2420010000
_jmp_addr_0x0060dee3:    mov.s              eax, ebx                                    // 0x0060dee3    8bc3
                         dec                ebx                                         // 0x0060dee5    4b
                         test               eax, eax                                    // 0x0060dee6    85c0
                         {disp32} mov       dword ptr [esp + 0x00000120], ebx           // 0x0060dee8    899c2420010000
                         {disp32} jle       _jmp_addr_0x0060f598                        // 0x0060deef    0f8ea3160000
                         {disp8} lea        esi, dword ptr [ebp + 0x70]                 // 0x0060def5    8d7570
                         mov.s              ecx, esi                                    // 0x0060def8    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060defa    e861c7ffff
                         test               eax, eax                                    // 0x0060deff    85c0
                         {disp32} je        _jmp_addr_0x0060f570                        // 0x0060df01    0f8469160000
                         mov.s              ecx, esi                                    // 0x0060df07    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060df09    e852c7ffff
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                 // 0x0060df0e    8b4808
                         {disp32} mov       dword ptr [esp + 0x00000110], ecx           // 0x0060df11    898c2410010000
                         mov.s              ecx, esi                                    // 0x0060df18    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060df1a    e841c7ffff
                         fld                dword ptr [eax]                             // 0x0060df1f    d900
                         {disp32} mov       edx, dword ptr [esp + 0x00000110]           // 0x0060df21    8b942410010000
                         {disp32} lea       eax, dword ptr [esp + 0x0000009c]           // 0x0060df28    8d84249c000000
                         push               edi                                         // 0x0060df2f    57
                         {disp8} fstp       dword ptr [esp + 0x6c]                      // 0x0060df30    d95c246c
                         push               eax                                         // 0x0060df34    50
                         {disp8} mov        dword ptr [esp + 0x74], edx                 // 0x0060df35    89542474
                         call               _jmp_addr_0x0060c180                        // 0x0060df39    e842e2ffff
                         add                esp, 0x08                                   // 0x0060df3e    83c408
                         mov.s              ecx, esi                                    // 0x0060df41    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060df43    e818c7ffff
                         {disp32} fld       dword ptr [esp + 0x0000009c]                // 0x0060df48    d984249c000000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                 // 0x0060df4f    8b480c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]            // 0x0060df52    d80d04c48a00
                         {disp8} mov        dword ptr [esp + 0x64], ecx                 // 0x0060df58    894c2464
                         call               _jmp_addr_0x007a1400                        // 0x0060df5c    e89f341900
                         {disp8} mov        dword ptr [esp + 0x14], eax                 // 0x0060df61    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                      // 0x0060df65    db442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]            // 0x0060df69    d80d14b48a00
                         fld                st(0)                                       // 0x0060df6f    d9c0
                         {disp32} fadd      dword ptr [_rdata_float0p001]               // 0x0060df71    d805b0a38a00
                         {disp8} fsub       dword ptr [esp + 0x68]                      // 0x0060df77    d8642468
                         {disp8} fstp       dword ptr [esp + 0x34]                      // 0x0060df7b    d95c2434
                         {disp32} fadd      dword ptr [rdata_bytes + 0x87684]           // 0x0060df7f    d80584069300
                         {disp8} fsub       dword ptr [esp + 0x68]                      // 0x0060df85    d8642468
                         {disp8} fstp       dword ptr [esp + 0x44]                      // 0x0060df89    d95c2444
                         {disp32} fld       dword ptr [esp + 0x000000a0]                // 0x0060df8d    d98424a0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]            // 0x0060df94    d80d04c48a00
                         call               _jmp_addr_0x007a1400                        // 0x0060df9a    e861341900
                         {disp8} mov        dword ptr [esp + 0x14], eax                 // 0x0060df9f    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                      // 0x0060dfa3    db442414
                         {disp8} mov        al, byte ptr [ebp + 0x5e]                   // 0x0060dfa7    8a455e
                         xor.s              bl, bl                                      // 0x0060dfaa    32db
                         cmp                al, 0x0f                                    // 0x0060dfac    3c0f
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]            // 0x0060dfae    d80d14b48a00
                         fld                st(0)                                       // 0x0060dfb4    d9c0
                         {disp32} fadd      dword ptr [_rdata_float0p001]               // 0x0060dfb6    d805b0a38a00
                         {disp8} fsub       dword ptr [esp + 0x6c]                      // 0x0060dfbc    d864246c
                         {disp8} fstp       dword ptr [esp + 0x24]                      // 0x0060dfc0    d95c2424
                         {disp32} fadd      dword ptr [rdata_bytes + 0x87684]           // 0x0060dfc4    d80584069300
                         {disp8} fsub       dword ptr [esp + 0x6c]                      // 0x0060dfca    d864246c
                         {disp8} fstp       dword ptr [esp + 0x48]                      // 0x0060dfce    d95c2448
                         {disp32} jne       _jmp_addr_0x0060ef85                        // 0x0060dfd2    0f85ad0f0000
                         {disp32} fld       dword ptr [esp + 0x0000009c]                // 0x0060dfd8    d984249c000000
                         {disp32} mov       al, byte ptr [_DAT_00d3eed1]                // 0x0060dfdf    a0d1eed300
                         test               al, al                                      // 0x0060dfe4    84c0
                         {disp8} fsub       dword ptr [esp + 0x68]                      // 0x0060dfe6    d8642468
                         {disp32} fld       dword ptr [esp + 0x000000a0]                // 0x0060dfea    d98424a0000000
                         {disp8} fsub       dword ptr [esp + 0x6c]                      // 0x0060dff1    d864246c
                         fld                st(1)                                       // 0x0060dff5    d9c1
                         {disp32} fstp      dword ptr [data_bytes + 0x378e70]           // 0x0060dff7    d91d70eed300
                         {disp32} fst       dword ptr [data_bytes + 0x378e74]           // 0x0060dffd    d91574eed300
                         {disp8} je         _jmp_addr_0x0060e041                        // 0x0060e003    743c
                         {disp32} fld       dword ptr [data_bytes + 0x378e60]           // 0x0060e005    d90560eed300
                         {disp32} fld       dword ptr [data_bytes + 0x378e64]           // 0x0060e00b    d90564eed300
                         fld                st(1)                                       // 0x0060e011    d9c1
                         {disp8} fstp       dword ptr [esp + 0x18]                      // 0x0060e013    d95c2418
                         {disp8} fst        dword ptr [esp + 0x1c]                      // 0x0060e017    d954241c
                         fmul               st, st(3)                                   // 0x0060e01b    d8cb
                         fld                st(2)                                       // 0x0060e01d    d9c2
                         fmul               st, st(2)                                   // 0x0060e01f    d8ca
                         fsubp              st(1), st                                   // 0x0060e021    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e023    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e029    dfe0
                         fstp               st(0)                                       // 0x0060e02b    ddd8
                         test               ah, 0x41                                    // 0x0060e02d    f6c441
                         {disp8} je         _jmp_addr_0x0060e039                        // 0x0060e030    7407
                         mov                eax, 0x00000001                             // 0x0060e032    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e03b                        // 0x0060e037    eb02
_jmp_addr_0x0060e039:    xor.s              eax, eax                                    // 0x0060e039    33c0
_jmp_addr_0x0060e03b:    {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e03b    88442420
                         mov                bl, 0x01                                    // 0x0060e03f    b301
_jmp_addr_0x0060e041:    {disp8} fld        dword ptr [esp + 0x64]                      // 0x0060e041    d9442464
                         {disp8} fmul       dword ptr [esp + 0x64]                      // 0x0060e045    d84c2464
                         {disp8} fstp       dword ptr [esp + 0x28]                      // 0x0060e049    d95c2428
                         {disp8} fld        dword ptr [esp + 0x34]                      // 0x0060e04d    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                      // 0x0060e051    d84c2434
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060e055    d86c2428
                         {disp8} fst        dword ptr [esp + 0x50]                      // 0x0060e059    d9542450
                         fld                st(0)                                       // 0x0060e05d    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e05f    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e065    dfe0
                         test               ah, 0x41                                    // 0x0060e067    f6c441
                         {disp32} jne       _jmp_addr_0x0060e14c                        // 0x0060e06a    0f85dc000000
                         fsqrt                                                          // 0x0060e070    d9fa
                         {disp8} mov        edx, dword ptr [esp + 0x34]                 // 0x0060e072    8b542434
                         {disp32} mov       dword ptr [esp + 0x000000b0], edx           // 0x0060e076    899424b0000000
                         fchs                                                           // 0x0060e07d    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000098]                // 0x0060e07f    d99c2498000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000098]           // 0x0060e086    8b842498000000
                         fxch               st(1)                                       // 0x0060e08d    d9c9
                         {disp32} fmul      dword ptr [esp + 0x00000098]                // 0x0060e08f    d88c2498000000
                         {disp32} mov       dword ptr [esp + 0x000000b4], eax           // 0x0060e096    898424b4000000
                         fxch               st(1)                                       // 0x0060e09d    d9c9
                         {disp8} fmul       dword ptr [esp + 0x34]                      // 0x0060e09f    d84c2434
                         fsubp              st(1), st                                   // 0x0060e0a3    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e0a5    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e0ab    dfe0
                         test               ah, 0x41                                    // 0x0060e0ad    f6c441
                         {disp8} je         _jmp_addr_0x0060e0b9                        // 0x0060e0b0    7407
                         mov                eax, 0x00000001                             // 0x0060e0b2    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e0bb                        // 0x0060e0b7    eb02
_jmp_addr_0x0060e0b9:    xor.s              eax, eax                                    // 0x0060e0b9    33c0
_jmp_addr_0x0060e0bb:    test               bl, bl                                      // 0x0060e0bb    84db
                         {disp32} mov       byte ptr [esp + 0x000000b8], al             // 0x0060e0bd    888424b8000000
                         {disp8} je         _jmp_addr_0x0060e103                        // 0x0060e0c4    743d
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e0c6    3a442420
                         {disp8} jne        _jmp_addr_0x0060e0f0                        // 0x0060e0ca    7524
                         {disp8} fld        dword ptr [esp + 0x1c]                      // 0x0060e0cc    d944241c
                         {disp8} fmul       dword ptr [esp + 0x34]                      // 0x0060e0d0    d84c2434
                         {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e0d4    d9442418
                         {disp32} fmul      dword ptr [esp + 0x00000098]                // 0x0060e0d8    d88c2498000000
                         fsubp              st(1), st                                   // 0x0060e0df    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e0e1    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e0e7    dfe0
                         test               ah, 0x01                                    // 0x0060e0e9    f6c401
                         {disp8} jne        _jmp_addr_0x0060e103                        // 0x0060e0ec    7515
                         {disp8} jmp        _jmp_addr_0x0060e152                        // 0x0060e0ee    eb62
_jmp_addr_0x0060e0f0:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]           // 0x0060e0f0    8b8c24b8000000
                         and                ecx, 0x000000ff                             // 0x0060e0f7    81e1ff000000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                 // 0x0060e0fd    894c2414
                         {disp8} je         _jmp_addr_0x0060e152                        // 0x0060e101    744f
_jmp_addr_0x0060e103:    {disp32} lea       edx, dword ptr [esp + 0x000000b0]           // 0x0060e103    8d9424b0000000
                         push               edx                                         // 0x0060e10a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e10b    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e10f    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e111    e80a310000
                         {disp8} fld        dword ptr [esp + 0x1c]                      // 0x0060e116    d944241c
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e11a    d80d70eed300
                         {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e120    d9442418
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e124    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e12a    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e12c    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e132    dfe0
                         test               ah, 0x41                                    // 0x0060e134    f6c441
                         {disp8} je         _jmp_addr_0x0060e144                        // 0x0060e137    740b
                         mov                eax, 0x00000001                             // 0x0060e139    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e13e    88442420
                         {disp8} jmp        _jmp_addr_0x0060e152                        // 0x0060e142    eb0e
_jmp_addr_0x0060e144:    xor.s              eax, eax                                    // 0x0060e144    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e146    88442420
                         {disp8} jmp        _jmp_addr_0x0060e152                        // 0x0060e14a    eb06
_jmp_addr_0x0060e14c:    fstp               st(0)                                       // 0x0060e14c    ddd8
                         fstp               st(0)                                       // 0x0060e14e    ddd8
                         fstp               st(0)                                       // 0x0060e150    ddd8
_jmp_addr_0x0060e152:    {disp8} fld        dword ptr [esp + 0x44]                      // 0x0060e152    d9442444
                         {disp8} fmul       dword ptr [esp + 0x44]                      // 0x0060e156    d84c2444
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060e15a    d86c2428
                         {disp8} fst        dword ptr [esp + 0x4c]                      // 0x0060e15e    d954244c
                         fld                st(0)                                       // 0x0060e162    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e164    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e16a    dfe0
                         test               ah, 0x41                                    // 0x0060e16c    f6c441
                         {disp32} jne       _jmp_addr_0x0060e263                        // 0x0060e16f    0f85ee000000
                         fsqrt                                                          // 0x0060e175    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x44]                 // 0x0060e177    8b442444
                         {disp32} lea       ecx, dword ptr [esp + 0x00000144]           // 0x0060e17b    8d8c2444010000
                         push               ecx                                         // 0x0060e182    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000d8]           // 0x0060e183    8d8c24d8000000
                         {disp32} mov       dword ptr [esp + 0x00000148], eax           // 0x0060e18a    89842448010000
                         {disp32} fstp      dword ptr [esp + 0x0000014c]                // 0x0060e191    d99c244c010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e198    e8e3a2e5ff
                         {disp32} fld       dword ptr [esp + 0x000000d8]                // 0x0060e19d    d98424d8000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e1a4    d80d70eed300
                         {disp32} fld       dword ptr [esp + 0x000000d4]                // 0x0060e1aa    d98424d4000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e1b1    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e1b7    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e1b9    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e1bf    dfe0
                         test               ah, 0x41                                    // 0x0060e1c1    f6c441
                         {disp8} je         _jmp_addr_0x0060e1cd                        // 0x0060e1c4    7407
                         mov                eax, 0x00000001                             // 0x0060e1c6    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e1cf                        // 0x0060e1cb    eb02
_jmp_addr_0x0060e1cd:    xor.s              eax, eax                                    // 0x0060e1cd    33c0
_jmp_addr_0x0060e1cf:    test               bl, bl                                      // 0x0060e1cf    84db
                         {disp32} mov       byte ptr [esp + 0x000000dc], al             // 0x0060e1d1    888424dc000000
                         {disp8} je         _jmp_addr_0x0060e21a                        // 0x0060e1d8    7440
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e1da    3a442420
                         {disp8} jne        _jmp_addr_0x0060e207                        // 0x0060e1de    7527
                         {disp32} fld       dword ptr [esp + 0x000000d4]                // 0x0060e1e0    d98424d4000000
                         {disp8} fmul       dword ptr [esp + 0x1c]                      // 0x0060e1e7    d84c241c
                         {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e1eb    d9442418
                         {disp32} fmul      dword ptr [esp + 0x000000d8]                // 0x0060e1ef    d88c24d8000000
                         fsubp              st(1), st                                   // 0x0060e1f6    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e1f8    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e1fe    dfe0
                         test               ah, 0x01                                    // 0x0060e200    f6c401
                         {disp8} jne        _jmp_addr_0x0060e21a                        // 0x0060e203    7515
                         {disp8} jmp        _jmp_addr_0x0060e265                        // 0x0060e205    eb5e
_jmp_addr_0x0060e207:    {disp32} mov       edx, dword ptr [esp + 0x000000dc]           // 0x0060e207    8b9424dc000000
                         and                edx, 0x000000ff                             // 0x0060e20e    81e2ff000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                 // 0x0060e214    89542414
                         {disp8} je         _jmp_addr_0x0060e265                        // 0x0060e218    744b
_jmp_addr_0x0060e21a:    {disp32} lea       eax, dword ptr [esp + 0x000000d4]           // 0x0060e21a    8d8424d4000000
                         push               eax                                         // 0x0060e221    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e222    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e226    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e228    e8f32f0000
                         {disp8} fld        dword ptr [esp + 0x1c]                      // 0x0060e22d    d944241c
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e231    d80d70eed300
                         {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e237    d9442418
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e23b    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e241    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e243    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e249    dfe0
                         test               ah, 0x41                                    // 0x0060e24b    f6c441
                         {disp8} je         _jmp_addr_0x0060e25b                        // 0x0060e24e    740b
                         mov                eax, 0x00000001                             // 0x0060e250    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e255    88442420
                         {disp8} jmp        _jmp_addr_0x0060e265                        // 0x0060e259    eb0a
_jmp_addr_0x0060e25b:    xor.s              eax, eax                                    // 0x0060e25b    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e25d    88442420
                         {disp8} jmp        _jmp_addr_0x0060e265                        // 0x0060e261    eb02
_jmp_addr_0x0060e263:    fstp               st(0)                                       // 0x0060e263    ddd8
_jmp_addr_0x0060e265:    {disp8} fld        dword ptr [esp + 0x48]                      // 0x0060e265    d9442448
                         {disp8} fmul       dword ptr [esp + 0x48]                      // 0x0060e269    d84c2448
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060e26d    d86c2428
                         {disp8} fst        dword ptr [esp + 0x14]                      // 0x0060e271    d9542414
                         fld                st(0)                                       // 0x0060e275    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e277    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e27d    dfe0
                         test               ah, 0x41                                    // 0x0060e27f    f6c441
                         {disp32} jne       _jmp_addr_0x0060e37a                        // 0x0060e282    0f85f2000000
                         fsqrt                                                          // 0x0060e288    d9fa
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                 // 0x0060e28a    8b4c2448
                         {disp32} lea       edx, dword ptr [esp + 0x00000154]           // 0x0060e28e    8d942454010000
                         {disp32} mov       dword ptr [esp + 0x00000158], ecx           // 0x0060e295    898c2458010000
                         push               edx                                         // 0x0060e29c    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]           // 0x0060e29d    8d8c24a8000000
                         fchs                                                           // 0x0060e2a4    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000158]                // 0x0060e2a6    d99c2458010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e2ad    e8cea1e5ff
                         {disp32} fld       dword ptr [esp + 0x000000a8]                // 0x0060e2b2    d98424a8000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e2b9    d80d70eed300
                         {disp32} fld       dword ptr [esp + 0x000000a4]                // 0x0060e2bf    d98424a4000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e2c6    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e2cc    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e2ce    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e2d4    dfe0
                         test               ah, 0x41                                    // 0x0060e2d6    f6c441
                         {disp8} je         _jmp_addr_0x0060e2e2                        // 0x0060e2d9    7407
                         mov                eax, 0x00000001                             // 0x0060e2db    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e2e4                        // 0x0060e2e0    eb02
_jmp_addr_0x0060e2e2:    xor.s              eax, eax                                    // 0x0060e2e2    33c0
_jmp_addr_0x0060e2e4:    test               bl, bl                                      // 0x0060e2e4    84db
                         {disp32} mov       byte ptr [esp + 0x000000ac], al             // 0x0060e2e6    888424ac000000
                         {disp8} je         _jmp_addr_0x0060e32e                        // 0x0060e2ed    743f
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e2ef    3a442420
                         {disp8} jne        _jmp_addr_0x0060e31c                        // 0x0060e2f3    7527
                         {disp32} fld       dword ptr [esp + 0x000000a4]                // 0x0060e2f5    d98424a4000000
                         {disp8} fmul       dword ptr [esp + 0x1c]                      // 0x0060e2fc    d84c241c
                         {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e300    d9442418
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                // 0x0060e304    d88c24a8000000
                         fsubp              st(1), st                                   // 0x0060e30b    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e30d    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e313    dfe0
                         test               ah, 0x01                                    // 0x0060e315    f6c401
                         {disp8} jne        _jmp_addr_0x0060e32e                        // 0x0060e318    7514
                         {disp8} jmp        _jmp_addr_0x0060e37c                        // 0x0060e31a    eb60
_jmp_addr_0x0060e31c:    {disp32} mov       eax, dword ptr [esp + 0x000000ac]           // 0x0060e31c    8b8424ac000000
                         and                eax, 0x000000ff                             // 0x0060e323    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e328    89442454
                         {disp8} je         _jmp_addr_0x0060e37c                        // 0x0060e32c    744e
_jmp_addr_0x0060e32e:    {disp32} lea       ecx, dword ptr [esp + 0x000000a4]           // 0x0060e32e    8d8c24a4000000
                         push               ecx                                         // 0x0060e335    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e336    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e33a    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e33c    e8df2e0000
                         {disp32} mov       dl, byte ptr [esp + 0x000000ac]             // 0x0060e341    8a9424ac000000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e348    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e34d    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e351    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e355    e8e62e0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e35a    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e360    dfe0
                         test               ah, 0x41                                    // 0x0060e362    f6c441
                         {disp8} je         _jmp_addr_0x0060e372                        // 0x0060e365    740b
                         mov                eax, 0x00000001                             // 0x0060e367    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e36c    88442420
                         {disp8} jmp        _jmp_addr_0x0060e37c                        // 0x0060e370    eb0a
_jmp_addr_0x0060e372:    xor.s              eax, eax                                    // 0x0060e372    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e374    88442420
                         {disp8} jmp        _jmp_addr_0x0060e37c                        // 0x0060e378    eb02
_jmp_addr_0x0060e37a:    fstp               st(0)                                       // 0x0060e37a    ddd8
_jmp_addr_0x0060e37c:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060e37c    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                      // 0x0060e380    d84c2424
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060e384    d86c2428
                         {disp8} fst        dword ptr [esp + 0x28]                      // 0x0060e388    d9542428
                         fld                st(0)                                       // 0x0060e38c    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e38e    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e394    dfe0
                         test               ah, 0x41                                    // 0x0060e396    f6c441
                         {disp32} jne       _jmp_addr_0x0060e488                        // 0x0060e399    0f85e9000000
                         fsqrt                                                          // 0x0060e39f    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x24]                 // 0x0060e3a1    8b442424
                         {disp32} lea       ecx, dword ptr [esp + 0x00000184]           // 0x0060e3a5    8d8c2484010000
                         push               ecx                                         // 0x0060e3ac    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000e4]           // 0x0060e3ad    8d8c24e4000000
                         {disp32} mov       dword ptr [esp + 0x0000018c], eax           // 0x0060e3b4    8984248c010000
                         {disp32} fstp      dword ptr [esp + 0x00000188]                // 0x0060e3bb    d99c2488010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e3c2    e8b9a0e5ff
                         {disp32} fld       dword ptr [esp + 0x000000e4]                // 0x0060e3c7    d98424e4000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e3ce    d80d70eed300
                         {disp32} fld       dword ptr [esp + 0x000000e0]                // 0x0060e3d4    d98424e0000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e3db    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e3e1    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e3e3    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e3e9    dfe0
                         test               ah, 0x41                                    // 0x0060e3eb    f6c441
                         {disp8} je         _jmp_addr_0x0060e3f7                        // 0x0060e3ee    7407
                         mov                eax, 0x00000001                             // 0x0060e3f0    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e3f9                        // 0x0060e3f5    eb02
_jmp_addr_0x0060e3f7:    xor.s              eax, eax                                    // 0x0060e3f7    33c0
_jmp_addr_0x0060e3f9:    test               bl, bl                                      // 0x0060e3f9    84db
                         {disp32} mov       byte ptr [esp + 0x000000e8], al             // 0x0060e3fb    888424e8000000
                         {disp8} je         _jmp_addr_0x0060e43c                        // 0x0060e402    7438
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e404    3a442420
                         {disp8} jne        _jmp_addr_0x0060e42a                        // 0x0060e408    7520
                         {disp32} lea       edx, dword ptr [esp + 0x000000e0]           // 0x0060e40a    8d9424e0000000
                         push               edx                                         // 0x0060e411    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e412    8d4c241c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e416    e8252e0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e41b    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e421    dfe0
                         test               ah, 0x01                                    // 0x0060e423    f6c401
                         {disp8} jne        _jmp_addr_0x0060e43c                        // 0x0060e426    7514
                         {disp8} jmp        _jmp_addr_0x0060e48a                        // 0x0060e428    eb60
_jmp_addr_0x0060e42a:    {disp32} mov       eax, dword ptr [esp + 0x000000e8]           // 0x0060e42a    8b8424e8000000
                         and                eax, 0x000000ff                             // 0x0060e431    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e436    89442454
                         {disp8} je         _jmp_addr_0x0060e48a                        // 0x0060e43a    744e
_jmp_addr_0x0060e43c:    {disp32} lea       ecx, dword ptr [esp + 0x000000e0]           // 0x0060e43c    8d8c24e0000000
                         push               ecx                                         // 0x0060e443    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e444    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e448    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e44a    e8d12d0000
                         {disp32} mov       dl, byte ptr [esp + 0x000000e8]             // 0x0060e44f    8a9424e8000000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e456    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e45b    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e45f    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e463    e8d82d0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e468    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e46e    dfe0
                         test               ah, 0x41                                    // 0x0060e470    f6c441
                         {disp8} je         _jmp_addr_0x0060e480                        // 0x0060e473    740b
                         mov                eax, 0x00000001                             // 0x0060e475    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e47a    88442420
                         {disp8} jmp        _jmp_addr_0x0060e48a                        // 0x0060e47e    eb0a
_jmp_addr_0x0060e480:    xor.s              eax, eax                                    // 0x0060e480    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e482    88442420
                         {disp8} jmp        _jmp_addr_0x0060e48a                        // 0x0060e486    eb02
_jmp_addr_0x0060e488:    fstp               st(0)                                       // 0x0060e488    ddd8
_jmp_addr_0x0060e48a:    {disp8} fld        dword ptr [esp + 0x50]                      // 0x0060e48a    d9442450
                         fld                st(0)                                       // 0x0060e48e    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e490    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e496    dfe0
                         test               ah, 0x41                                    // 0x0060e498    f6c441
                         {disp32} jne       _jmp_addr_0x0060e58a                        // 0x0060e49b    0f85e9000000
                         fsqrt                                                          // 0x0060e4a1    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x34]                 // 0x0060e4a3    8b442434
                         {disp32} lea       ecx, dword ptr [esp + 0x00000164]           // 0x0060e4a7    8d8c2464010000
                         push               ecx                                         // 0x0060e4ae    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000c0]           // 0x0060e4af    8d8c24c0000000
                         {disp32} mov       dword ptr [esp + 0x00000168], eax           // 0x0060e4b6    89842468010000
                         {disp32} fstp      dword ptr [esp + 0x0000016c]                // 0x0060e4bd    d99c246c010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e4c4    e8b79fe5ff
                         {disp32} fld       dword ptr [esp + 0x000000c0]                // 0x0060e4c9    d98424c0000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e4d0    d80d70eed300
                         {disp32} fld       dword ptr [esp + 0x000000bc]                // 0x0060e4d6    d98424bc000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e4dd    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e4e3    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e4e5    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e4eb    dfe0
                         test               ah, 0x41                                    // 0x0060e4ed    f6c441
                         {disp8} je         _jmp_addr_0x0060e4f9                        // 0x0060e4f0    7407
                         mov                eax, 0x00000001                             // 0x0060e4f2    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e4fb                        // 0x0060e4f7    eb02
_jmp_addr_0x0060e4f9:    xor.s              eax, eax                                    // 0x0060e4f9    33c0
_jmp_addr_0x0060e4fb:    test               bl, bl                                      // 0x0060e4fb    84db
                         {disp32} mov       byte ptr [esp + 0x000000c4], al             // 0x0060e4fd    888424c4000000
                         {disp8} je         _jmp_addr_0x0060e53e                        // 0x0060e504    7438
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e506    3a442420
                         {disp8} jne        _jmp_addr_0x0060e52c                        // 0x0060e50a    7520
                         {disp32} lea       edx, dword ptr [esp + 0x000000bc]           // 0x0060e50c    8d9424bc000000
                         push               edx                                         // 0x0060e513    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e514    8d4c241c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e518    e8232d0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e51d    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e523    dfe0
                         test               ah, 0x01                                    // 0x0060e525    f6c401
                         {disp8} jne        _jmp_addr_0x0060e53e                        // 0x0060e528    7514
                         {disp8} jmp        _jmp_addr_0x0060e58c                        // 0x0060e52a    eb60
_jmp_addr_0x0060e52c:    {disp32} mov       eax, dword ptr [esp + 0x000000c4]           // 0x0060e52c    8b8424c4000000
                         and                eax, 0x000000ff                             // 0x0060e533    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e538    89442454
                         {disp8} je         _jmp_addr_0x0060e58c                        // 0x0060e53c    744e
_jmp_addr_0x0060e53e:    {disp32} lea       ecx, dword ptr [esp + 0x000000bc]           // 0x0060e53e    8d8c24bc000000
                         push               ecx                                         // 0x0060e545    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e546    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e54a    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e54c    e8cf2c0000
                         {disp32} mov       dl, byte ptr [esp + 0x000000c4]             // 0x0060e551    8a9424c4000000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e558    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e55d    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e561    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e565    e8d62c0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e56a    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e570    dfe0
                         test               ah, 0x41                                    // 0x0060e572    f6c441
                         {disp8} je         _jmp_addr_0x0060e582                        // 0x0060e575    740b
                         mov                eax, 0x00000001                             // 0x0060e577    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e57c    88442420
                         {disp8} jmp        _jmp_addr_0x0060e58c                        // 0x0060e580    eb0a
_jmp_addr_0x0060e582:    xor.s              eax, eax                                    // 0x0060e582    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e584    88442420
                         {disp8} jmp        _jmp_addr_0x0060e58c                        // 0x0060e588    eb02
_jmp_addr_0x0060e58a:    fstp               st(0)                                       // 0x0060e58a    ddd8
_jmp_addr_0x0060e58c:    {disp8} fld        dword ptr [esp + 0x4c]                      // 0x0060e58c    d944244c
                         fld                st(0)                                       // 0x0060e590    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e592    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e598    dfe0
                         test               ah, 0x41                                    // 0x0060e59a    f6c441
                         {disp32} jne       _jmp_addr_0x0060e683                        // 0x0060e59d    0f85e0000000
                         fsqrt                                                          // 0x0060e5a3    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x44]                 // 0x0060e5a5    8b442444
                         {disp32} lea       ecx, dword ptr [esp + 0x000001a4]           // 0x0060e5a9    8d8c24a4010000
                         push               ecx                                         // 0x0060e5b0    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]           // 0x0060e5b1    8d8c24f0000000
                         {disp32} mov       dword ptr [esp + 0x000001a8], eax           // 0x0060e5b8    898424a8010000
                         fchs                                                           // 0x0060e5bf    d9e0
                         {disp32} fstp      dword ptr [esp + 0x000001ac]                // 0x0060e5c1    d99c24ac010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e5c8    e8b39ee5ff
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e5cd    6870eed300
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]           // 0x0060e5d2    8d8c24f0000000
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e5d9    e8622c0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e5de    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e5e4    dfe0
                         test               ah, 0x41                                    // 0x0060e5e6    f6c441
                         {disp8} je         _jmp_addr_0x0060e5f2                        // 0x0060e5e9    7407
                         mov                eax, 0x00000001                             // 0x0060e5eb    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e5f4                        // 0x0060e5f0    eb02
_jmp_addr_0x0060e5f2:    xor.s              eax, eax                                    // 0x0060e5f2    33c0
_jmp_addr_0x0060e5f4:    test               bl, bl                                      // 0x0060e5f4    84db
                         {disp32} mov       byte ptr [esp + 0x000000f4], al             // 0x0060e5f6    888424f4000000
                         {disp8} je         _jmp_addr_0x0060e637                        // 0x0060e5fd    7438
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e5ff    3a442420
                         {disp8} jne        _jmp_addr_0x0060e625                        // 0x0060e603    7520
                         {disp32} lea       edx, dword ptr [esp + 0x000000ec]           // 0x0060e605    8d9424ec000000
                         push               edx                                         // 0x0060e60c    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e60d    8d4c241c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e611    e82a2c0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e616    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e61c    dfe0
                         test               ah, 0x01                                    // 0x0060e61e    f6c401
                         {disp8} jne        _jmp_addr_0x0060e637                        // 0x0060e621    7514
                         {disp8} jmp        _jmp_addr_0x0060e685                        // 0x0060e623    eb60
_jmp_addr_0x0060e625:    {disp32} mov       eax, dword ptr [esp + 0x000000f4]           // 0x0060e625    8b8424f4000000
                         and                eax, 0x000000ff                             // 0x0060e62c    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e631    89442454
                         {disp8} je         _jmp_addr_0x0060e685                        // 0x0060e635    744e
_jmp_addr_0x0060e637:    {disp32} lea       ecx, dword ptr [esp + 0x000000ec]           // 0x0060e637    8d8c24ec000000
                         push               ecx                                         // 0x0060e63e    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e63f    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e643    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e645    e8d62b0000
                         {disp32} mov       dl, byte ptr [esp + 0x000000f4]             // 0x0060e64a    8a9424f4000000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e651    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e656    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e65a    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e65e    e8dd2b0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e663    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e669    dfe0
                         test               ah, 0x41                                    // 0x0060e66b    f6c441
                         {disp8} je         _jmp_addr_0x0060e67b                        // 0x0060e66e    740b
                         mov                eax, 0x00000001                             // 0x0060e670    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e675    88442420
                         {disp8} jmp        _jmp_addr_0x0060e685                        // 0x0060e679    eb0a
_jmp_addr_0x0060e67b:    xor.s              eax, eax                                    // 0x0060e67b    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e67d    88442420
                         {disp8} jmp        _jmp_addr_0x0060e685                        // 0x0060e681    eb02
_jmp_addr_0x0060e683:    fstp               st(0)                                       // 0x0060e683    ddd8
_jmp_addr_0x0060e685:    {disp8} fld        dword ptr [esp + 0x14]                      // 0x0060e685    d9442414
                         fld                st(0)                                       // 0x0060e689    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e68b    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e691    dfe0
                         test               ah, 0x41                                    // 0x0060e693    f6c441
                         {disp32} jne       _jmp_addr_0x0060e785                        // 0x0060e696    0f85e9000000
                         fsqrt                                                          // 0x0060e69c    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x48]                 // 0x0060e69e    8b442448
                         {disp32} lea       ecx, dword ptr [esp + 0x00000174]           // 0x0060e6a2    8d8c2474010000
                         push               ecx                                         // 0x0060e6a9    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000cc]           // 0x0060e6aa    8d8c24cc000000
                         {disp32} mov       dword ptr [esp + 0x0000017c], eax           // 0x0060e6b1    8984247c010000
                         {disp32} fstp      dword ptr [esp + 0x00000178]                // 0x0060e6b8    d99c2478010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e6bf    e8bc9de5ff
                         {disp32} fld       dword ptr [esp + 0x000000cc]                // 0x0060e6c4    d98424cc000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e70]           // 0x0060e6cb    d80d70eed300
                         {disp32} fld       dword ptr [esp + 0x000000c8]                // 0x0060e6d1    d98424c8000000
                         {disp32} fmul      dword ptr [data_bytes + 0x378e74]           // 0x0060e6d8    d80d74eed300
                         fsubp              st(1), st                                   // 0x0060e6de    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e6e0    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e6e6    dfe0
                         test               ah, 0x41                                    // 0x0060e6e8    f6c441
                         {disp8} je         _jmp_addr_0x0060e6f4                        // 0x0060e6eb    7407
                         mov                eax, 0x00000001                             // 0x0060e6ed    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e6f6                        // 0x0060e6f2    eb02
_jmp_addr_0x0060e6f4:    xor.s              eax, eax                                    // 0x0060e6f4    33c0
_jmp_addr_0x0060e6f6:    test               bl, bl                                      // 0x0060e6f6    84db
                         {disp32} mov       byte ptr [esp + 0x000000d0], al             // 0x0060e6f8    888424d0000000
                         {disp8} je         _jmp_addr_0x0060e739                        // 0x0060e6ff    7438
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e701    3a442420
                         {disp8} jne        _jmp_addr_0x0060e727                        // 0x0060e705    7520
                         {disp32} lea       edx, dword ptr [esp + 0x000000c8]           // 0x0060e707    8d9424c8000000
                         push               edx                                         // 0x0060e70e    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e70f    8d4c241c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e713    e8282b0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e718    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e71e    dfe0
                         test               ah, 0x01                                    // 0x0060e720    f6c401
                         {disp8} jne        _jmp_addr_0x0060e739                        // 0x0060e723    7514
                         {disp8} jmp        _jmp_addr_0x0060e787                        // 0x0060e725    eb60
_jmp_addr_0x0060e727:    {disp32} mov       eax, dword ptr [esp + 0x000000d0]           // 0x0060e727    8b8424d0000000
                         and                eax, 0x000000ff                             // 0x0060e72e    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e733    89442454
                         {disp8} je         _jmp_addr_0x0060e787                        // 0x0060e737    744e
_jmp_addr_0x0060e739:    {disp32} lea       ecx, dword ptr [esp + 0x000000c8]           // 0x0060e739    8d8c24c8000000
                         push               ecx                                         // 0x0060e740    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e741    8d4c241c
                         mov                bl, 0x01                                    // 0x0060e745    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e747    e8d42a0000
                         {disp32} mov       dl, byte ptr [esp + 0x000000d0]             // 0x0060e74c    8a9424d0000000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e753    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e758    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e75c    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e760    e8db2a0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e765    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e76b    dfe0
                         test               ah, 0x41                                    // 0x0060e76d    f6c441
                         {disp8} je         _jmp_addr_0x0060e77d                        // 0x0060e770    740b
                         mov                eax, 0x00000001                             // 0x0060e772    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e777    88442420
                         {disp8} jmp        _jmp_addr_0x0060e787                        // 0x0060e77b    eb0a
_jmp_addr_0x0060e77d:    xor.s              eax, eax                                    // 0x0060e77d    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e77f    88442420
                         {disp8} jmp        _jmp_addr_0x0060e787                        // 0x0060e783    eb02
_jmp_addr_0x0060e785:    fstp               st(0)                                       // 0x0060e785    ddd8
_jmp_addr_0x0060e787:    {disp8} fld        dword ptr [esp + 0x28]                      // 0x0060e787    d9442428
                         fld                st(0)                                       // 0x0060e78b    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e78d    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e793    dfe0
                         test               ah, 0x41                                    // 0x0060e795    f6c441
                         {disp32} jne       _jmp_addr_0x0060e87c                        // 0x0060e798    0f85de000000
                         fsqrt                                                          // 0x0060e79e    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x24]                 // 0x0060e7a0    8b442424
                         {disp32} lea       ecx, dword ptr [esp + 0x0000013c]           // 0x0060e7a4    8d8c243c010000
                         push               ecx                                         // 0x0060e7ab    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000000fc]           // 0x0060e7ac    8d8c24fc000000
                         {disp32} mov       dword ptr [esp + 0x00000144], eax           // 0x0060e7b3    89842444010000
                         fchs                                                           // 0x0060e7ba    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000140]                // 0x0060e7bc    d99c2440010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060e7c3    e8b89ce5ff
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e7c8    6870eed300
                         {disp32} lea       ecx, dword ptr [esp + 0x000000fc]           // 0x0060e7cd    8d8c24fc000000
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e7d4    e8672a0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e7d9    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e7df    dfe0
                         test               ah, 0x41                                    // 0x0060e7e1    f6c441
                         {disp8} je         _jmp_addr_0x0060e7ed                        // 0x0060e7e4    7407
                         mov                eax, 0x00000001                             // 0x0060e7e6    b801000000
                         {disp8} jmp        _jmp_addr_0x0060e7ef                        // 0x0060e7eb    eb02
_jmp_addr_0x0060e7ed:    xor.s              eax, eax                                    // 0x0060e7ed    33c0
_jmp_addr_0x0060e7ef:    test               bl, bl                                      // 0x0060e7ef    84db
                         {disp32} mov       byte ptr [esp + 0x00000100], al             // 0x0060e7f1    88842400010000
                         {disp8} je         _jmp_addr_0x0060e832                        // 0x0060e7f8    7438
                         cmp                al, byte ptr [esp + 0x20]                   // 0x0060e7fa    3a442420
                         {disp8} jne        _jmp_addr_0x0060e820                        // 0x0060e7fe    7520
                         {disp32} lea       edx, dword ptr [esp + 0x000000f8]           // 0x0060e800    8d9424f8000000
                         push               edx                                         // 0x0060e807    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e808    8d4c241c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e80c    e82f2a0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e811    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e817    dfe0
                         test               ah, 0x01                                    // 0x0060e819    f6c401
                         {disp8} jne        _jmp_addr_0x0060e832                        // 0x0060e81c    7514
                         {disp8} jmp        _jmp_addr_0x0060e87e                        // 0x0060e81e    eb5e
_jmp_addr_0x0060e820:    {disp32} mov       eax, dword ptr [esp + 0x00000100]           // 0x0060e820    8b842400010000
                         and                eax, 0x000000ff                             // 0x0060e827    25ff000000
                         {disp8} mov        dword ptr [esp + 0x54], eax                 // 0x0060e82c    89442454
                         {disp8} je         _jmp_addr_0x0060e87e                        // 0x0060e830    744c
_jmp_addr_0x0060e832:    {disp32} lea       ecx, dword ptr [esp + 0x000000f8]           // 0x0060e832    8d8c24f8000000
                         push               ecx                                         // 0x0060e839    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e83a    8d4c241c
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e83e    e8dd290000
                         {disp32} mov       dl, byte ptr [esp + 0x00000100]             // 0x0060e843    8a942400010000
                         push               0x00d3ee70 /* _Point2D_00d3ee70 */          // 0x0060e84a    6870eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                 // 0x0060e84f    8d4c241c
                         {disp8} mov        byte ptr [esp + 0x24], dl                   // 0x0060e853    88542424
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060e857    e8e4290000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060e85c    d81d98a38a00
                         fnstsw             ax                                          // 0x0060e862    dfe0
                         test               ah, 0x41                                    // 0x0060e864    f6c441
                         {disp8} je         _jmp_addr_0x0060e874                        // 0x0060e867    740b
                         mov                eax, 0x00000001                             // 0x0060e869    b801000000
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e86e    88442420
                         {disp8} jmp        _jmp_addr_0x0060e87e                        // 0x0060e872    eb0a
_jmp_addr_0x0060e874:    xor.s              eax, eax                                    // 0x0060e874    33c0
                         {disp8} mov        byte ptr [esp + 0x20], al                   // 0x0060e876    88442420
                         {disp8} jmp        _jmp_addr_0x0060e87e                        // 0x0060e87a    eb02
_jmp_addr_0x0060e87c:    fstp               st(0)                                       // 0x0060e87c    ddd8
_jmp_addr_0x0060e87e:    {disp8} fld        dword ptr [esp + 0x18]                      // 0x0060e87e    d9442418
                         {disp32} lea       eax, dword ptr [esp + 0x0000014c]           // 0x0060e882    8d84244c010000
                         {disp8} fadd       dword ptr [esp + 0x68]                      // 0x0060e889    d8442468
                         push               eax                                         // 0x0060e88d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000290]           // 0x0060e88e    8d8c2490020000
                         push               ecx                                         // 0x0060e895    51
                         {disp32} fstp      dword ptr [esp + 0x00000154]                // 0x0060e896    d99c2454010000
                         {disp8} fld        dword ptr [esp + 0x74]                      // 0x0060e89d    d9442474
                         {disp8} fadd       dword ptr [esp + 0x24]                      // 0x0060e8a1    d8442424
                         {disp32} fstp      dword ptr [esp + 0x00000158]                // 0x0060e8a5    d99c2458010000
                         {disp8} mov        ebx, dword ptr [ebp + 0x00]                 // 0x0060e8ac    8b5d00
                         call               _jmp_addr_0x005357c0                        // 0x0060e8af    e80c6ff2ff
                         add                esp, 0x08                                   // 0x0060e8b4    83c408
                         push               eax                                         // 0x0060e8b7    50
                         mov.s              ecx, ebp                                    // 0x0060e8b8    8bcd
                         call               dword ptr [ebx + 0x55c]                     // 0x0060e8ba    ff935c050000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                 // 0x0060e8c0    8b5500
                         {disp32} lea       eax, dword ptr [esp + 0x00000250]           // 0x0060e8c3    8d842450020000
                         push               eax                                         // 0x0060e8ca    50
                         mov.s              ecx, ebp                                    // 0x0060e8cb    8bcd
                         call               dword ptr [edx + 0x100]                     // 0x0060e8cd    ff9200010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x22e2c8]      // 0x0060e8d3    8b0dc842bf00
                         dec                ecx                                         // 0x0060e8d9    49
                         mov.s              ebx, eax                                    // 0x0060e8da    8bd8
                         {disp32} mov       dword ptr [data_bytes + 0x22e2c8], ecx      // 0x0060e8dc    890dc842bf00
                         mov.s              ecx, esi                                    // 0x0060e8e2    8bce
                         {disp8} mov        dword ptr [esp + 0x14], ebx                 // 0x0060e8e4    895c2414
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060e8e8    e873bdffff
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                 // 0x0060e8ed    8b4808
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                 // 0x0060e8f0    894c242c
                         mov.s              ecx, esi                                    // 0x0060e8f4    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060e8f6    e865bdffff
                         fld                dword ptr [eax]                             // 0x0060e8fb    d900
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                 // 0x0060e8fd    8b54242c
                         {disp8} lea        eax, dword ptr [esp + 0x58]                 // 0x0060e901    8d442458
                         push               edi                                         // 0x0060e905    57
                         {disp32} fstp      dword ptr [esp + 0x00000088]                // 0x0060e906    d99c2488000000
                         push               eax                                         // 0x0060e90d    50
                         {disp32} mov       dword ptr [esp + 0x00000090], edx           // 0x0060e90e    89942490000000
                         call               _jmp_addr_0x0060c180                        // 0x0060e915    e866d8ffff
                         add                esp, 0x08                                   // 0x0060e91a    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                 // 0x0060e91d    8d4c2458
                         push               ecx                                         // 0x0060e921    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000090]           // 0x0060e922    8d8c2490000000
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e929    e8f2280000
                         {disp8} fld        dword ptr [esp + 0x58]                      // 0x0060e92e    d9442458
                         {disp32} fsub      dword ptr [esp + 0x00000084]                // 0x0060e932    d8a42484000000
                         {disp8} lea        edx, dword ptr [esp + 0x58]                 // 0x0060e939    8d542458
                         push               edx                                         // 0x0060e93d    52
                         mov                ecx, OFFSET _Point2D_00d3ee70               // 0x0060e93e    b970eed300
                         {disp8} fstp       dword ptr [esp + 0x5c]                      // 0x0060e943    d95c245c
                         {disp8} fld        dword ptr [esp + 0x60]                      // 0x0060e947    d9442460
                         {disp32} fsub      dword ptr [esp + 0x0000008c]                // 0x0060e94b    d8a4248c000000
                         {disp8} fstp       dword ptr [esp + 0x60]                      // 0x0060e952    d95c2460
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060e956    e8c5280000
                         mov.s              ecx, esi                                    // 0x0060e95b    8bce
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ          // 0x0060e95d    e8febcffff
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                 // 0x0060e962    8b400c
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                 // 0x0060e965    8d4c2458
                         {disp8} mov        dword ptr [esp + 0x70], eax                 // 0x0060e969    89442470
                         call               ?Normalize@Point2D@@QAEMXZ                  // 0x0060e96d    e8be290000
                         {disp8} fdiv       dword ptr [esp + 0x70]                      // 0x0060e972    d8742470
                         {disp32} lea       ecx, dword ptr [esp + 0x00000268]           // 0x0060e976    8d8c2468020000
                         push               ecx                                         // 0x0060e97d    51
                         mov.s              ecx, esi                                    // 0x0060e97e    8bce
                         {disp32} lea       edi, dword ptr [ebp + 0x00000080]           // 0x0060e980    8dbd80000000
                         {disp32} fsub      qword ptr [rdata_bytes + 0x6c440]           // 0x0060e986    dc2540549100
                         {disp8} fstp       dword ptr [esp + 0x54]                      // 0x0060e98c    d95c2454
                         call               _jmp_addr_0x00609cc0                        // 0x0060e990    e82bb3ffff
                         push               eax                                         // 0x0060e995    50
                         mov.s              ecx, edi                                    // 0x0060e996    8bcf
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                        // 0x0060e998    e81376ffff
                         {disp8} fld        dword ptr [esp + 0x70]                      // 0x0060e99d    d9442470
                         {disp8} fmul       dword ptr [esp + 0x70]                      // 0x0060e9a1    d84c2470
                         fcompp                                                         // 0x0060e9a5    ded9
                         fnstsw             ax                                          // 0x0060e9a7    dfe0
                         test               ah, 0x41                                    // 0x0060e9a9    f6c441
                         {disp8} mov        byte ptr [esp + 0x13], 0x01                 // 0x0060e9ac    c644241301
                         {disp8} je         _jmp_addr_0x0060e9b8                        // 0x0060e9b1    7405
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                 // 0x0060e9b3    c644241300
_jmp_addr_0x0060e9b8:    push               ebx                                         // 0x0060e9b8    53
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                 // 0x0060e9b9    8d4c2478
                         call               _jmp_addr_0x0060f630                        // 0x0060e9bd    e86e0c0000
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060e9c2    8b842480000000
                         test               eax, eax                                    // 0x0060e9c9    85c0
                         {disp8} jne        _jmp_addr_0x0060e9e6                        // 0x0060e9cb    7519
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060e9cd    8b44247c
                         test               eax, eax                                    // 0x0060e9d1    85c0
                         {disp8} jne        _jmp_addr_0x0060e9e6                        // 0x0060e9d3    7511
                         {disp8} mov        al, byte ptr [esp + 0x13]                   // 0x0060e9d5    8a442413
                         test               al, al                                      // 0x0060e9d9    84c0
                         {disp8} jne        _jmp_addr_0x0060e9e6                        // 0x0060e9db    7509
                         {disp8} mov        byte ptr [ebp + 0x74], -0x01                // 0x0060e9dd    c64574ff
                         {disp32} jmp       _jmp_addr_0x0060ef2e                        // 0x0060e9e1    e948050000
_jmp_addr_0x0060e9e6:    push               0x00000736                                  // 0x0060e9e6    6836070000
                         push               0x00bf42a4                                  // 0x0060e9eb    68a442bf00
                         push               0x2c                                        // 0x0060e9f0    6a2c
                         call               ___nw__FUl                                  // 0x0060e9f2    e899cd1c00
                         add                esp, 0x0c                                   // 0x0060e9f7    83c40c
                         test               eax, eax                                    // 0x0060e9fa    85c0
                         {disp8} je         _jmp_addr_0x0060ea09                        // 0x0060e9fc    740b
                         mov.s              ecx, eax                                    // 0x0060e9fe    8bc8
                         call               _jmp_addr_0x00616ef0                        // 0x0060ea00    e8eb840000
                         mov.s              esi, eax                                    // 0x0060ea05    8bf0
                         {disp8} jmp        _jmp_addr_0x0060ea0b                        // 0x0060ea07    eb02
_jmp_addr_0x0060ea09:    xor.s              esi, esi                                    // 0x0060ea09    33f6
_jmp_addr_0x0060ea0b:    push               0x00000736                                  // 0x0060ea0b    6836070000
                         push               0x00bf42a4                                  // 0x0060ea10    68a442bf00
                         push               0x2c                                        // 0x0060ea15    6a2c
                         call               ___nw__FUl                                  // 0x0060ea17    e874cd1c00
                         add                esp, 0x0c                                   // 0x0060ea1c    83c40c
                         test               eax, eax                                    // 0x0060ea1f    85c0
                         {disp8} je         _jmp_addr_0x0060ea2e                        // 0x0060ea21    740b
                         mov.s              ecx, eax                                    // 0x0060ea23    8bc8
                         call               _jmp_addr_0x00616ef0                        // 0x0060ea25    e8c6840000
                         mov.s              ebx, eax                                    // 0x0060ea2a    8bd8
                         {disp8} jmp        _jmp_addr_0x0060ea30                        // 0x0060ea2c    eb02
_jmp_addr_0x0060ea2e:    xor.s              ebx, ebx                                    // 0x0060ea2e    33db
_jmp_addr_0x0060ea30:    {disp8} mov        al, byte ptr [esp + 0x13]                   // 0x0060ea30    8a442413
                         test               al, al                                      // 0x0060ea34    84c0
                         {disp8} mov        ebp, dword ptr [esp + 0x70]                 // 0x0060ea36    8b6c2470
                         {disp32} je        _jmp_addr_0x0060eb38                        // 0x0060ea3a    0f84f8000000
                         {disp32} lea       edx, dword ptr [esp + 0x000001ac]           // 0x0060ea40    8d9424ac010000
                         push               edi                                         // 0x0060ea47    57
                         push               edx                                         // 0x0060ea48    52
                         call               _jmp_addr_0x0060c180                        // 0x0060ea49    e832d7ffff
                         add                esp, 0x08                                   // 0x0060ea4e    83c408
                         {disp32} lea       eax, dword ptr [esp + 0x00000084]           // 0x0060ea51    8d842484000000
                         push               eax                                         // 0x0060ea58    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000024c]           // 0x0060ea59    8d8c244c020000
                         push               ecx                                         // 0x0060ea60    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000001b4]           // 0x0060ea61    8d8c24b4010000
                         call               _jmp_addr_0x006110a0                        // 0x0060ea68    e833260000
                         push               eax                                         // 0x0060ea6d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000224]           // 0x0060ea6e    8d8c2424020000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060ea75    e8069ae5ff
                         {disp32} lea       edx, dword ptr [esp + 0x00000220]           // 0x0060ea7a    8d942420020000
                         {disp8} lea        edi, dword ptr [esi + 0x0c]                 // 0x0060ea81    8d7e0c
                         push               edx                                         // 0x0060ea84    52
                         mov.s              ecx, edi                                    // 0x0060ea85    8bcf
                         call               @__as__17Point2DCompare_1_@12               // 0x0060ea87    e8940c0000
                         fld                dword ptr [edi]                             // 0x0060ea8c    d907
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ea8e    d81d98a38a00
                         fnstsw             ax                                          // 0x0060ea94    dfe0
                         test               ah, 0x40                                    // 0x0060ea96    f6c440
                         {disp8} je         _jmp_addr_0x0060eacd                        // 0x0060ea99    7432
                         {disp8} fld        dword ptr [esi + 0x10]                      // 0x0060ea9b    d94610
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ea9e    d81d98a38a00
                         fnstsw             ax                                          // 0x0060eaa4    dfe0
                         test               ah, 0x40                                    // 0x0060eaa6    f6c440
                         {disp8} je         _jmp_addr_0x0060eacd                        // 0x0060eaa9    7422
                         {disp8} lea        eax, dword ptr [esp + 0x58]                 // 0x0060eaab    8d442458
                         push               eax                                         // 0x0060eaaf    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000230]           // 0x0060eab0    8d8c2430020000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060eab7    e8c499e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x0000022c]           // 0x0060eabc    8d8c242c020000
                         push               ecx                                         // 0x0060eac3    51
                         mov.s              ecx, esi                                    // 0x0060eac4    8bce
                         call               @__as__17Point2DCompare_1_@12               // 0x0060eac6    e8550c0000
                         {disp8} jmp        _jmp_addr_0x0060eaf8                        // 0x0060eacb    eb2b
_jmp_addr_0x0060eacd:    fld                dword ptr [edi]                             // 0x0060eacd    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87680]           // 0x0060eacf    d80d80069300
                         {disp8} fld        dword ptr [esi + 0x10]                      // 0x0060ead5    d94610
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8767c]           // 0x0060ead8    d80d7c069300
                         fsubp              st(1), st                                   // 0x0060eade    dee9
                         fstp               dword ptr [esi]                             // 0x0060eae0    d91e
                         {disp8} fld        dword ptr [esi + 0x10]                      // 0x0060eae2    d94610
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87680]           // 0x0060eae5    d80d80069300
                         fld                dword ptr [edi]                             // 0x0060eaeb    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8767c]           // 0x0060eaed    d80d7c069300
                         faddp              st(1), st                                   // 0x0060eaf3    dec1
                         {disp8} fstp       dword ptr [esi + 0x04]                      // 0x0060eaf5    d95e04
_jmp_addr_0x0060eaf8:    push               esi                                         // 0x0060eaf8    56
                         mov.s              ecx, edi                                    // 0x0060eaf9    8bcf
                         call               @__as__17Point2DCompare_1_@12               // 0x0060eafb    e8200c0000
                         mov.s              ecx, edi                                    // 0x0060eb00    8bcf
                         call               @Resolve__Point2DCompare_1_@4               // 0x0060eb02    e8b9160000
                         {disp8} mov        al, byte ptr [esi + 0x14]                   // 0x0060eb07    8a4614
                         {disp8} mov        byte ptr [esi + 0x08], al                   // 0x0060eb0a    884608
                         {disp32} mov       byte ptr [esp + 0x00000204], al             // 0x0060eb0d    88842404020000
                         push               edi                                         // 0x0060eb14    57
                         {disp32} lea       ecx, dword ptr [esp + 0x00000200]           // 0x0060eb15    8d8c2400020000
                         {disp8} mov        dword ptr [esi + 0x28], 0x00000000          // 0x0060eb1c    c7462800000000
                         {disp8} mov        dword ptr [esi + 0x1c], 0x3f800000          // 0x0060eb23    c7461c0000803f
                         call               @__as__17Point2DCompare_1_@12               // 0x0060eb2a    e8f10b0000
                         {disp8} mov        edi, dword ptr [esp + 0x14]                 // 0x0060eb2f    8b7c2414
                         {disp32} jmp       _jmp_addr_0x0060ebe4                        // 0x0060eb33    e9ac000000
_jmp_addr_0x0060eb38:    {disp32} lea       edx, dword ptr [esp + 0x0000008c]           // 0x0060eb38    8d94248c000000
                         push               edx                                         // 0x0060eb3f    52
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                 // 0x0060eb40    8d44245c
                         push               eax                                         // 0x0060eb44    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]           // 0x0060eb45    8d8c248c000000
                         push               ecx                                         // 0x0060eb4c    51
                         push               ebp                                         // 0x0060eb4d    55
                         {disp32} lea       edx, dword ptr [esp + 0x00000084]           // 0x0060eb4e    8d942484000000
                         push               edx                                         // 0x0060eb55    52
                         mov.s              ecx, esi                                    // 0x0060eb56    8bce
                         call               _jmp_addr_0x00616d00                        // 0x0060eb58    e8a3810000
                         {disp8} fld        dword ptr [esi + 0x1c]                      // 0x0060eb5d    d9461c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060eb60    d81d98a38a00
                         {disp8} mov        edi, dword ptr [esp + 0x14]                 // 0x0060eb66    8b7c2414
                         fnstsw             ax                                          // 0x0060eb6a    dfe0
                         test               ah, 0x41                                    // 0x0060eb6c    f6c441
                         {disp8} je         _jmp_addr_0x0060ebc7                        // 0x0060eb6f    7456
_jmp_addr_0x0060eb71:    push               edi                                         // 0x0060eb71    57
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                 // 0x0060eb72    8d4c2478
                         call               _jmp_addr_0x0060d520                        // 0x0060eb76    e8a5e9ffff
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060eb7b    8b842480000000
                         test               eax, eax                                    // 0x0060eb82    85c0
                         {disp8} jne        _jmp_addr_0x0060eb92                        // 0x0060eb84    750c
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060eb86    8b44247c
                         test               eax, eax                                    // 0x0060eb8a    85c0
                         {disp32} je        _jmp_addr_0x0060ecc3                        // 0x0060eb8c    0f8431010000
_jmp_addr_0x0060eb92:    {disp32} lea       eax, dword ptr [esp + 0x0000008c]           // 0x0060eb92    8d84248c000000
                         push               eax                                         // 0x0060eb99    50
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                 // 0x0060eb9a    8d4c245c
                         push               ecx                                         // 0x0060eb9e    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]           // 0x0060eb9f    8d94248c000000
                         push               edx                                         // 0x0060eba6    52
                         push               ebp                                         // 0x0060eba7    55
                         {disp32} lea       eax, dword ptr [esp + 0x00000084]           // 0x0060eba8    8d842484000000
                         push               eax                                         // 0x0060ebaf    50
                         mov.s              ecx, esi                                    // 0x0060ebb0    8bce
                         call               _jmp_addr_0x00616d00                        // 0x0060ebb2    e849810000
                         {disp8} fld        dword ptr [esi + 0x1c]                      // 0x0060ebb7    d9461c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ebba    d81d98a38a00
                         fnstsw             ax                                          // 0x0060ebc0    dfe0
                         test               ah, 0x41                                    // 0x0060ebc2    f6c441
                         {disp8} jne        _jmp_addr_0x0060eb71                        // 0x0060ebc5    75aa
_jmp_addr_0x0060ebc7:    {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060ebc7    8b842480000000
                         test               eax, eax                                    // 0x0060ebce    85c0
                         {disp8} jne        _jmp_addr_0x0060ebda                        // 0x0060ebd0    7508
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060ebd2    8b44247c
                         test               eax, eax                                    // 0x0060ebd6    85c0
                         {disp8} je         _jmp_addr_0x0060ebe4                        // 0x0060ebd8    740a
_jmp_addr_0x0060ebda:    push               edi                                         // 0x0060ebda    57
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                 // 0x0060ebdb    8d4c2478
                         call               _jmp_addr_0x0060d520                        // 0x0060ebdf    e83ce9ffff
_jmp_addr_0x0060ebe4:    {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060ebe4    8b842480000000
                         test               eax, eax                                    // 0x0060ebeb    85c0
                         {disp8} jne        _jmp_addr_0x0060ebfb                        // 0x0060ebed    750c
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060ebef    8b44247c
                         test               eax, eax                                    // 0x0060ebf3    85c0
                         {disp32} je        _jmp_addr_0x0060ecc3                        // 0x0060ebf5    0f84c8000000
_jmp_addr_0x0060ebfb:    {disp32} lea       ecx, dword ptr [esp + 0x0000008c]           // 0x0060ebfb    8d8c248c000000
                         push               ecx                                         // 0x0060ec02    51
                         {disp8} lea        edx, dword ptr [esp + 0x5c]                 // 0x0060ec03    8d54245c
                         push               edx                                         // 0x0060ec07    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000008c]           // 0x0060ec08    8d84248c000000
                         push               eax                                         // 0x0060ec0f    50
                         push               ebp                                         // 0x0060ec10    55
                         {disp32} lea       ecx, dword ptr [esp + 0x00000084]           // 0x0060ec11    8d8c2484000000
                         push               ecx                                         // 0x0060ec18    51
                         mov.s              ecx, ebx                                    // 0x0060ec19    8bcb
                         call               _jmp_addr_0x00616d00                        // 0x0060ec1b    e8e0800000
                         {disp8} fld        dword ptr [ebx + 0x1c]                      // 0x0060ec20    d9431c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ec23    d81d98a38a00
                         fnstsw             ax                                          // 0x0060ec29    dfe0
                         test               ah, 0x41                                    // 0x0060ec2b    f6c441
                         {disp8} je         _jmp_addr_0x0060ec82                        // 0x0060ec2e    7452
_jmp_addr_0x0060ec30:    push               edi                                         // 0x0060ec30    57
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                 // 0x0060ec31    8d4c2478
                         call               _jmp_addr_0x0060d520                        // 0x0060ec35    e8e6e8ffff
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060ec3a    8b842480000000
                         test               eax, eax                                    // 0x0060ec41    85c0
                         {disp8} jne        _jmp_addr_0x0060ec4d                        // 0x0060ec43    7508
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060ec45    8b44247c
                         test               eax, eax                                    // 0x0060ec49    85c0
                         {disp8} je         _jmp_addr_0x0060ecc3                        // 0x0060ec4b    7476
_jmp_addr_0x0060ec4d:    {disp32} lea       edx, dword ptr [esp + 0x0000008c]           // 0x0060ec4d    8d94248c000000
                         push               edx                                         // 0x0060ec54    52
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                 // 0x0060ec55    8d44245c
                         push               eax                                         // 0x0060ec59    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]           // 0x0060ec5a    8d8c248c000000
                         push               ecx                                         // 0x0060ec61    51
                         push               ebp                                         // 0x0060ec62    55
                         {disp32} lea       edx, dword ptr [esp + 0x00000084]           // 0x0060ec63    8d942484000000
                         push               edx                                         // 0x0060ec6a    52
                         mov.s              ecx, ebx                                    // 0x0060ec6b    8bcb
                         call               _jmp_addr_0x00616d00                        // 0x0060ec6d    e88e800000
                         {disp8} fld        dword ptr [ebx + 0x1c]                      // 0x0060ec72    d9431c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ec75    d81d98a38a00
                         fnstsw             ax                                          // 0x0060ec7b    dfe0
                         test               ah, 0x41                                    // 0x0060ec7d    f6c441
                         {disp8} jne        _jmp_addr_0x0060ec30                        // 0x0060ec80    75ae
_jmp_addr_0x0060ec82:    {disp32} mov       eax, dword ptr [esp + 0x00000080]           // 0x0060ec82    8b842480000000
                         test               eax, eax                                    // 0x0060ec89    85c0
                         {disp8} jne        _jmp_addr_0x0060ec95                        // 0x0060ec8b    7508
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060ec8d    8b44247c
                         test               eax, eax                                    // 0x0060ec91    85c0
                         {disp8} je         _jmp_addr_0x0060ecc3                        // 0x0060ec93    742e
_jmp_addr_0x0060ec95:    push               esi                                         // 0x0060ec95    56
                         mov.s              ecx, ebx                                    // 0x0060ec96    8bcb
                         call               _jmp_addr_0x00616f10                        // 0x0060ec98    e873820000
                         test               eax, eax                                    // 0x0060ec9d    85c0
                         {disp32} je        _jmp_addr_0x0060ebda                        // 0x0060ec9f    0f8435ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                 // 0x0060eca5    8b44247c
                         test               eax, eax                                    // 0x0060eca9    85c0
                         {disp8} je         _jmp_addr_0x0060ecb8                        // 0x0060ecab    740b
                         {disp8} mov        eax, dword ptr [esi + 0x28]                 // 0x0060ecad    8b4628
                         test               eax, eax                                    // 0x0060ecb0    85c0
                         {disp32} je        _jmp_addr_0x0060ebda                        // 0x0060ecb2    0f8422ffffff
_jmp_addr_0x0060ecb8:    mov.s              eax, esi                                    // 0x0060ecb8    8bc6
                         mov.s              esi, ebx                                    // 0x0060ecba    8bf3
                         mov.s              ebx, eax                                    // 0x0060ecbc    8bd8
                         {disp32} jmp       _jmp_addr_0x0060ebda                        // 0x0060ecbe    e917ffffff
_jmp_addr_0x0060ecc3:    {disp8} fld        dword ptr [esi + 0x1c]                      // 0x0060ecc3    d9461c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ecc6    d81d98a38a00
                         fnstsw             ax                                          // 0x0060eccc    dfe0
                         test               ah, 0x41                                    // 0x0060ecce    f6c441
                         {disp32} jne       _jmp_addr_0x0060ef13                        // 0x0060ecd1    0f853c020000
                         mov.s              ecx, esi                                    // 0x0060ecd7    8bce
                         call               _jmp_addr_0x00616c70                        // 0x0060ecd9    e8927f0000
                         {disp8} mov        al, byte ptr [esp + 0x13]                   // 0x0060ecde    8a442413
                         test               al, al                                      // 0x0060ece2    84c0
                         {disp32} je        _jmp_addr_0x0060ed6d                        // 0x0060ece4    0f8483000000
                         {disp8} fld        dword ptr [esi + 0x18]                      // 0x0060ecea    d94618
                         {disp8} lea        edi, dword ptr [esi + 0x0c]                 // 0x0060eced    8d7e0c
                         fmul               dword ptr [edi]                             // 0x0060ecf0    d80f
                         {disp32} lea       ecx, dword ptr [esp + 0x000001b4]           // 0x0060ecf2    8d8c24b4010000
                         {disp8} fld        dword ptr [esi + 0x20]                      // 0x0060ecf9    d94620
                         {disp8} fmul       dword ptr [esi + 0x10]                      // 0x0060ecfc    d84e10
                         faddp              st(1), st                                   // 0x0060ecff    dec1
                         {disp8} fld        dword ptr [esi + 0x18]                      // 0x0060ed01    d94618
                         {disp8} fmul       dword ptr [esi + 0x10]                      // 0x0060ed04    d84e10
                         {disp8} fld        dword ptr [esi + 0x20]                      // 0x0060ed07    d94620
                         fmul               dword ptr [edi]                             // 0x0060ed0a    d80f
                         fsubp              st(1), st                                   // 0x0060ed0c    dee9
                         fld                st(0)                                       // 0x0060ed0e    d9c0
                         {disp8} fmul       dword ptr [esi + 0x20]                      // 0x0060ed10    d84e20
                         fld                st(2)                                       // 0x0060ed13    d9c2
                         {disp8} fmul       dword ptr [esi + 0x18]                      // 0x0060ed15    d84e18
                         faddp              st(1), st                                   // 0x0060ed18    dec1
                         {disp32} fstp      dword ptr [esp + 0x000001b4]                // 0x0060ed1a    d99c24b4010000
                         {disp8} fmul       dword ptr [esi + 0x18]                      // 0x0060ed21    d84e18
                         fxch               st(1)                                       // 0x0060ed24    d9c9
                         {disp8} fmul       dword ptr [esi + 0x20]                      // 0x0060ed26    d84e20
                         fsubp              st(1), st                                   // 0x0060ed29    dee9
                         {disp32} fstp      dword ptr [esp + 0x000001b8]                // 0x0060ed2b    d99c24b8010000
                         call               @Resolve__Point2DCompare_1_@4               // 0x0060ed32    e889140000
                         {disp32} lea       eax, dword ptr [esp + 0x000001b4]           // 0x0060ed37    8d8424b4010000
                         push               eax                                         // 0x0060ed3e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000200]           // 0x0060ed3f    8d8c2400020000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_1_@12                        // 0x0060ed46    e835140000
                         test               eax, eax                                    // 0x0060ed4b    85c0
                         {disp8} je         _jmp_addr_0x0060ed6d                        // 0x0060ed4d    741e
                         {disp32} lea       ecx, dword ptr [esp + 0x000001fc]           // 0x0060ed4f    8d8c24fc010000
                         push               ecx                                         // 0x0060ed56    51
                         mov.s              ecx, edi                                    // 0x0060ed57    8bcf
                         call               @__as__17Point2DCompare_1_@12               // 0x0060ed59    e8c2090000
                         push               eax                                         // 0x0060ed5e    50
                         mov.s              ecx, esi                                    // 0x0060ed5f    8bce
                         call               @__as__17Point2DCompare_1_@12               // 0x0060ed61    e8ba090000
                         {disp8} mov        dword ptr [esi + 0x28], 0x00000000          // 0x0060ed66    c7462800000000
_jmp_addr_0x0060ed6d:    {disp8} lea        edi, dword ptr [esi + 0x0c]                 // 0x0060ed6d    8d7e0c
                         mov.s              ecx, edi                                    // 0x0060ed70    8bcf
                         call               ?Normalize@Point2D@@QAEMXZ                  // 0x0060ed72    e8b9250000
                         fstp               st(0)                                       // 0x0060ed77    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x58]                 // 0x0060ed79    8d542458
                         push               edx                                         // 0x0060ed7d    52
                         mov.s              ecx, edi                                    // 0x0060ed7e    8bcf
                         call               @DotProduct__7Point2DFP7Point2D@12          // 0x0060ed80    e88b250000
                         call               __CIacos                                    // 0x0060ed85    e856891b00
                         {disp8} fstp       dword ptr [esp + 0x24]                      // 0x0060ed8a    d95c2424
                         {disp8} lea        eax, dword ptr [esp + 0x58]                 // 0x0060ed8e    8d442458
                         push               eax                                         // 0x0060ed92    50
                         mov.s              ecx, edi                                    // 0x0060ed93    8bcf
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060ed95    e8a6240000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060ed9a    d81d98a38a00
                         fnstsw             ax                                          // 0x0060eda0    dfe0
                         test               ah, 0x41                                    // 0x0060eda2    f6c441
                         {disp8} jne        _jmp_addr_0x0060edb3                        // 0x0060eda5    750c
                         {disp32} fld       dword ptr [__real@40c90fdb]                 // 0x0060eda7    d90510b28a00
                         {disp8} fsub       dword ptr [esp + 0x24]                      // 0x0060edad    d8642424
                         {disp8} jmp        _jmp_addr_0x0060edb7                        // 0x0060edb1    eb04
_jmp_addr_0x0060edb3:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060edb3    d9442424
_jmp_addr_0x0060edb7:    {disp8} mov        edx, dword ptr [esp + 0x30]                 // 0x0060edb7    8b542430
                         {disp8} fmul       dword ptr [esp + 0x70]                      // 0x0060edbb    d84c2470
                         xor.s              ecx, ecx                                    // 0x0060edbf    33c9
                         {disp8} mov        cx, word ptr [edx + 0x5a]                   // 0x0060edc1    668b4a5a
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]            // 0x0060edc5    d80d08c48a00
                         push               ebp                                         // 0x0060edcb    55
                         {disp32} lea       eax, dword ptr [esp + 0x0000023c]           // 0x0060edcc    8d84243c020000
                         push               eax                                         // 0x0060edd3    50
                         {disp32} mov       byte ptr [_DAT_00d3eed1], 0x01              // 0x0060edd4    c605d1eed30001
                         {disp8} mov        dword ptr [esp + 0x54], ecx                 // 0x0060eddb    894c2454
                         {disp8} fild       dword ptr [esp + 0x54]                      // 0x0060eddf    db442454
                         mov.s              ecx, edi                                    // 0x0060ede3    8bcf
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]            // 0x0060ede5    d80d14b48a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x1c838]           // 0x0060edeb    dc0d38588c00
                         fdivp              st(1), st                                   // 0x0060edf1    def9
                         {disp8} fstp       dword ptr [esp + 0x2c]                      // 0x0060edf3    d95c242c
                         call               @__ml__7Point2DCFf@16                       // 0x0060edf7    e894230000
                         push               eax                                         // 0x0060edfc    50
                         mov                ecx, OFFSET _Point2D_00d3ee60               // 0x0060edfd    b960eed300
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060ee02    e819240000
                         {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060ee07    d9442424
                         {disp32} fcomp     dword ptr [__real@437f0000]                 // 0x0060ee0b    d81d70b28a00
                         fnstsw             ax                                          // 0x0060ee11    dfe0
                         test               ah, 0x41                                    // 0x0060ee13    f6c441
                         {disp8} jne        _jmp_addr_0x0060ee25                        // 0x0060ee16    750d
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                 // 0x0060ee18    8b4c2430
                         {disp8} mov        byte ptr [ecx + 0x74], -0x01                // 0x0060ee1c    c64174ff
                         {disp32} jmp       _jmp_addr_0x0060ef1b                        // 0x0060ee20    e9f6000000
_jmp_addr_0x0060ee25:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060ee25    d9442424
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]            // 0x0060ee29    d81d90a38a00
                         fnstsw             ax                                          // 0x0060ee2f    dfe0
                         test               ah, 0x01                                    // 0x0060ee31    f6c401
                         {disp32} je        _jmp_addr_0x0060eee6                        // 0x0060ee34    0f84ac000000
                         {disp32} mov       byte ptr [_DAT_00d3eed1], 0x00              // 0x0060ee3a    c605d1eed30000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                 // 0x0060ee41    8b4628
                         test               eax, eax                                    // 0x0060ee44    85c0
                         {disp8} jne        _jmp_addr_0x0060ee82                        // 0x0060ee46    753a
                         {disp8} mov        edi, dword ptr [esp + 0x30]                 // 0x0060ee48    8b7c2430
                         mov.s              ecx, edi                                    // 0x0060ee4c    8bcf
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ          // 0x0060ee4e    e84dd1ffff
                         push               edi                                         // 0x0060ee53    57
                         {disp8} lea        ecx, dword ptr [edi + 0x70]                 // 0x0060ee54    8d4f70
                         {disp8} mov        byte ptr [edi + 0x78], 0x10                 // 0x0060ee57    c6477810
                         call               _jmp_addr_0x0060a9f0                        // 0x0060ee5b    e890bbffff
                         {disp8} mov        byte ptr [edi + 0x5e], 0x0b                 // 0x0060ee60    c6475e0b
                         {disp32} inc       dword ptr [data_bytes + 0x22e2c8]           // 0x0060ee64    ff05c842bf00
_jmp_addr_0x0060ee6a:    push               esi                                         // 0x0060ee6a    56
                         call               ??3@YAXPAX@Z                                // 0x0060ee6b    e828001a00
                         push               ebx                                         // 0x0060ee70    53
                         call               ??3@YAXPAX@Z                                // 0x0060ee71    e822001a00
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                 // 0x0060ee76    8b6c2438
                         add                esp, 0x08                                   // 0x0060ee7a    83c408
                         {disp32} jmp       _jmp_addr_0x0060f570                        // 0x0060ee7d    e9ee060000
_jmp_addr_0x0060ee82:    {disp8} mov        dl, byte ptr [esi + 0x24]                   // 0x0060ee82    8a5624
                         {disp8} mov        edi, dword ptr [esp + 0x30]                 // 0x0060ee85    8b7c2430
                         push               0x0                                         // 0x0060ee89    6a00
                         {disp32} mov       byte ptr [_DAT_00d3eed0], dl                // 0x0060ee8b    8815d0eed300
                         {disp8} mov        eax, dword ptr [esi + 0x28]                 // 0x0060ee91    8b4628
                         push               edi                                         // 0x0060ee94    57
                         push               eax                                         // 0x0060ee95    50
                         {disp8} lea        ecx, dword ptr [edi + 0x70]                 // 0x0060ee96    8d4f70
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                        // 0x0060ee99    e8d2b8ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22e2c8]      // 0x0060ee9e    a1c842bf00
                         test               eax, eax                                    // 0x0060eea3    85c0
                         {disp8} jg         _jmp_addr_0x0060eeb6                        // 0x0060eea5    7f0f
                         mov.s              ebp, eax                                    // 0x0060eea7    8be8
                         inc                ebp                                         // 0x0060eea9    45
                         {disp32} mov       dword ptr [data_bytes + 0x22e2c8], ebp      // 0x0060eeaa    892dc842bf00
                         {disp8} mov        byte ptr [edi + 0x74], 0x0a                 // 0x0060eeb0    c647740a
                         {disp8} jmp        _jmp_addr_0x0060ee6a                        // 0x0060eeb4    ebb4
_jmp_addr_0x0060eeb6:    {disp8} mov        ecx, dword ptr [esp + 0x14]                 // 0x0060eeb6    8b4c2414
                         push               ecx                                         // 0x0060eeba    51
                         push               edi                                         // 0x0060eebb    57
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z                 // 0x0060eebc    e82f6b0000
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x22e2c8]      // 0x0060eec1    8b2dc842bf00
                         inc                ebp                                         // 0x0060eec7    45
                         push               esi                                         // 0x0060eec8    56
                         {disp32} mov       dword ptr [data_bytes + 0x22e2c8], ebp      // 0x0060eec9    892dc842bf00
                         call               ??3@YAXPAX@Z                                // 0x0060eecf    e8c4ff1900
                         push               ebx                                         // 0x0060eed4    53
                         call               ??3@YAXPAX@Z                                // 0x0060eed5    e8beff1900
                         {disp8} mov        ebp, dword ptr [esp + 0x40]                 // 0x0060eeda    8b6c2440
                         add                esp, 0x10                                   // 0x0060eede    83c410
                         {disp32} jmp       _jmp_addr_0x0060f570                        // 0x0060eee1    e98a060000
_jmp_addr_0x0060eee6:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060eee6    d9442424
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2418]            // 0x0060eeea    d81d18b48a00
                         fnstsw             ax                                          // 0x0060eef0    dfe0
                         test               ah, 0x01                                    // 0x0060eef2    f6c401
                         {disp8} je         _jmp_addr_0x0060ef01                        // 0x0060eef5    740a
                         {disp8} mov        edx, dword ptr [esp + 0x30]                 // 0x0060eef7    8b542430
                         {disp8} mov        byte ptr [edx + 0x74], 0x00                 // 0x0060eefb    c6427400
                         {disp8} jmp        _jmp_addr_0x0060ef1b                        // 0x0060eeff    eb1a
_jmp_addr_0x0060ef01:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060ef01    d9442424
                         call               _jmp_addr_0x007a1400                        // 0x0060ef05    e8f6241900
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                 // 0x0060ef0a    8b4c2430
                         {disp8} mov        byte ptr [ecx + 0x74], al                   // 0x0060ef0e    884174
                         {disp8} jmp        _jmp_addr_0x0060ef1b                        // 0x0060ef11    eb08
_jmp_addr_0x0060ef13:    {disp8} mov        edx, dword ptr [esp + 0x30]                 // 0x0060ef13    8b542430
                         {disp8} mov        byte ptr [edx + 0x74], -0x01                // 0x0060ef17    c64274ff
_jmp_addr_0x0060ef1b:    push               esi                                         // 0x0060ef1b    56
                         call               ??3@YAXPAX@Z                                // 0x0060ef1c    e877ff1900
                         push               ebx                                         // 0x0060ef21    53
                         call               ??3@YAXPAX@Z                                // 0x0060ef22    e871ff1900
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                 // 0x0060ef27    8b6c2438
                         add                esp, 0x08                                   // 0x0060ef2b    83c408
_jmp_addr_0x0060ef2e:    {disp32} lea       eax, dword ptr [esp + 0x00000280]           // 0x0060ef2e    8d842480020000
                         push               eax                                         // 0x0060ef35    50
                         {disp8} lea        ecx, dword ptr [ebp + 0x70]                 // 0x0060ef36    8d4d70
                         call               _jmp_addr_0x00609cc0                        // 0x0060ef39    e882adffff
                         push               eax                                         // 0x0060ef3e    50
                         {disp8} lea        eax, dword ptr [ebp + 0x14]                 // 0x0060ef3f    8d4514
                         push               eax                                         // 0x0060ef42    50
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                             // 0x0060ef43    e8f8e21300
                         {disp8} fld        dword ptr [esp + 0x58]                      // 0x0060ef48    d9442458
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87678]           // 0x0060ef4c    d80d78069300
                         add                esp, 0x08                                   // 0x0060ef52    83c408
                         mov.s              esi, eax                                    // 0x0060ef55    8bf0
                         call               _jmp_addr_0x007a1400                        // 0x0060ef57    e8a4241900
                         mov                ecx, 0x00000200                             // 0x0060ef5c    b900020000
                         sub.s              ecx, eax                                    // 0x0060ef61    2bc8
                         add.s              esi, ecx                                    // 0x0060ef63    03f1
                         and                esi, 0x000007ff                             // 0x0060ef65    81e6ff070000
                         push               esi                                         // 0x0060ef6b    56
                         mov.s              ecx, ebp                                    // 0x0060ef6c    8bcd
                         call               @SetGameAngle__13MobileWallHugFUs@10        // 0x0060ef6e    e81debffff
                         mov.s              ecx, ebp                                    // 0x0060ef73    8bcd
                         call               ?RebuildMoveByStep@MobileWallHug@@QAEXXZ    // 0x0060ef75    e896adffff
                         {disp32} inc       dword ptr [data_bytes + 0x22e2c8]           // 0x0060ef7a    ff05c842bf00
                         {disp32} jmp       _jmp_addr_0x0060f570                        // 0x0060ef80    e9eb050000
_jmp_addr_0x0060ef85:    cmp                al, 0x10                                    // 0x0060ef85    3c10
                         {disp32} jne       _jmp_addr_0x0060f570                        // 0x0060ef87    0f85e3050000
                         {disp32} fld       dword ptr [esp + 0x0000009c]                // 0x0060ef8d    d984249c000000
                         {disp32} mov       al, byte ptr [_DAT_00d3eed1]                // 0x0060ef94    a0d1eed300
                         test               al, al                                      // 0x0060ef99    84c0
                         {disp8} fsub       dword ptr [esp + 0x68]                      // 0x0060ef9b    d8642468
                         {disp32} fld       dword ptr [esp + 0x000000a0]                // 0x0060ef9f    d98424a0000000
                         {disp8} fsub       dword ptr [esp + 0x6c]                      // 0x0060efa6    d864246c
                         {disp32} fstp      dword ptr [esp + 0x00000198]                // 0x0060efaa    d99c2498010000
                         {disp32} mov       edx, dword ptr [esp + 0x00000198]           // 0x0060efb1    8b942498010000
                         {disp32} fstp      dword ptr [data_bytes + 0x378e68]           // 0x0060efb8    d91d68eed300
                         {disp32} mov       dword ptr [data_bytes + 0x378e6c], edx      // 0x0060efbe    89156ceed300
                         {disp8} je         _jmp_addr_0x0060f01d                        // 0x0060efc4    7457
                         push               0x00d3ee60 /* _Point2D_00d3ee60 */          // 0x0060efc6    6860eed300
                         {disp32} lea       ecx, dword ptr [esp + 0x00000218]           // 0x0060efcb    8d8c2418020000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060efd2    e8a994e5ff
                         {disp32} lea       eax, dword ptr [esp + 0x00000214]           // 0x0060efd7    8d842414020000
                         push               eax                                         // 0x0060efde    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060efdf    8d4c243c
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060efe3    e838220000
                         {disp32} mov       cl, byte ptr [esp + 0x0000021c]             // 0x0060efe8    8a8c241c020000
                         {disp8} mov        byte ptr [esp + 0x40], cl                   // 0x0060efef    884c2440
                         push               0x00d3ee68 /* _Point2D_00d3ee68 */          // 0x0060eff3    6868eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060eff8    8d4c243c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060effc    e83f220000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f001    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f007    dfe0
                         test               ah, 0x01                                    // 0x0060f009    f6c401
                         {disp8} jne        _jmp_addr_0x0060f015                        // 0x0060f00c    7507
                         mov                eax, 0x00000001                             // 0x0060f00e    b801000000
                         {disp8} jmp        _jmp_addr_0x0060f017                        // 0x0060f013    eb02
_jmp_addr_0x0060f015:    xor.s              eax, eax                                    // 0x0060f015    33c0
_jmp_addr_0x0060f017:    {disp8} mov        byte ptr [esp + 0x40], al                   // 0x0060f017    88442440
                         mov                bl, 0x01                                    // 0x0060f01b    b301
_jmp_addr_0x0060f01d:    {disp8} fld        dword ptr [esp + 0x64]                      // 0x0060f01d    d9442464
                         {disp8} fmul       dword ptr [esp + 0x64]                      // 0x0060f021    d84c2464
                         {disp8} fstp       dword ptr [esp + 0x28]                      // 0x0060f025    d95c2428
                         {disp8} fld        dword ptr [esp + 0x34]                      // 0x0060f029    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                      // 0x0060f02d    d84c2434
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060f031    d86c2428
                         {disp8} fst        dword ptr [esp + 0x50]                      // 0x0060f035    d9542450
                         fld                st(0)                                       // 0x0060f039    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f03b    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f041    dfe0
                         test               ah, 0x41                                    // 0x0060f043    f6c441
                         {disp32} jne       _jmp_addr_0x0060f12c                        // 0x0060f046    0f85e0000000
                         fsqrt                                                          // 0x0060f04c    d9fa
                         {disp8} mov        edx, dword ptr [esp + 0x34]                 // 0x0060f04e    8b542434
                         {disp32} lea       eax, dword ptr [esp + 0x0000015c]           // 0x0060f052    8d84245c010000
                         push               eax                                         // 0x0060f059    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]           // 0x0060f05a    8d8c2408010000
                         {disp32} mov       dword ptr [esp + 0x00000160], edx           // 0x0060f061    89942460010000
                         fchs                                                           // 0x0060f068    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000164]                // 0x0060f06a    d99c2464010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f071    e80a94e5ff
                         push               0x00d3ee68 /* _Point2D_00d3ee68 */          // 0x0060f076    6868eed300
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]           // 0x0060f07b    8d8c2408010000
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060f082    e8b9210000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f087    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f08d    dfe0
                         test               ah, 0x01                                    // 0x0060f08f    f6c401
                         {disp8} jne        _jmp_addr_0x0060f09b                        // 0x0060f092    7507
                         mov                eax, 0x00000001                             // 0x0060f094    b801000000
                         {disp8} jmp        _jmp_addr_0x0060f09d                        // 0x0060f099    eb02
_jmp_addr_0x0060f09b:    xor.s              eax, eax                                    // 0x0060f09b    33c0
_jmp_addr_0x0060f09d:    test               bl, bl                                      // 0x0060f09d    84db
                         {disp32} mov       byte ptr [esp + 0x0000010c], al             // 0x0060f09f    8884240c010000
                         {disp8} je         _jmp_addr_0x0060f0e1                        // 0x0060f0a6    7439
                         cmp                al, byte ptr [esp + 0x40]                   // 0x0060f0a8    3a442440
                         {disp8} jne        _jmp_addr_0x0060f0ce                        // 0x0060f0ac    7520
                         {disp32} lea       ecx, dword ptr [esp + 0x00000104]           // 0x0060f0ae    8d8c2404010000
                         push               ecx                                         // 0x0060f0b5    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f0b6    8d4c243c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060f0ba    e881210000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f0bf    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f0c5    dfe0
                         test               ah, 0x41                                    // 0x0060f0c7    f6c441
                         {disp8} je         _jmp_addr_0x0060f0e1                        // 0x0060f0ca    7415
                         {disp8} jmp        _jmp_addr_0x0060f12e                        // 0x0060f0cc    eb60
_jmp_addr_0x0060f0ce:    {disp32} mov       edx, dword ptr [esp + 0x0000010c]           // 0x0060f0ce    8b94240c010000
                         and                edx, 0x000000ff                             // 0x0060f0d5    81e2ff000000
                         {disp8} mov        dword ptr [esp + 0x54], edx                 // 0x0060f0db    89542454
                         {disp8} je         _jmp_addr_0x0060f12e                        // 0x0060f0df    744d
_jmp_addr_0x0060f0e1:    {disp32} lea       eax, dword ptr [esp + 0x00000104]           // 0x0060f0e1    8d842404010000
                         push               eax                                         // 0x0060f0e8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f0e9    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f0ed    b301
                         call               @__as__7Point2DFRC7Point2D2@12              // 0x0060f0ef    e82c210000
                         {disp32} mov       cl, byte ptr [esp + 0x0000010c]             // 0x0060f0f4    8a8c240c010000
                         {disp8} mov        byte ptr [esp + 0x40], cl                   // 0x0060f0fb    884c2440
                         push               0x00d3ee68 /* _Point2D_00d3ee68 */          // 0x0060f0ff    6868eed300
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f104    8d4c243c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060f108    e833210000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f10d    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f113    dfe0
                         test               bl, ah                                      // 0x0060f115    84e3
                         {disp8} jne        _jmp_addr_0x0060f124                        // 0x0060f117    750b
                         mov                eax, 0x00000001                             // 0x0060f119    b801000000
                         {disp8} mov        byte ptr [esp + 0x40], al                   // 0x0060f11e    88442440
                         {disp8} jmp        _jmp_addr_0x0060f12e                        // 0x0060f122    eb0a
_jmp_addr_0x0060f124:    xor.s              eax, eax                                    // 0x0060f124    33c0
                         {disp8} mov        byte ptr [esp + 0x40], al                   // 0x0060f126    88442440
                         {disp8} jmp        _jmp_addr_0x0060f12e                        // 0x0060f12a    eb02
_jmp_addr_0x0060f12c:    fstp               st(0)                                       // 0x0060f12c    ddd8
_jmp_addr_0x0060f12e:    {disp8} fld        dword ptr [esp + 0x44]                      // 0x0060f12e    d9442444
                         {disp8} fmul       dword ptr [esp + 0x44]                      // 0x0060f132    d84c2444
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060f136    d86c2428
                         {disp8} fst        dword ptr [esp + 0x4c]                      // 0x0060f13a    d954244c
                         fld                st(0)                                       // 0x0060f13e    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f140    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f146    dfe0
                         test               ah, 0x41                                    // 0x0060f148    f6c441
                         {disp32} jne       _jmp_addr_0x0060f202                        // 0x0060f14b    0f85b1000000
                         fsqrt                                                          // 0x0060f151    d9fa
                         {disp8} mov        edx, dword ptr [esp + 0x44]                 // 0x0060f153    8b542444
                         {disp32} lea       eax, dword ptr [esp + 0x0000016c]           // 0x0060f157    8d84246c010000
                         push               eax                                         // 0x0060f15e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000118]           // 0x0060f15f    8d8c2418010000
                         {disp32} mov       dword ptr [esp + 0x00000170], edx           // 0x0060f166    89942470010000
                         {disp32} fstp      dword ptr [esp + 0x00000174]                // 0x0060f16d    d99c2474010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f174    e80793e5ff
                         push               0x00d3ee68 /* _Point2D_00d3ee68 */          // 0x0060f179    6868eed300
                         {disp32} lea       ecx, dword ptr [esp + 0x00000118]           // 0x0060f17e    8d8c2418010000
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060f185    e8b6200000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f18a    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f190    dfe0
                         test               ah, 0x01                                    // 0x0060f192    f6c401
                         {disp8} jne        _jmp_addr_0x0060f19e                        // 0x0060f195    7507
                         mov                eax, 0x00000001                             // 0x0060f197    b801000000
                         {disp8} jmp        _jmp_addr_0x0060f1a0                        // 0x0060f19c    eb02
_jmp_addr_0x0060f19e:    xor.s              eax, eax                                    // 0x0060f19e    33c0
_jmp_addr_0x0060f1a0:    test               bl, bl                                      // 0x0060f1a0    84db
                         {disp32} mov       byte ptr [esp + 0x0000011c], al             // 0x0060f1a2    8884241c010000
                         {disp8} je         _jmp_addr_0x0060f1e4                        // 0x0060f1a9    7439
                         cmp                al, byte ptr [esp + 0x40]                   // 0x0060f1ab    3a442440
                         {disp8} jne        _jmp_addr_0x0060f1d1                        // 0x0060f1af    7520
                         {disp32} lea       ecx, dword ptr [esp + 0x00000114]           // 0x0060f1b1    8d8c2414010000
                         push               ecx                                         // 0x0060f1b8    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f1b9    8d4c243c
                         call               @Cross__7Point2DCFRC7Point2D@12             // 0x0060f1bd    e87e200000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f1c2    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f1c8    dfe0
                         test               ah, 0x41                                    // 0x0060f1ca    f6c441
                         {disp8} je         _jmp_addr_0x0060f1e4                        // 0x0060f1cd    7415
                         {disp8} jmp        _jmp_addr_0x0060f204                        // 0x0060f1cf    eb33
_jmp_addr_0x0060f1d1:    {disp32} mov       edx, dword ptr [esp + 0x0000011c]           // 0x0060f1d1    8b94241c010000
                         and                edx, 0x000000ff                             // 0x0060f1d8    81e2ff000000
                         {disp8} mov        dword ptr [esp + 0x54], edx                 // 0x0060f1de    89542454
                         {disp8} je         _jmp_addr_0x0060f204                        // 0x0060f1e2    7420
_jmp_addr_0x0060f1e4:    {disp32} lea       eax, dword ptr [esp + 0x00000114]           // 0x0060f1e4    8d842414010000
                         push               eax                                         // 0x0060f1eb    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f1ec    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f1f0    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f1f2    e849050000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f1f7    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f1fb    e830100000
                         {disp8} jmp        _jmp_addr_0x0060f204                        // 0x0060f200    eb02
_jmp_addr_0x0060f202:    fstp               st(0)                                       // 0x0060f202    ddd8
_jmp_addr_0x0060f204:    {disp8} fld        dword ptr [esp + 0x48]                      // 0x0060f204    d9442448
                         {disp8} fmul       dword ptr [esp + 0x48]                      // 0x0060f208    d84c2448
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060f20c    d86c2428
                         {disp8} fst        dword ptr [esp + 0x14]                      // 0x0060f210    d9542414
                         fld                st(0)                                       // 0x0060f214    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f216    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f21c    dfe0
                         test               ah, 0x41                                    // 0x0060f21e    f6c441
                         {disp8} jne        _jmp_addr_0x0060f290                        // 0x0060f221    756d
                         fsqrt                                                          // 0x0060f223    d9fa
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                 // 0x0060f225    8b4c2448
                         {disp32} lea       edx, dword ptr [esp + 0x0000017c]           // 0x0060f229    8d94247c010000
                         {disp32} mov       dword ptr [esp + 0x00000180], ecx           // 0x0060f230    898c2480010000
                         push               edx                                         // 0x0060f237    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000001e8]           // 0x0060f238    8d8c24e8010000
                         fchs                                                           // 0x0060f23f    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000180]                // 0x0060f241    d99c2480010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f248    e83392e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001e4]           // 0x0060f24d    8d8c24e4010000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f254    e8d70f0000
                         test               bl, bl                                      // 0x0060f259    84db
                         {disp8} je         _jmp_addr_0x0060f272                        // 0x0060f25b    7415
                         {disp8} lea        eax, dword ptr [esp + 0x38]                 // 0x0060f25d    8d442438
                         push               eax                                         // 0x0060f261    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001e8]           // 0x0060f262    8d8c24e8010000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f269    e8820f0000
                         test               eax, eax                                    // 0x0060f26e    85c0
                         {disp8} je         _jmp_addr_0x0060f292                        // 0x0060f270    7420
_jmp_addr_0x0060f272:    {disp32} lea       ecx, dword ptr [esp + 0x000001e4]           // 0x0060f272    8d8c24e4010000
                         push               ecx                                         // 0x0060f279    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f27a    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f27e    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f280    e8bb040000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f285    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f289    e8a20f0000
                         {disp8} jmp        _jmp_addr_0x0060f292                        // 0x0060f28e    eb02
_jmp_addr_0x0060f290:    fstp               st(0)                                       // 0x0060f290    ddd8
_jmp_addr_0x0060f292:    {disp8} fld        dword ptr [esp + 0x24]                      // 0x0060f292    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                      // 0x0060f296    d84c2424
                         {disp8} fsubr      dword ptr [esp + 0x28]                      // 0x0060f29a    d86c2428
                         {disp8} fst        dword ptr [esp + 0x28]                      // 0x0060f29e    d9542428
                         fld                st(0)                                       // 0x0060f2a2    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f2a4    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f2aa    dfe0
                         test               ah, 0x41                                    // 0x0060f2ac    f6c441
                         {disp8} jne        _jmp_addr_0x0060f31c                        // 0x0060f2af    756b
                         fsqrt                                                          // 0x0060f2b1    d9fa
                         {disp8} mov        edx, dword ptr [esp + 0x24]                 // 0x0060f2b3    8b542424
                         {disp32} lea       eax, dword ptr [esp + 0x0000018c]           // 0x0060f2b7    8d84248c010000
                         push               eax                                         // 0x0060f2be    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001c4]           // 0x0060f2bf    8d8c24c4010000
                         {disp32} mov       dword ptr [esp + 0x00000194], edx           // 0x0060f2c6    89942494010000
                         {disp32} fstp      dword ptr [esp + 0x00000190]                // 0x0060f2cd    d99c2490010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f2d4    e8a791e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001c0]           // 0x0060f2d9    8d8c24c0010000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f2e0    e84b0f0000
                         test               bl, bl                                      // 0x0060f2e5    84db
                         {disp8} je         _jmp_addr_0x0060f2fe                        // 0x0060f2e7    7415
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f2e9    8d4c2438
                         push               ecx                                         // 0x0060f2ed    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000001c4]           // 0x0060f2ee    8d8c24c4010000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f2f5    e8f60e0000
                         test               eax, eax                                    // 0x0060f2fa    85c0
                         {disp8} je         _jmp_addr_0x0060f31e                        // 0x0060f2fc    7420
_jmp_addr_0x0060f2fe:    {disp32} lea       edx, dword ptr [esp + 0x000001c0]           // 0x0060f2fe    8d9424c0010000
                         push               edx                                         // 0x0060f305    52
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f306    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f30a    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f30c    e82f040000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f311    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f315    e8160f0000
                         {disp8} jmp        _jmp_addr_0x0060f31e                        // 0x0060f31a    eb02
_jmp_addr_0x0060f31c:    fstp               st(0)                                       // 0x0060f31c    ddd8
_jmp_addr_0x0060f31e:    {disp8} fld        dword ptr [esp + 0x50]                      // 0x0060f31e    d9442450
                         fld                st(0)                                       // 0x0060f322    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f324    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f32a    dfe0
                         test               ah, 0x41                                    // 0x0060f32c    f6c441
                         {disp8} jne        _jmp_addr_0x0060f39c                        // 0x0060f32f    756b
                         fsqrt                                                          // 0x0060f331    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x34]                 // 0x0060f333    8b442434
                         {disp32} lea       ecx, dword ptr [esp + 0x0000012c]           // 0x0060f337    8d8c242c010000
                         push               ecx                                         // 0x0060f33e    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000001dc]           // 0x0060f33f    8d8c24dc010000
                         {disp32} mov       dword ptr [esp + 0x00000130], eax           // 0x0060f346    89842430010000
                         {disp32} fstp      dword ptr [esp + 0x00000134]                // 0x0060f34d    d99c2434010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f354    e82791e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001d8]           // 0x0060f359    8d8c24d8010000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f360    e8cb0e0000
                         test               bl, bl                                      // 0x0060f365    84db
                         {disp8} je         _jmp_addr_0x0060f37e                        // 0x0060f367    7415
                         {disp8} lea        edx, dword ptr [esp + 0x38]                 // 0x0060f369    8d542438
                         push               edx                                         // 0x0060f36d    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000001dc]           // 0x0060f36e    8d8c24dc010000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f375    e8760e0000
                         test               eax, eax                                    // 0x0060f37a    85c0
                         {disp8} je         _jmp_addr_0x0060f39e                        // 0x0060f37c    7420
_jmp_addr_0x0060f37e:    {disp32} lea       eax, dword ptr [esp + 0x000001d8]           // 0x0060f37e    8d8424d8010000
                         push               eax                                         // 0x0060f385    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f386    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f38a    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f38c    e8af030000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f391    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f395    e8960e0000
                         {disp8} jmp        _jmp_addr_0x0060f39e                        // 0x0060f39a    eb02
_jmp_addr_0x0060f39c:    fstp               st(0)                                       // 0x0060f39c    ddd8
_jmp_addr_0x0060f39e:    {disp8} fld        dword ptr [esp + 0x4c]                      // 0x0060f39e    d944244c
                         fld                st(0)                                       // 0x0060f3a2    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f3a4    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f3aa    dfe0
                         test               ah, 0x41                                    // 0x0060f3ac    f6c441
                         {disp8} jne        _jmp_addr_0x0060f41e                        // 0x0060f3af    756d
                         fsqrt                                                          // 0x0060f3b1    d9fa
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                 // 0x0060f3b3    8b4c2444
                         {disp32} lea       edx, dword ptr [esp + 0x00000124]           // 0x0060f3b7    8d942424010000
                         {disp32} mov       dword ptr [esp + 0x00000124], ecx           // 0x0060f3be    898c2424010000
                         push               edx                                         // 0x0060f3c5    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000001f4]           // 0x0060f3c6    8d8c24f4010000
                         fchs                                                           // 0x0060f3cd    d9e0
                         {disp32} fstp      dword ptr [esp + 0x0000012c]                // 0x0060f3cf    d99c242c010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f3d6    e8a590e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001f0]           // 0x0060f3db    8d8c24f0010000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f3e2    e8490e0000
                         test               bl, bl                                      // 0x0060f3e7    84db
                         {disp8} je         _jmp_addr_0x0060f400                        // 0x0060f3e9    7415
                         {disp8} lea        eax, dword ptr [esp + 0x38]                 // 0x0060f3eb    8d442438
                         push               eax                                         // 0x0060f3ef    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001f4]           // 0x0060f3f0    8d8c24f4010000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f3f7    e8f40d0000
                         test               eax, eax                                    // 0x0060f3fc    85c0
                         {disp8} je         _jmp_addr_0x0060f420                        // 0x0060f3fe    7420
_jmp_addr_0x0060f400:    {disp32} lea       ecx, dword ptr [esp + 0x000001f0]           // 0x0060f400    8d8c24f0010000
                         push               ecx                                         // 0x0060f407    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f408    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f40c    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f40e    e82d030000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f413    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f417    e8140e0000
                         {disp8} jmp        _jmp_addr_0x0060f420                        // 0x0060f41c    eb02
_jmp_addr_0x0060f41e:    fstp               st(0)                                       // 0x0060f41e    ddd8
_jmp_addr_0x0060f420:    {disp8} fld        dword ptr [esp + 0x14]                      // 0x0060f420    d9442414
                         fld                st(0)                                       // 0x0060f424    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f426    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f42c    dfe0
                         test               ah, 0x41                                    // 0x0060f42e    f6c441
                         {disp8} jne        _jmp_addr_0x0060f49e                        // 0x0060f431    756b
                         fsqrt                                                          // 0x0060f433    d9fa
                         {disp8} mov        edx, dword ptr [esp + 0x48]                 // 0x0060f435    8b542448
                         {disp32} lea       eax, dword ptr [esp + 0x00000134]           // 0x0060f439    8d842434010000
                         push               eax                                         // 0x0060f440    50
                         {disp32} lea       ecx, dword ptr [esp + 0x0000020c]           // 0x0060f441    8d8c240c020000
                         {disp32} mov       dword ptr [esp + 0x0000013c], edx           // 0x0060f448    8994243c010000
                         {disp32} fstp      dword ptr [esp + 0x00000138]                // 0x0060f44f    d99c2438010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f456    e82590e5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000208]           // 0x0060f45b    8d8c2408020000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f462    e8c90d0000
                         test               bl, bl                                      // 0x0060f467    84db
                         {disp8} je         _jmp_addr_0x0060f480                        // 0x0060f469    7415
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f46b    8d4c2438
                         push               ecx                                         // 0x0060f46f    51
                         {disp32} lea       ecx, dword ptr [esp + 0x0000020c]           // 0x0060f470    8d8c240c020000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f477    e8740d0000
                         test               eax, eax                                    // 0x0060f47c    85c0
                         {disp8} je         _jmp_addr_0x0060f4a0                        // 0x0060f47e    7420
_jmp_addr_0x0060f480:    {disp32} lea       edx, dword ptr [esp + 0x00000208]           // 0x0060f480    8d942408020000
                         push               edx                                         // 0x0060f487    52
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f488    8d4c243c
                         mov                bl, 0x01                                    // 0x0060f48c    b301
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f48e    e8ad020000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f493    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f497    e8940d0000
                         {disp8} jmp        _jmp_addr_0x0060f4a0                        // 0x0060f49c    eb02
_jmp_addr_0x0060f49e:    fstp               st(0)                                       // 0x0060f49e    ddd8
_jmp_addr_0x0060f4a0:    {disp8} fld        dword ptr [esp + 0x28]                      // 0x0060f4a0    d9442428
                         fld                st(0)                                       // 0x0060f4a4    d9c0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                 // 0x0060f4a6    d81d98a38a00
                         fnstsw             ax                                          // 0x0060f4ac    dfe0
                         test               ah, 0x41                                    // 0x0060f4ae    f6c441
                         {disp8} jne        _jmp_addr_0x0060f51e                        // 0x0060f4b1    756b
                         fsqrt                                                          // 0x0060f4b3    d9fa
                         {disp8} mov        eax, dword ptr [esp + 0x24]                 // 0x0060f4b5    8b442424
                         {disp32} lea       ecx, dword ptr [esp + 0x0000019c]           // 0x0060f4b9    8d8c249c010000
                         push               ecx                                         // 0x0060f4c0    51
                         {disp32} lea       ecx, dword ptr [esp + 0x000001d0]           // 0x0060f4c1    8d8c24d0010000
                         {disp32} mov       dword ptr [esp + 0x000001a4], eax           // 0x0060f4c8    898424a4010000
                         fchs                                                           // 0x0060f4cf    d9e0
                         {disp32} fstp      dword ptr [esp + 0x000001a0]                // 0x0060f4d1    d99c24a0010000
                         call               @__as__7Point2DFRC7Point2D@12               // 0x0060f4d8    e8a38fe5ff
                         {disp32} lea       ecx, dword ptr [esp + 0x000001cc]           // 0x0060f4dd    8d8c24cc010000
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f4e4    e8470d0000
                         test               bl, bl                                      // 0x0060f4e9    84db
                         {disp8} je         _jmp_addr_0x0060f502                        // 0x0060f4eb    7415
                         {disp8} lea        edx, dword ptr [esp + 0x38]                 // 0x0060f4ed    8d542438
                         push               edx                                         // 0x0060f4f1    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000001d0]           // 0x0060f4f2    8d8c24d0010000
                         call               @__lt__17Point2DCompare_FRC17Point2DCompare_0_@12                        // 0x0060f4f9    e8f20c0000
                         test               eax, eax                                    // 0x0060f4fe    85c0
                         {disp8} je         _jmp_addr_0x0060f520                        // 0x0060f500    741e
_jmp_addr_0x0060f502:    {disp32} lea       eax, dword ptr [esp + 0x000001cc]           // 0x0060f502    8d8424cc010000
                         push               eax                                         // 0x0060f509    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                 // 0x0060f50a    8d4c243c
                         call               @__as__17Point2DCompare_0_@12               // 0x0060f50e    e82d020000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                 // 0x0060f513    8d4c2438
                         call               @Resolve__Point2DCompare_0_@4               // 0x0060f517    e8140d0000
                         {disp8} jmp        _jmp_addr_0x0060f520                        // 0x0060f51c    eb02
_jmp_addr_0x0060f51e:    fstp               st(0)                                       // 0x0060f51e    ddd8
_jmp_addr_0x0060f520:    {disp8} mov        esi, dword ptr [ebp + 0x00]                 // 0x0060f520    8b7500
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                 // 0x0060f523    8d4c2468
                         push               ecx                                         // 0x0060f527    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000244]           // 0x0060f528    8d942444020000
                         push               edx                                         // 0x0060f52f    52
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                 // 0x0060f530    8d4c2440
                         call               _jmp_addr_0x00611080                        // 0x0060f534    e8471b0000
                         push               eax                                         // 0x0060f539    50
                         {disp32} lea       eax, dword ptr [esp + 0x00000260]           // 0x0060f53a    8d842460020000
                         push               eax                                         // 0x0060f541    50
                         call               _jmp_addr_0x005357c0                        // 0x0060f542    e87962f2ff
                         add                esp, 0x08                                   // 0x0060f547    83c408
                         push               eax                                         // 0x0060f54a    50
                         mov.s              ecx, ebp                                    // 0x0060f54b    8bcd
                         call               dword ptr [esi + 0x55c]                     // 0x0060f54d    ff965c050000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                 // 0x0060f553    8b5500
                         {disp32} lea       eax, dword ptr [esp + 0x00000274]           // 0x0060f556    8d842474020000
                         push               eax                                         // 0x0060f55d    50
                         mov.s              ecx, ebp                                    // 0x0060f55e    8bcd
                         call               dword ptr [edx + 0x100]                     // 0x0060f560    ff9200010000
                         push               eax                                         // 0x0060f566    50
                         push               ebp                                         // 0x0060f567    55
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z                 // 0x0060f568    e8d3560000
                         add                esp, 0x08                                   // 0x0060f56d    83c408
_jmp_addr_0x0060f570:    {disp8} mov        ecx, dword ptr [esp + 0x60]                 // 0x0060f570    8b4c2460
                         {disp8} lea        edi, dword ptr [ebp + 0x14]                 // 0x0060f574    8d7d14
                         push               edi                                         // 0x0060f577    57
                         {disp32} mov       byte ptr [_DAT_00d3eed1], 0x00              // 0x0060f578    c605d1eed30000
                         call               _jmp_addr_0x0060fc80                        // 0x0060f57f    e8fc060000
                         mov.s              ecx, ebp                                    // 0x0060f584    8bcd
                         call               ?MoveTo@MobileWallHug@@QAEHXZ               // 0x0060f586    e895b9ffff
                         cmp                eax, 0x0a                                   // 0x0060f58b    83f80a
                         {disp8} mov        esi, dword ptr [esp + 0x60]                 // 0x0060f58e    8b742460
                         {disp32} jne       _jmp_addr_0x0060dedc                        // 0x0060f592    0f8544e9ffff
_jmp_addr_0x0060f598:    push               edi                                         // 0x0060f598    57
                         mov.s              ecx, esi                                    // 0x0060f599    8bce
                         call               _jmp_addr_0x0060fc80                        // 0x0060f59b    e8e0060000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000080]           // 0x0060f5a0    8d8d80000000
                         push               ecx                                         // 0x0060f5a6    51
                         mov.s              ecx, esi                                    // 0x0060f5a7    8bce
                         call               _jmp_addr_0x0060fc80                        // 0x0060f5a9    e8d2060000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                 // 0x0060f5ae    8b5500
                         push               0x0                                         // 0x0060f5b1    6a00
                         mov.s              ecx, ebp                                    // 0x0060f5b3    8bcd
                         call               dword ptr [edx + 0xc]                       // 0x0060f5b5    ff520c
                         pop                edi                                         // 0x0060f5b8    5f
                         pop                esi                                         // 0x0060f5b9    5e
                         pop                ebp                                         // 0x0060f5ba    5d
                         pop                ebx                                         // 0x0060f5bb    5b
                         add                esp, 0x00000288                             // 0x0060f5bc    81c488020000
                         ret                0x0008                                      // 0x0060f5c2    c20800
                         mov                eax, dword ptr [ebx]                        // 0x0060f5c5    8b03
                         mov.s              ecx, ebx                                    // 0x0060f5c7    8bcb
                         call               dword ptr [eax + 8]                         // 0x0060f5c9    ff5008
_jmp_addr_0x0060f5cc:    pop                edi                                         // 0x0060f5cc    5f
                         pop                esi                                         // 0x0060f5cd    5e
                         pop                ebp                                         // 0x0060f5ce    5d
                         pop                ebx                                         // 0x0060f5cf    5b
                         add                esp, 0x00000288                             // 0x0060f5d0    81c488020000
                         ret                0x0008                                      // 0x0060f5d6    c20800

// Snippet: db, [0x0060f5d9, 0x0060f5dc)
.byte 0x8d, 0x49, 0x00            // 0x0060f5d9

// Snippet: jmptbl, [0x0060f5dc, 0x0060f5f4)
.byte 0xc5, 0xf5, 0x60, 0x00      // 0x0060f5dc
.byte 0x2d, 0xdc, 0x60, 0x00      // 0x0060f5e0
.byte 0x5a, 0xde, 0x60, 0x00      // 0x0060f5e4
.byte 0x16, 0xdc, 0x60, 0x00      // 0x0060f5e8
.byte 0x59, 0xdb, 0x60, 0x00      // 0x0060f5ec
.byte 0xcc, 0xf5, 0x60, 0x00      // 0x0060f5f0

// Snippet: ijmptbl, [0x0060f5f4, 0x0060f62d)
.byte 0x00, 0x05, 0x05, 0x05      // 0x0060f5f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f5f8
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f5fc
.byte 0x05, 0x05, 0x05, 0x00      // 0x0060f600
.byte 0x05, 0x05, 0x05, 0x01      // 0x0060f604
.byte 0x05, 0x02, 0x05, 0x05      // 0x0060f608
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f60c
.byte 0x05, 0x05, 0x05, 0x03      // 0x0060f610
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f614
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f618
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f61c
.byte 0x00, 0x05, 0x05, 0x05      // 0x0060f620
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f624
.byte 0x05, 0x05, 0x05, 0x05      // 0x0060f628
.byte 0x04                        // 0x0060f62c

// Snippet: db, [0x0060f62d, 0x0060f630)
.byte 0x90, 0x90, 0x90            // 0x0060f62d

