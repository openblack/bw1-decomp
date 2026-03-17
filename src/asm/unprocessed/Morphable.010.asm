.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern ??0MapCoords@@QAE@ABU0@@Z
.extern @__as__7Point2DFRC7Point2D@12
.extern _jmp_addr_0x0051f640
.extern _jmp_addr_0x0051fa40
.extern _jmp_addr_0x0051fa80
.extern ?SetCursorOn@FrontEnd@@SAXXZ
.extern _jmp_addr_0x005e1950
.extern ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ
.extern ?GetMetresDistanceSq@MapCoords@@QBEMABU1@@Z
.extern _jmp_addr_0x00609cc0
.extern ?RebuildMoveByStep@MobileWallHug@@QAEXXZ
.extern ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ
.extern @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17
.extern _jmp_addr_0x0060a9f0
.extern ?InitStepsXZ@MobileWallHug@@QAEXXZ
.extern _jmp_addr_0x0060c180
.extern _jmp_addr_0x0060c3f0
.extern @Init__20ObjectCircleIteratorFiRC9MapCoords@16
.extern @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16
.extern @fetch__19CircleHugStateInfoTF9MapCoords@20
.extern _jmp_addr_0x0060d760
.extern @SetGameAngle__13MobileWallHugFUs@10
.extern _jmp_addr_0x006199f0
.extern @ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20
.extern _jmp_addr_0x00619c90
.extern _jmp_addr_0x00619da0
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern __ftol
.extern  ??3@YAXPAX@Z
.extern ??0_Lockit@std@@QAE@XZ
.extern ??1_Lockit@std@@QAE@XZ
.extern ?Read@LHOSFile@@QAEIPAXIPAI@Z
.extern ?Write@LHOSFile@@QAEIPBXIPAI@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _jmp_addr_0x007bda20
.extern ?Close@LHFile@@QAEIXZ
.extern @SetLHFilePointer__6LHFileFPcl@16
.extern ?CloseSegment@LHFile@@QAEIXZ
.extern _jmp_addr_0x007bdfc0
.extern @GetSegmentData__6LHFileFPvUll@20
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern __CIacos
.extern ??2@YAPAXIPBDI@Z
.extern _jmp_addr_0x007dee00
.extern @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?Create@LH3DMesh@@SAPAV1@PBX_N@Z
.extern @Release__8LH3DMeshFv@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _jmp_addr_0x008379e0
.extern _jmp_addr_0x00839010
.extern _jmp_addr_0x0083a020
.extern ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern @Init__9HairGroupFl@12
.extern _jmp_addr_0x00848040
.extern @ReadBinary__9HairGroupFP6LHFile@12
.extern @Init__14LH3DObjectHairFlPP9HairGroup@16
.extern ??0CAnim@@QAE@XZ
.extern _jmp_addr_0x0085e490
.extern @__ct__5CAnimFP5CAnim@12
.extern @__ct__5CAnimFP5CAnimP6CFrameP5CAnimP6CFramefP5CAnimP6CFramef@40
.extern @ReadBinary__5CAnimFP6LHFile@12
.extern @AdjustForNewBasedOnStand__5CAnimFP5CAnimP5CAnim@16
.extern _jmp_addr_0x00870640

.globl _jmp_addr_0x00617140
.globl _jmp_addr_0x006171a0
.globl @MorphInit__9MorphableFR7LHPointlPv@20
.globl ?AddHairGroup@Morphable@@QAEIXZ
.globl @SelectMesh__9MorphableFl@12
.globl _jmp_addr_0x006177e0
.globl _jmp_addr_0x00617860
.globl _jmp_addr_0x00617970
.globl _jmp_addr_0x00617a10
.globl _jmp_addr_0x00617a80
.globl @ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20
.globl _jmp_addr_0x00617dc0
.globl ?SetAnimTime@Morphable@@UAEXHH@Z
.globl @ReadExtraDataBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfol@24
.globl _jmp_addr_0x00618150
.globl _jmp_addr_0x006182f0
.globl ?LoadBase@Morphable@@UAEIPAD@Z
.globl ?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z
.globl @LoadMesh__9MorphableFPcl@16
.globl _jmp_addr_0x00618b40
.globl _jmp_addr_0x00618c40
.globl ?MorphAnims@Morphable@@UAEXXZ
.globl ?MorphTexture@Morphable@@UAEXXZ
.globl @GetAnim__9MorphableFll@16
.globl @GetSetAnim__9MorphableFlll@20
.globl _jmp_addr_0x006199f0
.globl @ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20
.globl _jmp_addr_0x00619c90
.globl _jmp_addr_0x00619da0

.globl _globl_ct_0x00617060
.globl _globl_ct_0x00617090
.globl _globl_ct_0x006170c0

_globl_ct_0x00617060:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x00617060    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x00617066    b001
                         test               al, cl                                         // 0x00617068    84c8
                         {disp8} jne        .Lbl_addr_0x00617074                           // 0x0061706a    7508
                         or.s               cl, al                                         // 0x0061706c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x0061706e    880d34c9fa00
.Lbl_addr_0x00617074:    {disp32} jmp       .Lbl_addr_0x00617080                           // 0x00617074    e907000000
                         nop                                                               // 0x00617079    90
                         nop                                                               // 0x0061707a    90
                         nop                                                               // 0x0061707b    90
                         nop                                                               // 0x0061707c    90
                         nop                                                               // 0x0061707d    90
                         nop                                                               // 0x0061707e    90
                         nop                                                               // 0x0061707f    90
.Lbl_addr_0x00617080:    push               0x00407870                                     // 0x00617080    6870784000
                         call               _atexit                                        // 0x00617085    e807e71a00
                         pop                ecx                                            // 0x0061708a    59
                         ret                                                               // 0x0061708b    c3
                         nop                                                               // 0x0061708c    90
                         nop                                                               // 0x0061708d    90
                         nop                                                               // 0x0061708e    90
                         nop                                                               // 0x0061708f    90
_globl_ct_0x00617090:    {disp32} jmp       .Lbl_addr_0x006170a0                           // 0x00617090    e90b000000
                         nop                                                               // 0x00617095    90
                         nop                                                               // 0x00617096    90
                         nop                                                               // 0x00617097    90
                         nop                                                               // 0x00617098    90
                         nop                                                               // 0x00617099    90
                         nop                                                               // 0x0061709a    90
                         nop                                                               // 0x0061709b    90
                         nop                                                               // 0x0061709c    90
                         nop                                                               // 0x0061709d    90
                         nop                                                               // 0x0061709e    90
                         nop                                                               // 0x0061709f    90
.Lbl_addr_0x006170a0:    {disp32} fld       dword ptr [rdata_bytes + 0x87694]              // 0x006170a0    d90594069300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87690]              // 0x006170a6    d80d90069300
                         {disp32} fstp      dword ptr [data_bytes + 0x379000]              // 0x006170ac    d91d00f0d300
                         ret                                                               // 0x006170b2    c3
                         nop                                                               // 0x006170b3    90
                         nop                                                               // 0x006170b4    90
                         nop                                                               // 0x006170b5    90
                         nop                                                               // 0x006170b6    90
                         nop                                                               // 0x006170b7    90
                         nop                                                               // 0x006170b8    90
                         nop                                                               // 0x006170b9    90
                         nop                                                               // 0x006170ba    90
                         nop                                                               // 0x006170bb    90
                         nop                                                               // 0x006170bc    90
                         nop                                                               // 0x006170bd    90
                         nop                                                               // 0x006170be    90
                         nop                                                               // 0x006170bf    90
_globl_ct_0x006170c0:    {disp32} jmp       .Lbl_addr_0x006170d0                           // 0x006170c0    e90b000000
                         nop                                                               // 0x006170c5    90
                         nop                                                               // 0x006170c6    90
                         nop                                                               // 0x006170c7    90
                         nop                                                               // 0x006170c8    90
                         nop                                                               // 0x006170c9    90
                         nop                                                               // 0x006170ca    90
                         nop                                                               // 0x006170cb    90
                         nop                                                               // 0x006170cc    90
                         nop                                                               // 0x006170cd    90
                         nop                                                               // 0x006170ce    90
                         nop                                                               // 0x006170cf    90
.Lbl_addr_0x006170d0:    {disp32} mov       dword ptr [data_bytes + 0x378ffc], 0xffffffff  // 0x006170d0    c705fcefd300ffffffff
                         ret                                                               // 0x006170da    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                           // 0x006170db    e819a7deff
                         push               esi                                            // 0x006170e0    56
                         mov.s              eax, ecx                                       // 0x006170e1    8bc1
                         push               edi                                            // 0x006170e3    57
                         {disp32} lea       edx, dword ptr [eax + 0x00000740]              // 0x006170e4    8d9040070000
                         mov                esi, 0x000000e8                                // 0x006170ea    bee8000000
                         xor.s              edi, edi                                       // 0x006170ef    33ff
.Lbl_addr_0x006170f1:    {disp32} mov       dword ptr [edx + -0x000003a0], edi             // 0x006170f1    89ba60fcffff
                         mov                dword ptr [edx], edi                           // 0x006170f7    893a
                         {disp32} mov       dword ptr [edx + -0x00000740], edi             // 0x006170f9    89bac0f8ffff
                         add                edx, 0x04                                      // 0x006170ff    83c204
                         dec                esi                                            // 0x00617102    4e
                         {disp8} jne        .Lbl_addr_0x006170f1                           // 0x00617103    75ec
                         pop                edi                                            // 0x00617105    5f
                         pop                esi                                            // 0x00617106    5e
                         ret                                                               // 0x00617107    c3
                         nop                                                               // 0x00617108    90
                         nop                                                               // 0x00617109    90
                         nop                                                               // 0x0061710a    90
                         nop                                                               // 0x0061710b    90
                         nop                                                               // 0x0061710c    90
                         nop                                                               // 0x0061710d    90
                         nop                                                               // 0x0061710e    90
                         nop                                                               // 0x0061710f    90
.Lbl_addr_0x00617110:    push               ebx                                            // 0x00617110    53
                         push               esi                                            // 0x00617111    56
                         push               edi                                            // 0x00617112    57
                         mov.s              edi, ecx                                       // 0x00617113    8bf9
                         mov                ebx, 0x000000e8                                // 0x00617115    bbe8000000
.Lbl_addr_0x0061711a:    mov                esi, dword ptr [edi]                           // 0x0061711a    8b37
                         test               esi, esi                                       // 0x0061711c    85f6
                         {disp8} je         .Lbl_addr_0x00617130                           // 0x0061711e    7410
                         mov.s              ecx, esi                                       // 0x00617120    8bce
                         call               _jmp_addr_0x0085e490                           // 0x00617122    e869732400
                         push               esi                                            // 0x00617127    56
                         call               ??3@YAXPAX@Z                                   // 0x00617128    e86b7d1900
                         add                esp, 0x04                                      // 0x0061712d    83c404
.Lbl_addr_0x00617130:    add                edi, 0x04                                      // 0x00617130    83c704
                         dec                ebx                                            // 0x00617133    4b
                         {disp8} jne        .Lbl_addr_0x0061711a                           // 0x00617134    75e4
                         pop                edi                                            // 0x00617136    5f
                         pop                esi                                            // 0x00617137    5e
                         pop                ebx                                            // 0x00617138    5b
                         ret                                                               // 0x00617139    c3
                         call               dword ptr [rdata_bytes + 0x6a0]                // 0x0061713a    ff15a0968a00
_jmp_addr_0x00617140:    or                 ecx, 0xffffffff                                // 0x00617140    83c9ff
                         push               esi                                            // 0x00617143    56
                         push               edi                                            // 0x00617144    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x00617145    8b7c240c
                         xor.s              eax, eax                                       // 0x00617149    33c0
                         repne scasb                                                       // 0x0061714b    f2ae
                         not                ecx                                            // 0x0061714d    f7d1
                         sub.s              edi, ecx                                       // 0x0061714f    2bf9
                         mov.s              eax, ecx                                       // 0x00617151    8bc1
                         shr                ecx, 2                                         // 0x00617153    c1e902
                         mov.s              esi, edi                                       // 0x00617156    8bf7
                         mov                edi, 0x00d3eefc                                // 0x00617158    bffceed300
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0061715d    f3a5
                         mov.s              ecx, eax                                       // 0x0061715f    8bc8
                         and                ecx, 0x03                                      // 0x00617161    83e103
                         rep movsb                                                         // 0x00617164    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x00617166    8b7c2410
                         or                 ecx, 0xffffffff                                // 0x0061716a    83c9ff
                         xor.s              eax, eax                                       // 0x0061716d    33c0
                         repne scasb                                                       // 0x0061716f    f2ae
                         not                ecx                                            // 0x00617171    f7d1
                         sub.s              edi, ecx                                       // 0x00617173    2bf9
                         mov.s              edx, ecx                                       // 0x00617175    8bd1
                         or                 ecx, 0xffffffff                                // 0x00617177    83c9ff
                         mov.s              esi, edi                                       // 0x0061717a    8bf7
                         mov                edi, 0x00d3eefc                                // 0x0061717c    bffceed300
                         repne scasb                                                       // 0x00617181    f2ae
                         mov.s              ecx, edx                                       // 0x00617183    8bca
                         shr                ecx, 2                                         // 0x00617185    c1e902
                         dec                edi                                            // 0x00617188    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00617189    f3a5
                         mov.s              ecx, edx                                       // 0x0061718b    8bca
                         and                ecx, 0x03                                      // 0x0061718d    83e103
                         rep movsb                                                         // 0x00617190    f3a4
                         pop                edi                                            // 0x00617192    5f
                         pop                esi                                            // 0x00617193    5e
                         ret                                                               // 0x00617194    c3
                         nop                                                               // 0x00617195    90
                         nop                                                               // 0x00617196    90
                         nop                                                               // 0x00617197    90
                         nop                                                               // 0x00617198    90
                         nop                                                               // 0x00617199    90
                         nop                                                               // 0x0061719a    90
                         nop                                                               // 0x0061719b    90
                         nop                                                               // 0x0061719c    90
                         nop                                                               // 0x0061719d    90
                         nop                                                               // 0x0061719e    90
                         nop                                                               // 0x0061719f    90
_jmp_addr_0x006171a0:    sub                esp, 0x0c                                      // 0x006171a0    83ec0c
                         push               ebp                                            // 0x006171a3    55
                         mov.s              ebp, ecx                                       // 0x006171a4    8be9
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000482c]              // 0x006171a6    8b8d2c480000
                         push               esi                                            // 0x006171ac    56
                         {disp8} mov        dword ptr [ebp + 0x00], 0x008cbef8             // 0x006171ad    c74500f8be8c00
                         mov                eax, dword ptr [ecx]                           // 0x006171b4    8b01
                         push               edi                                            // 0x006171b6    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x006171b7    896c2410
                         call               dword ptr [eax + 4]                            // 0x006171bb    ff5004
                         {disp32} mov       ecx, dword ptr [ebp + 0x00004828]              // 0x006171be    8b8d28480000
                         push               ecx                                            // 0x006171c4    51
                         call               ??3@YAXPAX@Z                                   // 0x006171c5    e8ce7c1900
                         add                esp, 0x04                                      // 0x006171ca    83c404
                         {disp32} lea       esi, dword ptr [ebp + 0x000000b4]              // 0x006171cd    8db5b4000000
                         mov                edi, 0x00000008                                // 0x006171d3    bf08000000
.Lbl_addr_0x006171d8:    mov                ecx, dword ptr [esi]                           // 0x006171d8    8b0e
                         test               ecx, ecx                                       // 0x006171da    85c9
                         {disp8} je         .Lbl_addr_0x006171e9                           // 0x006171dc    740b
                         call               @Release__8LH3DMeshFv@4                        // 0x006171de    e81dfb1e00
                         mov                dword ptr [esi], 0x00000000                    // 0x006171e3    c70600000000
.Lbl_addr_0x006171e9:    add                esi, 0x04                                      // 0x006171e9    83c604
                         dec                edi                                            // 0x006171ec    4f
                         {disp8} jne        .Lbl_addr_0x006171d8                           // 0x006171ed    75e9
                         {disp32} mov       eax, dword ptr [ebp + 0x000047f0]              // 0x006171ef    8b85f0470000
                         test               eax, eax                                       // 0x006171f5    85c0
                         {disp8} je         .Lbl_addr_0x00617202                           // 0x006171f7    7409
                         push               eax                                            // 0x006171f9    50
                         call               ??3@YAXPAX@Z                                   // 0x006171fa    e8997c1900
                         add                esp, 0x04                                      // 0x006171ff    83c404
.Lbl_addr_0x00617202:    {disp32} mov       eax, dword ptr [ebp + 0x000047f4]              // 0x00617202    8b85f4470000
                         test               eax, eax                                       // 0x00617208    85c0
                         {disp8} je         .Lbl_addr_0x00617215                           // 0x0061720a    7409
                         push               eax                                            // 0x0061720c    50
                         call               ??3@YAXPAX@Z                                   // 0x0061720d    e8867c1900
                         add                esp, 0x04                                      // 0x00617212    83c404
.Lbl_addr_0x00617215:    {disp32} mov       eax, dword ptr [ebp + 0x000047f8]              // 0x00617215    8b85f8470000
                         test               eax, eax                                       // 0x0061721b    85c0
                         {disp8} je         .Lbl_addr_0x00617228                           // 0x0061721d    7409
                         push               eax                                            // 0x0061721f    50
                         call               ??3@YAXPAX@Z                                   // 0x00617220    e8737c1900
                         add                esp, 0x04                                      // 0x00617225    83c404
.Lbl_addr_0x00617228:    push               ebx                                            // 0x00617228    53
                         {disp32} lea       edi, dword ptr [ebp + 0x00004314]              // 0x00617229    8dbd14430000
                         mov                ebx, 0x000000e8                                // 0x0061722f    bbe8000000
.Lbl_addr_0x00617234:    mov                esi, dword ptr [edi]                           // 0x00617234    8b37
                         test               esi, esi                                       // 0x00617236    85f6
                         {disp8} je         .Lbl_addr_0x0061724c                           // 0x00617238    7412
.Lbl_addr_0x0061723a:    mov.s              eax, esi                                       // 0x0061723a    8bc6
                         {disp8} mov        esi, dword ptr [esi + 0x10]                    // 0x0061723c    8b7610
                         push               eax                                            // 0x0061723f    50
                         call               ??3@YAXPAX@Z                                   // 0x00617240    e8537c1900
                         add                esp, 0x04                                      // 0x00617245    83c404
                         test               esi, esi                                       // 0x00617248    85f6
                         {disp8} jne        .Lbl_addr_0x0061723a                           // 0x0061724a    75ee
.Lbl_addr_0x0061724c:    add                edi, 0x04                                      // 0x0061724c    83c704
                         dec                ebx                                            // 0x0061724f    4b
                         {disp8} jne        .Lbl_addr_0x00617234                           // 0x00617250    75e2
                         {disp32} mov       eax, dword ptr [ebp + 0x00004800]              // 0x00617252    8b8500480000
                         test               eax, eax                                       // 0x00617258    85c0
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x0061725a    c744241000000000
                         {disp8} jle        .Lbl_addr_0x006172e3                           // 0x00617262    7e7f
                         add                ebp, 0x00004804                                // 0x00617264    81c504480000
.Lbl_addr_0x0061726a:    {disp8} mov        esi, dword ptr [ebp + 0x00]                    // 0x0061726a    8b7500
                         test               esi, esi                                       // 0x0061726d    85f6
                         {disp8} mov        dword ptr [esp + 0x18], esi                    // 0x0061726f    89742418
                         {disp8} je         .Lbl_addr_0x006172c0                           // 0x00617273    744b
                         {disp8} mov        ecx, dword ptr [esi + 0x74]                    // 0x00617275    8b4e74
                         test               ecx, ecx                                       // 0x00617278    85c9
                         {disp8} je         .Lbl_addr_0x006172b7                           // 0x0061727a    743b
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                   // 0x0061727c    8b41fc
                         {disp8} lea        edi, dword ptr [ecx + -0x04]                   // 0x0061727f    8d79fc
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x00617282    8d1480
                         dec                eax                                            // 0x00617285    48
                         lea                edx, dword ptr [edx + edx * 0x4]               // 0x00617286    8d1492
                         lea                ecx, dword ptr [ecx + edx * 0x4]               // 0x00617289    8d0c91
                         {disp8} js         .Lbl_addr_0x006172ae                           // 0x0061728c    7820
                         {disp8} lea        esi, dword ptr [ecx + 0x34]                    // 0x0061728e    8d7134
                         {disp8} lea        ebx, dword ptr [eax + 0x01]                    // 0x00617291    8d5801
.Lbl_addr_0x00617294:    {disp8} mov        eax, dword ptr [esi + -0x64]                   // 0x00617294    8b469c
                         sub                esi, 0x64                                      // 0x00617297    83ee64
                         test               eax, eax                                       // 0x0061729a    85c0
                         {disp8} je         .Lbl_addr_0x006172a7                           // 0x0061729c    7409
                         push               eax                                            // 0x0061729e    50
                         call               ??3@YAXPAX@Z                                   // 0x0061729f    e8f47b1900
                         add                esp, 0x04                                      // 0x006172a4    83c404
.Lbl_addr_0x006172a7:    dec                ebx                                            // 0x006172a7    4b
                         {disp8} jne        .Lbl_addr_0x00617294                           // 0x006172a8    75ea
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x006172aa    8b742418
.Lbl_addr_0x006172ae:    push               edi                                            // 0x006172ae    57
                         call               ??3@YAXPAX@Z                                   // 0x006172af    e8e47b1900
                         add                esp, 0x04                                      // 0x006172b4    83c404
.Lbl_addr_0x006172b7:    push               esi                                            // 0x006172b7    56
                         call               ??3@YAXPAX@Z                                   // 0x006172b8    e8db7b1900
                         add                esp, 0x04                                      // 0x006172bd    83c404
.Lbl_addr_0x006172c0:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x006172c0    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x006172c4    8b4c2414
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000000             // 0x006172c8    c7450000000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00004800]              // 0x006172cf    8b9100480000
                         inc                eax                                            // 0x006172d5    40
                         add                ebp, 0x04                                      // 0x006172d6    83c504
                         cmp.s              eax, edx                                       // 0x006172d9    3bc2
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x006172db    89442410
                         {disp8} jl         .Lbl_addr_0x0061726a                           // 0x006172df    7c89
                         mov.s              ebp, ecx                                       // 0x006172e1    8be9
.Lbl_addr_0x006172e3:    {disp32} lea       esi, dword ptr [ebp + 0x00004314]              // 0x006172e3    8db514430000
                         mov                edi, 0x00000006                                // 0x006172e9    bf06000000
                         pop                ebx                                            // 0x006172ee    5b
.Lbl_addr_0x006172ef:    sub                esi, 0x00000ae0                                // 0x006172ef    81eee00a0000
                         mov.s              ecx, esi                                       // 0x006172f5    8bce
                         call               .Lbl_addr_0x00617110                           // 0x006172f7    e814feffff
                         dec                edi                                            // 0x006172fc    4f
                         {disp8} jne        .Lbl_addr_0x006172ef                           // 0x006172fd    75f0
                         {disp8} lea        ecx, dword ptr [ebp + 0x0c]                    // 0x006172ff    8d4d0c
                         call               _jmp_addr_0x007bda20                           // 0x00617302    e819671a00
                         pop                edi                                            // 0x00617307    5f
                         pop                esi                                            // 0x00617308    5e
                         pop                ebp                                            // 0x00617309    5d
                         add                esp, 0x0c                                      // 0x0061730a    83c40c
                         ret                                                               // 0x0061730d    c3
                         nop                                                               // 0x0061730e    90
                         nop                                                               // 0x0061730f    90
@MorphInit__9MorphableFR7LHPointlPv@20:    push               ebx                                            // 0x00617310    53
                         push               esi                                            // 0x00617311    56
                         mov.s              esi, ecx                                       // 0x00617312    8bf1
                         push               edi                                            // 0x00617314    57
                         mov                ecx, 0x00000003                                // 0x00617315    b903000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                           // 0x0061731a    e8b1411f00
                         {disp32} mov       dword ptr [esi + 0x0000482c], eax              // 0x0061731f    89862c480000
                         mov                ebx, dword ptr [eax]                           // 0x00617325    8b18
                         mov                edi, 0x00000001                                // 0x00617327    bf01000000
                         mov.s              edx, edi                                       // 0x0061732c    8bd7
                         mov.s              ecx, eax                                       // 0x0061732e    8bc8
                         call               dword ptr [ebx + 0x58]                         // 0x00617330    ff5358
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x00617333    8b442418
                         push               0x6e                                           // 0x00617337    6a6e
                         push               0x00bf42d0                                     // 0x00617339    68d042bf00
                         push               0x8                                            // 0x0061733e    6a08
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x00617340    894604
                         call               ??2@YAPAXIPBDI@Z                               // 0x00617343    e848441c00
                         add                esp, 0x0c                                      // 0x00617348    83c40c
                         xor.s              ebx, ebx                                       // 0x0061734b    33db
                         push               ebx                                            // 0x0061734d    53
                         push               ebx                                            // 0x0061734e    53
                         mov.s              ecx, eax                                       // 0x0061734f    8bc8
                         {disp32} mov       dword ptr [esi + 0x00004828], eax              // 0x00617351    898628480000
                         call               @Init__14LH3DObjectHairFlPP9HairGroup@16       // 0x00617357    e8e40f2300
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]              // 0x0061735c    8b8e2c480000
                         {disp32} mov       edx, dword ptr [esi + 0x00004828]              // 0x00617362    8b9628480000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00617368    8b442410
                         {disp32} mov       dword ptr [ecx + 0x00000088], edx              // 0x0061736c    899188000000
                         {disp32} mov       dword ptr [esi + 0x000047b8], ebx              // 0x00617372    899eb8470000
                         mov                ecx, dword ptr [eax]                           // 0x00617378    8b08
                         {disp8} mov        dword ptr [esi + 0x78], ecx                    // 0x0061737a    894e78
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x0061737d    8b5004
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00617380    8b4c2414
                         {disp8} mov        dword ptr [esi + 0x7c], edx                    // 0x00617384    89567c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x00617387    8b4008
                         {disp32} mov       dword ptr [esi + 0x00000080], eax              // 0x0061738a    898680000000
                         {disp32} mov       dword ptr [esi + 0x00000088], ecx              // 0x00617390    898e88000000
                         {disp32} mov       dword ptr [esi + 0x000047bc], edi              // 0x00617396    89bebc470000
                         {disp32} mov       dword ptr [esi + 0x00000084], ebx              // 0x0061739c    899e84000000
                         {disp32} mov       dword ptr [esi + 0x000000a0], ebx              // 0x006173a2    899ea0000000
                         {disp32} mov       dword ptr [esi + 0x0000009c], ebx              // 0x006173a8    899e9c000000
                         {disp32} mov       dword ptr [esi + 0x000000a8], ebx              // 0x006173ae    899ea8000000
                         {disp32} mov       dword ptr [esi + 0x000000a4], ebx              // 0x006173b4    899ea4000000
                         {disp32} mov       dword ptr [esi + 0x000000b0], ebx              // 0x006173ba    899eb0000000
                         {disp32} mov       dword ptr [esi + 0x000000ac], ebx              // 0x006173c0    899eac000000
                         {disp32} mov       dword ptr [esi + 0x0000008c], ebx              // 0x006173c6    899e8c000000
                         {disp32} mov       dword ptr [esi + 0x00004824], edi              // 0x006173cc    89be24480000
                         {disp32} mov       dword ptr [esi + 0x00004800], ebx              // 0x006173d2    899e00480000
                         {disp32} mov       dword ptr [esi + 0x00000090], 0x3f800000       // 0x006173d8    c786900000000000803f
                         {disp32} mov       dword ptr [esi + 0x00000098], 0xffffffff       // 0x006173e2    c78698000000ffffffff
                         {disp32} mov       dword ptr [esi + 0x000047fc], ebx              // 0x006173ec    899efc470000
                         {disp32} mov       dword ptr [esi + 0x000047f4], ebx              // 0x006173f2    899ef4470000
                         {disp32} mov       dword ptr [esi + 0x000047f8], ebx              // 0x006173f8    899ef8470000
                         {disp32} mov       dword ptr [esi + 0x000047f0], ebx              // 0x006173fe    899ef0470000
                         {disp32} lea       ecx, dword ptr [esi + 0x000000d4]              // 0x00617404    8d8ed4000000
                         {disp32} lea       eax, dword ptr [esi + 0x000000b4]              // 0x0061740a    8d86b4000000
                         mov                edx, 0x00000008                                // 0x00617410    ba08000000
.Lbl_addr_0x00617415:    mov                dword ptr [eax], ebx                           // 0x00617415    8918
                         mov                byte ptr [ecx], bl                             // 0x00617417    8819
                         add                eax, 0x04                                      // 0x00617419    83c004
                         add                ecx, 0x20                                      // 0x0061741c    83c120
                         dec                edx                                            // 0x0061741f    4a
                         {disp8} jne        .Lbl_addr_0x00617415                           // 0x00617420    75f3
                         {disp32} lea       eax, dword ptr [esi + 0x000047d0]              // 0x00617422    8d86d0470000
                         mov                ecx, 0x00000004                                // 0x00617428    b904000000
.Lbl_addr_0x0061742d:    {disp8} mov        dword ptr [eax + -0x10], ebx                   // 0x0061742d    8958f0
                         mov                dword ptr [eax], ebx                           // 0x00617430    8918
                         {disp8} mov        dword ptr [eax + 0x10], ebx                    // 0x00617432    895810
                         add                eax, 0x04                                      // 0x00617435    83c004
                         dec                ecx                                            // 0x00617438    49
                         {disp8} jne        .Lbl_addr_0x0061742d                           // 0x00617439    75f2
                         {disp32} lea       edi, dword ptr [esi + 0x00004314]              // 0x0061743b    8dbe14430000
                         mov                ecx, 0x000000e8                                // 0x00617441    b9e8000000
                         xor.s              eax, eax                                       // 0x00617446    33c0
                         rep stosd                                                         // 0x00617448    f3ab
                         pop                edi                                            // 0x0061744a    5f
                         {disp32} mov       dword ptr [esi + 0x000047b4], ebx              // 0x0061744b    899eb4470000
                         {disp32} mov       dword ptr [esi + 0x00004830], ebx              // 0x00617451    899e30480000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000       // 0x00617457    c786e04700000000803f
                         pop                esi                                            // 0x00617461    5e
                         pop                ebx                                            // 0x00617462    5b
                         ret                0x000c                                         // 0x00617463    c20c00
                         nop                                                               // 0x00617466    90
                         nop                                                               // 0x00617467    90
                         nop                                                               // 0x00617468    90
                         nop                                                               // 0x00617469    90
                         nop                                                               // 0x0061746a    90
                         nop                                                               // 0x0061746b    90
                         nop                                                               // 0x0061746c    90
                         nop                                                               // 0x0061746d    90
                         nop                                                               // 0x0061746e    90
                         nop                                                               // 0x0061746f    90
?AddHairGroup@Morphable@@QAEIXZ:
                                  push               esi                                            // 0x00617470    56
                         mov.s              esi, ecx                                       // 0x00617471    8bf1
                         cmp                dword ptr [esi + 0x00004800], 0x08             // 0x00617473    83be0048000008
                         {disp8} jge        .Lbl_addr_0x006174ea                           // 0x0061747a    7d6e
                         push               0x0000009b                                     // 0x0061747c    689b000000
                         push               0x00bf42d0                                     // 0x00617481    68d042bf00
                         push               0x7c                                           // 0x00617486    6a7c
                         call               ??2@YAPAXIPBDI@Z                               // 0x00617488    e803431c00
                         {disp32} mov       ecx, dword ptr [esi + 0x00004800]              // 0x0061748d    8b8e00480000
                         {disp32} mov       dword ptr [esi + ecx * 0x4 + 0x00004804], eax  // 0x00617493    89848e04480000
                         {disp32} mov       edx, dword ptr [esi + 0x00004800]              // 0x0061749a    8b9600480000
                         {disp32} mov       ecx, dword ptr [esi + edx * 0x4 + 0x00004804]  // 0x006174a0    8b8c9604480000
                         add                esp, 0x0c                                      // 0x006174a7    83c40c
                         push               0x14                                           // 0x006174aa    6a14
                         call               @Init__9HairGroupFl@12                         // 0x006174ac    e82f052300
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]              // 0x006174b1    8b8600480000
                         {disp32} lea       ecx, dword ptr [esi + 0x00004804]              // 0x006174b7    8d8e04480000
                         inc                eax                                            // 0x006174bd    40
                         push               ecx                                            // 0x006174be    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00004828]              // 0x006174bf    8b8e28480000
                         push               eax                                            // 0x006174c5    50
                         {disp32} mov       dword ptr [esi + 0x00004800], eax              // 0x006174c6    898600480000
                         call               @Init__14LH3DObjectHairFlPP9HairGroup@16       // 0x006174cc    e86f0e2300
                         {disp32} mov       eax, dword ptr [esi + 0x00004828]              // 0x006174d1    8b8628480000
                         {disp32} mov       edx, dword ptr [esi + 0x0000482c]              // 0x006174d7    8b962c480000
                         {disp32} mov       dword ptr [edx + 0x00000088], eax              // 0x006174dd    898288000000
                         mov                eax, 0x00000001                                // 0x006174e3    b801000000
                         pop                esi                                            // 0x006174e8    5e
                         ret                                                               // 0x006174e9    c3
.Lbl_addr_0x006174ea:    xor.s              eax, eax                                       // 0x006174ea    33c0
                         pop                esi                                            // 0x006174ec    5e
                         ret                                                               // 0x006174ed    c3
                         nop                                                               // 0x006174ee    90
                         nop                                                               // 0x006174ef    90
                         push               ecx                                            // 0x006174f0    51
                         push               ebp                                            // 0x006174f1    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                    // 0x006174f2    8b6c240c
                         push               esi                                            // 0x006174f6    56
                         mov.s              esi, ecx                                       // 0x006174f7    8bf1
                         push               edi                                            // 0x006174f9    57
                         {disp32} mov       edi, dword ptr [esi + ebp * 0x4 + 0x00004804]  // 0x006174fa    8bbcae04480000
                         test               edi, edi                                       // 0x00617501    85ff
                         {disp8} mov        dword ptr [esp + 0x0c], edi                    // 0x00617503    897c240c
                         {disp8} je         .Lbl_addr_0x0061755a                           // 0x00617507    7451
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                    // 0x00617509    8b4f74
                         test               ecx, ecx                                       // 0x0061750c    85c9
                         {disp8} je         .Lbl_addr_0x00617551                           // 0x0061750e    7441
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                   // 0x00617510    8b41fc
                         push               ebx                                            // 0x00617513    53
                         {disp8} lea        ebx, dword ptr [ecx + -0x04]                   // 0x00617514    8d59fc
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x00617517    8d1480
                         dec                eax                                            // 0x0061751a    48
                         lea                edx, dword ptr [edx + edx * 0x4]               // 0x0061751b    8d1492
                         lea                ecx, dword ptr [ecx + edx * 0x4]               // 0x0061751e    8d0c91
                         {disp8} js         .Lbl_addr_0x00617547                           // 0x00617521    7824
                         {disp8} lea        edi, dword ptr [ecx + 0x34]                    // 0x00617523    8d7934
                         {disp8} lea        ebp, dword ptr [eax + 0x01]                    // 0x00617526    8d6801
.Lbl_addr_0x00617529:    {disp8} mov        eax, dword ptr [edi + -0x64]                   // 0x00617529    8b479c
                         sub                edi, 0x64                                      // 0x0061752c    83ef64
                         test               eax, eax                                       // 0x0061752f    85c0
                         {disp8} je         .Lbl_addr_0x0061753c                           // 0x00617531    7409
                         push               eax                                            // 0x00617533    50
                         call               ??3@YAXPAX@Z                                   // 0x00617534    e85f791900
                         add                esp, 0x04                                      // 0x00617539    83c404
.Lbl_addr_0x0061753c:    dec                ebp                                            // 0x0061753c    4d
                         {disp8} jne        .Lbl_addr_0x00617529                           // 0x0061753d    75ea
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x0061753f    8b7c2410
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                    // 0x00617543    8b6c2418
.Lbl_addr_0x00617547:    push               ebx                                            // 0x00617547    53
                         call               ??3@YAXPAX@Z                                   // 0x00617548    e84b791900
                         add                esp, 0x04                                      // 0x0061754d    83c404
                         pop                ebx                                            // 0x00617550    5b
.Lbl_addr_0x00617551:    push               edi                                            // 0x00617551    57
                         call               ??3@YAXPAX@Z                                   // 0x00617552    e841791900
                         add                esp, 0x04                                      // 0x00617557    83c404
.Lbl_addr_0x0061755a:    xor.s              edi, edi                                       // 0x0061755a    33ff
                         {disp32} mov       dword ptr [esi + ebp * 0x4 + 0x00004804], edi  // 0x0061755c    89bcae04480000
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]              // 0x00617563    8b8600480000
                         dec                eax                                            // 0x00617569    48
                         {disp32} mov       dword ptr [esi + 0x00004800], eax              // 0x0061756a    898600480000
                         {disp8} je         .Lbl_addr_0x00617580                           // 0x00617570    740e
                         {disp32} mov       eax, dword ptr [esi + eax * 0x4 + 0x00004804]  // 0x00617572    8b848604480000
                         {disp32} mov       dword ptr [esi + ebp * 0x4 + 0x00004804], eax  // 0x00617579    8984ae04480000
.Lbl_addr_0x00617580:    {disp32} mov       edx, dword ptr [esi + 0x00004800]              // 0x00617580    8b9600480000
                         {disp32} lea       ecx, dword ptr [esi + 0x00004804]              // 0x00617586    8d8e04480000
                         push               ecx                                            // 0x0061758c    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00004828]              // 0x0061758d    8b8e28480000
                         push               edx                                            // 0x00617593    52
                         call               @Init__14LH3DObjectHairFlPP9HairGroup@16       // 0x00617594    e8a70d2300
                         cmp                dword ptr [esi + 0x00004800], edi              // 0x00617599    39be00480000
                         {disp8} jne        .Lbl_addr_0x006175ad                           // 0x0061759f    750c
                         {disp32} mov       eax, dword ptr [esi + 0x0000482c]              // 0x006175a1    8b862c480000
                         {disp32} mov       dword ptr [eax + 0x00000088], edi              // 0x006175a7    89b888000000
.Lbl_addr_0x006175ad:    pop                edi                                            // 0x006175ad    5f
                         pop                esi                                            // 0x006175ae    5e
                         pop                ebp                                            // 0x006175af    5d
                         pop                ecx                                            // 0x006175b0    59
                         ret                0x0004                                         // 0x006175b1    c20400
                         nop                                                               // 0x006175b4    90
                         nop                                                               // 0x006175b5    90
                         nop                                                               // 0x006175b6    90
                         nop                                                               // 0x006175b7    90
                         nop                                                               // 0x006175b8    90
                         nop                                                               // 0x006175b9    90
                         nop                                                               // 0x006175ba    90
                         nop                                                               // 0x006175bb    90
                         nop                                                               // 0x006175bc    90
                         nop                                                               // 0x006175bd    90
                         nop                                                               // 0x006175be    90
                         nop                                                               // 0x006175bf    90
                         {disp32} mov       edx, dword ptr [ecx + 0x00004824]              // 0x006175c0    8b9124480000
                         {disp32} mov       eax, dword ptr [ecx + 0x00004800]              // 0x006175c6    8b8100480000
                         push               edi                                            // 0x006175cc    57
                         xor                edx, 0x01                                      // 0x006175cd    83f201
                         xor.s              edi, edi                                       // 0x006175d0    33ff
                         test               eax, eax                                       // 0x006175d2    85c0
                         {disp32} mov       dword ptr [ecx + 0x00004824], edx              // 0x006175d4    899124480000
                         {disp8} jle        .Lbl_addr_0x00617614                           // 0x006175da    7e38
                         push               ebx                                            // 0x006175dc    53
                         push               esi                                            // 0x006175dd    56
                         {disp32} lea       esi, dword ptr [ecx + 0x00004804]              // 0x006175de    8db104480000
.Lbl_addr_0x006175e4:    {disp32} mov       eax, dword ptr [ecx + 0x00004824]              // 0x006175e4    8b8124480000
                         test               eax, eax                                       // 0x006175ea    85c0
                         mov                eax, dword ptr [esi]                           // 0x006175ec    8b06
                         {disp8} je         .Lbl_addr_0x006175fe                           // 0x006175ee    740e
                         {disp8} mov        ebx, dword ptr [eax + 0x5c]                    // 0x006175f0    8b585c
                         xor.s              edx, edx                                       // 0x006175f3    33d2
                         test               ebx, ebx                                       // 0x006175f5    85db
                         setne              dl                                             // 0x006175f7    0f95c2
                         mov                dword ptr [eax], edx                           // 0x006175fa    8910
                         {disp8} jmp        .Lbl_addr_0x00617604                           // 0x006175fc    eb06
.Lbl_addr_0x006175fe:    mov                dword ptr [eax], 0x00000000                    // 0x006175fe    c70000000000
.Lbl_addr_0x00617604:    {disp32} mov       eax, dword ptr [ecx + 0x00004800]              // 0x00617604    8b8100480000
                         inc                edi                                            // 0x0061760a    47
                         add                esi, 0x04                                      // 0x0061760b    83c604
                         cmp.s              edi, eax                                       // 0x0061760e    3bf8
                         {disp8} jl         .Lbl_addr_0x006175e4                           // 0x00617610    7cd2
                         pop                esi                                            // 0x00617612    5e
                         pop                ebx                                            // 0x00617613    5b
.Lbl_addr_0x00617614:    pop                edi                                            // 0x00617614    5f
                         ret                                                               // 0x00617615    c3
                         nop                                                               // 0x00617616    90
                         nop                                                               // 0x00617617    90
                         nop                                                               // 0x00617618    90
                         nop                                                               // 0x00617619    90
                         nop                                                               // 0x0061761a    90
                         nop                                                               // 0x0061761b    90
                         nop                                                               // 0x0061761c    90
                         nop                                                               // 0x0061761d    90
                         nop                                                               // 0x0061761e    90
                         nop                                                               // 0x0061761f    90
@SelectMesh__9MorphableFl@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00617620    8b442404
                         sub                esp, 0x30                                      // 0x00617624    83ec30
                         push               ebx                                            // 0x00617627    53
                         mov.s              ebx, ecx                                       // 0x00617628    8bd9
                         {disp32} mov       ecx, dword ptr [ebx + eax * 0x4 + 0x000000b4]  // 0x0061762a    8b8c83b4000000
                         test               ecx, ecx                                       // 0x00617631    85c9
                         push               esi                                            // 0x00617633    56
                         push               edi                                            // 0x00617634    57
                         {disp8} je         .Lbl_addr_0x0061763d                           // 0x00617635    7406
                         {disp32} mov       dword ptr [ebx + 0x00000098], eax              // 0x00617637    898398000000
.Lbl_addr_0x0061763d:    {disp32} mov       eax, dword ptr [ebx + 0x00000098]              // 0x0061763d    8b8398000000
                         test               eax, eax                                       // 0x00617643    85c0
                         {disp32} jne       .Lbl_addr_0x00617708                           // 0x00617645    0f85bd000000
                         mov                eax, dword ptr [ebx]                           // 0x0061764b    8b03
                         mov.s              ecx, ebx                                       // 0x0061764d    8bcb
                         call               dword ptr [eax + 0xc]                          // 0x0061764f    ff500c
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]              // 0x00617652    8b8b2c480000
                         test               ecx, ecx                                       // 0x00617658    85c9
                         {disp32} je        .Lbl_addr_0x006177d3                           // 0x0061765a    0f8473010000
                         {disp8} mov        edx, dword ptr [ebx + 0x78]                    // 0x00617660    8b5378
                         {disp8} mov        eax, dword ptr [ebx + 0x7c]                    // 0x00617663    8b437c
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x00617666    89542430
                         {disp32} mov       edx, dword ptr [ebx + 0x00000080]              // 0x0061766a    8b9380000000
                         {disp8} mov        dword ptr [esp + 0x38], edx                    // 0x00617670    89542438
                         {disp32} mov       edx, dword ptr [ebx + 0x00000098]              // 0x00617674    8b9398000000
                         {disp32} mov       edx, dword ptr [ebx + edx * 0x4 + 0x000000b4]  // 0x0061767a    8b9493b4000000
                         push               0x0                                            // 0x00617681    6a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                    // 0x00617683    89442438
                         mov                eax, dword ptr [ecx]                           // 0x00617687    8b01
                         push               0x0                                            // 0x00617689    6a00
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000             // 0x0061768b    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x00617693    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x0061769b    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x006176a3    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x006176ab    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000             // 0x006176b3    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f800000             // 0x006176bb    c74424340000803f
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f800000             // 0x006176c3    c74424240000803f
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000             // 0x006176cb    c74424140000803f
                         call               dword ptr [eax + 0xf4]                         // 0x006176d3    ff90f4000000
                         {disp32} mov       edi, dword ptr [ebx + 0x0000482c]              // 0x006176d9    8bbb2c480000
                         add                edi, 0x14                                      // 0x006176df    83c714
                         mov                ecx, 0x0000000c                                // 0x006176e2    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                    // 0x006176e7    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x006176eb    f3a5
                         {disp32} mov       eax, dword ptr [ebx + 0x0000482c]              // 0x006176ed    8b832c480000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f0]              // 0x006176f3    8b8bf0470000
                         pop                edi                                            // 0x006176f9    5f
                         pop                esi                                            // 0x006176fa    5e
                         {disp32} mov       dword ptr [eax + 0x00000080], ecx              // 0x006176fb    898880000000
                         pop                ebx                                            // 0x00617701    5b
                         add                esp, 0x30                                      // 0x00617702    83c430
                         ret                0x0004                                         // 0x00617705    c20400
.Lbl_addr_0x00617708:    {disp32} mov       ecx, dword ptr [ebx + 0x000047f4]              // 0x00617708    8b8bf4470000
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                    // 0x0061770e    8d54240c
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x00617712    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000             // 0x0061771a    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000             // 0x00617722    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x0061772a    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000             // 0x00617732    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x0061773a    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000             // 0x00617742    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x0061774a    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x00617752    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f800000             // 0x0061775a    c744242c0000803f
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f800000             // 0x00617762    c744241c0000803f
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000             // 0x0061776a    c744240c0000803f
                         {disp32} mov       eax, dword ptr [ebx + eax * 0x4 + 0x000000b4]  // 0x00617772    8b8483b4000000
                         push               edx                                            // 0x00617779    52
                         push               eax                                            // 0x0061777a    50
                         push               ecx                                            // 0x0061777b    51
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x0061777c    e84f2a2200
                         fstp               st(0)                                          // 0x00617781    ddd8
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00617783    8b83b8470000
                         add                esp, 0x0c                                      // 0x00617789    83c40c
                         xor.s              edi, edi                                       // 0x0061778c    33ff
                         test               eax, eax                                       // 0x0061778e    85c0
                         {disp8} jle        .Lbl_addr_0x006177b9                           // 0x00617790    7e27
                         xor.s              esi, esi                                       // 0x00617792    33f6
.Lbl_addr_0x00617794:    {disp32} mov       edx, dword ptr [ebx + 0x000047f4]              // 0x00617794    8b93f4470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f8]              // 0x0061779a    8b83f8470000
                         mov.s              ecx, esi                                       // 0x006177a0    8bce
                         add.s              edx, esi                                       // 0x006177a2    03d6
                         add.s              ecx, eax                                       // 0x006177a4    03c8
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x006177a6    e8e53a1e00
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x006177ab    8b83b8470000
                         inc                edi                                            // 0x006177b1    47
                         add                esi, 0x30                                      // 0x006177b2    83c630
                         cmp.s              edi, eax                                       // 0x006177b5    3bf8
                         {disp8} jl         .Lbl_addr_0x00617794                           // 0x006177b7    7cdb
.Lbl_addr_0x006177b9:    push               0x0                                            // 0x006177b9    6a00
                         push               0x0                                            // 0x006177bb    6a00
                         mov.s              ecx, ebx                                       // 0x006177bd    8bcb
                         call               @GetAnim__9MorphableFll@16                     // 0x006177bf    e88c1e0000
                         test               eax, eax                                       // 0x006177c4    85c0
                         {disp8} je         .Lbl_addr_0x006177d3                           // 0x006177c6    740b
                         {disp8} mov        edx, dword ptr [eax + 0x34]                    // 0x006177c8    8b5034
                         mov                eax, dword ptr [edx]                           // 0x006177cb    8b02
                         {disp32} mov       dword ptr [ebx + 0x000047fc], eax              // 0x006177cd    8983fc470000
.Lbl_addr_0x006177d3:    pop                edi                                            // 0x006177d3    5f
                         pop                esi                                            // 0x006177d4    5e
                         pop                ebx                                            // 0x006177d5    5b
                         add                esp, 0x30                                      // 0x006177d6    83c430
                         ret                0x0004                                         // 0x006177d9    c20400
                         nop                                                               // 0x006177dc    90
                         nop                                                               // 0x006177dd    90
                         nop                                                               // 0x006177de    90
                         nop                                                               // 0x006177df    90
_jmp_addr_0x006177e0:    cmp                dword ptr [ecx + 0x00000088], 0x01             // 0x006177e0    83b98800000001
                         {disp32} mov       dword ptr [ecx + 0x000047bc], 0x00000000       // 0x006177e7    c781bc47000000000000
                         {disp8} jne        .Lbl_addr_0x00617803                           // 0x006177f1    7510
                         push               0x0                                            // 0x006177f3    6a00
                         push               0x1                                            // 0x006177f5    6a01
                         push               0x0                                            // 0x006177f7    6a00
                         mov                ecx, 0x00e85204                                // 0x006177f9    b90452e800
                         call               @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20                           // 0x006177fe    e8addb1c00
.Lbl_addr_0x00617803:    ret                                                               // 0x00617803    c3
                         nop                                                               // 0x00617804    90
                         nop                                                               // 0x00617805    90
                         nop                                                               // 0x00617806    90
                         nop                                                               // 0x00617807    90
                         nop                                                               // 0x00617808    90
                         nop                                                               // 0x00617809    90
                         nop                                                               // 0x0061780a    90
                         nop                                                               // 0x0061780b    90
                         nop                                                               // 0x0061780c    90
                         nop                                                               // 0x0061780d    90
                         nop                                                               // 0x0061780e    90
                         nop                                                               // 0x0061780f    90
                         {disp32} mov       dword ptr [ecx + 0x000047bc], 0x00000001       // 0x00617810    c781bc47000001000000
                         {disp32} mov       dword ptr [ecx + 0x000047d0], 0x00000000       // 0x0061781a    c781d047000000000000
                         {disp32} mov       dword ptr [ecx + 0x000047e0], 0x3f800000       // 0x00617824    c781e04700000000803f
                         {disp32} lea       eax, dword ptr [ecx + 0x000047e4]              // 0x0061782e    8d81e4470000
                         mov                edx, 0x00000003                                // 0x00617834    ba03000000
.Lbl_addr_0x00617839:    {disp8} mov        dword ptr [eax + -0x20], 0x00000000            // 0x00617839    c740e000000000
                         mov                dword ptr [eax], 0x00000000                    // 0x00617840    c70000000000
                         add                eax, 0x04                                      // 0x00617846    83c004
                         dec                edx                                            // 0x00617849    4a
                         {disp8} jne        .Lbl_addr_0x00617839                           // 0x0061784a    75ed
                         cmp                dword ptr [ecx + 0x00000088], 0x01             // 0x0061784c    83b98800000001
                         {disp8} jne        .Lbl_addr_0x0061785a                           // 0x00617853    7505
                         {disp32} jmp       ?SetCursorOn@FrontEnd@@SAXXZ                   // 0x00617855    e9f64bf2ff
.Lbl_addr_0x0061785a:    ret                                                               // 0x0061785a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                           // 0x0061785b    e8999fdeff
_jmp_addr_0x00617860:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00617860    8b442404
                         cmp                eax, -0x01                                     // 0x00617864    83f8ff
                         push               esi                                            // 0x00617867    56
                         mov.s              esi, ecx                                       // 0x00617868    8bf1
                         {disp8} jne        .Lbl_addr_0x0061787a                           // 0x0061786a    750e
                         {disp32} mov       dword ptr [esi + 0x000047c0], 0x00000000       // 0x0061786c    c786c047000000000000
                         pop                esi                                            // 0x00617876    5e
                         ret                0x0004                                         // 0x00617877    c20400
.Lbl_addr_0x0061787a:    push               0x0                                            // 0x0061787a    6a00
                         push               eax                                            // 0x0061787c    50
                         mov.s              ecx, esi                                       // 0x0061787d    8bce
                         call               @GetAnim__9MorphableFll@16                     // 0x0061787f    e8cc1d0000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax              // 0x00617884    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000       // 0x0061788a    c786e04700000000803f
                         pop                esi                                            // 0x00617894    5e
                         ret                0x0004                                         // 0x00617895    c20400
                         nop                                                               // 0x00617898    90
                         nop                                                               // 0x00617899    90
                         nop                                                               // 0x0061789a    90
                         nop                                                               // 0x0061789b    90
                         nop                                                               // 0x0061789c    90
                         nop                                                               // 0x0061789d    90
                         nop                                                               // 0x0061789e    90
                         nop                                                               // 0x0061789f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006178a0    8b442404
                         cmp                eax, -0x01                                     // 0x006178a4    83f8ff
                         {disp8} jne        .Lbl_addr_0x006178ae                           // 0x006178a7    7505
                         xor.s              eax, eax                                       // 0x006178a9    33c0
                         ret                0x0004                                         // 0x006178ab    c20400
.Lbl_addr_0x006178ae:    push               0x0                                            // 0x006178ae    6a00
                         push               eax                                            // 0x006178b0    50
                         call               @GetAnim__9MorphableFll@16                     // 0x006178b1    e89a1d0000
                         ret                0x0004                                         // 0x006178b6    c20400
                         nop                                                               // 0x006178b9    90
                         nop                                                               // 0x006178ba    90
                         nop                                                               // 0x006178bb    90
                         nop                                                               // 0x006178bc    90
                         nop                                                               // 0x006178bd    90
                         nop                                                               // 0x006178be    90
                         nop                                                               // 0x006178bf    90
.Lbl_addr_0x006178c0:    {disp32} mov       edx, dword ptr [ecx + 0x000047b4]              // 0x006178c0    8b91b4470000
                         cmp                edx, 0x10                                      // 0x006178c6    83fa10
                         {disp32} je        .Lbl_addr_0x00617969                           // 0x006178c9    0f849a000000
                         push               ebx                                            // 0x006178cf    53
                         push               esi                                            // 0x006178d0    56
                         push               edi                                            // 0x006178d1    57
                         xor.s              esi, esi                                       // 0x006178d2    33f6
                         xor.s              edi, edi                                       // 0x006178d4    33ff
                         test               edx, edx                                       // 0x006178d6    85d2
                         {disp8} jle        .Lbl_addr_0x00617900                           // 0x006178d8    7e26
                         {disp32} lea       ebx, dword ptr [ecx + 0x000046b4]              // 0x006178da    8d99b4460000
.Lbl_addr_0x006178e0:    test               edi, edi                                       // 0x006178e0    85ff
                         {disp8} jne        .Lbl_addr_0x00617900                           // 0x006178e2    751c
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x006178e4    d9442410
                         fcomp              dword ptr [ebx]                                // 0x006178e8    d81b
                         fnstsw             ax                                             // 0x006178ea    dfe0
                         test               ah, 0x41                                       // 0x006178ec    f6c441
                         {disp8} jne        .Lbl_addr_0x006178f7                           // 0x006178ef    7506
                         inc                esi                                            // 0x006178f1    46
                         add                ebx, 0x10                                      // 0x006178f2    83c310
                         {disp8} jmp        .Lbl_addr_0x006178fc                           // 0x006178f5    eb05
.Lbl_addr_0x006178f7:    mov                edi, 0x00000001                                // 0x006178f7    bf01000000
.Lbl_addr_0x006178fc:    cmp.s              esi, edx                                       // 0x006178fc    3bf2
                         {disp8} jl         .Lbl_addr_0x006178e0                           // 0x006178fe    7ce0
.Lbl_addr_0x00617900:    cmp.s              edx, esi                                       // 0x00617900    3bd6
                         {disp8} jle        .Lbl_addr_0x00617934                           // 0x00617902    7e30
                         mov.s              eax, edx                                       // 0x00617904    8bc2
                         shl                eax, 4                                         // 0x00617906    c1e004
                         push               ebp                                            // 0x00617909    55
                         {disp32} lea       eax, dword ptr [eax + ecx * 0x1 + 0x000046b4]  // 0x0061790a    8d8408b4460000
                         sub.s              edx, esi                                       // 0x00617911    2bd6
.Lbl_addr_0x00617913:    dec                edx                                            // 0x00617913    4a
                         {disp8} lea        edi, dword ptr [eax + -0x10]                   // 0x00617914    8d78f0
                         mov.s              ebx, edi                                       // 0x00617917    8bdf
                         mov                ebp, dword ptr [ebx]                           // 0x00617919    8b2b
                         mov                dword ptr [eax], ebp                           // 0x0061791b    8928
                         {disp8} mov        ebp, dword ptr [ebx + 0x04]                    // 0x0061791d    8b6b04
                         {disp8} mov        dword ptr [eax + 0x04], ebp                    // 0x00617920    896804
                         {disp8} mov        ebp, dword ptr [ebx + 0x08]                    // 0x00617923    8b6b08
                         {disp8} mov        dword ptr [eax + 0x08], ebp                    // 0x00617926    896808
                         {disp8} mov        ebx, dword ptr [ebx + 0x0c]                    // 0x00617929    8b5b0c
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                    // 0x0061792c    89580c
                         mov.s              eax, edi                                       // 0x0061792f    8bc7
                         {disp8} jne        .Lbl_addr_0x00617913                           // 0x00617931    75e0
                         pop                ebp                                            // 0x00617933    5d
.Lbl_addr_0x00617934:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x00617934    8b542410
                         shl                esi, 4                                         // 0x00617938    c1e604
                         {disp32} lea       eax, dword ptr [esi + ecx * 0x1 + 0x000046b4]  // 0x0061793b    8d840eb4460000
                         mov                dword ptr [eax], edx                           // 0x00617942    8910
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00617944    8b542414
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x00617948    895004
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x0061794b    8b542418
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x0061794f    895008
                         {disp8} mov        dl, byte ptr [esp + 0x1c]                      // 0x00617952    8a54241c
                         {disp8} mov        byte ptr [eax + 0x0c], dl                      // 0x00617956    88500c
                         {disp32} mov       eax, dword ptr [ecx + 0x000047b4]              // 0x00617959    8b81b4470000
                         pop                edi                                            // 0x0061795f    5f
                         inc                eax                                            // 0x00617960    40
                         pop                esi                                            // 0x00617961    5e
                         {disp32} mov       dword ptr [ecx + 0x000047b4], eax              // 0x00617962    8981b4470000
                         pop                ebx                                            // 0x00617968    5b
.Lbl_addr_0x00617969:    ret                0x0010                                         // 0x00617969    c21000
                         nop                                                               // 0x0061796c    90
                         nop                                                               // 0x0061796d    90
                         nop                                                               // 0x0061796e    90
                         nop                                                               // 0x0061796f    90
_jmp_addr_0x00617970:    push               ebx                                            // 0x00617970    53
                         push               ebp                                            // 0x00617971    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                    // 0x00617972    8b6c2414
                         push               esi                                            // 0x00617976    56
                         push               edi                                            // 0x00617977    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x00617978    8b7c2418
                         cmp.s              edi, ebp                                       // 0x0061797c    3bfd
                         mov.s              ebx, ecx                                       // 0x0061797e    8bd9
                         {disp8} je         .Lbl_addr_0x006179fc                           // 0x00617980    747a
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x00617982    8b442414
                         {disp32} mov       esi, dword ptr [ebx + eax * 0x4 + 0x00004314]  // 0x00617986    8bb48314430000
                         test               esi, esi                                       // 0x0061798d    85f6
                         {disp8} je         .Lbl_addr_0x006179fc                           // 0x0061798f    746b
.Lbl_addr_0x00617991:    {disp8} mov        eax, dword ptr [esi + 0x04]                    // 0x00617991    8b4604
                         cmp.s              eax, edi                                       // 0x00617994    3bc7
                         {disp8} jl         .Lbl_addr_0x006179f5                           // 0x00617996    7c5d
                         cmp.s              eax, ebp                                       // 0x00617998    3bc5
                         {disp8} jge        .Lbl_addr_0x006179f5                           // 0x0061799a    7d59
                         mov                ecx, dword ptr [esi]                           // 0x0061799c    8b0e
                         mov.s              edx, ecx                                       // 0x0061799e    8bd1
                         sub                edx, 0x00                                      // 0x006179a0    83ea00
                         {disp8} je         .Lbl_addr_0x006179c5                           // 0x006179a3    7420
                         dec                edx                                            // 0x006179a5    4a
                         {disp8} je         .Lbl_addr_0x006179ad                           // 0x006179a6    7405
                         dec                edx                                            // 0x006179a8    4a
                         {disp8} je         .Lbl_addr_0x006179c5                           // 0x006179a9    741a
                         {disp8} jmp        .Lbl_addr_0x006179f5                           // 0x006179ab    eb48
.Lbl_addr_0x006179ad:    {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x006179ad    8b460c
                         {disp8} mov        edx, dword ptr [esi + 0x08]                    // 0x006179b0    8b5608
                         xor.s              ecx, ecx                                       // 0x006179b3    33c9
                         test               eax, eax                                       // 0x006179b5    85c0
                         {disp32} mov       eax, dword ptr [ebx + edx * 0x4 + 0x00004804]  // 0x006179b7    8b849304480000
                         sete               cl                                             // 0x006179be    0f94c1
                         mov                dword ptr [eax], ecx                           // 0x006179c1    8908
                         {disp8} jmp        .Lbl_addr_0x006179f5                           // 0x006179c3    eb30
.Lbl_addr_0x006179c5:    {disp8} mov        edx, dword ptr [esi + 0x0c]                    // 0x006179c5    8b560c
                         cmp                ecx, 0x02                                      // 0x006179c8    83f902
                         sete               cl                                             // 0x006179cb    0f94c1
                         sub.s              eax, edi                                       // 0x006179ce    2bc7
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x006179d0    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x006179d4    db442418
                         push               ecx                                            // 0x006179d8    51
                         push               edx                                            // 0x006179d9    52
                         mov.s              edx, ebp                                       // 0x006179da    8bd5
                         sub.s              edx, edi                                       // 0x006179dc    2bd7
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x006179de    89542420
                         {disp8} fidiv      dword ptr [esp + 0x20]                         // 0x006179e2    da742420
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                    // 0x006179e6    8b4e08
                         push               ecx                                            // 0x006179e9    51
                         push               ecx                                            // 0x006179ea    51
                         mov.s              ecx, ebx                                       // 0x006179eb    8bcb
                         fstp               dword ptr [esp]                                // 0x006179ed    d91c24
                         call               .Lbl_addr_0x006178c0                           // 0x006179f0    e8cbfeffff
.Lbl_addr_0x006179f5:    {disp8} mov        esi, dword ptr [esi + 0x10]                    // 0x006179f5    8b7610
                         test               esi, esi                                       // 0x006179f8    85f6
                         {disp8} jne        .Lbl_addr_0x00617991                           // 0x006179fa    7595
.Lbl_addr_0x006179fc:    pop                edi                                            // 0x006179fc    5f
                         pop                esi                                            // 0x006179fd    5e
                         pop                ebp                                            // 0x006179fe    5d
                         pop                ebx                                            // 0x006179ff    5b
                         ret                0x000c                                         // 0x00617a00    c20c00
                         nop                                                               // 0x00617a03    90
                         nop                                                               // 0x00617a04    90
                         nop                                                               // 0x00617a05    90
                         nop                                                               // 0x00617a06    90
                         nop                                                               // 0x00617a07    90
                         nop                                                               // 0x00617a08    90
                         nop                                                               // 0x00617a09    90
                         nop                                                               // 0x00617a0a    90
                         nop                                                               // 0x00617a0b    90
                         nop                                                               // 0x00617a0c    90
                         nop                                                               // 0x00617a0d    90
                         nop                                                               // 0x00617a0e    90
                         nop                                                               // 0x00617a0f    90
_jmp_addr_0x00617a10:    push               ebx                                            // 0x00617a10    53
                         push               ebp                                            // 0x00617a11    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                    // 0x00617a12    8b6c240c
                         push               esi                                            // 0x00617a16    56
                         push               edi                                            // 0x00617a17    57
                         push               0x0                                            // 0x00617a18    6a00
                         mov.s              ebx, ecx                                       // 0x00617a1a    8bd9
                         push               ebp                                            // 0x00617a1c    55
                         call               @GetAnim__9MorphableFll@16                     // 0x00617a1d    e82e1c0000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x00617a22    8b7c2418
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00617a26    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x00617a2a    8b44241c
                         test               eax, eax                                       // 0x00617a2e    85c0
                         lea                esi, dword ptr [edi + eax * 0x1]               // 0x00617a30    8d3407
                         {disp8} jne        .Lbl_addr_0x00617a3e                           // 0x00617a33    7509
                         mov.s              eax, edi                                       // 0x00617a35    8bc7
                         pop                edi                                            // 0x00617a37    5f
                         pop                esi                                            // 0x00617a38    5e
                         pop                ebp                                            // 0x00617a39    5d
                         pop                ebx                                            // 0x00617a3a    5b
                         ret                0x000c                                         // 0x00617a3b    c20c00
.Lbl_addr_0x00617a3e:    push               esi                                            // 0x00617a3e    56
                         push               edi                                            // 0x00617a3f    57
                         push               ebp                                            // 0x00617a40    55
                         mov.s              ecx, ebx                                       // 0x00617a41    8bcb
                         call               _jmp_addr_0x00617970                           // 0x00617a43    e828ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x00617a48    8b442414
                         mov                eax, dword ptr [eax]                           // 0x00617a4c    8b00
                         cmp.s              esi, eax                                       // 0x00617a4e    3bf0
                         {disp8} jl         .Lbl_addr_0x00617a64                           // 0x00617a50    7c12
                         sub.s              esi, eax                                       // 0x00617a52    2bf0
                         test               esi, esi                                       // 0x00617a54    85f6
                         {disp8} jle        .Lbl_addr_0x00617a64                           // 0x00617a56    7e0c
                         push               esi                                            // 0x00617a58    56
                         sub.s              edi, eax                                       // 0x00617a59    2bf8
                         push               edi                                            // 0x00617a5b    57
                         push               ebp                                            // 0x00617a5c    55
                         mov.s              ecx, ebx                                       // 0x00617a5d    8bcb
                         call               _jmp_addr_0x00617970                           // 0x00617a5f    e80cffffff
.Lbl_addr_0x00617a64:    {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00617a64    8b4c2414
                         mov                eax, dword ptr [ecx]                           // 0x00617a68    8b01
                         cmp.s              esi, eax                                       // 0x00617a6a    3bf0
                         {disp8} jl         .Lbl_addr_0x00617a71                           // 0x00617a6c    7c03
                         {disp8} lea        esi, dword ptr [eax + -0x01]                   // 0x00617a6e    8d70ff
.Lbl_addr_0x00617a71:    pop                edi                                            // 0x00617a71    5f
                         mov.s              eax, esi                                       // 0x00617a72    8bc6
                         pop                esi                                            // 0x00617a74    5e
                         pop                ebp                                            // 0x00617a75    5d
                         pop                ebx                                            // 0x00617a76    5b
                         ret                0x000c                                         // 0x00617a77    c20c00
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]   // 0x00617a7a    ff1578998a00
_jmp_addr_0x00617a80:    push               ebx                                            // 0x00617a80    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00617a81    8b5c2408
                         push               esi                                            // 0x00617a85    56
                         push               edi                                            // 0x00617a86    57
                         push               0x0                                            // 0x00617a87    6a00
                         mov.s              esi, ecx                                       // 0x00617a89    8bf1
                         push               ebx                                            // 0x00617a8b    53
                         call               @GetAnim__9MorphableFll@16                     // 0x00617a8c    e8bf1b0000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00617a91    8b542414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x00617a95    8b4c2418
                         mov                eax, dword ptr [eax]                           // 0x00617a99    8b00
                         add.s              ecx, edx                                       // 0x00617a9b    03ca
                         cmp.s              eax, ecx                                       // 0x00617a9d    3bc1
                         mov.s              edi, eax                                       // 0x00617a9f    8bf8
                         {disp8} jl         .Lbl_addr_0x00617aa5                           // 0x00617aa1    7c02
                         mov.s              edi, ecx                                       // 0x00617aa3    8bf9
.Lbl_addr_0x00617aa5:    push               edi                                            // 0x00617aa5    57
                         push               edx                                            // 0x00617aa6    52
                         push               ebx                                            // 0x00617aa7    53
                         mov.s              ecx, esi                                       // 0x00617aa8    8bce
                         call               _jmp_addr_0x00617970                           // 0x00617aaa    e8c1feffff
                         mov.s              eax, edi                                       // 0x00617aaf    8bc7
                         pop                edi                                            // 0x00617ab1    5f
                         pop                esi                                            // 0x00617ab2    5e
                         pop                ebx                                            // 0x00617ab3    5b
                         ret                0x000c                                         // 0x00617ab4    c20c00
                         nop                                                               // 0x00617ab7    90
                         nop                                                               // 0x00617ab8    90
                         nop                                                               // 0x00617ab9    90
                         nop                                                               // 0x00617aba    90
                         nop                                                               // 0x00617abb    90
                         nop                                                               // 0x00617abc    90
                         nop                                                               // 0x00617abd    90
                         nop                                                               // 0x00617abe    90
                         nop                                                               // 0x00617abf    90
                         xor.s              eax, eax                                       // 0x00617ac0    33c0
                         ret                0x000c                                         // 0x00617ac2    c20c00
                         nop                                                               // 0x00617ac5    90
                         nop                                                               // 0x00617ac6    90
                         nop                                                               // 0x00617ac7    90
                         nop                                                               // 0x00617ac8    90
                         nop                                                               // 0x00617ac9    90
                         nop                                                               // 0x00617aca    90
                         nop                                                               // 0x00617acb    90
                         nop                                                               // 0x00617acc    90
                         nop                                                               // 0x00617acd    90
                         nop                                                               // 0x00617ace    90
                         nop                                                               // 0x00617acf    90
                         xor.s              eax, eax                                       // 0x00617ad0    33c0
                         ret                0x000c                                         // 0x00617ad2    c20c00
                         nop                                                               // 0x00617ad5    90
                         nop                                                               // 0x00617ad6    90
                         nop                                                               // 0x00617ad7    90
                         nop                                                               // 0x00617ad8    90
                         nop                                                               // 0x00617ad9    90
                         nop                                                               // 0x00617ada    90
                         nop                                                               // 0x00617adb    90
                         nop                                                               // 0x00617adc    90
                         nop                                                               // 0x00617add    90
                         nop                                                               // 0x00617ade    90
                         nop                                                               // 0x00617adf    90
@ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20:    sub                esp, 0x44                                      // 0x00617ae0    83ec44
                         push               ebx                                            // 0x00617ae3    53
                         push               ebp                                            // 0x00617ae4    55
                         push               esi                                            // 0x00617ae5    56
                         {disp8} mov        esi, dword ptr [esp + 0x54]                    // 0x00617ae6    8b742454
                         push               edi                                            // 0x00617aea    57
                         push               -0x1                                           // 0x00617aeb    6aff
                         push               0x4                                            // 0x00617aed    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x60]                    // 0x00617aef    8d442460
                         mov.s              edi, ecx                                       // 0x00617af3    8bf9
                         push               eax                                            // 0x00617af5    50
                         mov.s              ecx, esi                                       // 0x00617af6    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617af8    e843651a00
                         cmp                dword ptr [esp + 0x58], 0x04                   // 0x00617afd    837c245804
                         push               -0x1                                           // 0x00617b02    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x00617b04    8d4c2418
                         push               0x20                                           // 0x00617b08    6a20
                         push               ecx                                            // 0x00617b0a    51
                         mov.s              ecx, esi                                       // 0x00617b0b    8bce
                         {disp32} jge       .Lbl_addr_0x00617c5c                           // 0x00617b0d    0f8d49010000
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617b13    e828651a00
                         mov                edx, dword ptr [edi]                           // 0x00617b18    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x00617b1a    8d442414
                         push               eax                                            // 0x00617b1e    50
                         mov.s              ecx, edi                                       // 0x00617b1f    8bcf
                         call               dword ptr [edx + 4]                            // 0x00617b21    ff5204
                         test               eax, eax                                       // 0x00617b24    85c0
                         {disp8} jne        .Lbl_addr_0x00617b32                           // 0x00617b26    750a
                         pop                edi                                            // 0x00617b28    5f
                         pop                esi                                            // 0x00617b29    5e
                         pop                ebp                                            // 0x00617b2a    5d
                         pop                ebx                                            // 0x00617b2b    5b
                         add                esp, 0x44                                      // 0x00617b2c    83c444
                         ret                0x000c                                         // 0x00617b2f    c20c00
.Lbl_addr_0x00617b32:    {disp8} mov        ecx, dword ptr [esp + 0x60]                    // 0x00617b32    8b4c2460
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x00617b36    8b54245c
                         push               ecx                                            // 0x00617b3a    51
                         push               edx                                            // 0x00617b3b    52
                         push               esi                                            // 0x00617b3c    56
                         {disp32} lea       ecx, dword ptr [edi + 0x00000cb4]              // 0x00617b3d    8d8fb40c0000
                         call               _jmp_addr_0x006199f0                           // 0x00617b43    e8a81e0000
                         test               eax, eax                                       // 0x00617b48    85c0
                         {disp8} jne        .Lbl_addr_0x00617b56                           // 0x00617b4a    750a
                         pop                edi                                            // 0x00617b4c    5f
                         pop                esi                                            // 0x00617b4d    5e
                         pop                ebp                                            // 0x00617b4e    5d
                         pop                ebx                                            // 0x00617b4f    5b
                         add                esp, 0x44                                      // 0x00617b50    83c444
                         ret                0x000c                                         // 0x00617b53    c20c00
.Lbl_addr_0x00617b56:    mov                ebx, 0x00000002                                // 0x00617b56    bb02000000
                         {disp32} lea       ebp, dword ptr [edi + 0x00001794]              // 0x00617b5b    8daf94170000
.Lbl_addr_0x00617b61:    push               -0x1                                           // 0x00617b61    6aff
                         push               0x20                                           // 0x00617b63    6a20
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x00617b65    8d44241c
                         push               eax                                            // 0x00617b69    50
                         mov.s              ecx, esi                                       // 0x00617b6a    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617b6c    e8cf641a00
                         {disp8} mov        al, byte ptr [esp + 0x14]                      // 0x00617b71    8a442414
                         test               al, al                                         // 0x00617b75    84c0
                         {disp8} je         .Lbl_addr_0x00617ba8                           // 0x00617b77    742f
                         push               ebx                                            // 0x00617b79    53
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x00617b7a    8d4c2418
                         push               ecx                                            // 0x00617b7e    51
                         mov.s              ecx, edi                                       // 0x00617b7f    8bcf
                         call               @LoadMesh__9MorphableFPcl@16                   // 0x00617b81    e89a0b0000
                         test               eax, eax                                       // 0x00617b86    85c0
                         {disp32} je        .Lbl_addr_0x00617cc9                           // 0x00617b88    0f843b010000
                         {disp8} mov        edx, dword ptr [esp + 0x60]                    // 0x00617b8e    8b542460
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                    // 0x00617b92    8b44245c
                         push               edx                                            // 0x00617b96    52
                         push               eax                                            // 0x00617b97    50
                         push               esi                                            // 0x00617b98    56
                         mov.s              ecx, ebp                                       // 0x00617b99    8bcd
                         call               _jmp_addr_0x006199f0                           // 0x00617b9b    e8501e0000
                         test               eax, eax                                       // 0x00617ba0    85c0
                         {disp32} je        .Lbl_addr_0x00617cc9                           // 0x00617ba2    0f8421010000
.Lbl_addr_0x00617ba8:    inc                ebx                                            // 0x00617ba8    43
                         add                ebp, 0x00000ae0                                // 0x00617ba9    81c5e00a0000
                         cmp                ebx, 0x06                                      // 0x00617baf    83fb06
                         {disp8} jl         .Lbl_addr_0x00617b61                           // 0x00617bb2    7cad
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                    // 0x00617bb4    8b6c2458
                         cmp                ebp, 0x01                                      // 0x00617bb8    83fd01
                         {disp8} jle        .Lbl_addr_0x00617bf5                           // 0x00617bbb    7e38
                         mov                ebx, 0x00000006                                // 0x00617bbd    bb06000000
.Lbl_addr_0x00617bc2:    push               -0x1                                           // 0x00617bc2    6aff
                         push               0x20                                           // 0x00617bc4    6a20
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x00617bc6    8d4c241c
                         push               ecx                                            // 0x00617bca    51
                         mov.s              ecx, esi                                       // 0x00617bcb    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617bcd    e86e641a00
                         {disp8} mov        al, byte ptr [esp + 0x14]                      // 0x00617bd2    8a442414
                         test               al, al                                         // 0x00617bd6    84c0
                         {disp8} je         .Lbl_addr_0x00617bef                           // 0x00617bd8    7415
                         push               ebx                                            // 0x00617bda    53
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x00617bdb    8d542418
                         push               edx                                            // 0x00617bdf    52
                         mov.s              ecx, edi                                       // 0x00617be0    8bcf
                         call               @LoadMesh__9MorphableFPcl@16                   // 0x00617be2    e8390b0000
                         test               eax, eax                                       // 0x00617be7    85c0
                         {disp32} je        .Lbl_addr_0x00617cc9                           // 0x00617be9    0f84da000000
.Lbl_addr_0x00617bef:    inc                ebx                                            // 0x00617bef    43
                         cmp                ebx, 0x08                                      // 0x00617bf0    83fb08
                         {disp8} jl         .Lbl_addr_0x00617bc2                           // 0x00617bf3    7ccd
.Lbl_addr_0x00617bf5:    test               ebp, ebp                                       // 0x00617bf5    85ed
                         {disp8} jle        .Lbl_addr_0x00617c32                           // 0x00617bf7    7e39
                         push               -0x1                                           // 0x00617bf9    6aff
                         push               0x4                                            // 0x00617bfb    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x00617bfd    8d442418
                         push               eax                                            // 0x00617c01    50
                         mov.s              ecx, esi                                       // 0x00617c02    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617c04    e837641a00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00617c09    8b442410
                         test               eax, eax                                       // 0x00617c0d    85c0
                         {disp8} jle        .Lbl_addr_0x00617c32                           // 0x00617c0f    7e21
                         {disp32} lea       ebx, dword ptr [edi + 0x00004804]              // 0x00617c11    8d9f04480000
                         mov.s              ebp, eax                                       // 0x00617c17    8be8
.Lbl_addr_0x00617c19:    mov.s              ecx, edi                                       // 0x00617c19    8bcf
                         call               ?AddHairGroup@Morphable@@QAEIXZ                // 0x00617c1b    e850f8ffff
                         mov                ecx, dword ptr [ebx]                           // 0x00617c20    8b0b
                         push               esi                                            // 0x00617c22    56
                         call               @ReadBinary__9HairGroupFP6LHFile@12            // 0x00617c23    e858052300
                         add                ebx, 0x04                                      // 0x00617c28    83c304
                         dec                ebp                                            // 0x00617c2b    4d
                         {disp8} jne        .Lbl_addr_0x00617c19                           // 0x00617c2c    75eb
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                    // 0x00617c2e    8b6c2458
.Lbl_addr_0x00617c32:    {disp8} mov        ecx, dword ptr [esp + 0x60]                    // 0x00617c32    8b4c2460
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x00617c36    8b54245c
                         push               ebp                                            // 0x00617c3a    55
                         push               ecx                                            // 0x00617c3b    51
                         push               edx                                            // 0x00617c3c    52
                         push               esi                                            // 0x00617c3d    56
                         mov.s              ecx, edi                                       // 0x00617c3e    8bcf
                         call               @ReadExtraDataBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfol@24                           // 0x00617c40    e89b020000
                         cmp                ebp, 0x02                                      // 0x00617c45    83fd02
                         {disp32} jle       .Lbl_addr_0x00617da2                           // 0x00617c48    0f8e54010000
                         push               -0x1                                           // 0x00617c4e    6aff
                         push               0x20                                           // 0x00617c50    6a20
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                    // 0x00617c52    8d44243c
                         push               eax                                            // 0x00617c56    50
                         {disp32} jmp       .Lbl_addr_0x00617d9b                           // 0x00617c57    e93f010000
.Lbl_addr_0x00617c5c:    call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617c5c    e8df631a00
                         mov                edx, dword ptr [edi]                           // 0x00617c61    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x00617c63    8d442414
                         push               eax                                            // 0x00617c67    50
                         mov.s              ecx, edi                                       // 0x00617c68    8bcf
                         call               dword ptr [edx + 4]                            // 0x00617c6a    ff5204
                         test               eax, eax                                       // 0x00617c6d    85c0
                         {disp8} jne        .Lbl_addr_0x00617c7b                           // 0x00617c6f    750a
                         pop                edi                                            // 0x00617c71    5f
                         pop                esi                                            // 0x00617c72    5e
                         pop                ebp                                            // 0x00617c73    5d
                         pop                ebx                                            // 0x00617c74    5b
                         add                esp, 0x44                                      // 0x00617c75    83c444
                         ret                0x000c                                         // 0x00617c78    c20c00
.Lbl_addr_0x00617c7b:    mov                ebx, 0x00000002                                // 0x00617c7b    bb02000000
.Lbl_addr_0x00617c80:    push               -0x1                                           // 0x00617c80    6aff
                         push               0x20                                           // 0x00617c82    6a20
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x00617c84    8d4c241c
                         push               ecx                                            // 0x00617c88    51
                         mov.s              ecx, esi                                       // 0x00617c89    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617c8b    e8b0631a00
                         {disp8} mov        al, byte ptr [esp + 0x14]                      // 0x00617c90    8a442414
                         test               al, al                                         // 0x00617c94    84c0
                         {disp8} je         .Lbl_addr_0x00617ca9                           // 0x00617c96    7411
                         push               ebx                                            // 0x00617c98    53
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x00617c99    8d542418
                         push               edx                                            // 0x00617c9d    52
                         mov.s              ecx, edi                                       // 0x00617c9e    8bcf
                         call               @LoadMesh__9MorphableFPcl@16                   // 0x00617ca0    e87b0a0000
                         test               eax, eax                                       // 0x00617ca5    85c0
                         {disp8} je         .Lbl_addr_0x00617cc9                           // 0x00617ca7    7420
.Lbl_addr_0x00617ca9:    inc                ebx                                            // 0x00617ca9    43
                         cmp                ebx, 0x08                                      // 0x00617caa    83fb08
                         {disp8} jl         .Lbl_addr_0x00617c80                           // 0x00617cad    7cd1
                         {disp8} mov        eax, dword ptr [esp + 0x60]                    // 0x00617caf    8b442460
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x00617cb3    8b4c245c
                         push               eax                                            // 0x00617cb7    50
                         push               ecx                                            // 0x00617cb8    51
                         push               esi                                            // 0x00617cb9    56
                         {disp32} lea       ecx, dword ptr [edi + 0x00000cb4]              // 0x00617cba    8d8fb40c0000
                         call               @ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20                           // 0x00617cc0    e8bb1e0000
                         test               eax, eax                                       // 0x00617cc5    85c0
                         {disp8} jne        .Lbl_addr_0x00617cd5                           // 0x00617cc7    750c
.Lbl_addr_0x00617cc9:    pop                edi                                            // 0x00617cc9    5f
                         pop                esi                                            // 0x00617cca    5e
                         pop                ebp                                            // 0x00617ccb    5d
                         xor.s              eax, eax                                       // 0x00617ccc    33c0
                         pop                ebx                                            // 0x00617cce    5b
                         add                esp, 0x44                                      // 0x00617ccf    83c444
                         ret                0x000c                                         // 0x00617cd2    c20c00
.Lbl_addr_0x00617cd5:    {disp32} lea       edx, dword ptr [edi + 0x000000bc]              // 0x00617cd5    8d97bc000000
                         mov                ebx, 0x00000002                                // 0x00617cdb    bb02000000
                         {disp32} lea       ebp, dword ptr [edi + 0x00001794]              // 0x00617ce0    8daf94170000
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x00617ce6    89542410
.Lbl_addr_0x00617cea:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00617cea    8b442410
                         cmp                dword ptr [eax], 0x00                          // 0x00617cee    833800
                         {disp8} je         .Lbl_addr_0x00617d09                           // 0x00617cf1    7416
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                    // 0x00617cf3    8b4c2460
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x00617cf7    8b54245c
                         push               ecx                                            // 0x00617cfb    51
                         push               edx                                            // 0x00617cfc    52
                         push               esi                                            // 0x00617cfd    56
                         mov.s              ecx, ebp                                       // 0x00617cfe    8bcd
                         call               @ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20                           // 0x00617d00    e87b1e0000
                         test               eax, eax                                       // 0x00617d05    85c0
                         {disp8} je         .Lbl_addr_0x00617cc9                           // 0x00617d07    74c0
.Lbl_addr_0x00617d09:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x00617d09    8b542410
                         inc                ebx                                            // 0x00617d0d    43
                         add                edx, 0x04                                      // 0x00617d0e    83c204
                         add                ebp, 0x00000ae0                                // 0x00617d11    81c5e00a0000
                         cmp                ebx, 0x06                                      // 0x00617d17    83fb06
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x00617d1a    89542410
                         {disp8} jl         .Lbl_addr_0x00617cea                           // 0x00617d1e    7cca
                         {disp8} mov        ebx, dword ptr [esp + 0x58]                    // 0x00617d20    8b5c2458
                         cmp                ebx, 0x04                                      // 0x00617d24    83fb04
                         {disp8} jle        .Lbl_addr_0x00617d43                           // 0x00617d27    7e1a
                         push               -0x1                                           // 0x00617d29    6aff
                         push               0x4                                            // 0x00617d2b    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x00617d2d    8d442418
                         push               eax                                            // 0x00617d31    50
                         mov.s              ecx, esi                                       // 0x00617d32    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617d34    e807631a00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00617d39    8b4c2410
                         {disp32} mov       dword ptr [edi + 0x00004830], ecx              // 0x00617d3d    898f30480000
.Lbl_addr_0x00617d43:    push               -0x1                                           // 0x00617d43    6aff
                         push               0x4                                            // 0x00617d45    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x00617d47    8d542418
                         push               edx                                            // 0x00617d4b    52
                         mov.s              ecx, esi                                       // 0x00617d4c    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617d4e    e8ed621a00
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x00617d53    8b6c2410
                         test               ebp, ebp                                       // 0x00617d57    85ed
                         {disp8} jle        .Lbl_addr_0x00617d7a                           // 0x00617d59    7e1f
                         {disp32} lea       ebx, dword ptr [edi + 0x00004804]              // 0x00617d5b    8d9f04480000
.Lbl_addr_0x00617d61:    mov.s              ecx, edi                                       // 0x00617d61    8bcf
                         call               ?AddHairGroup@Morphable@@QAEIXZ                // 0x00617d63    e808f7ffff
                         mov                ecx, dword ptr [ebx]                           // 0x00617d68    8b0b
                         push               esi                                            // 0x00617d6a    56
                         call               @ReadBinary__9HairGroupFP6LHFile@12            // 0x00617d6b    e810042300
                         add                ebx, 0x04                                      // 0x00617d70    83c304
                         dec                ebp                                            // 0x00617d73    4d
                         {disp8} jne        .Lbl_addr_0x00617d61                           // 0x00617d74    75eb
                         {disp8} mov        ebx, dword ptr [esp + 0x58]                    // 0x00617d76    8b5c2458
.Lbl_addr_0x00617d7a:    {disp8} mov        eax, dword ptr [esp + 0x60]                    // 0x00617d7a    8b442460
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x00617d7e    8b4c245c
                         push               ebx                                            // 0x00617d82    53
                         push               eax                                            // 0x00617d83    50
                         push               ecx                                            // 0x00617d84    51
                         push               esi                                            // 0x00617d85    56
                         mov.s              ecx, edi                                       // 0x00617d86    8bcf
                         call               @ReadExtraDataBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfol@24                           // 0x00617d88    e853010000
                         cmp                ebx, 0x06                                      // 0x00617d8d    83fb06
                         {disp8} jge        .Lbl_addr_0x00617da2                           // 0x00617d90    7d10
                         push               -0x1                                           // 0x00617d92    6aff
                         push               0x20                                           // 0x00617d94    6a20
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                    // 0x00617d96    8d54243c
                         push               edx                                            // 0x00617d9a    52
.Lbl_addr_0x00617d9b:    mov.s              ecx, esi                                       // 0x00617d9b    8bce
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617d9d    e89e621a00
.Lbl_addr_0x00617da2:    mov.s              ecx, edi                                       // 0x00617da2    8bcf
                         call               ?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z  // 0x00617da4    e807090000
                         pop                edi                                            // 0x00617da9    5f
                         pop                esi                                            // 0x00617daa    5e
                         pop                ebp                                            // 0x00617dab    5d
                         mov                eax, 0x00000001                                // 0x00617dac    b801000000
                         pop                ebx                                            // 0x00617db1    5b
                         add                esp, 0x44                                      // 0x00617db2    83c444
                         ret                0x000c                                         // 0x00617db5    c20c00
                         nop                                                               // 0x00617db8    90
                         nop                                                               // 0x00617db9    90
                         nop                                                               // 0x00617dba    90
                         nop                                                               // 0x00617dbb    90
                         nop                                                               // 0x00617dbc    90
                         nop                                                               // 0x00617dbd    90
                         nop                                                               // 0x00617dbe    90
                         nop                                                               // 0x00617dbf    90
_jmp_addr_0x00617dc0:    sub                esp, 0x08                                      // 0x00617dc0    83ec08
                         push               ebx                                            // 0x00617dc3    53
                         push               ebp                                            // 0x00617dc4    55
                         mov.s              ebx, ecx                                       // 0x00617dc5    8bd9
                         push               esi                                            // 0x00617dc7    56
                         {disp32} lea       eax, dword ptr [ebx + 0x00001054]              // 0x00617dc8    8d8354100000
                         push               edi                                            // 0x00617dce    57
                         mov                ebp, 0x0000032d                                // 0x00617dcf    bd2d030000
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00617dd4    89442414
.Lbl_addr_0x00617dd8:    {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00617dd8    8b4c2414
                         xor.s              edi, edi                                       // 0x00617ddc    33ff
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00617dde    894c2410
.Lbl_addr_0x00617de2:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x00617de2    8b542410
                         cmp                dword ptr [edx], 0x01                          // 0x00617de6    833a01
                         {disp8} jne        .Lbl_addr_0x00617e53                           // 0x00617de9    7568
                         {disp8} mov        ecx, dword ptr [ebx + 0x5c]                    // 0x00617deb    8b4b5c
                         cmp                ecx, 0x02                                      // 0x00617dee    83f902
                         {disp8} lea        esi, dword ptr [ebx + 0x0c]                    // 0x00617df1    8d730c
                         lea                eax, dword ptr [edi + ebp * 0x1]               // 0x00617df4    8d042f
                         {disp32} mov       eax, dword ptr [ebx + eax * 0x4 + 0x00000740]  // 0x00617df7    8b848340070000
                         {disp8} jne        .Lbl_addr_0x00617e18                           // 0x00617dfe    7518
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                    // 0x00617e00    8b4e54
                         test               ecx, ecx                                       // 0x00617e03    85c9
                         {disp8} je         .Lbl_addr_0x00617e18                           // 0x00617e05    7411
                         cmp                eax, dword ptr [esi + 0x58]                    // 0x00617e07    3b4658
                         {disp8} jae        .Lbl_addr_0x00617e18                           // 0x00617e0a    730c
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                    // 0x00617e0c    8b4e64
                         push               eax                                            // 0x00617e0f    50
                         push               ecx                                            // 0x00617e10    51
                         mov.s              ecx, esi                                       // 0x00617e11    8bce
                         call               @SetLHFilePointer__6LHFileFPcl@16              // 0x00617e13    e8b85e1a00
.Lbl_addr_0x00617e18:    push               0x0000021d                                     // 0x00617e18    681d020000
                         push               0x00bf42d0                                     // 0x00617e1d    68d042bf00
                         push               0x38                                           // 0x00617e22    6a38
                         call               ??2@YAPAXIPBDI@Z                               // 0x00617e24    e867391c00
                         add                esp, 0x0c                                      // 0x00617e29    83c40c
                         test               eax, eax                                       // 0x00617e2c    85c0
                         {disp8} je         .Lbl_addr_0x00617e39                           // 0x00617e2e    7409
                         mov.s              ecx, eax                                       // 0x00617e30    8bc8
                         call               ??0CAnim@@QAE@XZ                               // 0x00617e32    e849662400
                         {disp8} jmp        .Lbl_addr_0x00617e3b                           // 0x00617e37    eb02
.Lbl_addr_0x00617e39:    xor.s              eax, eax                                       // 0x00617e39    33c0
.Lbl_addr_0x00617e3b:    lea                edx, dword ptr [edi + ebp * 0x1]               // 0x00617e3b    8d142f
                         push               esi                                            // 0x00617e3e    56
                         mov.s              ecx, eax                                       // 0x00617e3f    8bc8
                         mov                dword ptr [ebx + edx * 0x4], eax               // 0x00617e41    890493
                         call               @ReadBinary__5CAnimFP6LHFile@12                // 0x00617e44    e8178a2400
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00617e49    8b442410
                         mov                dword ptr [eax], 0x00000002                    // 0x00617e4d    c70002000000
.Lbl_addr_0x00617e53:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00617e53    8b4c2410
                         inc                edi                                            // 0x00617e57    47
                         add                ecx, 0x4                                       // 0x00617e58    83c104
                         cmp                edi, 0x000000e8                                // 0x00617e5b    81ffe8000000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00617e61    894c2410
                         {disp32} jl        .Lbl_addr_0x00617de2                           // 0x00617e65    0f8c77ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00617e6b    8b542414
                         add                edx, 0x00000ae0                                // 0x00617e6f    81c2e00a0000
                         add                ebp, 0x000002b8                                // 0x00617e75    81c5b8020000
                         cmp                ebp, 0x000010c5                                // 0x00617e7b    81fdc5100000
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x00617e81    89542414
                         {disp32} jl        .Lbl_addr_0x00617dd8                           // 0x00617e85    0f8c4dffffff
                         {disp8} lea        esi, dword ptr [ebx + 0x0c]                    // 0x00617e8b    8d730c
                         mov.s              ecx, esi                                       // 0x00617e8e    8bce
                         call               ?CloseSegment@LHFile@@QAEIXZ                   // 0x00617e90    e8bb601a00
                         mov.s              ecx, esi                                       // 0x00617e95    8bce
                         call               ?Close@LHFile@@QAEIXZ                          // 0x00617e97    e8245d1a00
                         pop                edi                                            // 0x00617e9c    5f
                         pop                esi                                            // 0x00617e9d    5e
                         pop                ebp                                            // 0x00617e9e    5d
                         pop                ebx                                            // 0x00617e9f    5b
                         add                esp, 0x08                                      // 0x00617ea0    83c408
                         ret                                                               // 0x00617ea3    c3
                         nop                                                               // 0x00617ea4    90
                         nop                                                               // 0x00617ea5    90
                         nop                                                               // 0x00617ea6    90
                         nop                                                               // 0x00617ea7    90
                         nop                                                               // 0x00617ea8    90
                         nop                                                               // 0x00617ea9    90
                         nop                                                               // 0x00617eaa    90
                         nop                                                               // 0x00617eab    90
                         nop                                                               // 0x00617eac    90
                         nop                                                               // 0x00617ead    90
                         nop                                                               // 0x00617eae    90
                         nop                                                               // 0x00617eaf    90
?SetAnimTime@Morphable@@UAEXHH@Z:
                         push               ebx                                            // 0x00617eb0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00617eb1    8b5c2408
                         push               ebp                                            // 0x00617eb5    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x00617eb6    8b6c2410
                         push               esi                                            // 0x00617eba    56
                         push               edi                                            // 0x00617ebb    57
                         mov.s              edi, ecx                                       // 0x00617ebc    8bf9
                         xor.s              esi, esi                                       // 0x00617ebe    33f6
.Lbl_addr_0x00617ec0:    push               0x0                                            // 0x00617ec0    6a00
                         push               esi                                            // 0x00617ec2    56
                         push               ebx                                            // 0x00617ec3    53
                         mov.s              ecx, edi                                       // 0x00617ec4    8bcf
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00617ec6    e8c5170000
                         test               eax, eax                                       // 0x00617ecb    85c0
                         {disp8} je         .Lbl_addr_0x00617ed1                           // 0x00617ecd    7402
                         mov                dword ptr [eax], ebp                           // 0x00617ecf    8928
.Lbl_addr_0x00617ed1:    inc                esi                                            // 0x00617ed1    46
                         cmp                esi, 0x06                                      // 0x00617ed2    83fe06
                         {disp8} jl         .Lbl_addr_0x00617ec0                           // 0x00617ed5    7ce9
                         pop                edi                                            // 0x00617ed7    5f
                         pop                esi                                            // 0x00617ed8    5e
                         pop                ebp                                            // 0x00617ed9    5d
                         pop                ebx                                            // 0x00617eda    5b
                         ret                0x0008                                         // 0x00617edb    c20800
                         nop                                                               // 0x00617ede    90
                         nop                                                               // 0x00617edf    90
@ReadExtraDataBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfol@24:    sub                esp, 0x34                                      // 0x00617ee0    83ec34
                         push               esi                                            // 0x00617ee3    56
                         push               edi                                            // 0x00617ee4    57
                         xor.s              esi, esi                                       // 0x00617ee5    33f6
                         push               esi                                            // 0x00617ee7    56
                         push               0x009d1078                                     // 0x00617ee8    6878109d00
                         push               0x009cecb0                                     // 0x00617eed    68b0ec9c00
                         mov.s              edi, ecx                                       // 0x00617ef2    8bf9
                         push               esi                                            // 0x00617ef4    56
                         push               edi                                            // 0x00617ef5    57
                         {disp8} mov        dword ptr [esp + 0x4c], edi                    // 0x00617ef6    897c244c
                         {disp8} mov        dword ptr [esp + 0x1c], esi                    // 0x00617efa    8974241c
                         call               ___RTDynamicCast                               // 0x00617efe    e816db1a00
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x00617f03    8b54245c
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x00617f07    8b4204
                         add                esp, 0x14                                      // 0x00617f0a    83c414
                         cmp.s              eax, esi                                       // 0x00617f0d    3bc6
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x00617f0f    89742410
                         {disp32} jle       .Lbl_addr_0x00618144                           // 0x00617f13    0f8e2b020000
                         {disp8} mov        eax, dword ptr [esp + 0x44]                    // 0x00617f19    8b442444
                         push               ebx                                            // 0x00617f1d    53
                         {disp32} lea       ecx, dword ptr [edx + 0x00000308]              // 0x00617f1e    8d8a08030000
                         sub.s              eax, edx                                       // 0x00617f24    2bc2
                         push               ebp                                            // 0x00617f26    55
                         {disp8} mov        ebp, dword ptr [esp + 0x48]                    // 0x00617f27    8b6c2448
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000183             // 0x00617f2b    c744242083010000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x00617f33    894c241c
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x00617f37    89442424
.Lbl_addr_0x00617f3b:    mov                esi, dword ptr [ecx]                           // 0x00617f3b    8b31
                         xor.s              eax, eax                                       // 0x00617f3d    33c0
                         test               esi, esi                                       // 0x00617f3f    85f6
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00617f41    89442414
                         {disp32} jle       .Lbl_addr_0x00618116                           // 0x00617f45    0f8ecb010000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x00617f4b    8b542410
                         {disp32} lea       edi, dword ptr [edi + edx * 0x4 + 0x00004314]  // 0x00617f4f    8dbc9714430000
                         {disp8} mov        dword ptr [esp + 0x48], edi                    // 0x00617f56    897c2448
.Lbl_addr_0x00617f5a:    {disp8} mov        esi, dword ptr [esp + 0x4c]                    // 0x00617f5a    8b74244c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x00617f5e    8b542418
                         cmp                edx, dword ptr [esi + 0x04]                    // 0x00617f62    3b5604
                         {disp32} jge       .Lbl_addr_0x006180ef                           // 0x00617f65    0f8d84010000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x00617f6b    8b542424
                         cmp                eax, dword ptr [edx + ecx * 0x1]               // 0x00617f6f    3b040a
                         {disp32} jge       .Lbl_addr_0x006180ef                           // 0x00617f72    0f8d77010000
                         {disp32} mov       edx, dword ptr [edi + -0x000032c0]             // 0x00617f78    8b9740cdffff
                         test               edx, edx                                       // 0x00617f7e    85d2
                         {disp32} lea       esi, dword ptr [edi + -0x000032c0]             // 0x00617f80    8db740cdffff
                         {disp32} je        .Lbl_addr_0x006180ef                           // 0x00617f86    0f8463010000
                         push               -0x1                                           // 0x00617f8c    6aff
                         push               0x4                                            // 0x00617f8e    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x30]                    // 0x00617f90    8d442430
                         push               eax                                            // 0x00617f94    50
                         mov.s              ecx, ebp                                       // 0x00617f95    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617f97    e8a4601a00
                         {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x00617f9c    8b442428
                         test               eax, eax                                       // 0x00617fa0    85c0
                         {disp32} je        .Lbl_addr_0x0061805b                           // 0x00617fa2    0f84b3000000
.Lbl_addr_0x00617fa8:    {disp8} mov        ebx, dword ptr [esp + 0x54]                    // 0x00617fa8    8b5c2454
                         test               ebx, ebx                                       // 0x00617fac    85db
                         {disp8} jne        .Lbl_addr_0x00617fb4                           // 0x00617fae    7504
                         xor.s              edi, edi                                       // 0x00617fb0    33ff
                         {disp8} jmp        .Lbl_addr_0x00617fc8                           // 0x00617fb2    eb14
.Lbl_addr_0x00617fb4:    push               -0x1                                           // 0x00617fb4    6aff
                         push               0x4                                            // 0x00617fb6    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                    // 0x00617fb8    8d4c2434
                         push               ecx                                            // 0x00617fbc    51
                         mov.s              ecx, ebp                                       // 0x00617fbd    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617fbf    e87c601a00
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                    // 0x00617fc4    8b7c242c
.Lbl_addr_0x00617fc8:    push               -0x1                                           // 0x00617fc8    6aff
                         push               0x4                                            // 0x00617fca    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x38]                    // 0x00617fcc    8d542438
                         push               edx                                            // 0x00617fd0    52
                         mov.s              ecx, ebp                                       // 0x00617fd1    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617fd3    e868601a00
                         push               -0x1                                           // 0x00617fd8    6aff
                         push               0x4                                            // 0x00617fda    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                    // 0x00617fdc    8d44243c
                         push               eax                                            // 0x00617fe0    50
                         mov.s              ecx, ebp                                       // 0x00617fe1    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617fe3    e858601a00
                         push               -0x1                                           // 0x00617fe8    6aff
                         push               0x4                                            // 0x00617fea    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                    // 0x00617fec    8d4c2440
                         push               ecx                                            // 0x00617ff0    51
                         mov.s              ecx, ebp                                       // 0x00617ff1    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00617ff3    e848601a00
                         push               -0x1                                           // 0x00617ff8    6aff
                         push               0x4                                            // 0x00617ffa    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x44]                    // 0x00617ffc    8d542444
                         push               edx                                            // 0x00618000    52
                         mov.s              ecx, ebp                                       // 0x00618001    8bcd
                         call               @GetSegmentData__6LHFileFPvUll@20              // 0x00618003    e838601a00
                         cmp                ebx, 0x04                                      // 0x00618008    83fb04
                         {disp8} jle        .Lbl_addr_0x0061804f                           // 0x0061800b    7e42
                         push               0x0000027a                                     // 0x0061800d    687a020000
                         push               0x00bf42d0                                     // 0x00618012    68d042bf00
                         push               0x14                                           // 0x00618017    6a14
                         call               ??2@YAPAXIPBDI@Z                               // 0x00618019    e872371c00
                         add                esp, 0x0c                                      // 0x0061801e    83c40c
                         test               eax, eax                                       // 0x00618021    85c0
                         {disp8} je         .Lbl_addr_0x00618047                           // 0x00618023    7422
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                    // 0x00618025    8b4c2448
                         mov                ecx, dword ptr [ecx]                           // 0x00618029    8b09
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x0061802b    8b542430
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x0061802f    895004
                         {disp8} mov        edx, dword ptr [esp + 0x34]                    // 0x00618032    8b542434
                         {disp8} mov        dword ptr [eax + 0x08], edx                    // 0x00618036    895008
                         {disp8} mov        edx, dword ptr [esp + 0x38]                    // 0x00618039    8b542438
                         mov                dword ptr [eax], edi                           // 0x0061803d    8938
                         {disp8} mov        dword ptr [eax + 0x0c], edx                    // 0x0061803f    89500c
                         {disp8} mov        dword ptr [eax + 0x10], ecx                    // 0x00618042    894810
                         {disp8} jmp        .Lbl_addr_0x00618049                           // 0x00618045    eb02
.Lbl_addr_0x00618047:    xor.s              eax, eax                                       // 0x00618047    33c0
.Lbl_addr_0x00618049:    {disp8} mov        ecx, dword ptr [esp + 0x48]                    // 0x00618049    8b4c2448
                         mov                dword ptr [ecx], eax                           // 0x0061804d    8901
.Lbl_addr_0x0061804f:    {disp8} mov        eax, dword ptr [esp + 0x3c]                    // 0x0061804f    8b44243c
                         test               eax, eax                                       // 0x00618053    85c0
                         {disp32} jne       .Lbl_addr_0x00617fa8                           // 0x00618055    0f854dffffff
.Lbl_addr_0x0061805b:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0061805b    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x0061805f    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                    // 0x00618063    8b4c2450
                         add.s              edx, eax                                       // 0x00618067    03d0
                         test               byte ptr [ecx + edx * 0x4], 0x10               // 0x00618069    f6049110
                         {disp8} je         .Lbl_addr_0x006180e7                           // 0x0061806d    7478
                         mov                ebx, 0x00000005                                // 0x0061806f    bb05000000
.Lbl_addr_0x00618074:    mov                eax, dword ptr [esi]                           // 0x00618074    8b06
                         cmp                eax, 0x01                                      // 0x00618076    83f801
                         {disp8} jne        .Lbl_addr_0x00618083                           // 0x00618079    7508
                         mov                dword ptr [esi], 0x00000000                    // 0x0061807b    c70600000000
                         {disp8} jmp        .Lbl_addr_0x006180b2                           // 0x00618081    eb2f
.Lbl_addr_0x00618083:    cmp                eax, 0x02                                      // 0x00618083    83f802
                         {disp8} jne        .Lbl_addr_0x006180b2                           // 0x00618086    752a
                         mov                dword ptr [esi], 0x00000000                    // 0x00618088    c70600000000
                         {disp32} mov       edi, dword ptr [esi + -0x000003a0]             // 0x0061808e    8bbe60fcffff
                         test               edi, edi                                       // 0x00618094    85ff
                         {disp8} je         .Lbl_addr_0x006180a8                           // 0x00618096    7410
                         mov.s              ecx, edi                                       // 0x00618098    8bcf
                         call               _jmp_addr_0x0085e490                           // 0x0061809a    e8f1632400
                         push               edi                                            // 0x0061809f    57
                         call               ??3@YAXPAX@Z                                   // 0x006180a0    e8f36d1900
                         add                esp, 0x04                                      // 0x006180a5    83c404
.Lbl_addr_0x006180a8:    {disp32} mov       dword ptr [esi + -0x000003a0], 0x00000000      // 0x006180a8    c78660fcffff00000000
.Lbl_addr_0x006180b2:    add                esi, 0x00000ae0                                // 0x006180b2    81c6e00a0000
                         dec                ebx                                            // 0x006180b8    4b
                         {disp8} jne        .Lbl_addr_0x00618074                           // 0x006180b9    75b9
                         {disp8} mov        edi, dword ptr [esp + 0x48]                    // 0x006180bb    8b7c2448
                         mov                esi, dword ptr [edi]                           // 0x006180bf    8b37
                         test               esi, esi                                       // 0x006180c1    85f6
                         {disp8} je         .Lbl_addr_0x006180d7                           // 0x006180c3    7412
.Lbl_addr_0x006180c5:    mov.s              eax, esi                                       // 0x006180c5    8bc6
                         {disp8} mov        esi, dword ptr [esi + 0x10]                    // 0x006180c7    8b7610
                         push               eax                                            // 0x006180ca    50
                         call               ??3@YAXPAX@Z                                   // 0x006180cb    e8c86d1900
                         add                esp, 0x04                                      // 0x006180d0    83c404
                         test               esi, esi                                       // 0x006180d3    85f6
                         {disp8} jne        .Lbl_addr_0x006180c5                           // 0x006180d5    75ee
.Lbl_addr_0x006180d7:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006180d7    8b4c241c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x006180db    8b442414
                         mov                dword ptr [edi], 0x00000000                    // 0x006180df    c70700000000
                         {disp8} jmp        .Lbl_addr_0x006180ef                           // 0x006180e5    eb08
.Lbl_addr_0x006180e7:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006180e7    8b4c241c
                         {disp8} mov        edi, dword ptr [esp + 0x48]                    // 0x006180eb    8b7c2448
.Lbl_addr_0x006180ef:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006180ef    8b542410
                         inc                edx                                            // 0x006180f3    42
                         add                edi, 0x04                                      // 0x006180f4    83c704
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x006180f7    89542410
                         mov                edx, dword ptr [ecx]                           // 0x006180fb    8b11
                         inc                eax                                            // 0x006180fd    40
                         cmp.s              eax, edx                                       // 0x006180fe    3bc2
                         {disp8} mov        dword ptr [esp + 0x48], edi                    // 0x00618100    897c2448
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00618104    89442414
                         {disp32} jl        .Lbl_addr_0x00617f5a                           // 0x00618108    0f8c4cfeffff
                         {disp8} mov        edx, dword ptr [esp + 0x50]                    // 0x0061810e    8b542450
                         {disp8} mov        edi, dword ptr [esp + 0x40]                    // 0x00618112    8b7c2440
.Lbl_addr_0x00618116:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x00618116    8b442418
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x0061811a    8b5c2420
                         {disp8} mov        esi, dword ptr [edx + 0x04]                    // 0x0061811e    8b7204
                         inc                eax                                            // 0x00618121    40
                         add                ecx, 0x00000364                                // 0x00618122    81c164030000
                         add                ebx, 0x000000d9                                // 0x00618128    81c3d9000000
                         cmp.s              eax, esi                                       // 0x0061812e    3bc6
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x00618130    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x00618134    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], ebx                    // 0x00618138    895c2420
                         {disp32} jl        .Lbl_addr_0x00617f3b                           // 0x0061813c    0f8cf9fdffff
                         pop                ebp                                            // 0x00618142    5d
                         pop                ebx                                            // 0x00618143    5b
.Lbl_addr_0x00618144:    pop                edi                                            // 0x00618144    5f
                         pop                esi                                            // 0x00618145    5e
                         add                esp, 0x34                                      // 0x00618146    83c434
                         ret                0x0010                                         // 0x00618149    c21000
                         nop                                                               // 0x0061814c    90
                         nop                                                               // 0x0061814d    90
                         nop                                                               // 0x0061814e    90
                         nop                                                               // 0x0061814f    90
_jmp_addr_0x00618150:    push               ecx                                            // 0x00618150    51
                         push               ebx                                            // 0x00618151    53
                         push               ebp                                            // 0x00618152    55
                         push               esi                                            // 0x00618153    56
                         push               edi                                            // 0x00618154    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x00618155    8b7c2418
                         push               0x4                                            // 0x00618159    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x0061815b    8d442414
                         mov.s              esi, ecx                                       // 0x0061815f    8bf1
                         push               eax                                            // 0x00618161    50
                         mov.s              ecx, edi                                       // 0x00618162    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000006             // 0x00618164    c744241806000000
                         call               _jmp_addr_0x007bdfc0                           // 0x0061816c    e84f5e1a00
                         {disp32} lea       ebx, dword ptr [esi + 0x000000f4]              // 0x00618171    8d9ef4000000
                         mov                ebp, 0x00000007                                // 0x00618177    bd07000000
.Lbl_addr_0x0061817c:    push               0x20                                           // 0x0061817c    6a20
                         push               ebx                                            // 0x0061817e    53
                         mov.s              ecx, edi                                       // 0x0061817f    8bcf
                         call               _jmp_addr_0x007bdfc0                           // 0x00618181    e83a5e1a00
                         add                ebx, 0x20                                      // 0x00618186    83c320
                         dec                ebp                                            // 0x00618189    4d
                         {disp8} jne        .Lbl_addr_0x0061817c                           // 0x0061818a    75f0
                         {disp32} lea       eax, dword ptr [esi + 0x000000f4]              // 0x0061818c    8d86f4000000
                         mov                ebx, 0x00000001                                // 0x00618192    bb01000000
                         {disp32} lea       ebp, dword ptr [esi + 0x00000cb4]              // 0x00618197    8daeb40c0000
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0061819d    89442418
.Lbl_addr_0x006181a1:    cmp                byte ptr [eax], 0x00                           // 0x006181a1    803800
                         {disp8} je         .Lbl_addr_0x006181c0                           // 0x006181a4    741a
                         push               0x0                                            // 0x006181a6    6a00
                         push               ebx                                            // 0x006181a8    53
                         push               0x0                                            // 0x006181a9    6a00
                         mov.s              ecx, esi                                       // 0x006181ab    8bce
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x006181ad    e8de140000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006181b2    8b4c241c
                         push               eax                                            // 0x006181b6    50
                         push               ecx                                            // 0x006181b7    51
                         push               edi                                            // 0x006181b8    57
                         mov.s              ecx, ebp                                       // 0x006181b9    8bcd
                         call               _jmp_addr_0x00619c90                           // 0x006181bb    e8d01a0000
.Lbl_addr_0x006181c0:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x006181c0    8b442418
                         inc                ebx                                            // 0x006181c4    43
                         add                eax, 0x20                                      // 0x006181c5    83c020
                         add                ebp, 0x00000ae0                                // 0x006181c8    81c5e00a0000
                         cmp                ebx, 0x06                                      // 0x006181ce    83fb06
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x006181d1    89442418
                         {disp8} jl         .Lbl_addr_0x006181a1                           // 0x006181d5    7cca
                         {disp32} mov       edx, dword ptr [esi + 0x00004830]              // 0x006181d7    8b9630480000
                         push               0x4                                            // 0x006181dd    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x006181df    8d44241c
                         push               eax                                            // 0x006181e3    50
                         mov.s              ecx, edi                                       // 0x006181e4    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x006181e6    89542420
                         call               _jmp_addr_0x007bdfc0                           // 0x006181ea    e8d15d1a00
                         {disp32} mov       ecx, dword ptr [esi + 0x00004800]              // 0x006181ef    8b8e00480000
                         push               0x4                                            // 0x006181f5    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x006181f7    8d54241c
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x006181fb    894c241c
                         push               edx                                            // 0x006181ff    52
                         mov.s              ecx, edi                                       // 0x00618200    8bcf
                         call               _jmp_addr_0x007bdfc0                           // 0x00618202    e8b95d1a00
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]              // 0x00618207    8b8600480000
                         xor.s              ebx, ebx                                       // 0x0061820d    33db
                         test               eax, eax                                       // 0x0061820f    85c0
                         {disp8} jle        .Lbl_addr_0x00618230                           // 0x00618211    7e1d
                         {disp32} lea       ebp, dword ptr [esi + 0x00004804]              // 0x00618213    8dae04480000
.Lbl_addr_0x00618219:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x00618219    8b4d00
                         push               edi                                            // 0x0061821c    57
                         call               _jmp_addr_0x00848040                           // 0x0061821d    e81efe2200
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]              // 0x00618222    8b8600480000
                         inc                ebx                                            // 0x00618228    43
                         add                ebp, 0x04                                      // 0x00618229    83c504
                         cmp.s              ebx, eax                                       // 0x0061822c    3bd8
                         {disp8} jl         .Lbl_addr_0x00618219                           // 0x0061822e    7ce9
.Lbl_addr_0x00618230:    {disp32} lea       ebx, dword ptr [esi + 0x00004314]              // 0x00618230    8d9e14430000
                         mov                ebp, 0x000000e8                                // 0x00618236    bde8000000
.Lbl_addr_0x0061823b:    {disp32} mov       eax, dword ptr [ebx + -0x00003660]             // 0x0061823b    8b83a0c9ffff
                         test               eax, eax                                       // 0x00618241    85c0
                         {disp32} je        .Lbl_addr_0x006182de                           // 0x00618243    0f8495000000
                         mov                esi, dword ptr [ebx]                           // 0x00618249    8b33
                         xor.s              eax, eax                                       // 0x0061824b    33c0
                         test               esi, esi                                       // 0x0061824d    85f6
                         setne              al                                             // 0x0061824f    0f95c0
                         push               0x4                                            // 0x00618252    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x00618254    8d4c241c
                         push               ecx                                            // 0x00618258    51
                         mov.s              ecx, edi                                       // 0x00618259    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x0061825b    89442420
                         call               _jmp_addr_0x007bdfc0                           // 0x0061825f    e85c5d1a00
                         test               esi, esi                                       // 0x00618264    85f6
                         {disp8} je         .Lbl_addr_0x006182de                           // 0x00618266    7476
.Lbl_addr_0x00618268:    mov                edx, dword ptr [esi]                           // 0x00618268    8b16
                         push               0x4                                            // 0x0061826a    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x0061826c    8d44241c
                         push               eax                                            // 0x00618270    50
                         mov.s              ecx, edi                                       // 0x00618271    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x00618273    89542420
                         call               _jmp_addr_0x007bdfc0                           // 0x00618277    e8445d1a00
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x0061827c    8b4e04
                         push               0x4                                            // 0x0061827f    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x00618281    8d54241c
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x00618285    894c241c
                         push               edx                                            // 0x00618289    52
                         mov.s              ecx, edi                                       // 0x0061828a    8bcf
                         call               _jmp_addr_0x007bdfc0                           // 0x0061828c    e82f5d1a00
                         {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x00618291    8b4608
                         push               0x4                                            // 0x00618294    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x00618296    8d4c241c
                         push               ecx                                            // 0x0061829a    51
                         mov.s              ecx, edi                                       // 0x0061829b    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x0061829d    89442420
                         call               _jmp_addr_0x007bdfc0                           // 0x006182a1    e81a5d1a00
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                    // 0x006182a6    8b560c
                         push               0x4                                            // 0x006182a9    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x006182ab    8d44241c
                         push               eax                                            // 0x006182af    50
                         mov.s              ecx, edi                                       // 0x006182b0    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x006182b2    89542420
                         call               _jmp_addr_0x007bdfc0                           // 0x006182b6    e8055d1a00
                         {disp8} mov        eax, dword ptr [esi + 0x10]                    // 0x006182bb    8b4610
                         xor.s              ecx, ecx                                       // 0x006182be    33c9
                         test               eax, eax                                       // 0x006182c0    85c0
                         setne              cl                                             // 0x006182c2    0f95c1
                         push               0x4                                            // 0x006182c5    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                    // 0x006182c7    8d54241c
                         push               edx                                            // 0x006182cb    52
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x006182cc    894c2420
                         mov.s              ecx, edi                                       // 0x006182d0    8bcf
                         call               _jmp_addr_0x007bdfc0                           // 0x006182d2    e8e95c1a00
                         {disp8} mov        esi, dword ptr [esi + 0x10]                    // 0x006182d7    8b7610
                         test               esi, esi                                       // 0x006182da    85f6
                         {disp8} jne        .Lbl_addr_0x00618268                           // 0x006182dc    758a
.Lbl_addr_0x006182de:    add                ebx, 0x04                                      // 0x006182de    83c304
                         dec                ebp                                            // 0x006182e1    4d
                         {disp32} jne       .Lbl_addr_0x0061823b                           // 0x006182e2    0f8553ffffff
                         pop                edi                                            // 0x006182e8    5f
                         pop                esi                                            // 0x006182e9    5e
                         pop                ebp                                            // 0x006182ea    5d
                         pop                ebx                                            // 0x006182eb    5b
                         pop                ecx                                            // 0x006182ec    59
                         ret                0x0008                                         // 0x006182ed    c20800
_jmp_addr_0x006182f0:    sub                esp, 0x0c                                      // 0x006182f0    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x006182f3    8b442410
                         push               esi                                            // 0x006182f7    56
                         mov.s              esi, ecx                                       // 0x006182f8    8bf1
                         mov                ecx, dword ptr [eax]                           // 0x006182fa    8b08
                         {disp8} mov        dword ptr [esi + 0x78], ecx                    // 0x006182fc    894e78
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x006182ff    8b5004
                         {disp8} mov        dword ptr [esi + 0x7c], edx                    // 0x00618302    89567c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x00618305    8b4008
                         {disp32} mov       dword ptr [esi + 0x00000080], eax              // 0x00618308    898680000000
                         {disp8} fld        dword ptr [esi + 0x78]                         // 0x0061830e    d94678
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x00618311    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00618317    d80d04c48a00
                         call               __ftol                                         // 0x0061831d    e8de901800
                         {disp32} fld       dword ptr [esi + 0x00000080]                   // 0x00618322    d98680000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]               // 0x00618328    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax                    // 0x0061832e    89442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00618332    d80d04c48a00
                         call               __ftol                                         // 0x00618338    e8c3901800
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                    // 0x0061833d    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x00618341    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x00618345    c744240c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z // 0x0061834d    e83ead1e00
                         {disp8} fstp       dword ptr [esi + 0x7c]                         // 0x00618352    d95e7c
                         pop                esi                                            // 0x00618355    5e
                         add                esp, 0x0c                                      // 0x00618356    83c40c
                         ret                0x0004                                         // 0x00618359    c20400
                         nop                                                               // 0x0061835c    90
                         nop                                                               // 0x0061835d    90
                         nop                                                               // 0x0061835e    90
                         nop                                                               // 0x0061835f    90
?LoadBase@Morphable@@UAEIPAD@Z:
                         sub                esp, 0x00000080                                // 0x00618360    81ec80000000
                         push               ebx                                            // 0x00618366    53
                         mov.s              ebx, ecx                                       // 0x00618367    8bd9
                         or                 ecx, 0xffffffff                                // 0x00618369    83c9ff
                         push               ebp                                            // 0x0061836c    55
                         push               esi                                            // 0x0061836d    56
                         push               edi                                            // 0x0061836e    57
                         xor.s              eax, eax                                       // 0x0061836f    33c0
                         mov                edi, 0x00bf4340                                // 0x00618371    bf4043bf00
                         repne scasb                                                       // 0x00618376    f2ae
                         not                ecx                                            // 0x00618378    f7d1
                         sub.s              edi, ecx                                       // 0x0061837a    2bf9
                         mov.s              eax, ecx                                       // 0x0061837c    8bc1
                         shr                ecx, 2                                         // 0x0061837e    c1e902
                         mov.s              esi, edi                                       // 0x00618381    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618383    8d542450
                         mov.s              edi, edx                                       // 0x00618387    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00618389    f3a5
                         mov.s              ecx, eax                                       // 0x0061838b    8bc8
                         and                ecx, 0x03                                      // 0x0061838d    83e103
                         rep movsb                                                         // 0x00618390    f3a4
                         {disp32} mov       edi, dword ptr [esp + 0x00000094]              // 0x00618392    8bbc2494000000
                         or                 ecx, 0xffffffff                                // 0x00618399    83c9ff
                         xor.s              eax, eax                                       // 0x0061839c    33c0
                         repne scasb                                                       // 0x0061839e    f2ae
                         not                ecx                                            // 0x006183a0    f7d1
                         sub.s              edi, ecx                                       // 0x006183a2    2bf9
                         mov.s              ebp, ecx                                       // 0x006183a4    8be9
                         or                 ecx, 0xffffffff                                // 0x006183a6    83c9ff
                         mov.s              esi, edi                                       // 0x006183a9    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x006183ab    8d542450
                         mov.s              edi, edx                                       // 0x006183af    8bfa
                         repne scasb                                                       // 0x006183b1    f2ae
                         dec                edi                                            // 0x006183b3    4f
                         mov.s              ecx, ebp                                       // 0x006183b4    8bcd
                         shr                ecx, 2                                         // 0x006183b6    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x006183b9    f3a5
                         mov.s              ecx, ebp                                       // 0x006183bb    8bcd
                         and                ecx, 0x03                                      // 0x006183bd    83e103
                         rep movsb                                                         // 0x006183c0    f3a4
                         or                 ecx, 0xffffffff                                // 0x006183c2    83c9ff
                         mov                edi, 0x00bf4338                                // 0x006183c5    bf3843bf00
                         repne scasb                                                       // 0x006183ca    f2ae
                         not                ecx                                            // 0x006183cc    f7d1
                         sub.s              edi, ecx                                       // 0x006183ce    2bf9
                         mov.s              ebp, ecx                                       // 0x006183d0    8be9
                         or                 ecx, 0xffffffff                                // 0x006183d2    83c9ff
                         mov.s              esi, edi                                       // 0x006183d5    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x006183d7    8d542450
                         mov.s              edi, edx                                       // 0x006183db    8bfa
                         repne scasb                                                       // 0x006183dd    f2ae
                         mov.s              ecx, ebp                                       // 0x006183df    8bcd
                         shr                ecx, 2                                         // 0x006183e1    c1e902
                         dec                edi                                            // 0x006183e4    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x006183e5    f3a5
                         mov.s              ecx, ebp                                       // 0x006183e7    8bcd
                         and                ecx, 0x03                                      // 0x006183e9    83e103
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x006183ec    8d442410
                         rep movsb                                                         // 0x006183f0    f3a4
                         push               eax                                            // 0x006183f2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                    // 0x006183f3    8d4c2454
                         push               ecx                                            // 0x006183f7    51
                         call               _LHFileLength__FPcPUl                          // 0x006183f8    e863451a00
                         add                esp, 0x08                                      // 0x006183fd    83c408
                         test               eax, eax                                       // 0x00618400    85c0
                         {disp8} je         .Lbl_addr_0x00618425                           // 0x00618402    7421
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618404    8d542450
                         push               edx                                            // 0x00618408    52
                         push               0x00bf4324                                     // 0x00618409    682443bf00
                         call               _jmp_addr_0x00617140                           // 0x0061840e    e82dedffff
                         add                esp, 0x08                                      // 0x00618413    83c408
                         pop                edi                                            // 0x00618416    5f
                         pop                esi                                            // 0x00618417    5e
                         pop                ebp                                            // 0x00618418    5d
                         xor.s              eax, eax                                       // 0x00618419    33c0
                         pop                ebx                                            // 0x0061841b    5b
                         add                esp, 0x00000080                                // 0x0061841c    81c480000000
                         ret                0x0004                                         // 0x00618422    c20400
.Lbl_addr_0x00618425:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00618425    8b442410
                         push               eax                                            // 0x00618429    50
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                       // 0x0061842a    e8b1a82200
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x0061842f    8b542414
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x00618433    8d4c2420
                         push               ecx                                            // 0x00618437    51
                         mov.s              edi, eax                                       // 0x00618438    8bf8
                         push               edx                                            // 0x0061843a    52
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                    // 0x0061843b    8d44245c
                         push               edi                                            // 0x0061843f    57
                         push               eax                                            // 0x00618440    50
                         {disp8} mov        dword ptr [esp + 0x2c], edi                    // 0x00618441    897c242c
                         call               _LHLoadData__FPcPvUlPUl                        // 0x00618445    e8a6491a00
                         add                esp, 0x14                                      // 0x0061844a    83c414
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x0061844d    c744241400000000
                         {disp32} lea       ebp, dword ptr [ebx + 0x000000b4]              // 0x00618455    8dabb4000000
                         {disp8} jmp        .Lbl_addr_0x00618461                           // 0x0061845b    eb04
.Lbl_addr_0x0061845d:    {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x0061845d    8b7c2418
.Lbl_addr_0x00618461:    push               0x0                                            // 0x00618461    6a00
                         push               edi                                            // 0x00618463    57
                         call               ?Create@LH3DMesh@@SAPAV1@PBX_N@Z               // 0x00618464    e8f7df1e00
                         mov.s              esi, eax                                       // 0x00618469    8bf0
                         add                esp, 0x08                                      // 0x0061846b    83c408
                         test               esi, esi                                       // 0x0061846e    85f6
                         {disp32} je        .Lbl_addr_0x00618680                           // 0x00618470    0f840a020000
                         cmp                dword ptr [esi + 0x0c], 0x01                   // 0x00618476    837e0c01
                         {disp32} jne       .Lbl_addr_0x00618652                           // 0x0061847a    0f85d2010000
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x00618480    8b4d00
                         test               ecx, ecx                                       // 0x00618483    85c9
                         {disp8} je         .Lbl_addr_0x0061848c                           // 0x00618485    7405
                         call               @Release__8LH3DMeshFv@4                        // 0x00618487    e874e81e00
.Lbl_addr_0x0061848c:    {disp32} mov       edi, dword ptr [esp + 0x00000094]              // 0x0061848c    8bbc2494000000
                         or                 ecx, 0xffffffff                                // 0x00618493    83c9ff
                         xor.s              eax, eax                                       // 0x00618496    33c0
                         {disp8} mov        dword ptr [ebp + 0x00], esi                    // 0x00618498    897500
                         repne scasb                                                       // 0x0061849b    f2ae
                         not                ecx                                            // 0x0061849d    f7d1
                         sub.s              edi, ecx                                       // 0x0061849f    2bf9
                         mov.s              eax, ecx                                       // 0x006184a1    8bc1
                         shr                ecx, 2                                         // 0x006184a3    c1e902
                         mov.s              esi, edi                                       // 0x006184a6    8bf7
                         {disp32} lea       edx, dword ptr [ebx + 0x000000f4]              // 0x006184a8    8d93f4000000
                         mov.s              edi, edx                                       // 0x006184ae    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x006184b0    f3a5
                         mov.s              ecx, eax                                       // 0x006184b2    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x006184b4    8b442414
                         and                ecx, 0x03                                      // 0x006184b8    83e103
                         inc                eax                                            // 0x006184bb    40
                         add                ebp, 0x04                                      // 0x006184bc    83c504
                         cmp                eax, 0x02                                      // 0x006184bf    83f802
                         rep movsb                                                         // 0x006184c2    f3a4
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x006184c4    89442414
                         {disp8} jl         .Lbl_addr_0x0061845d                           // 0x006184c8    7c93
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x006184ca    8b442418
                         push               eax                                            // 0x006184ce    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x006184cf    e88ca82200
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000b8]              // 0x006184d4    8b8bb8000000
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                    // 0x006184da    8b5110
                         mov                eax, dword ptr [edx]                           // 0x006184dd    8b02
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x006184df    8b480c
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f0]              // 0x006184e2    8b83f0470000
                         add                esp, 0x04                                      // 0x006184e8    83c404
                         test               eax, eax                                       // 0x006184eb    85c0
                         {disp32} mov       dword ptr [ebx + 0x000047b8], ecx              // 0x006184ed    898bb8470000
                         {disp8} je         .Lbl_addr_0x006184fe                           // 0x006184f3    7409
                         push               eax                                            // 0x006184f5    50
                         call               ??3@YAXPAX@Z                                   // 0x006184f6    e89d691900
                         add                esp, 0x04                                      // 0x006184fb    83c404
.Lbl_addr_0x006184fe:    {disp32} mov       eax, dword ptr [ebx + 0x000047f4]              // 0x006184fe    8b83f4470000
                         test               eax, eax                                       // 0x00618504    85c0
                         {disp8} je         .Lbl_addr_0x00618511                           // 0x00618506    7409
                         push               eax                                            // 0x00618508    50
                         call               ??3@YAXPAX@Z                                   // 0x00618509    e88a691900
                         add                esp, 0x04                                      // 0x0061850e    83c404
.Lbl_addr_0x00618511:    {disp32} mov       eax, dword ptr [ebx + 0x000047f8]              // 0x00618511    8b83f8470000
                         test               eax, eax                                       // 0x00618517    85c0
                         {disp8} je         .Lbl_addr_0x00618524                           // 0x00618519    7409
                         push               eax                                            // 0x0061851b    50
                         call               ??3@YAXPAX@Z                                   // 0x0061851c    e877691900
                         add                esp, 0x04                                      // 0x00618521    83c404
.Lbl_addr_0x00618524:    {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00618524    8b83b8470000
                         push               0x00000313                                     // 0x0061852a    6813030000
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x0061852f    8d1440
                         shl                edx, 4                                         // 0x00618532    c1e204
                         push               0x00bf42d0                                     // 0x00618535    68d042bf00
                         push               edx                                            // 0x0061853a    52
                         call               ??2@YAPAXIPBDI@Z                               // 0x0061853b    e850321c00
                         {disp32} mov       dword ptr [ebx + 0x000047f0], eax              // 0x00618540    8983f0470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00618546    8b83b8470000
                         push               0x00000314                                     // 0x0061854c    6814030000
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x00618551    8d0440
                         shl                eax, 4                                         // 0x00618554    c1e004
                         push               0x00bf42d0                                     // 0x00618557    68d042bf00
                         push               eax                                            // 0x0061855c    50
                         call               ??2@YAPAXIPBDI@Z                               // 0x0061855d    e82e321c00
                         {disp32} mov       dword ptr [ebx + 0x000047f4], eax              // 0x00618562    8983f4470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00618568    8b83b8470000
                         push               0x00000315                                     // 0x0061856e    6815030000
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x00618573    8d0c40
                         shl                ecx, 4                                         // 0x00618576    c1e104
                         push               0x00bf42d0                                     // 0x00618579    68d042bf00
                         push               ecx                                            // 0x0061857e    51
                         call               ??2@YAPAXIPBDI@Z                               // 0x0061857f    e80c321c00
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f4]              // 0x00618584    8b8bf4470000
                         {disp8} lea        edx, dword ptr [esp + 0x44]                    // 0x0061858a    8d542444
                         {disp32} mov       dword ptr [ebx + 0x000047f8], eax              // 0x0061858e    8983f8470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000000b8]              // 0x00618594    8b83b8000000
                         push               edx                                            // 0x0061859a    52
                         push               eax                                            // 0x0061859b    50
                         push               ecx                                            // 0x0061859c    51
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000000             // 0x0061859d    c744247c00000000
                         {disp8} mov        dword ptr [esp + 0x78], 0x00000000             // 0x006185a5    c744247800000000
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000             // 0x006185ad    c744247400000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000             // 0x006185b5    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000             // 0x006185bd    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000             // 0x006185c5    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000             // 0x006185cd    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000             // 0x006185d5    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000             // 0x006185dd    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x70], 0x3f800000             // 0x006185e5    c74424700000803f
                         {disp8} mov        dword ptr [esp + 0x60], 0x3f800000             // 0x006185ed    c74424600000803f
                         {disp8} mov        dword ptr [esp + 0x50], 0x3f800000             // 0x006185f5    c74424500000803f
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x006185fd    e8ce1b2200
                         {disp32} fstp      dword ptr [ebx + 0x0000008c]                   // 0x00618602    d99b8c000000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00618608    8b83b8470000
                         add                esp, 0x30                                      // 0x0061860e    83c430
                         xor.s              edi, edi                                       // 0x00618611    33ff
                         test               eax, eax                                       // 0x00618613    85c0
                         {disp8} jle        .Lbl_addr_0x00618640                           // 0x00618615    7e29
                         xor.s              esi, esi                                       // 0x00618617    33f6
.Lbl_addr_0x00618619:    {disp32} mov       eax, dword ptr [ebx + 0x000047f4]              // 0x00618619    8b83f4470000
                         {disp32} mov       ebp, dword ptr [ebx + 0x000047f8]              // 0x0061861f    8babf8470000
                         mov.s              edx, esi                                       // 0x00618625    8bd6
                         mov.s              ecx, esi                                       // 0x00618627    8bce
                         add.s              edx, eax                                       // 0x00618629    03d0
                         add.s              ecx, ebp                                       // 0x0061862b    03cd
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x0061862d    e85e2c1e00
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00618632    8b83b8470000
                         inc                edi                                            // 0x00618638    47
                         add                esi, 0x30                                      // 0x00618639    83c630
                         cmp.s              edi, eax                                       // 0x0061863c    3bf8
                         {disp8} jl         .Lbl_addr_0x00618619                           // 0x0061863e    7cd9
.Lbl_addr_0x00618640:    pop                edi                                            // 0x00618640    5f
                         pop                esi                                            // 0x00618641    5e
                         pop                ebp                                            // 0x00618642    5d
                         mov                eax, 0x00000001                                // 0x00618643    b801000000
                         pop                ebx                                            // 0x00618648    5b
                         add                esp, 0x00000080                                // 0x00618649    81c480000000
                         ret                0x0004                                         // 0x0061864f    c20400
.Lbl_addr_0x00618652:    {disp8} lea        ecx, dword ptr [esp + 0x50]                    // 0x00618652    8d4c2450
                         push               ecx                                            // 0x00618656    51
                         push               0x00bf430c                                     // 0x00618657    680c43bf00
                         call               _jmp_addr_0x00617140                           // 0x0061865c    e8dfeaffff
                         push               edi                                            // 0x00618661    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618662    e8f9a62200
                         add                esp, 0x0c                                      // 0x00618667    83c40c
                         mov.s              ecx, esi                                       // 0x0061866a    8bce
                         call               @Release__8LH3DMeshFv@4                        // 0x0061866c    e88fe61e00
                         pop                edi                                            // 0x00618671    5f
                         pop                esi                                            // 0x00618672    5e
                         pop                ebp                                            // 0x00618673    5d
                         xor.s              eax, eax                                       // 0x00618674    33c0
                         pop                ebx                                            // 0x00618676    5b
                         add                esp, 0x00000080                                // 0x00618677    81c480000000
                         ret                0x0004                                         // 0x0061867d    c20400
.Lbl_addr_0x00618680:    {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618680    8d542450
                         push               edx                                            // 0x00618684    52
                         push               0x00bf42f4                                     // 0x00618685    68f442bf00
                         call               _jmp_addr_0x00617140                           // 0x0061868a    e8b1eaffff
                         push               edi                                            // 0x0061868f    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618690    e8cba62200
                         add                esp, 0x0c                                      // 0x00618695    83c40c
                         pop                edi                                            // 0x00618698    5f
                         pop                esi                                            // 0x00618699    5e
                         pop                ebp                                            // 0x0061869a    5d
                         xor.s              eax, eax                                       // 0x0061869b    33c0
                         pop                ebx                                            // 0x0061869d    5b
                         add                esp, 0x00000080                                // 0x0061869e    81c480000000
                         ret                0x0004                                         // 0x006186a4    c20400
                         nop                                                               // 0x006186a7    90
                         nop                                                               // 0x006186a8    90
                         nop                                                               // 0x006186a9    90
                         nop                                                               // 0x006186aa    90
                         nop                                                               // 0x006186ab    90
                         nop                                                               // 0x006186ac    90
                         nop                                                               // 0x006186ad    90
                         nop                                                               // 0x006186ae    90
                         nop                                                               // 0x006186af    90

?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z:
                         {disp32} mov       eax, dword ptr [_ape_hair]                     // 0x006186b0    a104f0d300
                         test               eax, eax                                       // 0x006186b5    85c0
                         {disp8} je         .Lbl_addr_0x006186bc                           // 0x006186b7    7403
                         xor.s              eax, eax                                       // 0x006186b9    33c0
                         ret                                                               // 0x006186bb    c3
.Lbl_addr_0x006186bc:    push               0x0                                            // 0x006186bc    6a00
                         push               -0x1                                           // 0x006186be    6aff
                         push               0x41                                           // 0x006186c0    6a41
                         push               0x00bf4354                                     // 0x006186c2    685443bf00
                         call               _jmp_addr_0x008379e0                           // 0x006186c7    e814f32100
                         add                esp, 0x10                                      // 0x006186cc    83c410
                         test               eax, eax                                       // 0x006186cf    85c0
                         {disp32} mov       dword ptr [_ape_hair], eax                     // 0x006186d1    a304f0d300
                         {disp8} jne        .Lbl_addr_0x006186d9                           // 0x006186d6    7501
                         ret                                                               // 0x006186d8    c3
.Lbl_addr_0x006186d9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x379008]         // 0x006186d9    8b0d08f0d300
                         test               ecx, ecx                                       // 0x006186df    85c9
                         {disp8} je         .Lbl_addr_0x006186fe                           // 0x006186e1    741b
                         dec                dword ptr [data_bytes + 0x504654]              // 0x006186e3    ff0d54a6ec00
                         push               ecx                                            // 0x006186e9    51
                         {disp8} mov        dword ptr [ecx + 0x08], 0x00000000             // 0x006186ea    c7410800000000
                         call               ??3@YAXPAX@Z                                   // 0x006186f1    e8a2671900
                         {disp32} mov       eax, dword ptr [_ape_hair]                     // 0x006186f6    a104f0d300
                         add                esp, 0x04                                      // 0x006186fb    83c404
.Lbl_addr_0x006186fe:    push               eax                                            // 0x006186fe    50
                         push               0x9                                            // 0x006186ff    6a09
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                           // 0x00618701    e82a762100
                         add                esp, 0x08                                      // 0x00618706    83c408
                         test               eax, eax                                       // 0x00618709    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x379008], eax         // 0x0061870b    a308f0d300
                         {disp8} jne        .Lbl_addr_0x00618713                           // 0x00618710    7501
                         ret                                                               // 0x00618712    c3
.Lbl_addr_0x00618713:    {disp8} mov        byte ptr [eax + 0x04], 0x32                    // 0x00618713    c6400432
                         mov                eax, 0x00000001                                // 0x00618717    b801000000
                         ret                                                               // 0x0061871c    c3
                         nop                                                               // 0x0061871d    90
                         nop                                                               // 0x0061871e    90
                         nop                                                               // 0x0061871f    90
@LoadMesh__9MorphableFPcl@16:    sub                esp, 0x00000100                                // 0x00618720    81ec00010000
                         push               ebx                                            // 0x00618726    53
                         mov.s              ebx, ecx                                       // 0x00618727    8bd9
                         or                 ecx, 0xffffffff                                // 0x00618729    83c9ff
                         push               ebp                                            // 0x0061872c    55
                         push               esi                                            // 0x0061872d    56
                         push               edi                                            // 0x0061872e    57
                         xor.s              eax, eax                                       // 0x0061872f    33c0
                         mov                edi, 0x00bf4340                                // 0x00618731    bf4043bf00
                         repne scasb                                                       // 0x00618736    f2ae
                         not                ecx                                            // 0x00618738    f7d1
                         sub.s              edi, ecx                                       // 0x0061873a    2bf9
                         mov.s              eax, ecx                                       // 0x0061873c    8bc1
                         shr                ecx, 2                                         // 0x0061873e    c1e902
                         mov.s              esi, edi                                       // 0x00618741    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618743    8d542450
                         mov.s              edi, edx                                       // 0x00618747    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00618749    f3a5
                         mov.s              ecx, eax                                       // 0x0061874b    8bc8
                         and                ecx, 0x03                                      // 0x0061874d    83e103
                         rep movsb                                                         // 0x00618750    f3a4
                         {disp32} mov       edi, dword ptr [esp + 0x00000114]              // 0x00618752    8bbc2414010000
                         or                 ecx, 0xffffffff                                // 0x00618759    83c9ff
                         xor.s              eax, eax                                       // 0x0061875c    33c0
                         repne scasb                                                       // 0x0061875e    f2ae
                         not                ecx                                            // 0x00618760    f7d1
                         sub.s              edi, ecx                                       // 0x00618762    2bf9
                         mov.s              ebp, ecx                                       // 0x00618764    8be9
                         or                 ecx, 0xffffffff                                // 0x00618766    83c9ff
                         mov.s              esi, edi                                       // 0x00618769    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x0061876b    8d542450
                         mov.s              edi, edx                                       // 0x0061876f    8bfa
                         repne scasb                                                       // 0x00618771    f2ae
                         dec                edi                                            // 0x00618773    4f
                         mov.s              ecx, ebp                                       // 0x00618774    8bcd
                         shr                ecx, 2                                         // 0x00618776    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00618779    f3a5
                         mov.s              ecx, ebp                                       // 0x0061877b    8bcd
                         and                ecx, 0x03                                      // 0x0061877d    83e103
                         rep movsb                                                         // 0x00618780    f3a4
                         or                 ecx, 0xffffffff                                // 0x00618782    83c9ff
                         mov                edi, 0x00bf4338                                // 0x00618785    bf3843bf00
                         repne scasb                                                       // 0x0061878a    f2ae
                         not                ecx                                            // 0x0061878c    f7d1
                         sub.s              edi, ecx                                       // 0x0061878e    2bf9
                         mov.s              ebp, ecx                                       // 0x00618790    8be9
                         or                 ecx, 0xffffffff                                // 0x00618792    83c9ff
                         mov.s              esi, edi                                       // 0x00618795    8bf7
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618797    8d542450
                         mov.s              edi, edx                                       // 0x0061879b    8bfa
                         repne scasb                                                       // 0x0061879d    f2ae
                         mov.s              ecx, ebp                                       // 0x0061879f    8bcd
                         shr                ecx, 2                                         // 0x006187a1    c1e902
                         dec                edi                                            // 0x006187a4    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x006187a5    f3a5
                         mov.s              ecx, ebp                                       // 0x006187a7    8bcd
                         and                ecx, 0x03                                      // 0x006187a9    83e103
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x006187ac    8d442418
                         rep movsb                                                         // 0x006187b0    f3a4
                         push               eax                                            // 0x006187b2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                    // 0x006187b3    8d4c2454
                         push               ecx                                            // 0x006187b7    51
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x006187b8    c744241c00000000
                         call               _LHFileLength__FPcPUl                          // 0x006187c0    e89b411a00
                         add                esp, 0x08                                      // 0x006187c5    83c408
                         test               eax, eax                                       // 0x006187c8    85c0
                         {disp8} je         .Lbl_addr_0x006187ed                           // 0x006187ca    7421
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x006187cc    8d542450
                         push               edx                                            // 0x006187d0    52
                         push               0x00bf4324                                     // 0x006187d1    682443bf00
                         call               _jmp_addr_0x00617140                           // 0x006187d6    e865e9ffff
                         add                esp, 0x08                                      // 0x006187db    83c408
                         pop                edi                                            // 0x006187de    5f
                         pop                esi                                            // 0x006187df    5e
                         pop                ebp                                            // 0x006187e0    5d
                         xor.s              eax, eax                                       // 0x006187e1    33c0
                         pop                ebx                                            // 0x006187e3    5b
                         add                esp, 0x00000100                                // 0x006187e4    81c400010000
                         ret                0x0008                                         // 0x006187ea    c20800
.Lbl_addr_0x006187ed:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x006187ed    8b442418
                         push               eax                                            // 0x006187f1    50
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                       // 0x006187f2    e8e9a42200
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x006187f7    8b54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                    // 0x006187fb    8d4c2450
                         push               ecx                                            // 0x006187ff    51
                         mov.s              edi, eax                                       // 0x00618800    8bf8
                         push               edx                                            // 0x00618802    52
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                    // 0x00618803    8d44245c
                         push               edi                                            // 0x00618807    57
                         push               eax                                            // 0x00618808    50
                         {disp8} mov        dword ptr [esp + 0x24], edi                    // 0x00618809    897c2424
                         call               _LHLoadData__FPcPvUlPUl                        // 0x0061880d    e8de451a00
                         {disp32} mov       ebp, dword ptr [esp + 0x0000012c]              // 0x00618812    8bac242c010000
                         add                esp, 0x14                                      // 0x00618819    83c414
                         cmp                ebp, 0x04                                      // 0x0061881c    83fd04
                         {disp8} jl         .Lbl_addr_0x0061882e                           // 0x0061881f    7c0d
                         cmp                ebp, 0x07                                      // 0x00618821    83fd07
                         {disp8} jg         .Lbl_addr_0x0061882e                           // 0x00618824    7f08
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001             // 0x00618826    c744241401000000
.Lbl_addr_0x0061882e:    {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0061882e    8b4c2414
                         push               ecx                                            // 0x00618832    51
                         push               edi                                            // 0x00618833    57
                         call               ?Create@LH3DMesh@@SAPAV1@PBX_N@Z               // 0x00618834    e827dc1e00
                         mov.s              esi, eax                                       // 0x00618839    8bf0
                         add                esp, 0x08                                      // 0x0061883b    83c408
                         test               esi, esi                                       // 0x0061883e    85f6
                         {disp32} je        .Lbl_addr_0x00618a97                           // 0x00618840    0f8451020000
                         cmp                dword ptr [esi + 0x0c], 0x01                   // 0x00618846    837e0c01
                         {disp8} je         .Lbl_addr_0x00618858                           // 0x0061884a    740c
                         {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x0061884c    8d542450
                         push               edx                                            // 0x00618850    52
                         push               0x00bf430c                                     // 0x00618851    680c43bf00
                         {disp8} jmp        .Lbl_addr_0x0061888e                           // 0x00618856    eb36
.Lbl_addr_0x00618858:    {disp32} mov       eax, dword ptr [ebx + 0x000000b8]              // 0x00618858    8b83b8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                    // 0x0061885e    8b4810
                         {disp8} mov        edx, dword ptr [esi + 0x10]                    // 0x00618861    8b5610
                         mov                eax, dword ptr [ecx]                           // 0x00618864    8b01
                         mov                ecx, dword ptr [edx]                           // 0x00618866    8b0a
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                    // 0x00618868    8b510c
                         cmp                edx, dword ptr [eax + 0x0c]                    // 0x0061886b    3b500c
                         {disp8} je         .Lbl_addr_0x0061887c                           // 0x0061886e    740c
                         {disp8} lea        eax, dword ptr [esp + 0x50]                    // 0x00618870    8d442450
                         push               eax                                            // 0x00618874    50
                         push               0x00bf4404                                     // 0x00618875    680444bf00
                         {disp8} jmp        .Lbl_addr_0x0061888e                           // 0x0061887a    eb12
.Lbl_addr_0x0061887c:    {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x0061887c    8b5104
                         cmp                edx, dword ptr [eax + 0x04]                    // 0x0061887f    3b5004
                         {disp8} je         .Lbl_addr_0x006188b2                           // 0x00618882    742e
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                    // 0x00618884    8d4c2450
                         push               ecx                                            // 0x00618888    51
                         push               0x00bf43d4                                     // 0x00618889    68d443bf00
.Lbl_addr_0x0061888e:    call               _jmp_addr_0x00617140                           // 0x0061888e    e8ade8ffff
                         push               edi                                            // 0x00618893    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618894    e8c7a42200
                         add                esp, 0x0c                                      // 0x00618899    83c40c
                         mov.s              ecx, esi                                       // 0x0061889c    8bce
                         call               @Release__8LH3DMeshFv@4                        // 0x0061889e    e85de41e00
                         pop                edi                                            // 0x006188a3    5f
                         pop                esi                                            // 0x006188a4    5e
                         pop                ebp                                            // 0x006188a5    5d
                         xor.s              eax, eax                                       // 0x006188a6    33c0
                         pop                ebx                                            // 0x006188a8    5b
                         add                esp, 0x00000100                                // 0x006188a9    81c400010000
                         ret                0x0008                                         // 0x006188af    c20800
.Lbl_addr_0x006188b2:    xor.s              eax, eax                                       // 0x006188b2    33c0
                         test               edx, edx                                       // 0x006188b4    85d2
                         {disp8} jle        .Lbl_addr_0x00618902                           // 0x006188b6    7e4a
.Lbl_addr_0x006188b8:    {disp8} mov        edx, dword ptr [ecx + 0x08]                    // 0x006188b8    8b5108
                         mov                ecx, dword ptr [edx + eax * 0x4]               // 0x006188bb    8b0c82
                         {disp32} mov       edx, dword ptr [ebx + 0x000000b8]              // 0x006188be    8b93b8000000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                    // 0x006188c4    8b5210
                         mov                edx, dword ptr [edx]                           // 0x006188c7    8b12
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x006188c9    8b7c2414
                         test               edi, edi                                       // 0x006188cd    85ff
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x006188cf    8b5208
                         mov                edx, dword ptr [edx + eax * 0x4]               // 0x006188d2    8b1482
                         {disp8} je         .Lbl_addr_0x006188dd                           // 0x006188d5    7406
                         {disp8} mov        edi, dword ptr [edx + 0x08]                    // 0x006188d7    8b7a08
                         {disp8} mov        dword ptr [ecx + 0x08], edi                    // 0x006188da    897908
.Lbl_addr_0x006188dd:    {disp8} mov        edi, dword ptr [ecx + 0x10]                    // 0x006188dd    8b7910
                         cmp                edi, dword ptr [edx + 0x10]                    // 0x006188e0    3b7a10
                         {disp32} jne       .Lbl_addr_0x00618a16                           // 0x006188e3    0f852d010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                    // 0x006188e9    8b4918
                         cmp                ecx, dword ptr [edx + 0x18]                    // 0x006188ec    3b4a18
                         {disp32} jne       .Lbl_addr_0x00618a65                           // 0x006188ef    0f8570010000
                         {disp8} mov        edx, dword ptr [esi + 0x10]                    // 0x006188f5    8b5610
                         mov                ecx, dword ptr [edx]                           // 0x006188f8    8b0a
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x006188fa    8b5104
                         inc                eax                                            // 0x006188fd    40
                         cmp.s              eax, edx                                       // 0x006188fe    3bc2
                         {disp8} jl         .Lbl_addr_0x006188b8                           // 0x00618900    7cb6
.Lbl_addr_0x00618902:    {disp32} mov       ecx, dword ptr [ebx + ebp * 0x4 + 0x000000b4]  // 0x00618902    8b8cabb4000000
                         test               ecx, ecx                                       // 0x00618909    85c9
                         {disp8} je         .Lbl_addr_0x00618912                           // 0x0061890b    7405
                         call               @Release__8LH3DMeshFv@4                        // 0x0061890d    e8eee31e00
.Lbl_addr_0x00618912:    {disp32} mov       edi, dword ptr [esp + 0x00000114]              // 0x00618912    8bbc2414010000
                         or                 ecx, 0xffffffff                                // 0x00618919    83c9ff
                         {disp32} mov       dword ptr [ebx + ebp * 0x4 + 0x000000b4], esi  // 0x0061891c    89b4abb4000000
                         xor.s              eax, eax                                       // 0x00618923    33c0
                         mov.s              edx, ebp                                       // 0x00618925    8bd5
                         shl                edx, 5                                         // 0x00618927    c1e205
                         repne scasb                                                       // 0x0061892a    f2ae
                         not                ecx                                            // 0x0061892c    f7d1
                         sub.s              edi, ecx                                       // 0x0061892e    2bf9
                         mov.s              eax, ecx                                       // 0x00618930    8bc1
                         shr                ecx, 2                                         // 0x00618932    c1e902
                         {disp32} lea       edx, dword ptr [edx + ebx * 0x1 + 0x000000d4]  // 0x00618935    8d941ad4000000
                         mov.s              esi, edi                                       // 0x0061893c    8bf7
                         mov.s              edi, edx                                       // 0x0061893e    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00618940    f3a5
                         mov.s              ecx, eax                                       // 0x00618942    8bc8
                         and                ecx, 0x03                                      // 0x00618944    83e103
                         rep movsb                                                         // 0x00618947    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618949    8b4c2410
                         push               ecx                                            // 0x0061894d    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x0061894e    e80da42200
                         {disp32} mov       eax, dword ptr [ebx + ebp * 0x4 + 0x000000b4]  // 0x00618953    8b84abb4000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f4]              // 0x0061895a    8b8bf4470000
                         {disp8} lea        edx, dword ptr [esp + 0x20]                    // 0x00618960    8d542420
                         push               edx                                            // 0x00618964    52
                         push               eax                                            // 0x00618965    50
                         push               ecx                                            // 0x00618966    51
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000             // 0x00618967    c744245800000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000             // 0x0061896f    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000             // 0x00618977    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000             // 0x0061897f    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000             // 0x00618987    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000             // 0x0061898f    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x00618997    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000             // 0x0061899f    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000             // 0x006189a7    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x3f800000             // 0x006189af    c744244c0000803f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000             // 0x006189b7    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f800000             // 0x006189bf    c744242c0000803f
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x006189c7    e804182200
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x006189cc    8b83b8470000
                         fstp               st(0)                                          // 0x006189d2    ddd8
                         add                esp, 0x10                                      // 0x006189d4    83c410
                         xor.s              edi, edi                                       // 0x006189d7    33ff
                         test               eax, eax                                       // 0x006189d9    85c0
                         {disp8} jle        .Lbl_addr_0x00618a04                           // 0x006189db    7e27
                         xor.s              esi, esi                                       // 0x006189dd    33f6
.Lbl_addr_0x006189df:    {disp32} mov       eax, dword ptr [ebx + 0x000047f4]              // 0x006189df    8b83f4470000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f8]              // 0x006189e5    8b8bf8470000
                         mov.s              edx, esi                                       // 0x006189eb    8bd6
                         add.s              edx, eax                                       // 0x006189ed    03d0
                         add.s              ecx, esi                                       // 0x006189ef    03ce
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x006189f1    e89a281e00
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x006189f6    8b83b8470000
                         inc                edi                                            // 0x006189fc    47
                         add                esi, 0x30                                      // 0x006189fd    83c630
                         cmp.s              edi, eax                                       // 0x00618a00    3bf8
                         {disp8} jl         .Lbl_addr_0x006189df                           // 0x00618a02    7cdb
.Lbl_addr_0x00618a04:    pop                edi                                            // 0x00618a04    5f
                         pop                esi                                            // 0x00618a05    5e
                         pop                ebp                                            // 0x00618a06    5d
                         mov                eax, 0x00000001                                // 0x00618a07    b801000000
                         pop                ebx                                            // 0x00618a0c    5b
                         add                esp, 0x00000100                                // 0x00618a0d    81c400010000
                         ret                0x0008                                         // 0x00618a13    c20800
.Lbl_addr_0x00618a16:    {disp8} mov        eax, dword ptr [edx + 0x10]                    // 0x00618a16    8b4210
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                    // 0x00618a19    8b4910
                         push               eax                                            // 0x00618a1c    50
                         push               ecx                                            // 0x00618a1d    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000098]              // 0x00618a1e    8d942498000000
                         push               0x00bf43a0                                     // 0x00618a25    68a043bf00
                         push               edx                                            // 0x00618a2a    52
                         call               _sprintf                                       // 0x00618a2b    e8a2cd1a00
                         {disp8} lea        eax, dword ptr [esp + 0x60]                    // 0x00618a30    8d442460
                         push               eax                                            // 0x00618a34    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a4]              // 0x00618a35    8d8c24a4000000
                         push               ecx                                            // 0x00618a3c    51
                         call               _jmp_addr_0x00617140                           // 0x00618a3d    e8fee6ffff
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x00618a42    8b542428
                         push               edx                                            // 0x00618a46    52
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618a47    e814a32200
                         add                esp, 0x1c                                      // 0x00618a4c    83c41c
                         mov.s              ecx, esi                                       // 0x00618a4f    8bce
                         call               @Release__8LH3DMeshFv@4                        // 0x00618a51    e8aae21e00
                         pop                edi                                            // 0x00618a56    5f
                         pop                esi                                            // 0x00618a57    5e
                         pop                ebp                                            // 0x00618a58    5d
                         xor.s              eax, eax                                       // 0x00618a59    33c0
                         pop                ebx                                            // 0x00618a5b    5b
                         add                esp, 0x00000100                                // 0x00618a5c    81c400010000
                         ret                0x0008                                         // 0x00618a62    c20800
.Lbl_addr_0x00618a65:    {disp8} lea        eax, dword ptr [esp + 0x50]                    // 0x00618a65    8d442450
                         push               eax                                            // 0x00618a69    50
                         push               0x00bf4368                                     // 0x00618a6a    686843bf00
                         call               _jmp_addr_0x00617140                           // 0x00618a6f    e8cce6ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x00618a74    8b4c2418
                         push               ecx                                            // 0x00618a78    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618a79    e8e2a22200
                         add                esp, 0x0c                                      // 0x00618a7e    83c40c
                         mov.s              ecx, esi                                       // 0x00618a81    8bce
                         call               @Release__8LH3DMeshFv@4                        // 0x00618a83    e878e21e00
                         pop                edi                                            // 0x00618a88    5f
                         pop                esi                                            // 0x00618a89    5e
                         pop                ebp                                            // 0x00618a8a    5d
                         xor.s              eax, eax                                       // 0x00618a8b    33c0
                         pop                ebx                                            // 0x00618a8d    5b
                         add                esp, 0x00000100                                // 0x00618a8e    81c400010000
                         ret                0x0008                                         // 0x00618a94    c20800
.Lbl_addr_0x00618a97:    {disp8} lea        edx, dword ptr [esp + 0x50]                    // 0x00618a97    8d542450
                         push               edx                                            // 0x00618a9b    52
                         push               0x00bf42f4                                     // 0x00618a9c    68f442bf00
                         call               _jmp_addr_0x00617140                           // 0x00618aa1    e89ae6ffff
                         push               edi                                            // 0x00618aa6    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                        // 0x00618aa7    e8b4a22200
                         add                esp, 0x0c                                      // 0x00618aac    83c40c
                         pop                edi                                            // 0x00618aaf    5f
                         pop                esi                                            // 0x00618ab0    5e
                         pop                ebp                                            // 0x00618ab1    5d
                         xor.s              eax, eax                                       // 0x00618ab2    33c0
                         pop                ebx                                            // 0x00618ab4    5b
                         add                esp, 0x00000100                                // 0x00618ab5    81c400010000
                         ret                0x0008                                         // 0x00618abb    c20800
                         nop                                                               // 0x00618abe    90
                         nop                                                               // 0x00618abf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]              // 0x00618ac0    8b8198000000
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x4 + 0x000000b4]  // 0x00618ac6    8b9481b4000000
                         {disp32} mov       eax, dword ptr [ecx + 0x000047b8]              // 0x00618acd    8b81b8470000
                         push               esi                                            // 0x00618ad3    56
                         push               eax                                            // 0x00618ad4    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00618ad5    8b442410
                         push               eax                                            // 0x00618ad9    50
                         {disp32} lea       esi, dword ptr [ecx + 0x000001d4]              // 0x00618ada    8db1d4010000
                         push               esi                                            // 0x00618ae0    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000047f8]              // 0x00618ae1    8bb1f8470000
                         push               esi                                            // 0x00618ae7    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000047f4]              // 0x00618ae8    8bb1f4470000
                         push               esi                                            // 0x00618aee    56
                         push               edx                                            // 0x00618aef    52
                         {disp32} mov       edx, dword ptr [ecx + 0x000047fc]              // 0x00618af0    8b91fc470000
                         push               edx                                            // 0x00618af6    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x00618af7    8b54243c
                         push               edx                                            // 0x00618afb    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x00618afc    8b54243c
                         push               edx                                            // 0x00618b00    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x00618b01    8b54243c
                         push               edx                                            // 0x00618b05    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x00618b06    8b54243c
                         push               edx                                            // 0x00618b0a    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                    // 0x00618b0b    8b54243c
                         push               edx                                            // 0x00618b0f    52
                         {disp8} mov        edx, dword ptr [esp + 0x38]                    // 0x00618b10    8b542438
                         push               edx                                            // 0x00618b14    52
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]        // 0x00618b15    8d14c500000000
                         sub.s              edx, eax                                       // 0x00618b1c    2bd0
                         lea                eax, dword ptr [eax + edx * 0x4]               // 0x00618b1e    8d0490
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x00618b21    8d0440
                         shl                eax, 5                                         // 0x00618b24    c1e005
                         {disp32} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x000001d4]  // 0x00618b27    8d8c08d4010000
                         call               _jmp_addr_0x00619da0                           // 0x00618b2e    e86d120000
                         pop                esi                                            // 0x00618b33    5e
                         ret                0x001c                                         // 0x00618b34    c21c00
                         nop                                                               // 0x00618b37    90
                         nop                                                               // 0x00618b38    90
                         nop                                                               // 0x00618b39    90
                         nop                                                               // 0x00618b3a    90
                         nop                                                               // 0x00618b3b    90
                         nop                                                               // 0x00618b3c    90
                         nop                                                               // 0x00618b3d    90
                         nop                                                               // 0x00618b3e    90
                         nop                                                               // 0x00618b3f    90
_jmp_addr_0x00618b40:    sub                esp, 0x08                                      // 0x00618b40    83ec08
                         push               ebx                                            // 0x00618b43    53
                         push               ebp                                            // 0x00618b44    55
                         mov.s              ebx, ecx                                       // 0x00618b45    8bd9
                         push               esi                                            // 0x00618b47    56
                         mov                eax, 0x00000075                                // 0x00618b48    b875000000
                         {disp32} lea       ecx, dword ptr [ebx + 0x000001d4]              // 0x00618b4d    8d8bd4010000
                         push               edi                                            // 0x00618b53    57
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00618b54    89442414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618b58    894c2410
.Lbl_addr_0x00618b5c:    cmp                eax, 0x000005e5                                // 0x00618b5c    3de5050000
                         {disp8} je         .Lbl_addr_0x00618b7c                           // 0x00618b61    7419
                         cmp                eax, 0x0000089d                                // 0x00618b63    3d9d080000
                         {disp8} je         .Lbl_addr_0x00618b7c                           // 0x00618b68    7412
                         cmp                eax, 0x00000b55                                // 0x00618b6a    3d550b0000
                         {disp8} je         .Lbl_addr_0x00618b7c                           // 0x00618b6f    740b
                         cmp                eax, 0x00000e0d                                // 0x00618b71    3d0d0e0000
                         {disp32} jne       .Lbl_addr_0x00618c14                           // 0x00618b76    0f8598000000
.Lbl_addr_0x00618b7c:    xor.s              edi, edi                                       // 0x00618b7c    33ff
.Lbl_addr_0x00618b7e:    {disp32} mov       ecx, dword ptr [ebx + edi * 0x4 + 0x00001054]  // 0x00618b7e    8b8cbb54100000
                         test               ecx, ecx                                       // 0x00618b85    85c9
                         lea                esi, dword ptr [eax + edi * 0x1]               // 0x00618b87    8d3438
                         mov                ebp, dword ptr [ebx + esi * 0x4]               // 0x00618b8a    8b2cb3
                         {disp8} je         .Lbl_addr_0x00618c07                           // 0x00618b8d    7478
                         lea                edx, dword ptr [eax + edi * 0x1]               // 0x00618b8f    8d1438
                         {disp32} mov       ecx, dword ptr [ebx + edx * 0x4 + 0x000003a0]  // 0x00618b92    8b8c93a0030000
                         test               ecx, ecx                                       // 0x00618b99    85c9
                         {disp8} jne        .Lbl_addr_0x00618c07                           // 0x00618b9b    756a
                         test               ebp, ebp                                       // 0x00618b9d    85ed
                         {disp8} je         .Lbl_addr_0x00618bb5                           // 0x00618b9f    7414
                         mov.s              ecx, ebp                                       // 0x00618ba1    8bcd
                         call               _jmp_addr_0x0085e490                           // 0x00618ba3    e8e8582400
                         push               ebp                                            // 0x00618ba8    55
                         call               ??3@YAXPAX@Z                                   // 0x00618ba9    e8ea621900
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x00618bae    8b442418
                         add                esp, 0x04                                      // 0x00618bb2    83c404
.Lbl_addr_0x00618bb5:    test               edi, edi                                       // 0x00618bb5    85ff
                         {disp8} jne        .Lbl_addr_0x00618c00                           // 0x00618bb7    7547
                         push               0x000003c5                                     // 0x00618bb9    68c5030000
                         push               0x00bf42d0                                     // 0x00618bbe    68d042bf00
                         push               0x38                                           // 0x00618bc3    6a38
                         call               ??2@YAPAXIPBDI@Z                               // 0x00618bc5    e8c62b1c00
                         mov.s              esi, eax                                       // 0x00618bca    8bf0
                         add                esp, 0x0c                                      // 0x00618bcc    83c40c
                         test               esi, esi                                       // 0x00618bcf    85f6
                         {disp8} je         .Lbl_addr_0x00618bf2                           // 0x00618bd1    741f
                         push               edi                                            // 0x00618bd3    57
                         push               0x1                                            // 0x00618bd4    6a01
                         push               edi                                            // 0x00618bd6    57
                         mov.s              ecx, ebx                                       // 0x00618bd7    8bcb
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00618bd9    e8b20a0000
                         push               eax                                            // 0x00618bde    50
                         mov.s              ecx, esi                                       // 0x00618bdf    8bce
                         call               @__ct__5CAnimFP5CAnim@12                       // 0x00618be1    e8da582400
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618be6    8b4c2410
                         mov                dword ptr [ecx], eax                           // 0x00618bea    8901
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x00618bec    8b442414
                         {disp8} jmp        .Lbl_addr_0x00618c07                           // 0x00618bf0    eb15
.Lbl_addr_0x00618bf2:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618bf2    8b4c2410
                         xor.s              eax, eax                                       // 0x00618bf6    33c0
                         mov                dword ptr [ecx], eax                           // 0x00618bf8    8901
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x00618bfa    8b442414
                         {disp8} jmp        .Lbl_addr_0x00618c07                           // 0x00618bfe    eb07
.Lbl_addr_0x00618c00:    mov                dword ptr [ebx + esi * 0x4], 0x00000000        // 0x00618c00    c704b300000000
.Lbl_addr_0x00618c07:    inc                edi                                            // 0x00618c07    47
                         cmp                edi, 0x000000e8                                // 0x00618c08    81ffe8000000
                         {disp32} jl        .Lbl_addr_0x00618b7e                           // 0x00618c0e    0f8c6affffff
.Lbl_addr_0x00618c14:    {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x00618c14    8b742410
                         add                eax, 0x000002b8                                // 0x00618c18    05b8020000
                         add                esi, 0x00000ae0                                // 0x00618c1d    81c6e00a0000
                         cmp                eax, 0x000010c5                                // 0x00618c23    3dc5100000
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x00618c28    89742410
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00618c2c    89442414
                         {disp32} jl        .Lbl_addr_0x00618b5c                           // 0x00618c30    0f8c26ffffff
                         pop                edi                                            // 0x00618c36    5f
                         pop                esi                                            // 0x00618c37    5e
                         pop                ebp                                            // 0x00618c38    5d
                         pop                ebx                                            // 0x00618c39    5b
                         add                esp, 0x08                                      // 0x00618c3a    83c408
                         ret                                                               // 0x00618c3d    c3
                         nop                                                               // 0x00618c3e    90
                         nop                                                               // 0x00618c3f    90
_jmp_addr_0x00618c40:    push               esi                                            // 0x00618c40    56
                         mov.s              esi, ecx                                       // 0x00618c41    8bf1
                         {disp32} fld       dword ptr [esi + 0x0000009c]                   // 0x00618c43    d9869c000000
                         {disp32} fsub      dword ptr [esi + 0x000000a0]                   // 0x00618c49    d8a6a0000000
                         fabs                                                              // 0x00618c4f    d9e1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57ad4]              // 0x00618c51    d81dd40a9000
                         fnstsw             ax                                             // 0x00618c57    dfe0
                         test               ah, 0x01                                       // 0x00618c59    f6c401
                         {disp8} jne        .Lbl_addr_0x00618c99                           // 0x00618c5c    753b
                         {disp32} mov       eax, dword ptr [esi + 0x0000009c]              // 0x00618c5e    8b869c000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000a4]              // 0x00618c64    8b8ea4000000
                         {disp32} mov       edx, dword ptr [esi + 0x000000ac]              // 0x00618c6a    8b96ac000000
                         {disp32} mov       dword ptr [esi + 0x000000a0], eax              // 0x00618c70    8986a0000000
                         mov                eax, dword ptr [esi]                           // 0x00618c76    8b06
                         {disp32} mov       dword ptr [esi + 0x000000a8], ecx              // 0x00618c78    898ea8000000
                         mov.s              ecx, esi                                       // 0x00618c7e    8bce
                         {disp32} mov       dword ptr [esi + 0x000000b0], edx              // 0x00618c80    8996b0000000
                         call               dword ptr [eax + 0x10]                         // 0x00618c86    ff5010
                         mov                edx, dword ptr [esi]                           // 0x00618c89    8b16
                         mov.s              ecx, esi                                       // 0x00618c8b    8bce
                         call               dword ptr [edx + 0xc]                          // 0x00618c8d    ff520c
                         mov.s              ecx, esi                                       // 0x00618c90    8bce
                         call               .Lbl_addr_0x00618d10                           // 0x00618c92    e879000000
                         pop                esi                                            // 0x00618c97    5e
                         ret                                                               // 0x00618c98    c3
.Lbl_addr_0x00618c99:    {disp32} fld       dword ptr [esi + 0x000000a4]                   // 0x00618c99    d986a4000000
                         {disp32} fsub      dword ptr [esi + 0x000000a8]                   // 0x00618c9f    d8a6a8000000
                         fabs                                                              // 0x00618ca5    d9e1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57ad4]              // 0x00618ca7    d81dd40a9000
                         fnstsw             ax                                             // 0x00618cad    dfe0
                         test               ah, 0x01                                       // 0x00618caf    f6c401
                         {disp8} jne        .Lbl_addr_0x00618cdc                           // 0x00618cb2    7528
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ac]              // 0x00618cb4    8b8eac000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000a4]              // 0x00618cba    8b86a4000000
                         mov                edx, dword ptr [esi]                           // 0x00618cc0    8b16
                         {disp32} mov       dword ptr [esi + 0x000000b0], ecx              // 0x00618cc2    898eb0000000
                         mov.s              ecx, esi                                       // 0x00618cc8    8bce
                         {disp32} mov       dword ptr [esi + 0x000000a8], eax              // 0x00618cca    8986a8000000
                         call               dword ptr [edx + 0xc]                          // 0x00618cd0    ff520c
                         mov.s              ecx, esi                                       // 0x00618cd3    8bce
                         call               .Lbl_addr_0x00618d10                           // 0x00618cd5    e836000000
                         pop                esi                                            // 0x00618cda    5e
                         ret                                                               // 0x00618cdb    c3
.Lbl_addr_0x00618cdc:    {disp32} fld       dword ptr [esi + 0x000000ac]                   // 0x00618cdc    d986ac000000
                         {disp32} fsub      dword ptr [esi + 0x000000b0]                   // 0x00618ce2    d8a6b0000000
                         fabs                                                              // 0x00618ce8    d9e1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57ad4]              // 0x00618cea    d81dd40a9000
                         fnstsw             ax                                             // 0x00618cf0    dfe0
                         test               ah, 0x01                                       // 0x00618cf2    f6c401
                         {disp8} jne        .Lbl_addr_0x00618d0a                           // 0x00618cf5    7513
                         {disp32} mov       eax, dword ptr [esi + 0x000000ac]              // 0x00618cf7    8b86ac000000
                         mov.s              ecx, esi                                       // 0x00618cfd    8bce
                         {disp32} mov       dword ptr [esi + 0x000000b0], eax              // 0x00618cff    8986b0000000
                         call               .Lbl_addr_0x00618d10                           // 0x00618d05    e806000000
.Lbl_addr_0x00618d0a:    pop                esi                                            // 0x00618d0a    5e
                         ret                                                               // 0x00618d0b    c3
                         nop                                                               // 0x00618d0c    90
                         nop                                                               // 0x00618d0d    90
                         nop                                                               // 0x00618d0e    90
                         nop                                                               // 0x00618d0f    90
.Lbl_addr_0x00618d10:    sub                esp, 0x34                                      // 0x00618d10    83ec34
                         push               ebx                                            // 0x00618d13    53
                         push               esi                                            // 0x00618d14    56
                         mov.s              esi, ecx                                       // 0x00618d15    8bf1
                         {disp32} fld       dword ptr [esi + 0x0000009c]                   // 0x00618d17    d9869c000000
                         push               edi                                            // 0x00618d1d    57
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x00618d1e    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x3c], esi                    // 0x00618d24    8974243c
                         fnstsw             ax                                             // 0x00618d28    dfe0
                         test               ah, 0x01                                       // 0x00618d2a    f6c401
                         {disp8} je         .Lbl_addr_0x00618d4b                           // 0x00618d2d    741c
                         {disp32} mov       edx, dword ptr [esi + 0x000000bc]              // 0x00618d2f    8b96bc000000
                         {disp32} fld       dword ptr [esi + 0x0000009c]                   // 0x00618d35    d9869c000000
                         xor.s              eax, eax                                       // 0x00618d3b    33c0
                         fchs                                                              // 0x00618d3d    d9e0
                         test               edx, edx                                       // 0x00618d3f    85d2
                         setne              al                                             // 0x00618d41    0f95c0
                         inc                eax                                            // 0x00618d44    40
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x00618d45    89442418
                         {disp8} jmp        .Lbl_addr_0x00618d63                           // 0x00618d49    eb18
.Lbl_addr_0x00618d4b:    {disp32} mov       eax, dword ptr [esi + 0x000000c0]              // 0x00618d4b    8b86c0000000
                         {disp32} fld       dword ptr [esi + 0x0000009c]                   // 0x00618d51    d9869c000000
                         neg                eax                                            // 0x00618d57    f7d8
                         sbb.s              eax, eax                                       // 0x00618d59    1bc0
                         and                eax, 0x02                                      // 0x00618d5b    83e002
                         inc                eax                                            // 0x00618d5e    40
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x00618d5f    89442418
.Lbl_addr_0x00618d63:    {disp32} fld       dword ptr [esi + 0x000000a4]                   // 0x00618d63    d986a4000000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x00618d69    d81d98a38a00
                         fnstsw             ax                                             // 0x00618d6f    dfe0
                         test               ah, 0x01                                       // 0x00618d71    f6c401
                         {disp8} je         .Lbl_addr_0x00618d92                           // 0x00618d74    741c
                         {disp32} mov       ebx, dword ptr [esi + 0x000000c4]              // 0x00618d76    8b9ec4000000
                         {disp32} fld       dword ptr [esi + 0x000000a4]                   // 0x00618d7c    d986a4000000
                         neg                ebx                                            // 0x00618d82    f7db
                         fchs                                                              // 0x00618d84    d9e0
                         sbb.s              ebx, ebx                                       // 0x00618d86    1bdb
                         and                ebx, 0x03                                      // 0x00618d88    83e303
                         inc                ebx                                            // 0x00618d8b    43
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x00618d8c    895c2410
                         {disp8} jmp        .Lbl_addr_0x00618dac                           // 0x00618d90    eb1a
.Lbl_addr_0x00618d92:    {disp32} mov       eax, dword ptr [esi + 0x000000c8]              // 0x00618d92    8b86c8000000
                         {disp32} fld       dword ptr [esi + 0x000000a4]                   // 0x00618d98    d986a4000000
                         neg                eax                                            // 0x00618d9e    f7d8
                         sbb.s              eax, eax                                       // 0x00618da0    1bc0
                         and                eax, 0x04                                      // 0x00618da2    83e004
                         inc                eax                                            // 0x00618da5    40
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x00618da6    89442410
                         mov.s              ebx, eax                                       // 0x00618daa    8bd8
.Lbl_addr_0x00618dac:    {disp32} fld       dword ptr [esi + 0x000000ac]                   // 0x00618dac    d986ac000000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x00618db2    d81d98a38a00
                         fnstsw             ax                                             // 0x00618db8    dfe0
                         test               ah, 0x01                                       // 0x00618dba    f6c401
                         {disp8} je         .Lbl_addr_0x00618ddb                           // 0x00618dbd    741c
                         {disp32} mov       edi, dword ptr [esi + 0x000000cc]              // 0x00618dbf    8bbecc000000
                         {disp32} fld       dword ptr [esi + 0x000000ac]                   // 0x00618dc5    d986ac000000
                         neg                edi                                            // 0x00618dcb    f7df
                         fchs                                                              // 0x00618dcd    d9e0
                         sbb.s              edi, edi                                       // 0x00618dcf    1bff
                         and                edi, 0x05                                      // 0x00618dd1    83e705
                         inc                edi                                            // 0x00618dd4    47
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x00618dd5    897c2414
                         {disp8} jmp        .Lbl_addr_0x00618df5                           // 0x00618dd9    eb1a
.Lbl_addr_0x00618ddb:    {disp32} mov       eax, dword ptr [esi + 0x000000d0]              // 0x00618ddb    8b86d0000000
                         {disp32} fld       dword ptr [esi + 0x000000ac]                   // 0x00618de1    d986ac000000
                         neg                eax                                            // 0x00618de7    f7d8
                         sbb.s              eax, eax                                       // 0x00618de9    1bc0
                         and                eax, 0x06                                      // 0x00618deb    83e006
                         inc                eax                                            // 0x00618dee    40
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00618def    89442414
                         mov.s              edi, eax                                       // 0x00618df3    8bf8
.Lbl_addr_0x00618df5:    {disp32} mov       eax, dword ptr [esi + 0x000000b4]              // 0x00618df5    8b86b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x00618dfb    8b500c
                         xor.s              ecx, ecx                                       // 0x00618dfe    33c9
                         test               edx, edx                                       // 0x00618e00    85d2
                         {disp8} mov        dword ptr [esp + 0x28], ecx                    // 0x00618e02    894c2428
                         {disp32} jle       .Lbl_addr_0x006190f1                           // 0x00618e06    0f8ee5020000
                         push               ebp                                            // 0x00618e0c    55
.Lbl_addr_0x00618e0d:    {disp32} mov       edx, dword ptr [esi + 0x000000b8]              // 0x00618e0d    8b96b8000000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                    // 0x00618e13    8b5210
                         mov                edx, dword ptr [edx + ecx * 0x4]               // 0x00618e16    8b148a
                         {disp8} mov        eax, dword ptr [eax + 0x10]                    // 0x00618e19    8b4010
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x00618e1c    89542430
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00618e20    8b54241c
                         {disp32} mov       edx, dword ptr [esi + edx * 0x4 + 0x000000b4]  // 0x00618e24    8b9496b4000000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                    // 0x00618e2b    8b5210
                         mov                edx, dword ptr [edx + ecx * 0x4]               // 0x00618e2e    8b148a
                         {disp8} mov        dword ptr [esp + 0x34], edx                    // 0x00618e31    89542434
                         {disp32} mov       edx, dword ptr [esi + ebx * 0x4 + 0x000000b4]  // 0x00618e35    8b949eb4000000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                    // 0x00618e3c    8b5210
                         mov                edx, dword ptr [edx + ecx * 0x4]               // 0x00618e3f    8b148a
                         {disp8} mov        dword ptr [esp + 0x38], edx                    // 0x00618e42    89542438
                         {disp32} mov       edx, dword ptr [esi + edi * 0x4 + 0x000000b4]  // 0x00618e46    8b94beb4000000
                         {disp8} mov        edx, dword ptr [edx + 0x10]                    // 0x00618e4d    8b5210
                         mov                edx, dword ptr [edx + ecx * 0x4]               // 0x00618e50    8b148a
                         {disp8} mov        dword ptr [esp + 0x3c], edx                    // 0x00618e53    8954243c
                         mov                edx, dword ptr [eax + ecx * 0x4]               // 0x00618e57    8b1488
                         {disp8} mov        ebp, dword ptr [edx + 0x04]                    // 0x00618e5a    8b6a04
                         xor.s              eax, eax                                       // 0x00618e5d    33c0
                         test               ebp, ebp                                       // 0x00618e5f    85ed
                         {disp8} mov        dword ptr [esp + 0x28], edx                    // 0x00618e61    89542428
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x00618e65    89442424
                         {disp32} jle       .Lbl_addr_0x006190da                           // 0x00618e69    0f8e6b020000
                         {disp8} jmp        .Lbl_addr_0x00618e75                           // 0x00618e6f    eb04
.Lbl_addr_0x00618e71:    {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x00618e71    8b542428
.Lbl_addr_0x00618e75:    {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x00618e75    8b5208
                         {disp8} mov        esi, dword ptr [esp + 0x30]                    // 0x00618e78    8b742430
                         {disp8} mov        edi, dword ptr [esp + 0x34]                    // 0x00618e7c    8b7c2434
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                    // 0x00618e80    8b5c2438
                         {disp8} mov        ebp, dword ptr [esp + 0x3c]                    // 0x00618e84    8b6c243c
                         mov                edx, dword ptr [edx + eax * 0x4]               // 0x00618e88    8b1482
                         cmp                dword ptr [edx + 0x10], 0x00                   // 0x00618e8b    837a1000
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00618e8f    8b7608
                         {disp8} mov        edi, dword ptr [edi + 0x08]                    // 0x00618e92    8b7f08
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]                    // 0x00618e95    8b5b08
                         {disp8} mov        ebp, dword ptr [ebp + 0x08]                    // 0x00618e98    8b6d08
                         mov                esi, dword ptr [esi + eax * 0x4]               // 0x00618e9b    8b3486
                         mov                edi, dword ptr [edi + eax * 0x4]               // 0x00618e9e    8b3c87
                         mov                ebx, dword ptr [ebx + eax * 0x4]               // 0x00618ea1    8b1c83
                         {disp8} mov        ebp, dword ptr [ebp + eax * 0x4 + 0x00]        // 0x00618ea4    8b6c8500
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x00618ea8    c744242000000000
                         {disp32} jle       .Lbl_addr_0x006190ba                           // 0x00618eb0    0f8e04020000
                         xor.s              eax, eax                                       // 0x00618eb6    33c0
.Lbl_addr_0x00618eb8:    {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x00618eb8    8b4e14
                         add.s              ecx, eax                                       // 0x00618ebb    03c8
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618ebd    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00618ec1    8b4f14
                         fld                dword ptr [ecx + eax * 0x1]                    // 0x00618ec4    d90401
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618ec7    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618ecb    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00618ecd    8b4b14
                         fmul               st, st(3)                                      // 0x00618ed0    d8cb
                         fld                dword ptr [eax + ecx * 0x1]                    // 0x00618ed2    d90408
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618ed5    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618ed9    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00618edb    8b4d14
                         fmul               st, st(3)                                      // 0x00618ede    d8cb
                         faddp              st(1), st                                      // 0x00618ee0    dec1
                         fld                dword ptr [ecx + eax * 0x1]                    // 0x00618ee2    d90401
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618ee5    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618ee9    d821
                         fmul               st, st(2)                                      // 0x00618eeb    d8ca
                         faddp              st(1), st                                      // 0x00618eed    dec1
                         fadd               dword ptr [ecx]                                // 0x00618eef    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00618ef1    8b4a14
                         fstp               dword ptr [eax + ecx * 0x1]                    // 0x00618ef4    d91c08
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x00618ef7    8b4e14
                         {disp8} lea        ecx, dword ptr [ecx + eax * 0x1 + 0x04]        // 0x00618efa    8d4c0104
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618efe    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00618f02    8b4f14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x04]             // 0x00618f05    d9440104
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f09    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f0d    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00618f0f    8b4b14
                         fmul               st, st(3)                                      // 0x00618f12    d8cb
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x04]             // 0x00618f14    d9440804
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f18    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f1c    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00618f1e    8b4d14
                         fmul               st, st(3)                                      // 0x00618f21    d8cb
                         faddp              st(1), st                                      // 0x00618f23    dec1
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x04]             // 0x00618f25    d9440104
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f29    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f2d    d821
                         fmul               st, st(2)                                      // 0x00618f2f    d8ca
                         faddp              st(1), st                                      // 0x00618f31    dec1
                         fadd               dword ptr [ecx]                                // 0x00618f33    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00618f35    8b4a14
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x04]             // 0x00618f38    d95c0804
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x00618f3c    8b4e14
                         {disp8} lea        ecx, dword ptr [ecx + eax * 0x1 + 0x08]        // 0x00618f3f    8d4c0108
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618f43    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00618f47    8b4f14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x08]             // 0x00618f4a    d9440108
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f4e    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f52    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00618f54    8b4b14
                         fmul               st, st(3)                                      // 0x00618f57    d8cb
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x08]             // 0x00618f59    d9440808
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f5d    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f61    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00618f63    8b4d14
                         fmul               st, st(3)                                      // 0x00618f66    d8cb
                         faddp              st(1), st                                      // 0x00618f68    dec1
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x08]             // 0x00618f6a    d9440108
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f6e    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f72    d821
                         fmul               st, st(2)                                      // 0x00618f74    d8ca
                         faddp              st(1), st                                      // 0x00618f76    dec1
                         fadd               dword ptr [ecx]                                // 0x00618f78    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00618f7a    8b4a14
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x08]             // 0x00618f7d    d95c0808
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x00618f81    8b4e14
                         {disp8} lea        ecx, dword ptr [ecx + eax * 0x1 + 0x14]        // 0x00618f84    8d4c0114
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618f88    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00618f8c    8b4f14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x14]             // 0x00618f8f    d9440114
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618f93    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618f97    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00618f99    8b4b14
                         fmul               st, st(3)                                      // 0x00618f9c    d8cb
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x14]             // 0x00618f9e    d9440814
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618fa2    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618fa6    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00618fa8    8b4d14
                         fmul               st, st(3)                                      // 0x00618fab    d8cb
                         faddp              st(1), st                                      // 0x00618fad    dec1
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x14]             // 0x00618faf    d9440114
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618fb3    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618fb7    d821
                         fmul               st, st(2)                                      // 0x00618fb9    d8ca
                         faddp              st(1), st                                      // 0x00618fbb    dec1
                         fadd               dword ptr [ecx]                                // 0x00618fbd    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00618fbf    8b4a14
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x14]             // 0x00618fc2    d95c0814
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x00618fc6    8b4e14
                         {disp8} lea        ecx, dword ptr [ecx + eax * 0x1 + 0x18]        // 0x00618fc9    8d4c0118
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00618fcd    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00618fd1    8b4f14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x18]             // 0x00618fd4    d9440118
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618fd8    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618fdc    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00618fde    8b4b14
                         fmul               st, st(3)                                      // 0x00618fe1    d8cb
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x18]             // 0x00618fe3    d9440818
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618fe7    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618feb    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00618fed    8b4d14
                         fmul               st, st(3)                                      // 0x00618ff0    d8cb
                         faddp              st(1), st                                      // 0x00618ff2    dec1
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x18]             // 0x00618ff4    d9440118
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00618ff8    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00618ffc    d821
                         fmul               st, st(2)                                      // 0x00618ffe    d8ca
                         faddp              st(1), st                                      // 0x00619000    dec1
                         fadd               dword ptr [ecx]                                // 0x00619002    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00619004    8b4a14
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x18]             // 0x00619007    d95c0818
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                    // 0x0061900b    8b4e14
                         {disp8} lea        ecx, dword ptr [ecx + eax * 0x1 + 0x1c]        // 0x0061900e    8d4c011c
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x00619012    894c2410
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                    // 0x00619016    8b4f14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x1c]             // 0x00619019    d944011c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0061901d    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00619021    d821
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                    // 0x00619023    8b4b14
                         fmul               st, st(3)                                      // 0x00619026    d8cb
                         {disp8} fld        dword ptr [eax + ecx * 0x1 + 0x1c]             // 0x00619028    d944081c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0061902c    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00619030    d821
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                    // 0x00619032    8b4d14
                         fmul               st, st(3)                                      // 0x00619035    d8cb
                         faddp              st(1), st                                      // 0x00619037    dec1
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x1c]             // 0x00619039    d944011c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0061903d    8b4c2410
                         fsub               dword ptr [ecx]                                // 0x00619041    d821
                         fmul               st, st(2)                                      // 0x00619043    d8ca
                         faddp              st(1), st                                      // 0x00619045    dec1
                         fadd               dword ptr [ecx]                                // 0x00619047    d801
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00619049    8b4a14
                         {disp8} fstp       dword ptr [eax + ecx * 0x1 + 0x1c]             // 0x0061904c    d95c081c
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00619050    8b4a14
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x1c]             // 0x00619053    d944011c
                         add.s              ecx, eax                                       // 0x00619057    03c8
                         {disp8} fld        dword ptr [ecx + 0x18]                         // 0x00619059    d94118
                         {disp8} fld        dword ptr [ecx + 0x14]                         // 0x0061905c    d94114
                         fld                st(0)                                          // 0x0061905f    d9c0
                         fmul               st, st(1)                                      // 0x00619061    d8c9
                         fld                st(2)                                          // 0x00619063    d9c2
                         fmul               st, st(3)                                      // 0x00619065    d8cb
                         faddp              st(1), st                                      // 0x00619067    dec1
                         fld                st(3)                                          // 0x00619069    d9c3
                         fmul               st, st(4)                                      // 0x0061906b    d8cc
                         faddp              st(1), st                                      // 0x0061906d    dec1
                         fsqrt                                                             // 0x0061906f    d9fa
                         fstp               st(3)                                          // 0x00619071    dddb
                         fstp               st(0)                                          // 0x00619073    ddd8
                         fstp               st(0)                                          // 0x00619075    ddd8
                         {disp32} fdivr     dword ptr [__real@4@3fff8000000000000000]                    // 0x00619077    d83d90a38a00
                         fld                st(0)                                          // 0x0061907d    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x14]                         // 0x0061907f    d84914
                         {disp8} fstp       dword ptr [ecx + 0x14]                         // 0x00619082    d95914
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00619085    8b4a14
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]        // 0x00619088    8d4c0818
                         fld                st(0)                                          // 0x0061908c    d9c0
                         fmul               dword ptr [ecx]                                // 0x0061908e    d809
                         fstp               dword ptr [ecx]                                // 0x00619090    d919
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x00619092    8b4a14
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x1c]        // 0x00619095    8d4c081c
                         fmul               dword ptr [ecx]                                // 0x00619099    d809
                         add                eax, 0x20                                      // 0x0061909b    83c020
                         fstp               dword ptr [ecx]                                // 0x0061909e    d919
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x006190a0    8b4c2420
                         inc                ecx                                            // 0x006190a4    41
                         cmp                ecx, dword ptr [edx + 0x10]                    // 0x006190a5    3b4a10
                         {disp8} mov        dword ptr [esp + 0x20], ecx                    // 0x006190a8    894c2420
                         {disp32} jl        .Lbl_addr_0x00618eb8                           // 0x006190ac    0f8c06feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x006190b2    8b4c242c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                    // 0x006190b6    8b442424
.Lbl_addr_0x006190ba:    {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x006190ba    8b542428
                         {disp8} mov        esi, dword ptr [edx + 0x04]                    // 0x006190be    8b7204
                         inc                eax                                            // 0x006190c1    40
                         cmp.s              eax, esi                                       // 0x006190c2    3bc6
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x006190c4    89442424
                         {disp32} jl        .Lbl_addr_0x00618e71                           // 0x006190c8    0f8ca3fdffff
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x006190ce    8b5c2414
                         {disp8} mov        esi, dword ptr [esp + 0x40]                    // 0x006190d2    8b742440
                         {disp8} mov        edi, dword ptr [esp + 0x18]                    // 0x006190d6    8b7c2418
.Lbl_addr_0x006190da:    {disp32} mov       eax, dword ptr [esi + 0x000000b4]              // 0x006190da    8b86b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x006190e0    8b500c
                         inc                ecx                                            // 0x006190e3    41
                         cmp.s              ecx, edx                                       // 0x006190e4    3bca
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                    // 0x006190e6    894c242c
                         {disp32} jl        .Lbl_addr_0x00618e0d                           // 0x006190ea    0f8c1dfdffff
                         pop                ebp                                            // 0x006190f0    5d
.Lbl_addr_0x006190f1:    fstp               st(0)                                          // 0x006190f1    ddd8
                         pop                edi                                            // 0x006190f3    5f
                         fstp               st(0)                                          // 0x006190f4    ddd8
                         pop                esi                                            // 0x006190f6    5e
                         fstp               st(0)                                          // 0x006190f7    ddd8
                         pop                ebx                                            // 0x006190f9    5b
                         add                esp, 0x34                                      // 0x006190fa    83c434
                         ret                                                               // 0x006190fd    c3
                         nop                                                               // 0x006190fe    90
                         nop                                                               // 0x006190ff    90
?MorphAnims@Morphable@@UAEXXZ:
                         sub                esp, 0x38                                      // 0x00619100    83ec38
                         push               ebx                                            // 0x00619103    53
                         mov.s              ebx, ecx                                       // 0x00619104    8bd9
                         {disp32} fld       dword ptr [ebx + 0x000000a0]                   // 0x00619106    d983a0000000
                         push               edi                                            // 0x0061910c    57
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x0061910d    d81d98a38a00
                         fnstsw             ax                                             // 0x00619113    dfe0
                         test               ah, 0x01                                       // 0x00619115    f6c401
                         {disp8} je         .Lbl_addr_0x00619138                           // 0x00619118    741e
                         {disp32} mov       edx, dword ptr [ebx + 0x000000bc]              // 0x0061911a    8b93bc000000
                         {disp32} fld       dword ptr [ebx + 0x000000a0]                   // 0x00619120    d983a0000000
                         xor.s              eax, eax                                       // 0x00619126    33c0
                         fchs                                                              // 0x00619128    d9e0
                         test               edx, edx                                       // 0x0061912a    85d2
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x0061912c    d95c240c
                         setne              al                                             // 0x00619130    0f95c0
                         inc                eax                                            // 0x00619133    40
                         mov.s              edi, eax                                       // 0x00619134    8bf8
                         {disp8} jmp        .Lbl_addr_0x00619150                           // 0x00619136    eb18
.Lbl_addr_0x00619138:    {disp32} mov       edi, dword ptr [ebx + 0x000000c0]              // 0x00619138    8bbbc0000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000a0]              // 0x0061913e    8b8ba0000000
                         neg                edi                                            // 0x00619144    f7df
                         sbb.s              edi, edi                                       // 0x00619146    1bff
                         and                edi, 0x02                                      // 0x00619148    83e702
                         inc                edi                                            // 0x0061914b    47
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0061914c    894c240c
.Lbl_addr_0x00619150:    {disp32} fld       dword ptr [ebx + 0x000000a8]                   // 0x00619150    d983a8000000
                         push               ebp                                            // 0x00619156    55
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x00619157    d81d98a38a00
                         push               esi                                            // 0x0061915d    56
                         fnstsw             ax                                             // 0x0061915e    dfe0
                         test               ah, 0x01                                       // 0x00619160    f6c401
                         {disp8} je         .Lbl_addr_0x00619181                           // 0x00619163    741c
                         {disp32} mov       esi, dword ptr [ebx + 0x000000c4]              // 0x00619165    8bb3c4000000
                         {disp32} fld       dword ptr [ebx + 0x000000a8]                   // 0x0061916b    d983a8000000
                         neg                esi                                            // 0x00619171    f7de
                         fchs                                                              // 0x00619173    d9e0
                         sbb.s              esi, esi                                       // 0x00619175    1bf6
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x00619177    d95c2410
                         and                esi, 0x03                                      // 0x0061917b    83e603
                         inc                esi                                            // 0x0061917e    46
                         {disp8} jmp        .Lbl_addr_0x00619199                           // 0x0061917f    eb18
.Lbl_addr_0x00619181:    {disp32} mov       esi, dword ptr [ebx + 0x000000c8]              // 0x00619181    8bb3c8000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000000a8]              // 0x00619187    8b93a8000000
                         neg                esi                                            // 0x0061918d    f7de
                         sbb.s              esi, esi                                       // 0x0061918f    1bf6
                         and                esi, 0x04                                      // 0x00619191    83e604
                         inc                esi                                            // 0x00619194    46
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x00619195    89542410
.Lbl_addr_0x00619199:    {disp32} mov       ecx, dword ptr [ebx + 0x000000b8]              // 0x00619199    8b8bb8000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f0]              // 0x0061919f    8b93f0470000
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x006191a5    8d442418
                         push               eax                                            // 0x006191a9    50
                         push               ecx                                            // 0x006191aa    51
                         push               edx                                            // 0x006191ab    52
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000             // 0x006191ac    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000             // 0x006191b4    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000             // 0x006191bc    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000             // 0x006191c4    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000             // 0x006191cc    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000             // 0x006191d4    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000             // 0x006191dc    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x006191e4    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x006191ec    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x3f800000             // 0x006191f4    c74424440000803f
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f800000             // 0x006191fc    c74424340000803f
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f800000             // 0x00619204    c74424240000803f
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x0061920c    e8bf0f2200
                         fstp               st(0)                                          // 0x00619211    ddd8
                         {disp32} mov       ecx, dword ptr [ebx + edi * 0x4 + 0x000000b4]  // 0x00619213    8b8cbbb4000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f4]              // 0x0061921a    8b93f4470000
                         {disp8} lea        eax, dword ptr [esp + 0x24]                    // 0x00619220    8d442424
                         push               eax                                            // 0x00619224    50
                         push               ecx                                            // 0x00619225    51
                         push               edx                                            // 0x00619226    52
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x00619227    e8a40f2200
                         fstp               st(0)                                          // 0x0061922c    ddd8
                         {disp32} mov       ecx, dword ptr [ebx + esi * 0x4 + 0x000000b4]  // 0x0061922e    8b8cb3b4000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f8]              // 0x00619235    8b93f8470000
                         {disp8} lea        eax, dword ptr [esp + 0x30]                    // 0x0061923b    8d442430
                         push               eax                                            // 0x0061923f    50
                         push               ecx                                            // 0x00619240    51
                         push               edx                                            // 0x00619241    52
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x00619242    e8890f2200
                         fstp               st(0)                                          // 0x00619247    ddd8
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00619249    8b83b8470000
                         add                esp, 0x24                                      // 0x0061924f    83c424
                         xor.s              edi, edi                                       // 0x00619252    33ff
                         test               eax, eax                                       // 0x00619254    85c0
                         {disp32} jle       .Lbl_addr_0x006193d2                           // 0x00619256    0f8e76010000
                         xor.s              esi, esi                                       // 0x0061925c    33f6
.Lbl_addr_0x0061925e:    {disp32} mov       edx, dword ptr [ebx + 0x000047f4]              // 0x0061925e    8b93f4470000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f8]              // 0x00619264    8b8bf8470000
                         fld                dword ptr [edx + esi * 0x1]                    // 0x0061926a    d90432
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f0]              // 0x0061926d    8b83f0470000
                         fsub               dword ptr [eax + esi * 0x1]                    // 0x00619273    d82430
                         add.s              edx, esi                                       // 0x00619276    03d6
                         add.s              ecx, esi                                       // 0x00619278    03ce
                         add.s              eax, esi                                       // 0x0061927a    03c6
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x0061927c    d84c2414
                         fld                dword ptr [ecx]                                // 0x00619280    d901
                         fsub               dword ptr [eax]                                // 0x00619282    d820
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619284    d84c2410
                         faddp              st(1), st                                      // 0x00619288    dec1
                         fadd               dword ptr [eax]                                // 0x0061928a    d800
                         fstp               dword ptr [eax]                                // 0x0061928c    d918
                         {disp8} fld        dword ptr [ecx + 0x04]                         // 0x0061928e    d94104
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x00619291    d86004
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619294    d84c2410
                         {disp8} fld        dword ptr [edx + 0x04]                         // 0x00619298    d94204
                         {disp8} fsub       dword ptr [eax + 0x04]                         // 0x0061929b    d86004
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x0061929e    d84c2414
                         faddp              st(1), st                                      // 0x006192a2    dec1
                         {disp8} fadd       dword ptr [eax + 0x04]                         // 0x006192a4    d84004
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x006192a7    d95804
                         {disp8} fld        dword ptr [ecx + 0x08]                         // 0x006192aa    d94108
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x006192ad    d86008
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x006192b0    d84c2410
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x006192b4    d94208
                         {disp8} fsub       dword ptr [eax + 0x08]                         // 0x006192b7    d86008
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006192ba    d84c2414
                         faddp              st(1), st                                      // 0x006192be    dec1
                         {disp8} fadd       dword ptr [eax + 0x08]                         // 0x006192c0    d84008
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x006192c3    d95808
                         {disp8} fld        dword ptr [ecx + 0x0c]                         // 0x006192c6    d9410c
                         {disp8} fsub       dword ptr [eax + 0x0c]                         // 0x006192c9    d8600c
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x006192cc    d84c2410
                         {disp8} fld        dword ptr [edx + 0x0c]                         // 0x006192d0    d9420c
                         {disp8} fsub       dword ptr [eax + 0x0c]                         // 0x006192d3    d8600c
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006192d6    d84c2414
                         faddp              st(1), st                                      // 0x006192da    dec1
                         {disp8} fadd       dword ptr [eax + 0x0c]                         // 0x006192dc    d8400c
                         {disp8} fstp       dword ptr [eax + 0x0c]                         // 0x006192df    d9580c
                         {disp8} fld        dword ptr [ecx + 0x10]                         // 0x006192e2    d94110
                         {disp8} fsub       dword ptr [eax + 0x10]                         // 0x006192e5    d86010
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x006192e8    d84c2410
                         {disp8} fld        dword ptr [edx + 0x10]                         // 0x006192ec    d94210
                         {disp8} fsub       dword ptr [eax + 0x10]                         // 0x006192ef    d86010
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006192f2    d84c2414
                         faddp              st(1), st                                      // 0x006192f6    dec1
                         {disp8} fadd       dword ptr [eax + 0x10]                         // 0x006192f8    d84010
                         {disp8} fstp       dword ptr [eax + 0x10]                         // 0x006192fb    d95810
                         {disp8} fld        dword ptr [ecx + 0x14]                         // 0x006192fe    d94114
                         {disp8} fsub       dword ptr [eax + 0x14]                         // 0x00619301    d86014
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619304    d84c2410
                         {disp8} fld        dword ptr [edx + 0x14]                         // 0x00619308    d94214
                         {disp8} fsub       dword ptr [eax + 0x14]                         // 0x0061930b    d86014
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x0061930e    d84c2414
                         faddp              st(1), st                                      // 0x00619312    dec1
                         {disp8} fadd       dword ptr [eax + 0x14]                         // 0x00619314    d84014
                         {disp8} fstp       dword ptr [eax + 0x14]                         // 0x00619317    d95814
                         {disp8} fld        dword ptr [ecx + 0x18]                         // 0x0061931a    d94118
                         {disp8} fsub       dword ptr [eax + 0x18]                         // 0x0061931d    d86018
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619320    d84c2410
                         {disp8} fld        dword ptr [edx + 0x18]                         // 0x00619324    d94218
                         {disp8} fsub       dword ptr [eax + 0x18]                         // 0x00619327    d86018
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x0061932a    d84c2414
                         faddp              st(1), st                                      // 0x0061932e    dec1
                         {disp8} fadd       dword ptr [eax + 0x18]                         // 0x00619330    d84018
                         {disp8} fstp       dword ptr [eax + 0x18]                         // 0x00619333    d95818
                         {disp8} fld        dword ptr [ecx + 0x1c]                         // 0x00619336    d9411c
                         {disp8} fsub       dword ptr [eax + 0x1c]                         // 0x00619339    d8601c
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x0061933c    d84c2410
                         {disp8} fld        dword ptr [edx + 0x1c]                         // 0x00619340    d9421c
                         {disp8} fsub       dword ptr [eax + 0x1c]                         // 0x00619343    d8601c
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x00619346    d84c2414
                         faddp              st(1), st                                      // 0x0061934a    dec1
                         {disp8} fadd       dword ptr [eax + 0x1c]                         // 0x0061934c    d8401c
                         {disp8} fstp       dword ptr [eax + 0x1c]                         // 0x0061934f    d9581c
                         {disp8} fld        dword ptr [ecx + 0x20]                         // 0x00619352    d94120
                         {disp8} fsub       dword ptr [eax + 0x20]                         // 0x00619355    d86020
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619358    d84c2410
                         {disp8} fld        dword ptr [edx + 0x20]                         // 0x0061935c    d94220
                         {disp8} fsub       dword ptr [eax + 0x20]                         // 0x0061935f    d86020
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x00619362    d84c2414
                         faddp              st(1), st                                      // 0x00619366    dec1
                         {disp8} fadd       dword ptr [eax + 0x20]                         // 0x00619368    d84020
                         {disp8} fstp       dword ptr [eax + 0x20]                         // 0x0061936b    d95820
                         {disp8} fld        dword ptr [ecx + 0x24]                         // 0x0061936e    d94124
                         {disp8} fsub       dword ptr [eax + 0x24]                         // 0x00619371    d86024
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619374    d84c2410
                         {disp8} fld        dword ptr [edx + 0x24]                         // 0x00619378    d94224
                         {disp8} fsub       dword ptr [eax + 0x24]                         // 0x0061937b    d86024
                         inc                edi                                            // 0x0061937e    47
                         add                esi, 0x30                                      // 0x0061937f    83c630
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x00619382    d84c2414
                         faddp              st(1), st                                      // 0x00619386    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                         // 0x00619388    d84024
                         {disp8} fstp       dword ptr [eax + 0x24]                         // 0x0061938b    d95824
                         {disp8} fld        dword ptr [ecx + 0x28]                         // 0x0061938e    d94128
                         {disp8} fsub       dword ptr [eax + 0x28]                         // 0x00619391    d86028
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x00619394    d84c2410
                         {disp8} fld        dword ptr [edx + 0x28]                         // 0x00619398    d94228
                         {disp8} fsub       dword ptr [eax + 0x28]                         // 0x0061939b    d86028
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x0061939e    d84c2414
                         faddp              st(1), st                                      // 0x006193a2    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                         // 0x006193a4    d84028
                         {disp8} fstp       dword ptr [eax + 0x28]                         // 0x006193a7    d95828
                         {disp8} fld        dword ptr [ecx + 0x2c]                         // 0x006193aa    d9412c
                         {disp8} fsub       dword ptr [eax + 0x2c]                         // 0x006193ad    d8602c
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x006193b0    d84c2410
                         {disp8} fld        dword ptr [edx + 0x2c]                         // 0x006193b4    d9422c
                         {disp8} fsub       dword ptr [eax + 0x2c]                         // 0x006193b7    d8602c
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006193ba    d84c2414
                         faddp              st(1), st                                      // 0x006193be    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                         // 0x006193c0    d8402c
                         {disp8} fstp       dword ptr [eax + 0x2c]                         // 0x006193c3    d9582c
                         cmp                edi, dword ptr [ebx + 0x000047b8]              // 0x006193c6    3bbbb8470000
                         {disp32} jl        .Lbl_addr_0x0061925e                           // 0x006193cc    0f8c8cfeffff
.Lbl_addr_0x006193d2:    {disp32} mov       edx, dword ptr [ebx + 0x000000b4]              // 0x006193d2    8b93b4000000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f0]              // 0x006193d8    8b83f0470000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x006193de    8d4c2418
                         push               ecx                                            // 0x006193e2    51
                         push               edx                                            // 0x006193e3    52
                         push               eax                                            // 0x006193e4    50
                         call               _jmp_addr_0x0083a020                           // 0x006193e5    e8360c2200
                         {disp32} mov       eax, dword ptr [ebx + 0x000000b4]              // 0x006193ea    8b83b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x006193f0    8b500c
                         xor.s              ecx, ecx                                       // 0x006193f3    33c9
                         add                esp, 0x0c                                      // 0x006193f5    83c40c
                         test               edx, edx                                       // 0x006193f8    85d2
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x006193fa    894c2414
                         {disp8} jle        .Lbl_addr_0x00619452                           // 0x006193fe    7e52
.Lbl_addr_0x00619400:    {disp8} mov        edx, dword ptr [eax + 0x10]                    // 0x00619400    8b5010
                         mov                eax, dword ptr [edx + ecx * 0x4]               // 0x00619403    8b048a
                         {disp32} mov       esi, dword ptr [ebx + 0x000047b8]              // 0x00619406    8bb3b8470000
                         {disp8} mov        eax, dword ptr [eax + 0x10]                    // 0x0061940c    8b4010
                         xor.s              edx, edx                                       // 0x0061940f    33d2
                         test               esi, esi                                       // 0x00619411    85f6
                         {disp8} jle        .Lbl_addr_0x00619440                           // 0x00619413    7e2b
                         add                eax, 0x0c                                      // 0x00619415    83c00c
                         xor.s              ebp, ebp                                       // 0x00619418    33ed
.Lbl_addr_0x0061941a:    {disp32} mov       esi, dword ptr [ebx + 0x000047f0]              // 0x0061941a    8bb3f0470000
                         add.s              esi, ebp                                       // 0x00619420    03f5
                         mov.s              edi, eax                                       // 0x00619422    8bf8
                         mov                ecx, 0x0000000c                                // 0x00619424    b90c000000
                         add                eax, 0x3c                                      // 0x00619429    83c03c
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x0061942c    f3a5
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047b8]              // 0x0061942e    8b8bb8470000
                         inc                edx                                            // 0x00619434    42
                         add                ebp, 0x30                                      // 0x00619435    83c530
                         cmp.s              edx, ecx                                       // 0x00619438    3bd1
                         {disp8} jl         .Lbl_addr_0x0061941a                           // 0x0061943a    7cde
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0061943c    8b4c2414
.Lbl_addr_0x00619440:    {disp32} mov       eax, dword ptr [ebx + 0x000000b4]              // 0x00619440    8b83b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x00619446    8b500c
                         inc                ecx                                            // 0x00619449    41
                         cmp.s              ecx, edx                                       // 0x0061944a    3bca
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x0061944c    894c2414
                         {disp8} jl         .Lbl_addr_0x00619400                           // 0x00619450    7cae
.Lbl_addr_0x00619452:    {disp32} mov       eax, dword ptr [ebx + 0x00000098]              // 0x00619452    8b8398000000
                         test               eax, eax                                       // 0x00619458    85c0
                         {disp8} jne        .Lbl_addr_0x006194aa                           // 0x0061945a    754e
                         {disp32} mov       edx, dword ptr [ebx + 0x000000b4]              // 0x0061945c    8b93b4000000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f4]              // 0x00619462    8b83f4470000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x00619468    8d4c2418
                         push               ecx                                            // 0x0061946c    51
                         push               edx                                            // 0x0061946d    52
                         push               eax                                            // 0x0061946e    50
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                      // 0x0061946f    e85c0d2200
                         fstp               st(0)                                          // 0x00619474    ddd8
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x00619476    8b83b8470000
                         add                esp, 0x0c                                      // 0x0061947c    83c40c
                         xor.s              edi, edi                                       // 0x0061947f    33ff
                         test               eax, eax                                       // 0x00619481    85c0
                         {disp8} jle        .Lbl_addr_0x006194aa                           // 0x00619483    7e25
                         xor.s              esi, esi                                       // 0x00619485    33f6
.Lbl_addr_0x00619487:    {disp32} mov       edx, dword ptr [ebx + 0x000047f4]              // 0x00619487    8b93f4470000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f8]              // 0x0061948d    8b8bf8470000
                         add.s              edx, esi                                       // 0x00619493    03d6
                         add.s              ecx, esi                                       // 0x00619495    03ce
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z              // 0x00619497    e8f41d1e00
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]              // 0x0061949c    8b83b8470000
                         inc                edi                                            // 0x006194a2    47
                         add                esi, 0x30                                      // 0x006194a3    83c630
                         cmp.s              edi, eax                                       // 0x006194a6    3bf8
                         {disp8} jl         .Lbl_addr_0x00619487                           // 0x006194a8    7cdd
.Lbl_addr_0x006194aa:    {disp32} lea       edi, dword ptr [ebx + 0x000001d4]              // 0x006194aa    8dbbd4010000
                         mov                ebp, 0x000000e8                                // 0x006194b0    bde8000000
.Lbl_addr_0x006194b5:    mov                esi, dword ptr [edi]                           // 0x006194b5    8b37
                         test               esi, esi                                       // 0x006194b7    85f6
                         {disp8} je         .Lbl_addr_0x006194d1                           // 0x006194b9    7416
                         mov.s              ecx, esi                                       // 0x006194bb    8bce
                         call               _jmp_addr_0x0085e490                           // 0x006194bd    e8ce4f2400
                         push               esi                                            // 0x006194c2    56
                         call               ??3@YAXPAX@Z                                   // 0x006194c3    e8d0591900
                         add                esp, 0x04                                      // 0x006194c8    83c404
                         mov                dword ptr [edi], 0x00000000                    // 0x006194cb    c70700000000
.Lbl_addr_0x006194d1:    add                edi, 0x04                                      // 0x006194d1    83c704
                         dec                ebp                                            // 0x006194d4    4d
                         {disp8} jne        .Lbl_addr_0x006194b5                           // 0x006194d5    75de
                         push               0x0                                            // 0x006194d7    6a00
                         push               0x0                                            // 0x006194d9    6a00
                         mov.s              ecx, ebx                                       // 0x006194db    8bcb
                         call               @GetAnim__9MorphableFll@16                     // 0x006194dd    e86e010000
                         test               eax, eax                                       // 0x006194e2    85c0
                         pop                esi                                            // 0x006194e4    5e
                         pop                ebp                                            // 0x006194e5    5d
                         {disp8} je         .Lbl_addr_0x006194f3                           // 0x006194e6    740b
                         {disp8} mov        ecx, dword ptr [eax + 0x34]                    // 0x006194e8    8b4834
                         mov                edx, dword ptr [ecx]                           // 0x006194eb    8b11
                         {disp32} mov       dword ptr [ebx + 0x000047fc], edx              // 0x006194ed    8993fc470000
.Lbl_addr_0x006194f3:    pop                edi                                            // 0x006194f3    5f
                         pop                ebx                                            // 0x006194f4    5b
                         add                esp, 0x38                                      // 0x006194f5    83c438
                         ret                                                               // 0x006194f8    c3
                         nop                                                               // 0x006194f9    90
                         nop                                                               // 0x006194fa    90
                         nop                                                               // 0x006194fb    90
                         nop                                                               // 0x006194fc    90
                         nop                                                               // 0x006194fd    90
                         nop                                                               // 0x006194fe    90
                         nop                                                               // 0x006194ff    90
?MorphTexture@Morphable@@UAEXXZ:
                         sub                esp, 0x0c                                      // 0x00619500    83ec0c
                         push               ebx                                            // 0x00619503    53
                         push               ebp                                            // 0x00619504    55
                         push               esi                                            // 0x00619505    56
                         push               edi                                            // 0x00619506    57
                         mov.s              edi, ecx                                       // 0x00619507    8bf9
                         {disp32} fld       dword ptr [edi + 0x0000009c]                   // 0x00619509    d9879c000000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x0061950f    d81d98a38a00
                         fnstsw             ax                                             // 0x00619515    dfe0
                         test               ah, 0x01                                       // 0x00619517    f6c401
                         {disp8} je         .Lbl_addr_0x00619538                           // 0x0061951a    741c
                         {disp32} mov       edx, dword ptr [edi + 0x000000bc]              // 0x0061951c    8b97bc000000
                         {disp32} fld       dword ptr [edi + 0x0000009c]                   // 0x00619522    d9879c000000
                         xor.s              eax, eax                                       // 0x00619528    33c0
                         fchs                                                              // 0x0061952a    d9e0
                         test               edx, edx                                       // 0x0061952c    85d2
                         setne              al                                             // 0x0061952e    0f95c0
                         inc                eax                                            // 0x00619531    40
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x00619532    89442410
                         {disp8} jmp        .Lbl_addr_0x00619550                           // 0x00619536    eb18
.Lbl_addr_0x00619538:    {disp32} mov       eax, dword ptr [edi + 0x000000c0]              // 0x00619538    8b87c0000000
                         {disp32} fld       dword ptr [edi + 0x0000009c]                   // 0x0061953e    d9879c000000
                         neg                eax                                            // 0x00619544    f7d8
                         sbb.s              eax, eax                                       // 0x00619546    1bc0
                         and                eax, 0x02                                      // 0x00619548    83e002
                         inc                eax                                            // 0x0061954b    40
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x0061954c    89442410
.Lbl_addr_0x00619550:    {disp32} mov       ebx, dword ptr [edi + 0x000000b4]              // 0x00619550    8b9fb4000000
                         {disp8} mov        eax, dword ptr [ebx + 0x38]                    // 0x00619556    8b4338
                         xor.s              esi, esi                                       // 0x00619559    33f6
                         test               eax, eax                                       // 0x0061955b    85c0
                         {disp32} jle       .Lbl_addr_0x006195e7                           // 0x0061955d    0f8e84000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5cc]              // 0x00619563    d80dcc458d00
                         call               __ftol                                         // 0x00619569    e8927e1800
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0061956e    89442418
.Lbl_addr_0x00619572:    {disp8} mov        ecx, dword ptr [ebx + 0x3c]                    // 0x00619572    8b4b3c
                         mov                ebx, dword ptr [ecx + esi * 0x4]               // 0x00619575    8b1cb1
                         mov.s              ecx, ebx                                       // 0x00619578    8bcb
                         call               _jmp_addr_0x00839010                           // 0x0061957a    e891fa2100
                         {disp32} mov       edx, dword ptr [edi + 0x000000b8]              // 0x0061957f    8b97b8000000
                         mov.s              ebp, eax                                       // 0x00619585    8be8
                         {disp8} mov        eax, dword ptr [edx + 0x3c]                    // 0x00619587    8b423c
                         mov                ecx, dword ptr [eax + esi * 0x4]               // 0x0061958a    8b0cb0
                         call               _jmp_addr_0x00839010                           // 0x0061958d    e87efa2100
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00619592    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x00619596    8b442410
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4]  // 0x0061959a    8b8c87b4000000
                         {disp8} mov        eax, dword ptr [ecx + 0x3c]                    // 0x006195a1    8b413c
                         mov                ecx, dword ptr [eax + esi * 0x4]               // 0x006195a4    8b0cb0
                         call               _jmp_addr_0x00839010                           // 0x006195a7    e864fa2100
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x006195ac    8b542414
                         push               eax                                            // 0x006195b0    50
                         push               edx                                            // 0x006195b1    52
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x006195b2    8b542420
                         mov.s              ecx, ebp                                       // 0x006195b6    8bcd
                         call               _jmp_addr_0x00870640                           // 0x006195b8    e883702500
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                    // 0x006195bd    8b4310
                         and                eax, 0x3f                                      // 0x006195c0    83e03f
                         cmp                eax, 0x08                                      // 0x006195c3    83f808
                         {disp8} je         .Lbl_addr_0x006195cd                           // 0x006195c6    7405
                         cmp                eax, 0x04                                      // 0x006195c8    83f804
                         {disp8} jne        .Lbl_addr_0x006195d7                           // 0x006195cb    750a
.Lbl_addr_0x006195cd:    {disp32} mov       dword ptr [ebx + 0x00000138], 0x00000001       // 0x006195cd    c7833801000001000000
.Lbl_addr_0x006195d7:    {disp32} mov       ebx, dword ptr [edi + 0x000000b4]              // 0x006195d7    8b9fb4000000
                         {disp8} mov        eax, dword ptr [ebx + 0x38]                    // 0x006195dd    8b4338
                         inc                esi                                            // 0x006195e0    46
                         cmp.s              esi, eax                                       // 0x006195e1    3bf0
                         {disp8} jl         .Lbl_addr_0x00619572                           // 0x006195e3    7c8d
                         {disp8} jmp        .Lbl_addr_0x006195e9                           // 0x006195e5    eb02
.Lbl_addr_0x006195e7:    fstp               st(0)                                          // 0x006195e7    ddd8
.Lbl_addr_0x006195e9:    {disp32} mov       eax, dword ptr [edi + 0x00004800]              // 0x006195e9    8b8700480000
                         xor.s              ebp, ebp                                       // 0x006195ef    33ed
                         xor.s              esi, esi                                       // 0x006195f1    33f6
                         cmp.s              eax, ebp                                       // 0x006195f3    3bc5
                         {disp8} jle        .Lbl_addr_0x00619648                           // 0x006195f5    7e51
                         {disp32} lea       edx, dword ptr [edi + 0x00004804]              // 0x006195f7    8d9704480000
                         mov                ebx, 0x00000002                                // 0x006195fd    bb02000000
.Lbl_addr_0x00619602:    {disp32} fld       dword ptr [edi + 0x0000009c]                   // 0x00619602    d9879c000000
                         mov                ecx, dword ptr [edx]                           // 0x00619608    8b0a
                         {disp32} fcom      qword ptr [rdata_bytes + 0x876a0]              // 0x0061960a    dc15a0069300
                         {disp8} fst        dword ptr [ecx + 0x64]                         // 0x00619610    d95164
                         fnstsw             ax                                             // 0x00619613    dfe0
                         test               ah, 0x01                                       // 0x00619615    f6c401
                         {disp8} je         .Lbl_addr_0x00619625                           // 0x00619618    740b
                         fstp               st(0)                                          // 0x0061961a    ddd8
                         {disp8} mov        dword ptr [ecx + 0x6c], 0x00000001             // 0x0061961c    c7416c01000000
                         {disp8} jmp        .Lbl_addr_0x0061963a                           // 0x00619623    eb15
.Lbl_addr_0x00619625:    {disp32} fcomp     qword ptr [rdata_bytes + 0x87698]              // 0x00619625    dc1d98069300
                         fnstsw             ax                                             // 0x0061962b    dfe0
                         test               ah, 0x41                                       // 0x0061962d    f6c441
                         {disp8} jne        .Lbl_addr_0x00619637                           // 0x00619630    7505
                         {disp8} mov        dword ptr [ecx + 0x6c], ebx                    // 0x00619632    89596c
                         {disp8} jmp        .Lbl_addr_0x0061963a                           // 0x00619635    eb03
.Lbl_addr_0x00619637:    {disp8} mov        dword ptr [ecx + 0x6c], ebp                    // 0x00619637    89696c
.Lbl_addr_0x0061963a:    {disp32} mov       eax, dword ptr [edi + 0x00004800]              // 0x0061963a    8b8700480000
                         inc                esi                                            // 0x00619640    46
                         add                edx, 0x04                                      // 0x00619641    83c204
                         cmp.s              esi, eax                                       // 0x00619644    3bf0
                         {disp8} jl         .Lbl_addr_0x00619602                           // 0x00619646    7cba
.Lbl_addr_0x00619648:    pop                edi                                            // 0x00619648    5f
                         pop                esi                                            // 0x00619649    5e
                         pop                ebp                                            // 0x0061964a    5d
                         pop                ebx                                            // 0x0061964b    5b
                         add                esp, 0x0c                                      // 0x0061964c    83c40c
                         ret                                                               // 0x0061964f    c3
@GetAnim__9MorphableFll@16:    {disp32} mov       eax, dword ptr [ecx + 0x00000098]              // 0x00619650    8b8198000000
                         cmp                eax, 0x06                                      // 0x00619656    83f806
                         {disp8} je         .Lbl_addr_0x00619673                           // 0x00619659    7418
                         cmp                eax, 0x07                                      // 0x0061965b    83f807
                         {disp8} je         .Lbl_addr_0x00619673                           // 0x0061965e    7413
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x00619660    8b542408
                         push               edx                                            // 0x00619664    52
                         push               eax                                            // 0x00619665    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x00619666    8b44240c
                         push               eax                                            // 0x0061966a    50
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x0061966b    e820000000
                         ret                0x0008                                         // 0x00619670    c20800
.Lbl_addr_0x00619673:    {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x00619673    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00619677    8b442404
                         push               edx                                            // 0x0061967b    52
                         push               0x1                                            // 0x0061967c    6a01
                         push               eax                                            // 0x0061967e    50
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x0061967f    e80c000000
                         ret                0x0008                                         // 0x00619684    c20800
                         nop                                                               // 0x00619687    90
                         nop                                                               // 0x00619688    90
                         nop                                                               // 0x00619689    90
                         nop                                                               // 0x0061968a    90
                         nop                                                               // 0x0061968b    90
                         nop                                                               // 0x0061968c    90
                         nop                                                               // 0x0061968d    90
                         nop                                                               // 0x0061968e    90
                         nop                                                               // 0x0061968f    90
@GetSetAnim__9MorphableFlll@20:    sub                esp, 0x10                                      // 0x00619690    83ec10
                         push               ebx                                            // 0x00619693    53
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                    // 0x00619694    8b5c241c
                         push               ebp                                            // 0x00619698    55
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                    // 0x00619699    8b6c241c
                         {disp32} lea       eax, dword ptr [ebx * 0x8 + 0x00000000]        // 0x0061969d    8d04dd00000000
                         sub.s              eax, ebx                                       // 0x006196a4    2bc3
                         push               esi                                            // 0x006196a6    56
                         lea                eax, dword ptr [ebx + eax * 0x4]               // 0x006196a7    8d0483
                         mov.s              esi, ecx                                       // 0x006196aa    8bf1
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x006196ac    8d0c40
                         push               edi                                            // 0x006196af    57
                         {disp8} lea        edi, dword ptr [ebp + ecx * 0x8 + 0x00]        // 0x006196b0    8d7ccd00
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x000001d4]  // 0x006196b4    8b84bed4010000
                         test               eax, eax                                       // 0x006196bb    85c0
                         {disp8} mov        dword ptr [esp + 0x1c], edi                    // 0x006196bd    897c241c
                         {disp32} jne       .Lbl_addr_0x006199c0                           // 0x006196c1    0f85f9020000
                         call               _jmp_addr_0x007dee00                           // 0x006196c7    e834571c00
                         cmp                ebx, 0x05                                      // 0x006196cc    83fb05
                         {disp32} ja        .Lbl_addr_0x006199be                           // 0x006196cf    0f87e9020000
                         jmp                dword ptr [ebx*4 + 0x6199cc]                   // 0x006196d5    ff249dcc996100
                         {disp32} fld       dword ptr [esi + 0x000000a0]                   // 0x006196dc    d986a0000000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x006196e2    d81d98a38a00
                         fnstsw             ax                                             // 0x006196e8    dfe0
                         test               ah, 0x01                                       // 0x006196ea    f6c401
                         {disp8} je         .Lbl_addr_0x0061970b                           // 0x006196ed    741c
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]              // 0x006196ef    8b8ebc000000
                         {disp32} fld       dword ptr [esi + 0x000000a0]                   // 0x006196f5    d986a0000000
                         xor.s              ebx, ebx                                       // 0x006196fb    33db
                         fchs                                                              // 0x006196fd    d9e0
                         test               ecx, ecx                                       // 0x006196ff    85c9
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x00619701    d95c2424
                         setne              bl                                             // 0x00619705    0f95c3
                         inc                ebx                                            // 0x00619708    43
                         {disp8} jmp        .Lbl_addr_0x00619723                           // 0x00619709    eb18
.Lbl_addr_0x0061970b:    {disp32} mov       ebx, dword ptr [esi + 0x000000c0]              // 0x0061970b    8b9ec0000000
                         {disp32} mov       edx, dword ptr [esi + 0x000000a0]              // 0x00619711    8b96a0000000
                         neg                ebx                                            // 0x00619717    f7db
                         sbb.s              ebx, ebx                                       // 0x00619719    1bdb
                         and                ebx, 0x02                                      // 0x0061971b    83e302
                         inc                ebx                                            // 0x0061971e    43
                         {disp8} mov        dword ptr [esp + 0x24], edx                    // 0x0061971f    89542424
.Lbl_addr_0x00619723:    {disp32} fld       dword ptr [esi + 0x000000a8]                   // 0x00619723    d986a8000000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                    // 0x00619729    d81d98a38a00
                         fnstsw             ax                                             // 0x0061972f    dfe0
                         test               ah, 0x01                                       // 0x00619731    f6c401
                         {disp8} je         .Lbl_addr_0x00619752                           // 0x00619734    741c
                         {disp32} mov       edi, dword ptr [esi + 0x000000c4]              // 0x00619736    8bbec4000000
                         {disp32} fld       dword ptr [esi + 0x000000a8]                   // 0x0061973c    d986a8000000
                         neg                edi                                            // 0x00619742    f7df
                         fchs                                                              // 0x00619744    d9e0
                         sbb.s              edi, edi                                       // 0x00619746    1bff
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x00619748    d95c2428
                         and                edi, 0x03                                      // 0x0061974c    83e703
                         inc                edi                                            // 0x0061974f    47
                         {disp8} jmp        .Lbl_addr_0x0061976a                           // 0x00619750    eb18
.Lbl_addr_0x00619752:    {disp32} mov       edi, dword ptr [esi + 0x000000c8]              // 0x00619752    8bbec8000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000a8]              // 0x00619758    8b86a8000000
                         neg                edi                                            // 0x0061975e    f7df
                         sbb.s              edi, edi                                       // 0x00619760    1bff
                         and                edi, 0x04                                      // 0x00619762    83e704
                         inc                edi                                            // 0x00619765    47
                         {disp8} mov        dword ptr [esp + 0x28], eax                    // 0x00619766    89442428
.Lbl_addr_0x0061976a:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x0061976a    8b4c242c
                         push               ecx                                            // 0x0061976e    51
                         push               0x1                                            // 0x0061976f    6a01
                         push               ebp                                            // 0x00619771    55
                         mov.s              ecx, esi                                       // 0x00619772    8bce
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00619774    e817ffffff
                         push               0x0                                            // 0x00619779    6a00
                         push               ebx                                            // 0x0061977b    53
                         push               ebp                                            // 0x0061977c    55
                         mov.s              ecx, esi                                       // 0x0061977d    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x0061977f    89442420
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00619783    e808ffffff
                         push               0x0                                            // 0x00619788    6a00
                         push               edi                                            // 0x0061978a    57
                         push               ebp                                            // 0x0061978b    55
                         mov.s              ecx, esi                                       // 0x0061978c    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x0061978e    8944241c
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00619792    e8f9feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00619797    8b4c2414
                         test               ecx, ecx                                       // 0x0061979b    85c9
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0061979d    89442418
                         {disp32} je        .Lbl_addr_0x006199be                           // 0x006197a1    0f8417020000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x006197a7    8b4c2410
                         test               ecx, ecx                                       // 0x006197ab    85c9
                         {disp32} je        .Lbl_addr_0x006199be                           // 0x006197ad    0f840b020000
                         test               eax, eax                                       // 0x006197b3    85c0
                         {disp32} je        .Lbl_addr_0x006199be                           // 0x006197b5    0f8403020000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x006197bb    8b54242c
                         push               edx                                            // 0x006197bf    52
                         push               0x1                                            // 0x006197c0    6a01
                         push               0x0                                            // 0x006197c2    6a00
                         mov.s              ecx, esi                                       // 0x006197c4    8bce
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x006197c6    e8c5feffff
                         push               0x0                                            // 0x006197cb    6a00
                         push               ebx                                            // 0x006197cd    53
                         push               0x0                                            // 0x006197ce    6a00
                         mov.s              ecx, esi                                       // 0x006197d0    8bce
                         mov.s              ebp, eax                                       // 0x006197d2    8be8
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x006197d4    e8b7feffff
                         push               0x0                                            // 0x006197d9    6a00
                         push               edi                                            // 0x006197db    57
                         push               0x0                                            // 0x006197dc    6a00
                         mov.s              ecx, esi                                       // 0x006197de    8bce
                         mov.s              ebx, eax                                       // 0x006197e0    8bd8
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x006197e2    e8a9feffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x34]                    // 0x006197e7    8b4d34
                         {disp8} mov        edx, dword ptr [ebx + 0x34]                    // 0x006197ea    8b5334
                         {disp8} mov        eax, dword ptr [eax + 0x34]                    // 0x006197ed    8b4034
                         mov                edi, dword ptr [ecx]                           // 0x006197f0    8b39
                         mov                ebx, dword ptr [edx]                           // 0x006197f2    8b1a
                         mov                ebp, dword ptr [eax]                           // 0x006197f4    8b28
                         push               0x00000539                                     // 0x006197f6    6839050000
                         push               0x00bf42d0                                     // 0x006197fb    68d042bf00
                         push               0x38                                           // 0x00619800    6a38
                         call               ??2@YAPAXIPBDI@Z                               // 0x00619802    e8891f1c00
                         add                esp, 0x0c                                      // 0x00619807    83c40c
                         test               eax, eax                                       // 0x0061980a    85c0
                         {disp8} je         .Lbl_addr_0x00619846                           // 0x0061980c    7438
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x0061980e    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x00619812    8b542418
                         push               ecx                                            // 0x00619816    51
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x00619817    8b4c2428
                         push               ebp                                            // 0x0061981b    55
                         push               edx                                            // 0x0061981c    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0061981d    8b54241c
                         push               ecx                                            // 0x00619821    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x00619822    8b4c2424
                         push               ebx                                            // 0x00619826    53
                         push               edx                                            // 0x00619827    52
                         push               edi                                            // 0x00619828    57
                         push               ecx                                            // 0x00619829    51
                         mov.s              ecx, eax                                       // 0x0061982a    8bc8
                         call               @__ct__5CAnimFP5CAnimP6CFrameP5CAnimP6CFramefP5CAnimP6CFramef@40                           // 0x0061982c    e80f572400
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00619831    8b54241c
                         pop                edi                                            // 0x00619835    5f
                         {disp32} mov       dword ptr [esi + edx * 0x4 + 0x000001d4], eax  // 0x00619836    898496d4010000
                         pop                esi                                            // 0x0061983d    5e
                         pop                ebp                                            // 0x0061983e    5d
                         pop                ebx                                            // 0x0061983f    5b
                         add                esp, 0x10                                      // 0x00619840    83c410
                         ret                0x000c                                         // 0x00619843    c20c00
.Lbl_addr_0x00619846:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00619846    8b54241c
                         pop                edi                                            // 0x0061984a    5f
                         xor.s              eax, eax                                       // 0x0061984b    33c0
                         {disp32} mov       dword ptr [esi + edx * 0x4 + 0x000001d4], eax  // 0x0061984d    898496d4010000
                         pop                esi                                            // 0x00619854    5e
                         pop                ebp                                            // 0x00619855    5d
                         pop                ebx                                            // 0x00619856    5b
                         add                esp, 0x10                                      // 0x00619857    83c410
                         ret                0x000c                                         // 0x0061985a    c20c00
                         cmp                dword ptr [esi + edi * 0x4 + 0x00000574], 0x01 // 0x0061985d    83bcbe7405000001
                         {disp32} jne       .Lbl_addr_0x006199be                           // 0x00619865    0f8553010000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                    // 0x0061986b    8b4618
                         test               eax, eax                                       // 0x0061986e    85c0
                         {disp32} je        .Lbl_addr_0x006199be                           // 0x00619870    0f8448010000
                         {disp8} mov        ecx, dword ptr [esi + 0x5c]                    // 0x00619876    8b4e5c
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x00000914]  // 0x00619879    8b84be14090000
                         {disp8} lea        ebx, dword ptr [esi + 0x0c]                    // 0x00619880    8d5e0c
                         mov                ebp, 0x00000002                                // 0x00619883    bd02000000
                         cmp.s              ecx, ebp                                       // 0x00619888    3bcd
                         {disp8} jne        .Lbl_addr_0x006198a4                           // 0x0061988a    7518
                         {disp8} mov        ecx, dword ptr [ebx + 0x54]                    // 0x0061988c    8b4b54
                         test               ecx, ecx                                       // 0x0061988f    85c9
                         {disp8} je         .Lbl_addr_0x006198a4                           // 0x00619891    7411
                         cmp                eax, dword ptr [ebx + 0x58]                    // 0x00619893    3b4358
                         {disp8} jae        .Lbl_addr_0x006198a4                           // 0x00619896    730c
                         push               eax                                            // 0x00619898    50
                         {disp8} mov        eax, dword ptr [ebx + 0x64]                    // 0x00619899    8b4364
                         push               eax                                            // 0x0061989c    50
                         mov.s              ecx, ebx                                       // 0x0061989d    8bcb
                         call               @SetLHFilePointer__6LHFileFPcl@16              // 0x0061989f    e82c441a00
.Lbl_addr_0x006198a4:    push               0x0000054b                                     // 0x006198a4    684b050000
.Lbl_addr_0x006198a9:    push               0x00bf42d0                                     // 0x006198a9    68d042bf00
                         push               0x38                                           // 0x006198ae    6a38
                         call               ??2@YAPAXIPBDI@Z                               // 0x006198b0    e8db1e1c00
                         add                esp, 0x0c                                      // 0x006198b5    83c40c
                         test               eax, eax                                       // 0x006198b8    85c0
                         {disp8} je         .Lbl_addr_0x006198c5                           // 0x006198ba    7409
                         mov.s              ecx, eax                                       // 0x006198bc    8bc8
                         call               ??0CAnim@@QAE@XZ                               // 0x006198be    e8bd4b2400
                         {disp8} jmp        .Lbl_addr_0x006198c7                           // 0x006198c3    eb02
.Lbl_addr_0x006198c5:    xor.s              eax, eax                                       // 0x006198c5    33c0
.Lbl_addr_0x006198c7:    push               ebx                                            // 0x006198c7    53
                         mov.s              ecx, eax                                       // 0x006198c8    8bc8
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000001d4], eax  // 0x006198ca    8984bed4010000
                         call               @ReadBinary__5CAnimFP6LHFile@12                // 0x006198d1    e88a6f2400
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000574], ebp  // 0x006198d6    89acbe74050000
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x000001d4]  // 0x006198dd    8b84bed4010000
                         pop                edi                                            // 0x006198e4    5f
                         pop                esi                                            // 0x006198e5    5e
                         pop                ebp                                            // 0x006198e6    5d
                         pop                ebx                                            // 0x006198e7    5b
                         add                esp, 0x10                                      // 0x006198e8    83c410
                         ret                0x000c                                         // 0x006198eb    c20c00
                         cmp                dword ptr [esi + edi * 0x4 + 0x00000574], 0x01 // 0x006198ee    83bcbe7405000001
                         {disp8} jne        .Lbl_addr_0x0061993b                           // 0x006198f6    7543
                         {disp8} mov        eax, dword ptr [esi + 0x18]                    // 0x006198f8    8b4618
                         test               eax, eax                                       // 0x006198fb    85c0
                         {disp32} je        .Lbl_addr_0x006199be                           // 0x006198fd    0f84bb000000
                         {disp8} mov        ecx, dword ptr [esi + 0x5c]                    // 0x00619903    8b4e5c
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x00000914]  // 0x00619906    8b84be14090000
                         {disp8} lea        ebx, dword ptr [esi + 0x0c]                    // 0x0061990d    8d5e0c
                         mov                ebp, 0x00000002                                // 0x00619910    bd02000000
                         cmp.s              ecx, ebp                                       // 0x00619915    3bcd
                         {disp8} jne        .Lbl_addr_0x00619931                           // 0x00619917    7518
                         {disp8} mov        ecx, dword ptr [ebx + 0x54]                    // 0x00619919    8b4b54
                         test               ecx, ecx                                       // 0x0061991c    85c9
                         {disp8} je         .Lbl_addr_0x00619931                           // 0x0061991e    7411
                         cmp                eax, dword ptr [ebx + 0x58]                    // 0x00619920    3b4358
                         {disp8} jae        .Lbl_addr_0x00619931                           // 0x00619923    730c
                         {disp8} mov        ecx, dword ptr [ebx + 0x64]                    // 0x00619925    8b4b64
                         push               eax                                            // 0x00619928    50
                         push               ecx                                            // 0x00619929    51
                         mov.s              ecx, ebx                                       // 0x0061992a    8bcb
                         call               @SetLHFilePointer__6LHFileFPcl@16              // 0x0061992c    e89f431a00
.Lbl_addr_0x00619931:    push               0x00000591                                     // 0x00619931    6891050000
                         {disp32} jmp       .Lbl_addr_0x006198a9                           // 0x00619936    e96effffff
.Lbl_addr_0x0061993b:    {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x0061993b    8b54242c
                         push               edx                                            // 0x0061993f    52
                         push               0x1                                            // 0x00619940    6a01
                         push               ebp                                            // 0x00619942    55
                         mov.s              ecx, esi                                       // 0x00619943    8bce
                         call               @GetSetAnim__9MorphableFlll@20                 // 0x00619945    e846fdffff
                         test               eax, eax                                       // 0x0061994a    85c0
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x0061994c    8944242c
                         {disp8} je         .Lbl_addr_0x006199be                           // 0x00619950    746c
                         push               0x0000059d                                     // 0x00619952    689d050000
                         push               0x00bf42d0                                     // 0x00619957    68d042bf00
                         push               0x38                                           // 0x0061995c    6a38
                         call               ??2@YAPAXIPBDI@Z                               // 0x0061995e    e82d1e1c00
                         add                esp, 0x0c                                      // 0x00619963    83c40c
                         test               eax, eax                                       // 0x00619966    85c0
                         {disp8} je         .Lbl_addr_0x00619978                           // 0x00619968    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x0061996a    8b4c242c
                         push               ecx                                            // 0x0061996e    51
                         mov.s              ecx, eax                                       // 0x0061996f    8bc8
                         call               @__ct__5CAnimFP5CAnim@12                       // 0x00619971    e84a4b2400
                         {disp8} jmp        .Lbl_addr_0x0061997a                           // 0x00619976    eb02
.Lbl_addr_0x00619978:    xor.s              eax, eax                                       // 0x00619978    33c0
.Lbl_addr_0x0061997a:    test               ebp, ebp                                       // 0x0061997a    85ed
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000001d4], eax  // 0x0061997c    8984bed4010000
                         {disp8} je         .Lbl_addr_0x006199ad                           // 0x00619983    7428
                         {disp32} lea       edx, dword ptr [ebx * 0x8 + 0x00000000]        // 0x00619985    8d14dd00000000
                         sub.s              edx, ebx                                       // 0x0061998c    2bd3
                         lea                ecx, dword ptr [ebx + edx * 0x4]               // 0x0061998e    8d0c93
                         lea                ecx, dword ptr [ecx + ecx * 0x2]               // 0x00619991    8d0c49
                         shl                ecx, 5                                         // 0x00619994    c1e105
                         {disp32} mov       edx, dword ptr [ecx + esi * 0x1 + 0x000001d4]  // 0x00619997    8b9431d4010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000cb4]              // 0x0061999e    8b8eb40c0000
                         push               edx                                            // 0x006199a4    52
                         push               ecx                                            // 0x006199a5    51
                         mov.s              ecx, eax                                       // 0x006199a6    8bc8
                         call               @AdjustForNewBasedOnStand__5CAnimFP5CAnimP5CAnim@16                           // 0x006199a8    e853802400
.Lbl_addr_0x006199ad:    {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x000001d4]  // 0x006199ad    8b84bed4010000
                         pop                edi                                            // 0x006199b4    5f
                         pop                esi                                            // 0x006199b5    5e
                         pop                ebp                                            // 0x006199b6    5d
                         pop                ebx                                            // 0x006199b7    5b
                         add                esp, 0x10                                      // 0x006199b8    83c410
                         ret                0x000c                                         // 0x006199bb    c20c00
.Lbl_addr_0x006199be:    xor.s              eax, eax                                       // 0x006199be    33c0
.Lbl_addr_0x006199c0:    pop                edi                                            // 0x006199c0    5f
                         pop                esi                                            // 0x006199c1    5e
                         pop                ebp                                            // 0x006199c2    5d
                         pop                ebx                                            // 0x006199c3    5b
                         add                esp, 0x10                                      // 0x006199c4    83c410
                         ret                0x000c                                         // 0x006199c7    c20c00

// Snippet: db, [0x006199ca, 0x006199cc)
.byte 0x8b, 0xff                  // 0x006199ca

// Snippet: jmptbl, [0x006199cc, 0x006199e4)
.byte 0xdc, 0x96, 0x61, 0x00      // 0x006199cc
.byte 0x5d, 0x98, 0x61, 0x00      // 0x006199d0
.byte 0xee, 0x98, 0x61, 0x00      // 0x006199d4
.byte 0xee, 0x98, 0x61, 0x00      // 0x006199d8
.byte 0xee, 0x98, 0x61, 0x00      // 0x006199dc
.byte 0xee, 0x98, 0x61, 0x00      // 0x006199e0

// Snippet: db, [0x006199e4, 0x006199f0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006199e4
.byte 0x90, 0x90, 0x90, 0x90      // 0x006199e8
.byte 0x90, 0x90, 0x90, 0x90      // 0x006199ec

_jmp_addr_0x006199f0:    sub               esp, 0x14                                            // 0x006199f0    83ec14
                         push              ebp                                                  // 0x006199f3    55
                         {disp8} mov       ebp, dword ptr [esp + 0x24]                          // 0x006199f4    8b6c2424
                         {disp8} mov       eax, dword ptr [ebp + 0x04]                          // 0x006199f8    8b4504
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                          // 0x006199fb    894c240c
                         xor.s             ecx, ecx                                             // 0x006199ff    33c9
                         cmp.s             eax, ecx                                             // 0x00619a01    3bc1
                         {disp8} mov       dword ptr [esp + 0x04], ecx                          // 0x00619a03    894c2404
                         {disp8} mov       dword ptr [esp + 0x08], ecx                          // 0x00619a07    894c2408
                         {disp32} jle      .Lbl_addr_0x00619b6b                                 // 0x00619a0b    0f8e5a010000
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619a11    8b442420
                         push              ebx                                                  // 0x00619a15    53
                         push              esi                                                  // 0x00619a16    56
                         sub.s             eax, ebp                                             // 0x00619a17    2bc5
                         push              edi                                                  // 0x00619a19    57
                         {disp8} mov       dword ptr [esp + 0x30], 0x00000183                   // 0x00619a1a    c744243083010000
                         {disp32} lea      ebx, dword ptr [ebp + 0x00000308]                    // 0x00619a22    8d9d08030000
                         {disp8} mov       dword ptr [esp + 0x1c], eax                          // 0x00619a28    8944241c
.Lbl_addr_0x00619a2c:    mov               eax, dword ptr [ebx]                                 // 0x00619a2c    8b03
                         xor.s             edi, edi                                             // 0x00619a2e    33ff
                         cmp.s             eax, ecx                                             // 0x00619a30    3bc1
                         {disp32} jle      .Lbl_addr_0x00619b34                                 // 0x00619a32    0f8efc000000
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619a38    8b442410
                         {disp8} mov       edx, dword ptr [esp + 0x18]                          // 0x00619a3c    8b542418
                         {disp32} lea      esi, dword ptr [edx + eax * 0x4 + 0x00000740]        // 0x00619a40    8db48240070000
                         {disp8} jmp       .Lbl_addr_0x00619a4b                                 // 0x00619a47    eb02
.Lbl_addr_0x00619a49:    xor.s             ecx, ecx                                             // 0x00619a49    33c9
.Lbl_addr_0x00619a4b:    {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x00619a4b    8b442414
                         {disp8} mov       edx, dword ptr [esp + 0x2c]                          // 0x00619a4f    8b54242c
                         cmp               eax, dword ptr [edx + 0x04]                          // 0x00619a53    3b4204
                         {disp32} jge      .Lbl_addr_0x00619b0d                                 // 0x00619a56    0f8db1000000
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                          // 0x00619a5c    8b44241c
                         cmp               edi, dword ptr [eax + ebx * 0x1]                     // 0x00619a60    3b3c18
                         {disp32} jge      .Lbl_addr_0x00619b0d                                 // 0x00619a63    0f8da4000000
                         push              -0x1                                                 // 0x00619a69    6aff
                         push              0x4                                                  // 0x00619a6b    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x28]                          // 0x00619a6d    8d4c2428
                         push              ecx                                                  // 0x00619a71    51
                         {disp8} mov       ecx, dword ptr [esp + 0x34]                          // 0x00619a72    8b4c2434
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619a76    e8c5451a00
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                          // 0x00619a7b    8b4c2420
                         xor.s             eax, eax                                             // 0x00619a7f    33c0
                         cmp.s             ecx, eax                                             // 0x00619a81    3bc8
                         {disp8} jne       .Lbl_addr_0x00619a98                                 // 0x00619a83    7513
                         {disp32} mov      dword ptr [esi + -0x00000740], eax                   // 0x00619a85    8986c0f8ffff
                         {disp32} mov      dword ptr [esi + -0x000003a0], eax                   // 0x00619a8b    898660fcffff
                         mov               dword ptr [esi], eax                                 // 0x00619a91    8906
                         {disp32} jmp      .Lbl_addr_0x00619b1b                                 // 0x00619a93    e983000000
.Lbl_addr_0x00619a98:    push              0x000005c8                                           // 0x00619a98    68c8050000
                         push              0x00bf42d0                                           // 0x00619a9d    68d042bf00
                         {disp32} mov      dword ptr [esi + -0x000003a0], 0x00000002            // 0x00619aa2    c78660fcffff02000000
                         push              0x38                                                 // 0x00619aac    6a38
                         mov               dword ptr [esi], eax                                 // 0x00619aae    8906
                         call              ??2@YAPAXIPBDI@Z                                     // 0x00619ab0    e8db1c1c00
                         add               esp, 0x0c                                            // 0x00619ab5    83c40c
                         test              eax, eax                                             // 0x00619ab8    85c0
                         {disp8} je        .Lbl_addr_0x00619ac5                                 // 0x00619aba    7409
                         mov.s             ecx, eax                                             // 0x00619abc    8bc8
                         call              ??0CAnim@@QAE@XZ                                     // 0x00619abe    e8bd492400
                         {disp8} jmp       .Lbl_addr_0x00619ac7                                 // 0x00619ac3    eb02
.Lbl_addr_0x00619ac5:    xor.s             eax, eax                                             // 0x00619ac5    33c0
.Lbl_addr_0x00619ac7:    {disp8} mov       edx, dword ptr [esp + 0x28]                          // 0x00619ac7    8b542428
                         push              edx                                                  // 0x00619acb    52
                         mov.s             ecx, eax                                             // 0x00619acc    8bc8
                         {disp32} mov      dword ptr [esi + -0x00000740], eax                   // 0x00619ace    8986c0f8ffff
                         call              @ReadBinary__5CAnimFP6LHFile@12                      // 0x00619ad4    e8876d2400
                         {disp8} mov       eax, dword ptr [esp + 0x30]                          // 0x00619ad9    8b442430
                         add.s             eax, edi                                             // 0x00619add    03c7
                         {disp8} mov       cl, byte ptr [ebp + eax * 0x4 + 0x00]                // 0x00619adf    8a4c8500
                         test              cl, 0x01                                             // 0x00619ae3    f6c101
                         {disp8} lea       eax, dword ptr [ebp + eax * 0x4 + 0x00]              // 0x00619ae6    8d448500
                         {disp8} je        .Lbl_addr_0x00619af9                                 // 0x00619aea    740d
                         {disp32} mov      ecx, dword ptr [esi + -0x00000740]                   // 0x00619aec    8b8ec0f8ffff
                         {disp8} mov       dword ptr [ecx + 0x04], 0x00000001                   // 0x00619af2    c7410401000000
.Lbl_addr_0x00619af9:    test              byte ptr [eax], 0x02                                 // 0x00619af9    f60002
                         {disp8} je        .Lbl_addr_0x00619b1b                                 // 0x00619afc    741d
                         {disp32} mov      edx, dword ptr [esi + -0x00000740]                   // 0x00619afe    8b96c0f8ffff
                         {disp8} mov       dword ptr [edx + 0x04], 0x00000000                   // 0x00619b04    c7420400000000
                         {disp8} jmp       .Lbl_addr_0x00619b1b                                 // 0x00619b0b    eb0e
.Lbl_addr_0x00619b0d:    {disp32} mov      dword ptr [esi + -0x00000740], ecx                   // 0x00619b0d    898ec0f8ffff
                         {disp32} mov      dword ptr [esi + -0x000003a0], ecx                   // 0x00619b13    898e60fcffff
                         mov               dword ptr [esi], ecx                                 // 0x00619b19    890e
.Lbl_addr_0x00619b1b:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619b1b    8b442410
                         inc               eax                                                  // 0x00619b1f    40
                         add               esi, 0x04                                            // 0x00619b20    83c604
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x00619b23    89442410
                         mov               eax, dword ptr [ebx]                                 // 0x00619b27    8b03
                         inc               edi                                                  // 0x00619b29    47
                         cmp.s             edi, eax                                             // 0x00619b2a    3bf8
                         {disp32} jl       .Lbl_addr_0x00619a49                                 // 0x00619b2c    0f8c17ffffff
                         xor.s             ecx, ecx                                             // 0x00619b32    33c9
.Lbl_addr_0x00619b34:    {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x00619b34    8b442414
                         {disp8} mov       esi, dword ptr [esp + 0x30]                          // 0x00619b38    8b742430
                         {disp8} mov       edx, dword ptr [ebp + 0x04]                          // 0x00619b3c    8b5504
                         inc               eax                                                  // 0x00619b3f    40
                         add               esi, 0x000000d9                                      // 0x00619b40    81c6d9000000
                         add               ebx, 0x00000364                                      // 0x00619b46    81c364030000
                         cmp.s             eax, edx                                             // 0x00619b4c    3bc2
                         {disp8} mov       dword ptr [esp + 0x14], eax                          // 0x00619b4e    89442414
                         {disp8} mov       dword ptr [esp + 0x30], esi                          // 0x00619b52    89742430
                         {disp32} jl       .Lbl_addr_0x00619a2c                                 // 0x00619b56    0f8cd0feffff
                         pop               edi                                                  // 0x00619b5c    5f
                         pop               esi                                                  // 0x00619b5d    5e
                         pop               ebx                                                  // 0x00619b5e    5b
                         mov               eax, 0x00000001                                      // 0x00619b5f    b801000000
                         pop               ebp                                                  // 0x00619b64    5d
                         add               esp, 0x14                                            // 0x00619b65    83c414
                         ret               0x000c                                               // 0x00619b68    c20c00
.Lbl_addr_0x00619b6b:    mov               eax, 0x00000001                                      // 0x00619b6b    b801000000
                         pop               ebp                                                  // 0x00619b70    5d
                         add               esp, 0x14                                            // 0x00619b71    83c414
                         ret               0x000c                                               // 0x00619b74    c20c00
                         nop                                                                    // 0x00619b77    90
                         nop                                                                    // 0x00619b78    90
                         nop                                                                    // 0x00619b79    90
                         nop                                                                    // 0x00619b7a    90
                         nop                                                                    // 0x00619b7b    90
                         nop                                                                    // 0x00619b7c    90
                         nop                                                                    // 0x00619b7d    90
                         nop                                                                    // 0x00619b7e    90
                         nop                                                                    // 0x00619b7f    90
@ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20:    sub               esp, 0x14                                            // 0x00619b80    83ec14
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619b83    8b442420
                         push              ebp                                                  // 0x00619b87    55
                         xor.s             ebp, ebp                                             // 0x00619b88    33ed
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                          // 0x00619b8a    894c240c
                         cmp               dword ptr [eax + 0x04], ebp                          // 0x00619b8e    396804
                         push              esi                                                  // 0x00619b91    56
                         {disp8} mov       dword ptr [esp + 0x08], ebp                          // 0x00619b92    896c2408
                         {disp8} mov       dword ptr [esp + 0x0c], ebp                          // 0x00619b96    896c240c
                         {disp32} jle      .Lbl_addr_0x00619c4e                                 // 0x00619b9a    0f8eae000000
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                          // 0x00619ba0    8b4c2424
                         push              ebx                                                  // 0x00619ba4    53
                         sub.s             ecx, eax                                             // 0x00619ba5    2bc8
                         push              edi                                                  // 0x00619ba7    57
                         {disp32} lea      ebx, dword ptr [eax + 0x00000308]                    // 0x00619ba8    8d9808030000
                         {disp8} mov       dword ptr [esp + 0x1c], ecx                          // 0x00619bae    894c241c
.Lbl_addr_0x00619bb2:    mov               ecx, dword ptr [ebx]                                 // 0x00619bb2    8b0b
                         xor.s             edi, edi                                             // 0x00619bb4    33ff
                         cmp.s             ecx, ebp                                             // 0x00619bb6    3bcd
                         {disp8} jle       .Lbl_addr_0x00619c32                                 // 0x00619bb8    7e78
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619bba    8b442410
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                          // 0x00619bbe    8b4c2418
                         {disp32} lea      esi, dword ptr [ecx + eax * 0x4 + 0x00000740]        // 0x00619bc2    8db48140070000
.Lbl_addr_0x00619bc9:    {disp8} mov       eax, dword ptr [esp + 0x2c]                          // 0x00619bc9    8b44242c
                         {disp8} mov       edx, dword ptr [esp + 0x14]                          // 0x00619bcd    8b542414
                         cmp               edx, dword ptr [eax + 0x04]                          // 0x00619bd1    3b5004
                         {disp8} jge       .Lbl_addr_0x00619c0d                                 // 0x00619bd4    7d37
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619bd6    8b4c241c
                         cmp               edi, dword ptr [ecx + ebx * 0x1]                     // 0x00619bda    3b3c19
                         {disp8} jge       .Lbl_addr_0x00619c0d                                 // 0x00619bdd    7d2e
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                          // 0x00619bdf    8b4c2428
                         push              -0x1                                                 // 0x00619be3    6aff
                         push              0x4                                                  // 0x00619be5    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x28]                          // 0x00619be7    8d542428
                         push              edx                                                  // 0x00619beb    52
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619bec    e84f441a00
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619bf1    8b442420
                         cmp.s             eax, ebp                                             // 0x00619bf5    3bc5
                         {disp32} mov      dword ptr [esi + -0x00000740], ebp                   // 0x00619bf7    89aec0f8ffff
                         {disp8} je        .Lbl_addr_0x00619c13                                 // 0x00619bfd    7414
                         {disp32} mov      dword ptr [esi + -0x000003a0], 0x00000001            // 0x00619bff    c78660fcffff01000000
                         mov               dword ptr [esi], eax                                 // 0x00619c09    8906
                         {disp8} jmp       .Lbl_addr_0x00619c1b                                 // 0x00619c0b    eb0e
.Lbl_addr_0x00619c0d:    {disp32} mov      dword ptr [esi + -0x00000740], ebp                   // 0x00619c0d    89aec0f8ffff
.Lbl_addr_0x00619c13:    {disp32} mov      dword ptr [esi + -0x000003a0], ebp                   // 0x00619c13    89ae60fcffff
                         mov               dword ptr [esi], ebp                                 // 0x00619c19    892e
.Lbl_addr_0x00619c1b:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619c1b    8b442410
                         inc               eax                                                  // 0x00619c1f    40
                         add               esi, 0x04                                            // 0x00619c20    83c604
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x00619c23    89442410
                         mov               eax, dword ptr [ebx]                                 // 0x00619c27    8b03
                         inc               edi                                                  // 0x00619c29    47
                         cmp.s             edi, eax                                             // 0x00619c2a    3bf8
                         {disp8} jl        .Lbl_addr_0x00619bc9                                 // 0x00619c2c    7c9b
                         {disp8} mov       eax, dword ptr [esp + 0x30]                          // 0x00619c2e    8b442430
.Lbl_addr_0x00619c32:    {disp8} mov       ecx, dword ptr [esp + 0x14]                          // 0x00619c32    8b4c2414
                         {disp8} mov       edx, dword ptr [eax + 0x04]                          // 0x00619c36    8b5004
                         inc               ecx                                                  // 0x00619c39    41
                         add               ebx, 0x00000364                                      // 0x00619c3a    81c364030000
                         cmp.s             ecx, edx                                             // 0x00619c40    3bca
                         {disp8} mov       dword ptr [esp + 0x14], ecx                          // 0x00619c42    894c2414
                         {disp32} jl       .Lbl_addr_0x00619bb2                                 // 0x00619c46    0f8c66ffffff
                         pop               edi                                                  // 0x00619c4c    5f
                         pop               ebx                                                  // 0x00619c4d    5b
.Lbl_addr_0x00619c4e:    {disp8} mov       esi, dword ptr [esp + 0x20]                          // 0x00619c4e    8b742420
                         push              -0x1                                                 // 0x00619c52    6aff
                         push              0x4                                                  // 0x00619c54    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                          // 0x00619c56    8d44242c
                         push              eax                                                  // 0x00619c5a    50
                         mov.s             ecx, esi                                             // 0x00619c5b    8bce
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619c5d    e8de431a00
                         cmp               dword ptr [esi + 0x50], 0x02                         // 0x00619c62    837e5002
                         {disp8} jne       .Lbl_addr_0x00619c82                                 // 0x00619c66    751a
                         cmp               dword ptr [esi + 0x54], ebp                          // 0x00619c68    396e54
                         {disp8} je        .Lbl_addr_0x00619c82                                 // 0x00619c6b    7415
                         {disp8} mov       eax, dword ptr [esp + 0x24]                          // 0x00619c6d    8b442424
                         cmp               eax, dword ptr [esi + 0x58]                          // 0x00619c71    3b4658
                         {disp8} jae       .Lbl_addr_0x00619c82                                 // 0x00619c74    730c
                         {disp8} mov       ecx, dword ptr [esi + 0x64]                          // 0x00619c76    8b4e64
                         push              eax                                                  // 0x00619c79    50
                         push              ecx                                                  // 0x00619c7a    51
                         mov.s             ecx, esi                                             // 0x00619c7b    8bce
                         call              @SetLHFilePointer__6LHFileFPcl@16                    // 0x00619c7d    e84e401a00
.Lbl_addr_0x00619c82:    pop               esi                                                  // 0x00619c82    5e
                         mov               eax, 0x00000001                                      // 0x00619c83    b801000000
                         pop               ebp                                                  // 0x00619c88    5d
                         add               esp, 0x14                                            // 0x00619c89    83c414
                         ret               0x000c                                               // 0x00619c8c    c20c00
                         nop                                                                    // 0x00619c8f    90
_jmp_addr_0x00619c90:    sub               esp, 0x08                                            // 0x00619c90    83ec08
                         push              ebx                                                  // 0x00619c93    53
                         push              ebp                                                  // 0x00619c94    55
                         push              esi                                                  // 0x00619c95    56
                         push              edi                                                  // 0x00619c96    57
                         mov.s             edi, ecx                                             // 0x00619c97    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619c99    8b4c241c
                         {disp8} mov       eax, dword ptr [ecx + 0x54]                          // 0x00619c9d    8b4154
                         test              eax, eax                                             // 0x00619ca0    85c0
                         {disp8} mov       dword ptr [esp + 0x14], edi                          // 0x00619ca2    897c2414
                         {disp8} jne       .Lbl_addr_0x00619caf                                 // 0x00619ca6    7507
                         mov               eax, 0x00000003                                      // 0x00619ca8    b803000000
                         {disp8} jmp       .Lbl_addr_0x00619cb5                                 // 0x00619cad    eb06
.Lbl_addr_0x00619caf:    {disp8} mov       eax, dword ptr [ecx + 0x5c]                          // 0x00619caf    8b415c
                         sub               eax, dword ptr [ecx + 0x60]                          // 0x00619cb2    2b4160
.Lbl_addr_0x00619cb5:    {disp8} mov       ebp, dword ptr [esp + 0x20]                          // 0x00619cb5    8b6c2420
                         {disp8} lea       ebx, dword ptr [eax + ebp * 0x4 + 0x04]              // 0x00619cb9    8d5ca804
                         xor.s             esi, esi                                             // 0x00619cbd    33f6
                         test              ebp, ebp                                             // 0x00619cbf    85ed
                         {disp8} mov       dword ptr [esp + 0x20], ebx                          // 0x00619cc1    895c2420
                         {disp32} jle      .Lbl_addr_0x00619d5b                                 // 0x00619cc5    0f8e90000000
.Lbl_addr_0x00619ccb:    {disp32} mov      eax, dword ptr [edi + 0x000003a0]                    // 0x00619ccb    8b87a0030000
                         test              eax, eax                                             // 0x00619cd1    85c0
                         {disp8} je        .Lbl_addr_0x00619d37                                 // 0x00619cd3    7462
                         push              0x4                                                  // 0x00619cd5    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619cd7    8d442414
                         push              eax                                                  // 0x00619cdb    50
                         {disp8} mov       dword ptr [esp + 0x18], ebx                          // 0x00619cdc    895c2418
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619ce0    e8db421a00
                         test              esi, esi                                             // 0x00619ce5    85f6
                         {disp8} je        .Lbl_addr_0x00619d28                                 // 0x00619ce7    743f
                         push              0x0000061c                                           // 0x00619ce9    681c060000
                         push              0x00bf42d0                                           // 0x00619cee    68d042bf00
                         push              0x38                                                 // 0x00619cf3    6a38
                         call              ??2@YAPAXIPBDI@Z                                     // 0x00619cf5    e8961a1c00
                         add               esp, 0x0c                                            // 0x00619cfa    83c40c
                         test              eax, eax                                             // 0x00619cfd    85c0
                         {disp8} je        .Lbl_addr_0x00619d19                                 // 0x00619cff    7418
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                          // 0x00619d01    8b4c2424
                         {disp8} mov       edx, dword ptr [ecx + 0x34]                          // 0x00619d05    8b5134
                         mov               ecx, dword ptr [edx]                                 // 0x00619d08    8b0a
                         mov               edx, dword ptr [edi]                                 // 0x00619d0a    8b17
                         push              ecx                                                  // 0x00619d0c    51
                         push              edx                                                  // 0x00619d0d    52
                         mov.s             ecx, eax                                             // 0x00619d0e    8bc8
                         call              _jmp_addr_0x0085f690                                 // 0x00619d10    e87b592400
                         mov.s             ebx, eax                                             // 0x00619d15    8bd8
                         {disp8} jmp       .Lbl_addr_0x00619d1b                                 // 0x00619d17    eb02
.Lbl_addr_0x00619d19:    xor.s             ebx, ebx                                             // 0x00619d19    33db
.Lbl_addr_0x00619d1b:    mov               ecx, dword ptr [edi]                                 // 0x00619d1b    8b0f
                         call              ??_DCAnim@@QAEXXZ                                    // 0x00619d1d    e87e472400
                         mov               dword ptr [edi], ebx                                 // 0x00619d22    891f
                         {disp8} mov       ebx, dword ptr [esp + 0x20]                          // 0x00619d24    8b5c2420
.Lbl_addr_0x00619d28:    mov               ecx, dword ptr [edi]                                 // 0x00619d28    8b0f
                         call              _jmp_addr_0x00860be0                                 // 0x00619d2a    e8b16e2400
                         add.s             ebx, eax                                             // 0x00619d2f    03d8
                         {disp8} mov       dword ptr [esp + 0x20], ebx                          // 0x00619d31    895c2420
                         {disp8} jmp       .Lbl_addr_0x00619d4b                                 // 0x00619d35    eb14
.Lbl_addr_0x00619d37:    push              0x4                                                  // 0x00619d37    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619d39    8d442414
                         push              eax                                                  // 0x00619d3d    50
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000000                   // 0x00619d3e    c744241800000000
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619d46    e875421a00
.Lbl_addr_0x00619d4b:    {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619d4b    8b4c241c
                         inc               esi                                                  // 0x00619d4f    46
                         add               edi, 0x04                                            // 0x00619d50    83c704
                         cmp.s             esi, ebp                                             // 0x00619d53    3bf5
                         {disp32} jl       .Lbl_addr_0x00619ccb                                 // 0x00619d55    0f8c70ffffff
.Lbl_addr_0x00619d5b:    push              0x4                                                  // 0x00619d5b    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x24]                          // 0x00619d5d    8d542424
                         push              edx                                                  // 0x00619d61    52
                         {disp8} mov       dword ptr [esp + 0x28], ebx                          // 0x00619d62    895c2428
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619d66    e855421a00
                         test              ebp, ebp                                             // 0x00619d6b    85ed
                         {disp8} jle       .Lbl_addr_0x00619d91                                 // 0x00619d6d    7e22
                         {disp8} mov       esi, dword ptr [esp + 0x14]                          // 0x00619d6f    8b742414
                         mov.s             edi, ebp                                             // 0x00619d73    8bfd
.Lbl_addr_0x00619d75:    {disp32} mov      eax, dword ptr [esi + 0x000003a0]                    // 0x00619d75    8b86a0030000
                         test              eax, eax                                             // 0x00619d7b    85c0
                         {disp8} je        .Lbl_addr_0x00619d8b                                 // 0x00619d7d    740c
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                          // 0x00619d7f    8b44241c
                         mov               ecx, dword ptr [esi]                                 // 0x00619d83    8b0e
                         push              eax                                                  // 0x00619d85    50
                         call              _jmp_addr_0x00860a70                                 // 0x00619d86    e8e56c2400
.Lbl_addr_0x00619d8b:    add               esi, 0x04                                            // 0x00619d8b    83c604
                         dec               edi                                                  // 0x00619d8e    4f
                         {disp8} jne       .Lbl_addr_0x00619d75                                 // 0x00619d8f    75e4
.Lbl_addr_0x00619d91:    pop               edi                                                  // 0x00619d91    5f
                         pop               esi                                                  // 0x00619d92    5e
                         pop               ebp                                                  // 0x00619d93    5d
                         pop               ebx                                                  // 0x00619d94    5b
                         add               esp, 0x08                                            // 0x00619d95    83c408
                         ret               0x000c                                               // 0x00619d98    c20c00
                         call              ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                                 // 0x00619d9b    e8597adeff
_jmp_addr_0x00619da0:    sub               esp, 0x000000c4                                      // 0x00619da0    81ecc4000000
                         {disp8} mov       dword ptr [esp + 0x00], ecx                          // 0x00619da6    894c2400
                         or                ecx, 0xffffffff                                      // 0x00619daa    83c9ff
                         push              ebx                                                  // 0x00619dad    53
                         xor.s             eax, eax                                             // 0x00619dae    33c0
                         push              ebp                                                  // 0x00619db0    55
                         push              esi                                                  // 0x00619db1    56
                         push              edi                                                  // 0x00619db2    57
                         mov               edi, 0x00bf455c                                      // 0x00619db3    bf5c45bf00
                         repne scasb                                                            // 0x00619db8    f2ae
                         not               ecx                                                  // 0x00619dba    f7d1
                         sub.s             edi, ecx                                             // 0x00619dbc    2bf9
                         mov.s             eax, ecx                                             // 0x00619dbe    8bc1
                         shr               ecx, 2                                               // 0x00619dc0    c1e902
                         mov.s             esi, edi                                             // 0x00619dc3    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619dc5    8d542414
                         mov.s             edi, edx                                             // 0x00619dc9    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619dcb    f3a5
                         mov.s             ecx, eax                                             // 0x00619dcd    8bc8
                         and               ecx, 0x03                                            // 0x00619dcf    83e103
                         rep movsb                                                              // 0x00619dd2    f3a4
                         {disp32} mov      edi, dword ptr [esp + 0x000000d8]                    // 0x00619dd4    8bbc24d8000000
                         or                ecx, 0xffffffff                                      // 0x00619ddb    83c9ff
                         xor.s             eax, eax                                             // 0x00619dde    33c0
                         repne scasb                                                            // 0x00619de0    f2ae
                         not               ecx                                                  // 0x00619de2    f7d1
                         sub.s             edi, ecx                                             // 0x00619de4    2bf9
                         mov.s             ebx, ecx                                             // 0x00619de6    8bd9
                         or                ecx, 0xffffffff                                      // 0x00619de8    83c9ff
                         mov.s             esi, edi                                             // 0x00619deb    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619ded    8d542414
                         mov.s             edi, edx                                             // 0x00619df1    8bfa
                         repne scasb                                                            // 0x00619df3    f2ae
                         dec               edi                                                  // 0x00619df5    4f
                         mov.s             ecx, ebx                                             // 0x00619df6    8bcb
                         shr               ecx, 2                                               // 0x00619df8    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619dfb    f3a5
                         mov.s             ecx, ebx                                             // 0x00619dfd    8bcb
                         and               ecx, 0x03                                            // 0x00619dff    83e103
                         rep movsb                                                              // 0x00619e02    f3a4
                         or                ecx, 0xffffffff                                      // 0x00619e04    83c9ff
                         mov               edi, 0x00bf4554                                      // 0x00619e07    bf5445bf00
                         repne scasb                                                            // 0x00619e0c    f2ae
                         not               ecx                                                  // 0x00619e0e    f7d1
                         sub.s             edi, ecx                                             // 0x00619e10    2bf9
                         mov.s             ebx, ecx                                             // 0x00619e12    8bd9
                         or                ecx, 0xffffffff                                      // 0x00619e14    83c9ff
                         mov.s             esi, edi                                             // 0x00619e17    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619e19    8d542414
                         mov.s             edi, edx                                             // 0x00619e1d    8bfa
                         repne scasb                                                            // 0x00619e1f    f2ae
                         mov.s             ecx, ebx                                             // 0x00619e21    8bcb
                         shr               ecx, 2                                               // 0x00619e23    c1e902
                         dec               edi                                                  // 0x00619e26    4f
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619e27    f3a5
                         mov.s             ecx, ebx                                             // 0x00619e29    8bcb
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619e2b    8d442414
                         and               ecx, 0x03                                            // 0x00619e2f    83e103
                         push              eax                                                  // 0x00619e32    50
                         rep movsb                                                              // 0x00619e33    f3a4
                         call              _jmp_addr_0x00839900                                 // 0x00619e35    e8c6fa2100
                         mov.s             ebp, eax                                             // 0x00619e3a    8be8
                         add               esp, 0x04                                            // 0x00619e3c    83c404
                         test              ebp, ebp                                             // 0x00619e3f    85ed
                         {disp8} jne       .Lbl_addr_0x00619e64                                 // 0x00619e41    7521
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                          // 0x00619e43    8d4c2414
                         push              ecx                                                  // 0x00619e47    51
                         push              0x00bf453c                                           // 0x00619e48    683c45bf00
                         call              _jmp_addr_0x00617140                                 // 0x00619e4d    e8eed2ffff
                         add               esp, 0x08                                            // 0x00619e52    83c408
                         pop               edi                                                  // 0x00619e55    5f
                         pop               esi                                                  // 0x00619e56    5e
                         pop               ebp                                                  // 0x00619e57    5d
                         xor.s             eax, eax                                             // 0x00619e58    33c0
                         pop               ebx                                                  // 0x00619e5a    5b
                         add               esp, 0x000000c4                                      // 0x00619e5b    81c4c4000000
                         ret               0x0034                                               // 0x00619e61    c23400
.Lbl_addr_0x00619e64:    {disp32} mov      eax, dword ptr [esp + 0x000000ec]                    // 0x00619e64    8b8424ec000000
                         test              eax, eax                                             // 0x00619e6b    85c0
                         {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619e6d    8b9c24dc000000
                         {disp32} je       .Lbl_addr_0x00619fc5                                 // 0x00619e74    0f844b010000
                         {disp8} mov       edi, dword ptr [ebp + 0x50]                          // 0x00619e7a    8b7d50
                         and               edi, 0x00000100                                      // 0x00619e7d    81e700010000
                         {disp32} mov      edx, dword ptr [esp + 0x000000e8]                    // 0x00619e83    8b9424e8000000
                         {disp32} mov      eax, dword ptr [esp + 0x000000e4]                    // 0x00619e8a    8b8424e4000000
                         {disp32} mov      esi, dword ptr [esp + 0x000000e0]                    // 0x00619e91    8bb424e0000000
                         {disp8} je        .Lbl_addr_0x00619ec6                                 // 0x00619e98    742c
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619e9a    8d0c40
                         lea               ebx, dword ptr [edx + eax * 0x1]                     // 0x00619e9d    8d1c02
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619ea0    8d0cc9
                         lea               ecx, dword ptr [ebx + ecx * 0x8]                     // 0x00619ea3    8d0ccb
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x02        // 0x00619ea6    f6848e0c06000002
                         {disp8} je        .Lbl_addr_0x00619ebf                                 // 0x00619eae    740f
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619eb0    8d542414
                         push              edx                                                  // 0x00619eb4    52
                         push              0x00bf451c                                           // 0x00619eb5    681c45bf00
                         {disp32} jmp      .Lbl_addr_0x00619f72                                 // 0x00619eba    e9b3000000
.Lbl_addr_0x00619ebf:    {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619ebf    8b9c24dc000000
.Lbl_addr_0x00619ec6:    test              edi, edi                                             // 0x00619ec6    85ff
                         {disp8} jne       .Lbl_addr_0x00619eef                                 // 0x00619ec8    7525
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619eca    8d0c40
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619ecd    8d0cc9
                         lea               edi, dword ptr [edx + eax * 0x1]                     // 0x00619ed0    8d3c02
                         lea               ecx, dword ptr [edi + ecx * 0x8]                     // 0x00619ed3    8d0ccf
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x01        // 0x00619ed6    f6848e0c06000001
                         {disp8} je        .Lbl_addr_0x00619eef                                 // 0x00619ede    740f
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619ee0    8d542414
                         push              edx                                                  // 0x00619ee4    52
                         push              0x00bf4500                                           // 0x00619ee5    680045bf00
                         {disp32} jmp      .Lbl_addr_0x00619f72                                 // 0x00619eea    e983000000
.Lbl_addr_0x00619eef:    {disp8} mov       edi, dword ptr [ebp + 0x38]                          // 0x00619eef    8b7d38
                         and               edi, 0x80000001                                      // 0x00619ef2    81e701000080
                         {disp8} jns       .Lbl_addr_0x00619eff                                 // 0x00619ef8    7905
                         dec               edi                                                  // 0x00619efa    4f
                         or                edi, 0xfffffffe                                      // 0x00619efb    83cffe
                         inc               edi                                                  // 0x00619efe    47
.Lbl_addr_0x00619eff:    {disp8} jne       .Lbl_addr_0x00619f2a                                 // 0x00619eff    7529
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619f01    8d0c40
                         lea               ebx, dword ptr [edx + eax * 0x1]                     // 0x00619f04    8d1c02
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619f07    8d0cc9
                         lea               ecx, dword ptr [ebx + ecx * 0x8]                     // 0x00619f0a    8d0ccb
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x04        // 0x00619f0d    f6848e0c06000004
                         {disp8} je        .Lbl_addr_0x00619f23                                 // 0x00619f15    740c
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619f17    8d542414
                         push              edx                                                  // 0x00619f1b    52
                         push              0x00bf44d0                                           // 0x00619f1c    68d044bf00
                         {disp8} jmp       .Lbl_addr_0x00619f72                                 // 0x00619f21    eb4f
.Lbl_addr_0x00619f23:    {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619f23    8b9c24dc000000
.Lbl_addr_0x00619f2a:    cmp               edi, 0x01                                            // 0x00619f2a    83ff01
                         {disp8} jne       .Lbl_addr_0x00619f50                                 // 0x00619f2d    7521
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619f2f    8d0c40
                         add.s             edx, eax                                             // 0x00619f32    03d0
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619f34    8d0cc9
                         lea               edx, dword ptr [edx + ecx * 0x8]                     // 0x00619f37    8d14ca
                         test              byte ptr [esi + edx * 0x4 + 0x0000060c], 0x08        // 0x00619f3a    f684960c06000008
                         {disp8} je        .Lbl_addr_0x00619f50                                 // 0x00619f42    740c
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619f44    8d442414
                         push              eax                                                  // 0x00619f48    50
                         push              0x00bf44a0                                           // 0x00619f49    68a044bf00
                         {disp8} jmp       .Lbl_addr_0x00619f72                                 // 0x00619f4e    eb22
.Lbl_addr_0x00619f50:    mov.s             ecx, ebp                                             // 0x00619f50    8bcd
                         call              ?GetListPtrFrames@LH3DAnim@@QAEHXZ                   // 0x00619f52    e849072200
                         mov               ecx, dword ptr [eax]                                 // 0x00619f57    8b08
                         mov               edx, dword ptr [ecx]                                 // 0x00619f59    8b11
                         mov               eax, dword ptr [edx]                                 // 0x00619f5b    8b02
                         mov               ecx, dword ptr [eax]                                 // 0x00619f5d    8b08
                         cmp               ecx, dword ptr [esp + 0x00000108]                    // 0x00619f5f    3b8c2408010000
                         {disp8} je        .Lbl_addr_0x00619f90                                 // 0x00619f66    7428
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619f68    8d542414
                         push              edx                                                  // 0x00619f6c    52
                         push              0x00bf4470                                           // 0x00619f6d    687044bf00
.Lbl_addr_0x00619f72:    call              _jmp_addr_0x00617140                                 // 0x00619f72    e8c9d1ffff
                         add               esp, 0x08                                            // 0x00619f77    83c408
                         mov.s             ecx, ebp                                             // 0x00619f7a    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x00619f7c    e8eff92100
                         pop               edi                                                  // 0x00619f81    5f
                         pop               esi                                                  // 0x00619f82    5e
                         pop               ebp                                                  // 0x00619f83    5d
                         xor.s             eax, eax                                             // 0x00619f84    33c0
                         pop               ebx                                                  // 0x00619f86    5b
                         add               esp, 0x000000c4                                      // 0x00619f87    81c4c4000000
                         ret               0x0034                                               // 0x00619f8d    c23400
.Lbl_addr_0x00619f90:    {disp8} mov       edx, dword ptr [ebp + 0x38]                          // 0x00619f90    8b5538
                         {disp32} mov      eax, dword ptr [esp + 0x00000100]                    // 0x00619f93    8b842400010000
                         {disp32} mov      esi, dword ptr [esp + 0x00000104]                    // 0x00619f9a    8bb42404010000
                         xor.s             ecx, ecx                                             // 0x00619fa1    33c9
.Lbl_addr_0x00619fa3:    cmp.s             ecx, esi                                             // 0x00619fa3    3bce
                         {disp8} je        .Lbl_addr_0x00619fba                                 // 0x00619fa5    7413
                         {disp32} mov      edi, dword ptr [eax + ebx * 0x4 + 0x000003a0]        // 0x00619fa7    8bbc98a0030000
                         test              edi, edi                                             // 0x00619fae    85ff
                         {disp8} je        .Lbl_addr_0x00619fba                                 // 0x00619fb0    7408
                         mov               edi, dword ptr [eax + ebx * 0x4]                     // 0x00619fb2    8b3c98
                         cmp               edx, dword ptr [edi + 0x1c]                          // 0x00619fb5    3b571c
                         {disp8} jne       .Lbl_addr_0x0061a01c                                 // 0x00619fb8    7562
.Lbl_addr_0x00619fba:    inc               ecx                                                  // 0x00619fba    41
                         add               eax, 0x00000ae0                                      // 0x00619fbb    05e00a0000
                         cmp               ecx, 0x06                                            // 0x00619fc0    83f906
                         {disp8} jl        .Lbl_addr_0x00619fa3                                 // 0x00619fc3    7cde
.Lbl_addr_0x00619fc5:    {disp8} mov       edx, dword ptr [esp + 0x10]                          // 0x00619fc5    8b542410
                         mov               esi, dword ptr [edx + ebx * 0x4]                     // 0x00619fc9    8b349a
                         test              esi, esi                                             // 0x00619fcc    85f6
                         {disp8} je        .Lbl_addr_0x00619fe0                                 // 0x00619fce    7410
                         mov.s             ecx, esi                                             // 0x00619fd0    8bce
                         call              _jmp_addr_0x0085e490                                 // 0x00619fd2    e8b9442400
                         push              esi                                                  // 0x00619fd7    56
                         call              ??3@YAXPAX@Z                                         // 0x00619fd8    e8bb4e1900
                         add               esp, 0x04                                            // 0x00619fdd    83c404
.Lbl_addr_0x00619fe0:    push              0x0000067d                                           // 0x00619fe0    687d060000
                         push              0x00bf42d0                                           // 0x00619fe5    68d042bf00
                         push              0x38                                                 // 0x00619fea    6a38
                         call              ??2@YAPAXIPBDI@Z                                     // 0x00619fec    e89f171c00
                         add               esp, 0x0c                                            // 0x00619ff1    83c40c
                         test              eax, eax                                             // 0x00619ff4    85c0
                         {disp8} je        .Lbl_addr_0x0061a05b                                 // 0x00619ff6    7463
                         {disp32} mov      ecx, dword ptr [esp + 0x000000fc]                    // 0x00619ff8    8b8c24fc000000
                         {disp32} mov      edx, dword ptr [esp + 0x000000f8]                    // 0x00619fff    8b9424f8000000
                         push              ebp                                                  // 0x0061a006    55
                         push              ecx                                                  // 0x0061a007    51
                         {disp32} mov      ecx, dword ptr [esp + 0x000000fc]                    // 0x0061a008    8b8c24fc000000
                         push              edx                                                  // 0x0061a00f    52
                         push              ecx                                                  // 0x0061a010    51
                         mov.s             ecx, eax                                             // 0x0061a011    8bc8
                         call              _jmp_addr_0x0085fd00                                 // 0x0061a013    e8e85c2400
                         mov.s             esi, eax                                             // 0x0061a018    8bf0
                         {disp8} jmp       .Lbl_addr_0x0061a05d                                 // 0x0061a01a    eb41
.Lbl_addr_0x0061a01c:    mov               eax, dword ptr [eax + ebx * 0x4]                     // 0x0061a01c    8b0498
                         {disp8} mov       ecx, dword ptr [eax + 0x1c]                          // 0x0061a01f    8b481c
                         push              ecx                                                  // 0x0061a022    51
                         push              edx                                                  // 0x0061a023    52
                         {disp8} lea       edx, dword ptr [esp + 0x5c]                          // 0x0061a024    8d54245c
                         push              0x00bf4434                                           // 0x0061a028    683444bf00
                         push              edx                                                  // 0x0061a02d    52
                         call              _sprintf                                             // 0x0061a02e    e89fb71a00
                         {disp8} lea       eax, dword ptr [esp + 0x24]                          // 0x0061a033    8d442424
                         push              eax                                                  // 0x0061a037    50
                         {disp8} lea       ecx, dword ptr [esp + 0x68]                          // 0x0061a038    8d4c2468
                         push              ecx                                                  // 0x0061a03c    51
                         call              _jmp_addr_0x00617140                                 // 0x0061a03d    e8fed0ffff
                         add               esp, 0x18                                            // 0x0061a042    83c418
                         mov.s             ecx, ebp                                             // 0x0061a045    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x0061a047    e824f92100
                         pop               edi                                                  // 0x0061a04c    5f
                         pop               esi                                                  // 0x0061a04d    5e
                         pop               ebp                                                  // 0x0061a04e    5d
                         xor.s             eax, eax                                             // 0x0061a04f    33c0
                         pop               ebx                                                  // 0x0061a051    5b
                         add               esp, 0x000000c4                                      // 0x0061a052    81c4c4000000
                         ret               0x0034                                               // 0x0061a058    c23400
.Lbl_addr_0x0061a05b:    xor.s             esi, esi                                             // 0x0061a05b    33f6
.Lbl_addr_0x0061a05d:    mov.s             ecx, ebp                                             // 0x0061a05d    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x0061a05f    e80cf92100
                         {disp32} mov      edi, dword ptr [esp + 0x000000f0]                    // 0x0061a064    8bbc24f0000000
                         test              edi, edi                                             // 0x0061a06b    85ff
                         {disp8} je        .Lbl_addr_0x0061a0b5                                 // 0x0061a06d    7446
                         test              ebx, ebx                                             // 0x0061a06f    85db
                         {disp8} je        .Lbl_addr_0x0061a0b5                                 // 0x0061a071    7442
                         push              0x00000683                                           // 0x0061a073    6883060000
                         push              0x00bf42d0                                           // 0x0061a078    68d042bf00
                         push              0x38                                                 // 0x0061a07d    6a38
                         call              ??2@YAPAXIPBDI@Z                                     // 0x0061a07f    e80c171c00
                         add               esp, 0x0c                                            // 0x0061a084    83c40c
                         test              eax, eax                                             // 0x0061a087    85c0
                         {disp8} je        .Lbl_addr_0x0061a096                                 // 0x0061a089    740b
                         push              edi                                                  // 0x0061a08b    57
                         push              esi                                                  // 0x0061a08c    56
                         mov.s             ecx, eax                                             // 0x0061a08d    8bc8
                         call              _jmp_addr_0x0085f690                                 // 0x0061a08f    e8fc552400
                         {disp8} jmp       .Lbl_addr_0x0061a098                                 // 0x0061a094    eb02
.Lbl_addr_0x0061a096:    xor.s             eax, eax                                             // 0x0061a096    33c0
.Lbl_addr_0x0061a098:    test              esi, esi                                             // 0x0061a098    85f6
                         {disp8} mov       edx, dword ptr [esp + 0x10]                          // 0x0061a09a    8b542410
                         mov               dword ptr [edx + ebx * 0x4], eax                     // 0x0061a09e    89049a
                         {disp8} je        .Lbl_addr_0x0061a0bc                                 // 0x0061a0a1    7419
                         mov.s             ecx, esi                                             // 0x0061a0a3    8bce
                         call              _jmp_addr_0x0085e490                                 // 0x0061a0a5    e8e6432400
                         push              esi                                                  // 0x0061a0aa    56
                         call              ??3@YAXPAX@Z                                         // 0x0061a0ab    e8e84d1900
                         add               esp, 0x04                                            // 0x0061a0b0    83c404
                         {disp8} jmp       .Lbl_addr_0x0061a0bc                                 // 0x0061a0b3    eb07
.Lbl_addr_0x0061a0b5:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0061a0b5    8b442410
                         mov               dword ptr [eax + ebx * 0x4], esi                     // 0x0061a0b9    893498
.Lbl_addr_0x0061a0bc:    {disp8} mov       ecx, dword ptr [esp + 0x10]                          // 0x0061a0bc    8b4c2410
                         pop               edi                                                  // 0x0061a0c0    5f
                         pop               esi                                                  // 0x0061a0c1    5e
                         pop               ebp                                                  // 0x0061a0c2    5d
                         {disp32} mov      dword ptr [ecx + ebx * 0x4 + 0x000003a0], 0x00000002 // 0x0061a0c3    c78499a003000002000000
                         mov               eax, 0x00000001                                      // 0x0061a0ce    b801000000
                         pop               ebx                                                  // 0x0061a0d3    5b
                         add               esp, 0x000000c4                                      // 0x0061a0d4    81c4c4000000
                         ret               0x0034                                               // 0x0061a0da    c23400
                         nop                                                                    // 0x0061a0dd    90
                         nop                                                                    // 0x0061a0de    90
                         nop                                                                    // 0x0061a0df    90
