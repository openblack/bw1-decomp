.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0MapCoords@@QAE@XZ
.extern @__ct__9MapCoordsFllf@20
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12
.extern _jmp_addr_0x00609ca0
.extern ?RebuildMoveByStep@MobileWallHug@@QAEXXZ
.extern _jmp_addr_0x0060a450
.extern ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ
.extern _jmp_addr_0x0060bd00
.extern ?InitStepsXZ@MobileWallHug@@QAEXXZ
.extern @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12
.extern ?MoveToCircleHug@MobileWallHug@@QAEHXZ
.extern @SetGameAngle__13MobileWallHugFUs@10
.extern _jmp_addr_0x0060fe00
.extern _jmp_addr_0x00610490
.extern _jmp_addr_0x00610590
.extern _jmp_addr_0x00610a40
.extern _jmp_addr_0x00610ab0
.extern @find__std__map_pNewCollide_Obj_std_set_pMobileWallHug__FRCPQ210NewCollide3Obj@16
.extern _jmp_addr_0x00611260
.extern _jmp_addr_0x006113a0
.extern _jmp_addr_0x00611610
.extern _jmp_addr_0x00611ac0
.extern _jmp_addr_0x00611f40
.extern _jmp_addr_0x006127f0
.extern _jmp_addr_0x00612bb0
.extern _jmp_addr_0x00612d80
.extern _jmp_addr_0x00613300
.extern _jmp_addr_0x00613410
.extern _jmp_addr_0x00613690
.extern _jmp_addr_0x006136f0
.extern _jmp_addr_0x006137f0
.extern _jmp_addr_0x00614040
.extern _jmp_addr_0x006142f0
.extern _jmp_addr_0x006145d0
.extern _jmp_addr_0x00614600
.extern _jmp_addr_0x00614630
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z
.extern _jmp_addr_0x006167f0
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern ___nw__FUl

.globl @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17
.globl _jmp_addr_0x0060a9f0
.globl _jmp_addr_0x0060aad0
.globl @SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16
.globl ?SetupMobileMoveToObject@MobileWallHug@@QAEXPAVObject@@@Z
.globl @AreWeThere__13MobileWallHugFf@12
.globl _jmp_addr_0x0060adc0
.globl ?MoveTo@MobileWallHug@@QAEHXZ
.globl ?AreWeThere@MobileWallHug@@UAE_NABUMapCoords@@M@Z
.globl ?MoveTo3D@MobileWallHug@@UAEXXZ

start_0x0060a770_0x0060bbc0:
// Snippet: asm, [0x0060a770, 0x0060bb7b)
@SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17:    sub                esp, 0x4c                               // 0x0060a770    83ec4c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33baa0]  // 0x0060a773    a1a01ad000
                         push               ebp                                     // 0x0060a778    55
                         push               esi                                     // 0x0060a779    56
                         push               edi                                     // 0x0060a77a    57
                         xor.s              ebp, ebp                                // 0x0060a77b    33ed
                         cmp.s              eax, ebp                                // 0x0060a77d    3bc5
                         mov.s              edi, ecx                                // 0x0060a77f    8bf9
                         {disp8} mov        dword ptr [esp + 0x14], edi             // 0x0060a781    897c2414
                         {disp32} je        _jmp_addr_0x0060a81a                    // 0x0060a785    0f848f000000
                         {disp8} mov        al, byte ptr [esp + 0x64]               // 0x0060a78b    8a442464
                         test               al, al                                  // 0x0060a78f    84c0
                         {disp32} jne       _jmp_addr_0x0060a81a                    // 0x0060a791    0f8583000000
                         {disp8} mov        esi, dword ptr [esp + 0x5c]             // 0x0060a797    8b74245c
                         cmp.s              esi, ebp                                // 0x0060a79b    3bf5
                         mov                eax, dword ptr [edi]                    // 0x0060a79d    8b07
                         {disp8} jne        _jmp_addr_0x0060a7b9                    // 0x0060a79f    7518
                         cmp.s              eax, ebp                                // 0x0060a7a1    3bc5
                         {disp8} je         _jmp_addr_0x0060a7ae                    // 0x0060a7a3    7409
                         push               eax                                     // 0x0060a7a5    50
                         call               ??3@YAXPAX@Z                            // 0x0060a7a6    e8ed461a00
                         add                esp, 0x04                               // 0x0060a7ab    83c404
_jmp_addr_0x0060a7ae:    mov                dword ptr [edi], ebp                    // 0x0060a7ae    892f
                         pop                edi                                     // 0x0060a7b0    5f
                         pop                esi                                     // 0x0060a7b1    5e
                         pop                ebp                                     // 0x0060a7b2    5d
                         add                esp, 0x4c                               // 0x0060a7b3    83c44c
                         ret                0x000c                                  // 0x0060a7b6    c20c00
_jmp_addr_0x0060a7b9:    cmp.s              eax, ebp                                // 0x0060a7b9    3bc5
                         {disp8} je         _jmp_addr_0x0060a7cf                    // 0x0060a7bb    7412
                         push               eax                                     // 0x0060a7bd    50
                         push               esi                                     // 0x0060a7be    56
                         mov.s              ecx, edi                                // 0x0060a7bf    8bcf
                         call               _jmp_addr_0x0060a450                    // 0x0060a7c1    e88afcffff
                         pop                edi                                     // 0x0060a7c6    5f
                         pop                esi                                     // 0x0060a7c7    5e
                         pop                ebp                                     // 0x0060a7c8    5d
                         add                esp, 0x4c                               // 0x0060a7c9    83c44c
                         ret                0x000c                                  // 0x0060a7cc    c20c00
_jmp_addr_0x0060a7cf:    push               0x000001a6                              // 0x0060a7cf    68a6010000
                         push               0x00bf42a4                              // 0x0060a7d4    68a442bf00
                         push               0x14                                    // 0x0060a7d9    6a14
                         call               ___nw__FUl                              // 0x0060a7db    e8b00f1d00
                         add                esp, 0x0c                               // 0x0060a7e0    83c40c
                         cmp.s              eax, ebp                                // 0x0060a7e3    3bc5
                         {disp8} je         _jmp_addr_0x0060a804                    // 0x0060a7e5    741d
                         push               eax                                     // 0x0060a7e7    50
                         {disp8} mov        dword ptr [eax + 0x08], ebp             // 0x0060a7e8    896808
                         {disp8} mov        dword ptr [eax + 0x0c], ebp             // 0x0060a7eb    89680c
                         {disp8} mov        dword ptr [eax + 0x10], ebp             // 0x0060a7ee    896810
                         push               esi                                     // 0x0060a7f1    56
                         mov.s              ecx, edi                                // 0x0060a7f2    8bcf
                         mov                dword ptr [edi], eax                    // 0x0060a7f4    8907
                         call               _jmp_addr_0x0060a450                    // 0x0060a7f6    e855fcffff
                         pop                edi                                     // 0x0060a7fb    5f
                         pop                esi                                     // 0x0060a7fc    5e
                         pop                ebp                                     // 0x0060a7fd    5d
                         add                esp, 0x4c                               // 0x0060a7fe    83c44c
                         ret                0x000c                                  // 0x0060a801    c20c00
_jmp_addr_0x0060a804:    xor.s              eax, eax                                // 0x0060a804    33c0
                         push               eax                                     // 0x0060a806    50
                         push               esi                                     // 0x0060a807    56
                         mov.s              ecx, edi                                // 0x0060a808    8bcf
                         mov                dword ptr [edi], eax                    // 0x0060a80a    8907
                         call               _jmp_addr_0x0060a450                    // 0x0060a80c    e83ffcffff
                         pop                edi                                     // 0x0060a811    5f
                         pop                esi                                     // 0x0060a812    5e
                         pop                ebp                                     // 0x0060a813    5d
                         add                esp, 0x4c                               // 0x0060a814    83c44c
                         ret                0x000c                                  // 0x0060a817    c20c00
_jmp_addr_0x0060a81a:    cmp                dword ptr [edi], ebp                    // 0x0060a81a    392f
                         {disp8} je         _jmp_addr_0x0060a880                    // 0x0060a81c    7462
                         push               edi                                     // 0x0060a81e    57
                         {disp8} lea        eax, dword ptr [esp + 0x68]             // 0x0060a81f    8d442468
                         push               eax                                     // 0x0060a823    50
                         mov                ecx, 0x00d3ee88                         // 0x0060a824    b988eed300
                         call               @find__std__map_pNewCollide_Obj_std_set_pMobileWallHug__FRCPQ210NewCollide3Obj@16                    // 0x0060a829    e882690000
                         {disp8} mov        eax, dword ptr [esp + 0x64]             // 0x0060a82e    8b442464
                         {disp8} lea        ecx, dword ptr [esp + 0x60]             // 0x0060a832    8d4c2460
                         push               ecx                                     // 0x0060a836    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]             // 0x0060a837    8d542414
                         push               edx                                     // 0x0060a83b    52
                         {disp8} lea        ecx, dword ptr [eax + 0x10]             // 0x0060a83c    8d4810
                         call               _jmp_addr_0x00611ac0                    // 0x0060a83f    e87c720000
                         {disp8} mov        eax, dword ptr [esp + 0x64]             // 0x0060a844    8b442464
                         cmp                dword ptr [data_bytes + 0x378e8c], eax  // 0x0060a848    39058ceed300
                         {disp8} je         _jmp_addr_0x0060a880                    // 0x0060a84e    7430
                         {disp8} mov        ecx, dword ptr [esp + 0x10]             // 0x0060a850    8b4c2410
                         cmp                ecx, dword ptr [eax + 0x14]             // 0x0060a854    3b4814
                         {disp8} je         _jmp_addr_0x0060a880                    // 0x0060a857    7427
                         push               ecx                                     // 0x0060a859    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]             // 0x0060a85a    8d4c241c
                         push               ecx                                     // 0x0060a85e    51
                         {disp8} lea        ecx, dword ptr [eax + 0x10]             // 0x0060a85f    8d4810
                         call               _jmp_addr_0x00611610                    // 0x0060a862    e8a96d0000
                         {disp8} mov        eax, dword ptr [esp + 0x64]             // 0x0060a867    8b442464
                         cmp                dword ptr [eax + 0x1c], ebp             // 0x0060a86b    39681c
                         {disp8} jne        _jmp_addr_0x0060a880                    // 0x0060a86e    7510
                         push               eax                                     // 0x0060a870    50
                         {disp8} lea        edx, dword ptr [esp + 0x1c]             // 0x0060a871    8d54241c
                         push               edx                                     // 0x0060a875    52
                         mov                ecx, 0x00d3ee88                         // 0x0060a876    b988eed300
                         call               _jmp_addr_0x00610ab0                    // 0x0060a87b    e830620000
_jmp_addr_0x0060a880:    push               ebx                                     // 0x0060a880    53
                         {disp8} mov        ebx, dword ptr [esp + 0x60]             // 0x0060a881    8b5c2460
                         cmp.s              ebx, ebp                                // 0x0060a885    3bdd
                         {disp32} je        _jmp_addr_0x0060a9da                    // 0x0060a887    0f844d010000
                         {disp8} lea        eax, dword ptr [esp + 0x60]             // 0x0060a88d    8d442460
                         push               eax                                     // 0x0060a891    50
                         push               ebp                                     // 0x0060a892    55
                         {disp8} lea        ecx, dword ptr [esp + 0x1b]             // 0x0060a893    8d4c241b
                         push               ecx                                     // 0x0060a897    51
                         {disp8} lea        ecx, dword ptr [esp + 0x44]             // 0x0060a898    8d4c2444
                         call               _jmp_addr_0x00611260                    // 0x0060a89c    e8bf690000
                         {disp8} lea        edx, dword ptr [esp + 0x38]             // 0x0060a8a1    8d542438
                         push               edx                                     // 0x0060a8a5    52
                         {disp8} lea        ecx, dword ptr [esp + 0x50]             // 0x0060a8a6    8d4c2450
                         {disp8} mov        dword ptr [esp + 0x4c], ebx             // 0x0060a8aa    895c244c
                         call               _jmp_addr_0x006127f0                    // 0x0060a8ae    e83d7f0000
                         {disp8} lea        eax, dword ptr [esp + 0x48]             // 0x0060a8b3    8d442448
                         push               eax                                     // 0x0060a8b7    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]             // 0x0060a8b8    8d4c242c
                         push               ecx                                     // 0x0060a8bc    51
                         mov                ecx, 0x00d3ee88                         // 0x0060a8bd    b988eed300
                         call               _jmp_addr_0x00612d80                    // 0x0060a8c2    e8b9840000
                         {disp8} lea        edx, dword ptr [esp + 0x2c]             // 0x0060a8c7    8d54242c
                         push               edx                                     // 0x0060a8cb    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]             // 0x0060a8cc    8d44242c
                         push               eax                                     // 0x0060a8d0    50
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060a8d1    8d4c2438
                         call               _jmp_addr_0x00614040                    // 0x0060a8d5    e866970000
                         {disp8} mov        esi, dword ptr [esp + 0x30]             // 0x0060a8da    8b742430
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]             // 0x0060a8de    8d4c244c
                         call               _jmp_addr_0x0060fe00                    // 0x0060a8e2    e819550000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060a8e7    8d4c2438
                         call               _jmp_addr_0x0060fe00                    // 0x0060a8eb    e810550000
                         {disp8} mov        eax, dword ptr [esi + 0x14]             // 0x0060a8f0    8b4614
                         {disp32} mov       ecx, dword ptr [_DAT_00d3eee4]          // 0x0060a8f3    8b0de4eed300
                         {disp8} mov        edx, dword ptr [esp + 0x64]             // 0x0060a8f9    8b542464
                         {disp8} lea        ebp, dword ptr [esi + 0x10]             // 0x0060a8fd    8d6e10
                         {disp8} mov        esi, dword ptr [eax + 0x04]             // 0x0060a900    8b7004
                         cmp.s              esi, ecx                                // 0x0060a903    3bf1
                         mov.s              edi, eax                                // 0x0060a905    8bf8
                         mov                al, 0x01                                // 0x0060a907    b001
                         {disp8} je         _jmp_addr_0x0060a922                    // 0x0060a909    7417
_jmp_addr_0x0060a90b:    cmp                edx, dword ptr [esi + 0x0c]             // 0x0060a90b    3b560c
                         setb               al                                      // 0x0060a90e    0f92c0
                         test               al, al                                  // 0x0060a911    84c0
                         mov.s              edi, esi                                // 0x0060a913    8bfe
                         {disp8} je         _jmp_addr_0x0060a91b                    // 0x0060a915    7404
                         mov                esi, dword ptr [esi]                    // 0x0060a917    8b36
                         {disp8} jmp        _jmp_addr_0x0060a91e                    // 0x0060a919    eb03
_jmp_addr_0x0060a91b:    {disp8} mov        esi, dword ptr [esi + 0x08]             // 0x0060a91b    8b7608
_jmp_addr_0x0060a91e:    cmp.s              esi, ecx                                // 0x0060a91e    3bf1
                         {disp8} jne        _jmp_addr_0x0060a90b                    // 0x0060a920    75e9
_jmp_addr_0x0060a922:    {disp8} mov        cl, byte ptr [ebp + 0x08]               // 0x0060a922    8a4d08
                         test               cl, cl                                  // 0x0060a925    84c9
                         {disp8} je         _jmp_addr_0x0060a94c                    // 0x0060a927    7423
                         {disp8} lea        ecx, dword ptr [esp + 0x68]             // 0x0060a929    8d4c2468
                         push               ecx                                     // 0x0060a92d    51
                         {disp8} lea        edx, dword ptr [esp + 0x68]             // 0x0060a92e    8d542468
                         push               edx                                     // 0x0060a932    52
                         push               edi                                     // 0x0060a933    57
                         push               esi                                     // 0x0060a934    56
                         {disp8} lea        eax, dword ptr [esp + 0x2c]             // 0x0060a935    8d44242c
                         push               eax                                     // 0x0060a939    50
                         mov.s              ecx, ebp                                // 0x0060a93a    8bcd
                         {disp8} mov        byte ptr [esp + 0x7c], 0x01             // 0x0060a93c    c644247c01
                         call               _jmp_addr_0x00613410                    // 0x0060a941    e8ca8a0000
                         push               eax                                     // 0x0060a946    50
                         {disp32} jmp       _jmp_addr_0x0060a9cd                    // 0x0060a947    e981000000
_jmp_addr_0x0060a94c:    test               al, al                                  // 0x0060a94c    84c0
                         {disp8} mov        dword ptr [esp + 0x14], edi             // 0x0060a94e    897c2414
                         {disp8} je         _jmp_addr_0x0060a995                    // 0x0060a952    7441
                         {disp8} lea        ecx, dword ptr [esp + 0x68]             // 0x0060a954    8d4c2468
                         push               ecx                                     // 0x0060a958    51
                         mov.s              ecx, ebp                                // 0x0060a959    8bcd
                         call               _jmp_addr_0x006113a0                    // 0x0060a95b    e8406a0000
                         {disp8} mov        edx, dword ptr [esp + 0x14]             // 0x0060a960    8b542414
                         cmp                edx, dword ptr [eax]                    // 0x0060a964    3b10
                         {disp8} jne        _jmp_addr_0x0060a988                    // 0x0060a966    7520
                         {disp8} lea        eax, dword ptr [esp + 0x68]             // 0x0060a968    8d442468
                         push               eax                                     // 0x0060a96c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x68]             // 0x0060a96d    8d4c2468
                         push               ecx                                     // 0x0060a971    51
                         push               edi                                     // 0x0060a972    57
                         push               esi                                     // 0x0060a973    56
                         {disp8} lea        edx, dword ptr [esp + 0x2c]             // 0x0060a974    8d54242c
                         push               edx                                     // 0x0060a978    52
                         mov.s              ecx, ebp                                // 0x0060a979    8bcd
                         {disp8} mov        byte ptr [esp + 0x7c], 0x01             // 0x0060a97b    c644247c01
                         call               _jmp_addr_0x00613410                    // 0x0060a980    e88b8a0000
                         push               eax                                     // 0x0060a985    50
                         {disp8} jmp        _jmp_addr_0x0060a9cd                    // 0x0060a986    eb45
_jmp_addr_0x0060a988:    {disp8} lea        ecx, dword ptr [esp + 0x14]             // 0x0060a988    8d4c2414
                         call               _jmp_addr_0x00614630                    // 0x0060a98c    e89f9c0000
                         {disp8} mov        edx, dword ptr [esp + 0x64]             // 0x0060a991    8b542464
_jmp_addr_0x0060a995:    {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x0060a995    8b442414
                         cmp                dword ptr [eax + 0x0c], edx             // 0x0060a999    39500c
                         {disp8} jae        _jmp_addr_0x0060a9be                    // 0x0060a99c    7320
                         {disp8} lea        ecx, dword ptr [esp + 0x68]             // 0x0060a99e    8d4c2468
                         push               ecx                                     // 0x0060a9a2    51
                         {disp8} lea        edx, dword ptr [esp + 0x68]             // 0x0060a9a3    8d542468
                         push               edx                                     // 0x0060a9a7    52
                         push               edi                                     // 0x0060a9a8    57
                         push               esi                                     // 0x0060a9a9    56
                         {disp8} lea        eax, dword ptr [esp + 0x2c]             // 0x0060a9aa    8d44242c
                         push               eax                                     // 0x0060a9ae    50
                         mov.s              ecx, ebp                                // 0x0060a9af    8bcd
                         {disp8} mov        byte ptr [esp + 0x7c], 0x01             // 0x0060a9b1    c644247c01
                         call               _jmp_addr_0x00613410                    // 0x0060a9b6    e8558a0000
                         push               eax                                     // 0x0060a9bb    50
                         {disp8} jmp        _jmp_addr_0x0060a9cd                    // 0x0060a9bc    eb0f
_jmp_addr_0x0060a9be:    {disp8} lea        ecx, dword ptr [esp + 0x68]             // 0x0060a9be    8d4c2468
                         push               ecx                                     // 0x0060a9c2    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]             // 0x0060a9c3    8d542418
                         {disp8} mov        byte ptr [esp + 0x6c], 0x00             // 0x0060a9c7    c644246c00
                         push               edx                                     // 0x0060a9cc    52
_jmp_addr_0x0060a9cd:    {disp8} lea        ecx, dword ptr [esp + 0x28]             // 0x0060a9cd    8d4c2428
                         call               _jmp_addr_0x00611f40                    // 0x0060a9d1    e86a750000
                         {disp8} mov        edi, dword ptr [esp + 0x18]             // 0x0060a9d6    8b7c2418
_jmp_addr_0x0060a9da:    mov                dword ptr [edi], ebx                    // 0x0060a9da    891f
                         pop                ebx                                     // 0x0060a9dc    5b
                         pop                edi                                     // 0x0060a9dd    5f
                         pop                esi                                     // 0x0060a9de    5e
                         pop                ebp                                     // 0x0060a9df    5d
                         add                esp, 0x4c                               // 0x0060a9e0    83c44c
                         ret                0x000c                                  // 0x0060a9e3    c20c00
                         nop                                                        // 0x0060a9e6    90
                         nop                                                        // 0x0060a9e7    90
                         nop                                                        // 0x0060a9e8    90
                         nop                                                        // 0x0060a9e9    90
                         nop                                                        // 0x0060a9ea    90
                         nop                                                        // 0x0060a9eb    90
                         nop                                                        // 0x0060a9ec    90
                         nop                                                        // 0x0060a9ed    90
                         nop                                                        // 0x0060a9ee    90
                         nop                                                        // 0x0060a9ef    90
_jmp_addr_0x0060a9f0:    {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x0060a9f0    8b442404
                         sub                esp, 0x08                               // 0x0060a9f4    83ec08
                         test               eax, eax                                // 0x0060a9f7    85c0
                         push               esi                                     // 0x0060a9f9    56
                         mov.s              esi, ecx                                // 0x0060a9fa    8bf1
                         {disp8} je         _jmp_addr_0x0060aa08                    // 0x0060a9fc    740a
                         push               0x0                                     // 0x0060a9fe    6a00
                         push               eax                                     // 0x0060aa00    50
                         push               0x0                                     // 0x0060aa01    6a00
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                    // 0x0060aa03    e868fdffff
_jmp_addr_0x0060aa08:    {disp8} lea        eax, dword ptr [esp + 0x10]             // 0x0060aa08    8d442410
                         push               eax                                     // 0x0060aa0c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]             // 0x0060aa0d    8d4c2408
                         push               ecx                                     // 0x0060aa11    51
                         mov                ecx, 0x00d3eea8                         // 0x0060aa12    b9a8eed300
                         {disp8} mov        byte ptr [esi + 0x04], -0x01            // 0x0060aa17    c64604ff
                         {disp8} mov        word ptr [esi + 0x06], 0x0000           // 0x0060aa1b    66c746060000
                         call               _jmp_addr_0x00611ac0                    // 0x0060aa21    e89a700000
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x0060aa26    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x378eac]  // 0x0060aa2a    3b05aceed300
                         {disp8} je         _jmp_addr_0x0060aa42                    // 0x0060aa30    7410
                         push               eax                                     // 0x0060aa32    50
                         {disp8} lea        edx, dword ptr [esp + 0x0c]             // 0x0060aa33    8d54240c
                         push               edx                                     // 0x0060aa37    52
                         mov                ecx, 0x00d3eea8                         // 0x0060aa38    b9a8eed300
                         call               _jmp_addr_0x00611610                    // 0x0060aa3d    e8ce6b0000
_jmp_addr_0x0060aa42:    {disp8} lea        eax, dword ptr [esp + 0x10]             // 0x0060aa42    8d442410
                         push               eax                                     // 0x0060aa46    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]             // 0x0060aa47    8d4c2408
                         push               ecx                                     // 0x0060aa4b    51
                         mov                ecx, 0x00d3ee98                         // 0x0060aa4c    b998eed300
                         call               _jmp_addr_0x00611ac0                    // 0x0060aa51    e86a700000
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x0060aa56    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x378e9c]  // 0x0060aa5a    3b059ceed300
                         {disp8} je         _jmp_addr_0x0060aa72                    // 0x0060aa60    7410
                         push               eax                                     // 0x0060aa62    50
                         {disp8} lea        edx, dword ptr [esp + 0x0c]             // 0x0060aa63    8d54240c
                         push               edx                                     // 0x0060aa67    52
                         mov                ecx, 0x00d3ee98                         // 0x0060aa68    b998eed300
                         call               _jmp_addr_0x00611610                    // 0x0060aa6d    e89e6b0000
_jmp_addr_0x0060aa72:    {disp8} lea        eax, dword ptr [esp + 0x10]             // 0x0060aa72    8d442410
                         push               eax                                     // 0x0060aa76    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060aa77    b978eed300
                         call               _jmp_addr_0x006142f0                    // 0x0060aa7c    e86f980000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378e7c]  // 0x0060aa81    8b0d7ceed300
                         cmp.s              eax, ecx                                // 0x0060aa87    3bc1
                         {disp8} mov        dword ptr [esp + 0x04], eax             // 0x0060aa89    89442404
                         {disp8} je         _jmp_addr_0x0060aa9e                    // 0x0060aa8d    740f
                         {disp8} mov        edx, dword ptr [esp + 0x10]             // 0x0060aa8f    8b542410
                         cmp                edx, dword ptr [eax + 0x0c]             // 0x0060aa93    3b500c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060aa9e // 0x0060aa96    7206
                         {disp8} lea        eax, dword ptr [esp + 0x04]             // 0x0060aa98    8d442404
                         {disp8} jmp        _jmp_addr_0x0060aaa6                    // 0x0060aa9c    eb08
_jmp_addr_0x0060aa9e:    {disp8} mov        dword ptr [esp + 0x08], ecx             // 0x0060aa9e    894c2408
                         {disp8} lea        eax, dword ptr [esp + 0x08]             // 0x0060aaa2    8d442408
_jmp_addr_0x0060aaa6:    mov                eax, dword ptr [eax]                    // 0x0060aaa6    8b00
                         cmp.s              eax, ecx                                // 0x0060aaa8    3bc1
                         pop                esi                                     // 0x0060aaaa    5e
                         {disp8} je         _jmp_addr_0x0060aabd                    // 0x0060aaab    7410
                         push               eax                                     // 0x0060aaad    50
                         {disp8} lea        eax, dword ptr [esp + 0x08]             // 0x0060aaae    8d442408
                         push               eax                                     // 0x0060aab2    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060aab3    b978eed300
                         call               _jmp_addr_0x00610590                    // 0x0060aab8    e8d35a0000
_jmp_addr_0x0060aabd:    add                esp, 0x08                               // 0x0060aabd    83c408
                         ret                0x0004                                  // 0x0060aac0    c20400
                         nop                                                        // 0x0060aac3    90
                         nop                                                        // 0x0060aac4    90
                         nop                                                        // 0x0060aac5    90
                         nop                                                        // 0x0060aac6    90
                         nop                                                        // 0x0060aac7    90
                         nop                                                        // 0x0060aac8    90
                         nop                                                        // 0x0060aac9    90
                         nop                                                        // 0x0060aaca    90
                         nop                                                        // 0x0060aacb    90
                         nop                                                        // 0x0060aacc    90
                         nop                                                        // 0x0060aacd    90
                         nop                                                        // 0x0060aace    90
                         nop                                                        // 0x0060aacf    90
_jmp_addr_0x0060aad0:    sub                esp, 0x08                               // 0x0060aad0    83ec08
                         push               esi                                     // 0x0060aad3    56
                         mov.s              esi, ecx                                // 0x0060aad4    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]             // 0x0060aad6    8b4c2410
                         mov                edx, dword ptr [ecx]                    // 0x0060aada    8b11
                         {disp32} lea       eax, dword ptr [esi + 0x00000080]       // 0x0060aadc    8d8680000000
                         mov                dword ptr [eax], edx                    // 0x0060aae2    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]             // 0x0060aae4    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx             // 0x0060aae7    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]             // 0x0060aaea    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx             // 0x0060aaed    894808
                         mov.s              ecx, esi                                // 0x0060aaf0    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060aaf2    e8a9140000
                         {disp8} lea        edx, dword ptr [esp + 0x10]             // 0x0060aaf7    8d542410
                         push               edx                                     // 0x0060aafb    52
                         {disp8} lea        eax, dword ptr [esp + 0x0c]             // 0x0060aafc    8d44240c
                         push               eax                                     // 0x0060ab00    50
                         mov                ecx, 0x00d3eea8                         // 0x0060ab01    b9a8eed300
                         {disp8} mov        dword ptr [esp + 0x18], esi             // 0x0060ab06    89742418
                         call               _jmp_addr_0x00611ac0                    // 0x0060ab0a    e8b16f0000
                         {disp8} mov        eax, dword ptr [esp + 0x08]             // 0x0060ab0f    8b442408
                         cmp                eax, dword ptr [data_bytes + 0x378eac]  // 0x0060ab13    3b05aceed300
                         {disp8} je         _jmp_addr_0x0060ab2b                    // 0x0060ab19    7410
                         push               eax                                     // 0x0060ab1b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]             // 0x0060ab1c    8d4c2414
                         push               ecx                                     // 0x0060ab20    51
                         mov                ecx, 0x00d3eea8                         // 0x0060ab21    b9a8eed300
                         call               _jmp_addr_0x00611610                    // 0x0060ab26    e8e56a0000
_jmp_addr_0x0060ab2b:    {disp8} lea        edx, dword ptr [esp + 0x10]             // 0x0060ab2b    8d542410
                         push               edx                                     // 0x0060ab2f    52
                         {disp8} lea        eax, dword ptr [esp + 0x08]             // 0x0060ab30    8d442408
                         push               eax                                     // 0x0060ab34    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060ab35    b978eed300
                         {disp8} mov        dword ptr [esp + 0x18], esi             // 0x0060ab3a    89742418
                         call               _jmp_addr_0x00612bb0                    // 0x0060ab3e    e86d800000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x378e7c]  // 0x0060ab43    a17ceed300
                         {disp8} mov        ecx, dword ptr [esp + 0x04]             // 0x0060ab48    8b4c2404
                         cmp.s              ecx, eax                                // 0x0060ab4c    3bc8
                         {disp8} je         _jmp_addr_0x0060ab5f                    // 0x0060ab4e    740f
                         {disp8} mov        edx, dword ptr [esp + 0x10]             // 0x0060ab50    8b542410
                         cmp                edx, dword ptr [ecx + 0x0c]             // 0x0060ab54    3b510c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060ab5f // 0x0060ab57    7206
                         {disp8} lea        ecx, dword ptr [esp + 0x04]             // 0x0060ab59    8d4c2404
                         {disp8} jmp        _jmp_addr_0x0060ab67                    // 0x0060ab5d    eb08
_jmp_addr_0x0060ab5f:    {disp8} mov        dword ptr [esp + 0x10], eax             // 0x0060ab5f    89442410
                         {disp8} lea        ecx, dword ptr [esp + 0x10]             // 0x0060ab63    8d4c2410
_jmp_addr_0x0060ab67:    mov                ecx, dword ptr [ecx]                    // 0x0060ab67    8b09
                         cmp.s              ecx, eax                                // 0x0060ab69    3bc8
                         {disp8} je         _jmp_addr_0x0060ab83                    // 0x0060ab6b    7416
                         push               ecx                                     // 0x0060ab6d    51
                         {disp8} lea        eax, dword ptr [esp + 0x14]             // 0x0060ab6e    8d442414
                         push               eax                                     // 0x0060ab72    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060ab73    b978eed300
                         call               _jmp_addr_0x00610590                    // 0x0060ab78    e8135a0000
                         {disp8} mov        word ptr [esi + 0x76], 0x0000           // 0x0060ab7d    66c746760000
_jmp_addr_0x0060ab83:    push               0x0                                     // 0x0060ab83    6a00
                         mov.s              ecx, esi                                // 0x0060ab85    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060ab87    e8b4010000
                         cmp                eax, 0x01                               // 0x0060ab8c    83f801
                         {disp8} jne        _jmp_addr_0x0060ab9b                    // 0x0060ab8f    750a
                         {disp8} mov        byte ptr [esi + 0x5e], al               // 0x0060ab91    88465e
                         pop                esi                                     // 0x0060ab94    5e
                         add                esp, 0x08                               // 0x0060ab95    83c408
                         ret                0x0004                                  // 0x0060ab98    c20400
_jmp_addr_0x0060ab9b:    push               esi                                     // 0x0060ab9b    56
                         {disp8} lea        ecx, dword ptr [esi + 0x70]             // 0x0060ab9c    8d4e70
                         call               _jmp_addr_0x0060a9f0                    // 0x0060ab9f    e84cfeffff
                         {disp8} mov        byte ptr [esi + 0x78], 0x01             // 0x0060aba4    c6467801
                         {disp8} mov        byte ptr [esi + 0x5e], 0x0b             // 0x0060aba8    c6465e0b
                         pop                esi                                     // 0x0060abac    5e
                         add                esp, 0x08                               // 0x0060abad    83c408
                         ret                0x0004                                  // 0x0060abb0    c20400
                         nop                                                        // 0x0060abb3    90
                         nop                                                        // 0x0060abb4    90
                         nop                                                        // 0x0060abb5    90
                         nop                                                        // 0x0060abb6    90
                         nop                                                        // 0x0060abb7    90
                         nop                                                        // 0x0060abb8    90
                         nop                                                        // 0x0060abb9    90
                         nop                                                        // 0x0060abba    90
                         nop                                                        // 0x0060abbb    90
                         nop                                                        // 0x0060abbc    90
                         nop                                                        // 0x0060abbd    90
                         nop                                                        // 0x0060abbe    90
                         nop                                                        // 0x0060abbf    90
@SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES@16:    sub                esp, 0x08                               // 0x0060abc0    83ec08
                         push               ebx                                     // 0x0060abc3    53
                         push               esi                                     // 0x0060abc4    56
                         mov.s              esi, ecx                                // 0x0060abc5    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]             // 0x0060abc7    8b4c2414
                         mov                edx, dword ptr [ecx]                    // 0x0060abcb    8b11
                         {disp32} lea       eax, dword ptr [esi + 0x00000080]       // 0x0060abcd    8d8680000000
                         mov                dword ptr [eax], edx                    // 0x0060abd3    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]             // 0x0060abd5    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx             // 0x0060abd8    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]             // 0x0060abdb    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx             // 0x0060abde    894808
                         mov.s              ecx, esi                                // 0x0060abe1    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060abe3    e8b8130000
                         {disp8} lea        edx, dword ptr [esp + 0x14]             // 0x0060abe8    8d542414
                         push               edx                                     // 0x0060abec    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]             // 0x0060abed    8d442410
                         push               eax                                     // 0x0060abf1    50
                         mov                ecx, 0x00d3eea8                         // 0x0060abf2    b9a8eed300
                         {disp8} mov        dword ptr [esp + 0x1c], esi             // 0x0060abf7    8974241c
                         call               _jmp_addr_0x00611ac0                    // 0x0060abfb    e8c06e0000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]             // 0x0060ac00    8b44240c
                         cmp                eax, dword ptr [data_bytes + 0x378eac]  // 0x0060ac04    3b05aceed300
                         {disp8} je         _jmp_addr_0x0060ac1c                    // 0x0060ac0a    7410
                         push               eax                                     // 0x0060ac0c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]             // 0x0060ac0d    8d4c2418
                         push               ecx                                     // 0x0060ac11    51
                         mov                ecx, 0x00d3eea8                         // 0x0060ac12    b9a8eed300
                         call               _jmp_addr_0x00611610                    // 0x0060ac17    e8f4690000
_jmp_addr_0x0060ac1c:    {disp8} lea        edx, dword ptr [esp + 0x14]             // 0x0060ac1c    8d542414
                         push               edx                                     // 0x0060ac20    52
                         {disp8} lea        eax, dword ptr [esp + 0x0c]             // 0x0060ac21    8d44240c
                         push               eax                                     // 0x0060ac25    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060ac26    b978eed300
                         {disp8} mov        dword ptr [esp + 0x1c], esi             // 0x0060ac2b    8974241c
                         call               _jmp_addr_0x00612bb0                    // 0x0060ac2f    e87c7f0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x378e7c]  // 0x0060ac34    a17ceed300
                         {disp8} mov        ecx, dword ptr [esp + 0x08]             // 0x0060ac39    8b4c2408
                         cmp.s              ecx, eax                                // 0x0060ac3d    3bc8
                         {disp8} je         _jmp_addr_0x0060ac50                    // 0x0060ac3f    740f
                         {disp8} mov        edx, dword ptr [esp + 0x14]             // 0x0060ac41    8b542414
                         cmp                edx, dword ptr [ecx + 0x0c]             // 0x0060ac45    3b510c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060ac50 // 0x0060ac48    7206
                         {disp8} lea        ecx, dword ptr [esp + 0x08]             // 0x0060ac4a    8d4c2408
                         {disp8} jmp        _jmp_addr_0x0060ac58                    // 0x0060ac4e    eb08
_jmp_addr_0x0060ac50:    {disp8} mov        dword ptr [esp + 0x14], eax             // 0x0060ac50    89442414
                         {disp8} lea        ecx, dword ptr [esp + 0x14]             // 0x0060ac54    8d4c2414
_jmp_addr_0x0060ac58:    mov                ecx, dword ptr [ecx]                    // 0x0060ac58    8b09
                         cmp.s              ecx, eax                                // 0x0060ac5a    3bc8
                         {disp8} je         _jmp_addr_0x0060ac74                    // 0x0060ac5c    7416
                         push               ecx                                     // 0x0060ac5e    51
                         {disp8} lea        eax, dword ptr [esp + 0x18]             // 0x0060ac5f    8d442418
                         push               eax                                     // 0x0060ac63    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060ac64    b978eed300
                         call               _jmp_addr_0x00610590                    // 0x0060ac69    e822590000
                         {disp8} mov        word ptr [esi + 0x76], 0x0000           // 0x0060ac6e    66c746760000
_jmp_addr_0x0060ac74:    push               0x0                                     // 0x0060ac74    6a00
                         mov.s              ecx, esi                                // 0x0060ac76    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060ac78    e8c3000000
                         mov                ecx, 0x00000001                         // 0x0060ac7d    b901000000
                         cmp.s              eax, ecx                                // 0x0060ac82    3bc1
                         {disp8} jne        _jmp_addr_0x0060ac91                    // 0x0060ac84    750b
                         {disp8} mov        byte ptr [esi + 0x5e], cl               // 0x0060ac86    884e5e
                         pop                esi                                     // 0x0060ac89    5e
                         pop                ebx                                     // 0x0060ac8a    5b
                         add                esp, 0x08                               // 0x0060ac8b    83c408
                         ret                0x0008                                  // 0x0060ac8e    c20800
_jmp_addr_0x0060ac91:    {disp8} mov        ebx, dword ptr [esp + 0x18]             // 0x0060ac91    8b5c2418
                         cmp                ebx, 0x0c                               // 0x0060ac95    83fb0c
                         {disp8} jne        _jmp_addr_0x0060acb0                    // 0x0060ac98    7516
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x0060ac9a    8d4e14
                         push               ecx                                     // 0x0060ac9d    51
                         mov.s              ecx, esi                                // 0x0060ac9e    8bce
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060aca0    e8ab1d0000
                         {disp8} mov        byte ptr [esi + 0x5e], bl               // 0x0060aca5    885e5e
                         pop                esi                                     // 0x0060aca8    5e
                         pop                ebx                                     // 0x0060aca9    5b
                         add                esp, 0x08                               // 0x0060acaa    83c408
                         ret                0x0008                                  // 0x0060acad    c20800
_jmp_addr_0x0060acb0:    cmp                ebx, 0x0b                               // 0x0060acb0    83fb0b
                         {disp8} jne        _jmp_addr_0x0060acb8                    // 0x0060acb3    7503
                         {disp8} mov        byte ptr [esi + 0x78], cl               // 0x0060acb5    884e78
_jmp_addr_0x0060acb8:    {disp8} mov        byte ptr [esi + 0x5e], bl               // 0x0060acb8    885e5e
                         pop                esi                                     // 0x0060acbb    5e
                         pop                ebx                                     // 0x0060acbc    5b
                         add                esp, 0x08                               // 0x0060acbd    83c408
                         ret                0x0008                                  // 0x0060acc0    c20800
                         nop                                                        // 0x0060acc3    90
                         nop                                                        // 0x0060acc4    90
                         nop                                                        // 0x0060acc5    90
                         nop                                                        // 0x0060acc6    90
                         nop                                                        // 0x0060acc7    90
                         nop                                                        // 0x0060acc8    90
                         nop                                                        // 0x0060acc9    90
                         nop                                                        // 0x0060acca    90
                         nop                                                        // 0x0060accb    90
                         nop                                                        // 0x0060accc    90
                         nop                                                        // 0x0060accd    90
                         nop                                                        // 0x0060acce    90
                         nop                                                        // 0x0060accf    90
?SetupMobileMoveToObject@MobileWallHug@@QAEXPAVObject@@@Z:
                         sub                esp, 0x0c                               // 0x0060acd0    83ec0c
                         push               esi                                     // 0x0060acd3    56
                         mov.s              esi, ecx                                // 0x0060acd4    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]             // 0x0060acd6    8b4c2414
                         test               ecx, ecx                                // 0x0060acda    85c9
                         {disp8} je         _jmp_addr_0x0060ad2f                    // 0x0060acdc    7451
                         push               esi                                     // 0x0060acde    56
                         {disp8} lea        edx, dword ptr [esp + 0x08]             // 0x0060acdf    8d542408
                         {disp8} mov        dword ptr [esi + 0x60], ecx             // 0x0060ace3    894e60
                         mov                eax, dword ptr [ecx]                    // 0x0060ace6    8b01
                         push               edx                                     // 0x0060ace8    52
                         call               dword ptr [eax + 0x648]                 // 0x0060ace9    ff9048060000
                         mov                edx, dword ptr [eax]                    // 0x0060acef    8b10
                         {disp32} lea       ecx, dword ptr [esi + 0x00000080]       // 0x0060acf1    8d8e80000000
                         mov                dword ptr [ecx], edx                    // 0x0060acf7    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]             // 0x0060acf9    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx             // 0x0060acfc    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]             // 0x0060acff    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax             // 0x0060ad02    894108
                         mov.s              ecx, esi                                // 0x0060ad05    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060ad07    e894120000
                         push               0x0                                     // 0x0060ad0c    6a00
                         mov.s              ecx, esi                                // 0x0060ad0e    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060ad10    e82b000000
                         mov                ecx, 0x00000001                         // 0x0060ad15    b901000000
                         cmp.s              eax, ecx                                // 0x0060ad1a    3bc1
                         {disp8} jne        _jmp_addr_0x0060ad28                    // 0x0060ad1c    750a
                         {disp8} mov        byte ptr [esi + 0x5e], cl               // 0x0060ad1e    884e5e
                         pop                esi                                     // 0x0060ad21    5e
                         add                esp, 0x0c                               // 0x0060ad22    83c40c
                         ret                0x0004                                  // 0x0060ad25    c20400
_jmp_addr_0x0060ad28:    {disp8} mov        byte ptr [esi + 0x78], cl               // 0x0060ad28    884e78
                         {disp8} mov        byte ptr [esi + 0x5e], 0x0b             // 0x0060ad2b    c6465e0b
_jmp_addr_0x0060ad2f:    pop                esi                                     // 0x0060ad2f    5e
                         add                esp, 0x0c                               // 0x0060ad30    83c40c
                         ret                0x0004                                  // 0x0060ad33    c20400
                         nop                                                        // 0x0060ad36    90
                         nop                                                        // 0x0060ad37    90
                         nop                                                        // 0x0060ad38    90
                         nop                                                        // 0x0060ad39    90
                         nop                                                        // 0x0060ad3a    90
                         nop                                                        // 0x0060ad3b    90
                         nop                                                        // 0x0060ad3c    90
                         nop                                                        // 0x0060ad3d    90
                         nop                                                        // 0x0060ad3e    90
                         nop                                                        // 0x0060ad3f    90
@AreWeThere__13MobileWallHugFf@12:    {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x0060ad40    8b442404
                         push               esi                                     // 0x0060ad44    56
                         push               edi                                     // 0x0060ad45    57
                         mov.s              esi, ecx                                // 0x0060ad46    8bf1
                         mov                edi, dword ptr [esi]                    // 0x0060ad48    8b3e
                         push               eax                                     // 0x0060ad4a    50
                         call               dword ptr [edi + 0x860]                 // 0x0060ad4b    ff9760080000
                         push               eax                                     // 0x0060ad51    50
                         mov.s              ecx, esi                                // 0x0060ad52    8bce
                         call               dword ptr [edi + 0x85c]                 // 0x0060ad54    ff975c080000
                         pop                edi                                     // 0x0060ad5a    5f
                         pop                esi                                     // 0x0060ad5b    5e
                         ret                0x0004                                  // 0x0060ad5c    c20400
                         nop                                                        // 0x0060ad5f    90
?AreWeThere@MobileWallHug@@UAE_NABUMapCoords@@M@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x0060ad60    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x14]             // 0x0060ad64    8b5114
                         push               esi                                     // 0x0060ad67    56
                         sub                edx, dword ptr [eax]                    // 0x0060ad68    2b10
                         {disp8} mov        esi, dword ptr [eax + 0x04]             // 0x0060ad6a    8b7004
                         xor.s              eax, eax                                // 0x0060ad6d    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x5a]               // 0x0060ad6f    668b415a
                         {disp8} mov        dword ptr [esp + 0x08], edx             // 0x0060ad73    89542408
                         {disp8} fild       dword ptr [esp + 0x08]                  // 0x0060ad77    db442408
                         {disp8} mov        edx, dword ptr [ecx + 0x18]             // 0x0060ad7b    8b5118
                         sub.s              edx, esi                                // 0x0060ad7e    2bd6
                         {disp8} mov        dword ptr [esp + 0x08], edx             // 0x0060ad80    89542408
                         {disp8} fild       dword ptr [esp + 0x08]                  // 0x0060ad84    db442408
                         pop                esi                                     // 0x0060ad88    5e
                         {disp8} mov        dword ptr [esp + 0x04], eax             // 0x0060ad89    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                  // 0x0060ad8d    db442404
                         {disp8} fadd       dword ptr [esp + 0x08]                  // 0x0060ad91    d8442408
                         fld                st(1)                                   // 0x0060ad95    d9c1
                         fmul               st, st(2)                               // 0x0060ad97    d8ca
                         fld                st(3)                                   // 0x0060ad99    d9c3
                         fmul               st, st(4)                               // 0x0060ad9b    d8cc
                         faddp              st(1), st                               // 0x0060ad9d    dec1
                         fld                st(1)                                   // 0x0060ad9f    d9c1
                         fmul               st, st(2)                               // 0x0060ada1    d8ca
                         fcompp                                                     // 0x0060ada3    ded9
                         fstp               st(0)                                   // 0x0060ada5    ddd8
                         fnstsw             ax                                      // 0x0060ada7    dfe0
                         fstp               st(0)                                   // 0x0060ada9    ddd8
                         test               ah, 0x41                                // 0x0060adab    f6c441
                         fstp               st(0)                                   // 0x0060adae    ddd8
                         {disp8} jne        _jmp_addr_0x0060adba                    // 0x0060adb0    7508
                         mov                eax, 0x00000001                         // 0x0060adb2    b801000000
                         ret                0x0008                                  // 0x0060adb7    c20800
_jmp_addr_0x0060adba:    xor.s              eax, eax                                // 0x0060adba    33c0
                         ret                0x0008                                  // 0x0060adbc    c20800
                         nop                                                        // 0x0060adbf    90
_jmp_addr_0x0060adc0:    sub                esp, 0x10                               // 0x0060adc0    83ec10
                         push               esi                                     // 0x0060adc3    56
                         mov.s              esi, ecx                                // 0x0060adc4    8bf1
                         push               edi                                     // 0x0060adc6    57
                         {disp8} mov        edi, dword ptr [esi + 0x60]             // 0x0060adc7    8b7e60
                         test               edi, edi                                // 0x0060adca    85ff
                         {disp32} je        _jmp_addr_0x0060aecd                    // 0x0060adcc    0f84fb000000
                         mov                eax, dword ptr [edi]                    // 0x0060add2    8b07
                         mov.s              ecx, edi                                // 0x0060add4    8bcf
                         call               dword ptr [eax + 0x2c]                  // 0x0060add6    ff502c
                         test               eax, eax                                // 0x0060add9    85c0
                         {disp32} je        _jmp_addr_0x0060aecd                    // 0x0060addb    0f84ec000000
                         {disp8} lea        ecx, dword ptr [edi + 0x14]             // 0x0060ade1    8d4f14
                         mov                edx, dword ptr [ecx]                    // 0x0060ade4    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]             // 0x0060ade6    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]             // 0x0060ade9    8b4908
                         {disp8} mov        dword ptr [esp + 0x0c], edx             // 0x0060adec    8954240c
                         mov                edx, dword ptr [esi]                    // 0x0060adf0    8b16
                         {disp8} mov        dword ptr [esp + 0x14], ecx             // 0x0060adf2    894c2414
                         mov.s              ecx, esi                                // 0x0060adf6    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x0060adf8    89442410
                         call               dword ptr [edx + 0x130]                 // 0x0060adfc    ff9230010000
                         {disp8} fstp       dword ptr [esp + 0x08]                  // 0x0060ae02    d95c2408
                         {disp8} lea        eax, dword ptr [esp + 0x0c]             // 0x0060ae06    8d44240c
                         push               eax                                     // 0x0060ae0a    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x0060ae0b    8d4e14
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                    // 0x0060ae0e    e8bdaeffff
                         {disp8} fcomp      dword ptr [esp + 0x08]                  // 0x0060ae13    d85c2408
                         fnstsw             ax                                      // 0x0060ae17    dfe0
                         test               ah, 0x01                                // 0x0060ae19    f6c401
                         {disp8} je         _jmp_addr_0x0060ae29                    // 0x0060ae1c    740b
                         pop                edi                                     // 0x0060ae1e    5f
                         mov                eax, 0x0000000a                         // 0x0060ae1f    b80a000000
                         pop                esi                                     // 0x0060ae24    5e
                         add                esp, 0x10                               // 0x0060ae25    83c410
                         ret                                                        // 0x0060ae28    c3
_jmp_addr_0x0060ae29:    mov                edx, dword ptr [esi]                    // 0x0060ae29    8b16
                         mov.s              ecx, esi                                // 0x0060ae2b    8bce
                         call               dword ptr [edx + 0x454]                 // 0x0060ae2d    ff9254040000
                         test               eax, eax                                // 0x0060ae33    85c0
                         {disp8} jne        _jmp_addr_0x0060ae6b                    // 0x0060ae35    7534
                         mov                eax, dword ptr [edi]                    // 0x0060ae37    8b07
                         mov.s              ecx, edi                                // 0x0060ae39    8bcf
                         call               dword ptr [eax + 0x130]                 // 0x0060ae3b    ff9030010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26998]       // 0x0060ae41    d80d98f98c00
                         {disp8} fcom       dword ptr [esp + 0x08]                  // 0x0060ae47    d8542408
                         fnstsw             ax                                      // 0x0060ae4b    dfe0
                         test               ah, 0x41                                // 0x0060ae4d    f6c441
                         {disp8} jne        _jmp_addr_0x0060ae58                    // 0x0060ae50    7506
                         {disp8} fstp       dword ptr [esp + 0x08]                  // 0x0060ae52    d95c2408
                         {disp8} jmp        _jmp_addr_0x0060ae5a                    // 0x0060ae56    eb02
_jmp_addr_0x0060ae58:    fstp               st(0)                                   // 0x0060ae58    ddd8
_jmp_addr_0x0060ae5a:    {disp8} mov        eax, dword ptr [esp + 0x08]             // 0x0060ae5a    8b442408
                         mov                edx, dword ptr [esi]                    // 0x0060ae5e    8b16
                         push               0x0                                     // 0x0060ae60    6a00
                         push               eax                                     // 0x0060ae62    50
                         mov.s              ecx, esi                                // 0x0060ae63    8bce
                         call               dword ptr [edx + 0x134]                 // 0x0060ae65    ff9234010000
_jmp_addr_0x0060ae6b:    {disp8} mov        edx, dword ptr [esp + 0x0c]             // 0x0060ae6b    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x10]             // 0x0060ae6f    8b442410
                         {disp32} lea       ecx, dword ptr [esi + 0x00000080]       // 0x0060ae73    8d8e80000000
                         mov                dword ptr [ecx], edx                    // 0x0060ae79    8911
                         {disp8} mov        edx, dword ptr [esp + 0x14]             // 0x0060ae7b    8b542414
                         {disp8} mov        dword ptr [ecx + 0x04], eax             // 0x0060ae7f    894104
                         mov                eax, dword ptr [esi]                    // 0x0060ae82    8b06
                         {disp8} mov        dword ptr [ecx + 0x08], edx             // 0x0060ae84    895108
                         push               0x0                                     // 0x0060ae87    6a00
                         mov.s              ecx, esi                                // 0x0060ae89    8bce
                         call               dword ptr [eax + 0x2c8]                 // 0x0060ae8b    ff90c8020000
                         test               eax, eax                                // 0x0060ae91    85c0
                         {disp8} je         _jmp_addr_0x0060aec0                    // 0x0060ae93    742b
                         push               0x0                                     // 0x0060ae95    6a00
                         push               0x009cafc8                              // 0x0060ae97    68c8af9c00
                         push               0x009c8dc8                              // 0x0060ae9c    68c88d9c00
                         push               0x0                                     // 0x0060aea1    6a00
                         push               esi                                     // 0x0060aea3    56
                         call               ___RTDynamicCast                        // 0x0060aea4    e870ab1b00
                         add                esp, 0x14                               // 0x0060aea9    83c414
                         test               eax, eax                                // 0x0060aeac    85c0
                         {disp8} je         _jmp_addr_0x0060aec0                    // 0x0060aeae    7410
                         test               byte ptr [eax + 0x000000e0], -0x80      // 0x0060aeb0    f680e000000080
                         {disp8} je         _jmp_addr_0x0060aec0                    // 0x0060aeb7    7407
                         mov.s              ecx, esi                                // 0x0060aeb9    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060aebb    e8e0100000
_jmp_addr_0x0060aec0:    mov.s              ecx, esi                                // 0x0060aec0    8bce
                         call               ?MoveTo@MobileWallHug@@QAEHXZ           // 0x0060aec2    e859000000
                         pop                edi                                     // 0x0060aec7    5f
                         pop                esi                                     // 0x0060aec8    5e
                         add                esp, 0x10                               // 0x0060aec9    83c410
                         ret                                                        // 0x0060aecc    c3
_jmp_addr_0x0060aecd:    pop                edi                                     // 0x0060aecd    5f
                         mov                eax, 0x00000026                         // 0x0060aece    b826000000
                         pop                esi                                     // 0x0060aed3    5e
                         add                esp, 0x10                               // 0x0060aed4    83c410
                         ret                                                        // 0x0060aed7    c3
                         nop                                                        // 0x0060aed8    90
                         nop                                                        // 0x0060aed9    90
                         nop                                                        // 0x0060aeda    90
                         nop                                                        // 0x0060aedb    90
                         nop                                                        // 0x0060aedc    90
                         nop                                                        // 0x0060aedd    90
                         nop                                                        // 0x0060aede    90
                         nop                                                        // 0x0060aedf    90
?MoveTo3D@MobileWallHug@@UAEXXZ:
                         {disp8} fld        dword ptr [ecx + 0x1c]                  // 0x0060aee0    d9411c
                         {disp32} fld       dword ptr [ecx + 0x00000088]            // 0x0060aee3    d98188000000
                         fcompp                                                     // 0x0060aee9    ded9
                         {disp8} fld        dword ptr [ecx + 0x1c]                  // 0x0060aeeb    d9411c
                         fnstsw             ax                                      // 0x0060aeee    dfe0
                         test               ah, 0x01                                // 0x0060aef0    f6c401
                         {disp8} je         _jmp_addr_0x0060aefd                    // 0x0060aef3    7408
                         {disp32} fsub      dword ptr [__real@3e4ccccd]             // 0x0060aef5    d82544b28a00
                         {disp8} jmp        _jmp_addr_0x0060af15                    // 0x0060aefb    eb18
_jmp_addr_0x0060aefd:    {disp32} fld       dword ptr [ecx + 0x00000088]            // 0x0060aefd    d98188000000
                         fcompp                                                     // 0x0060af03    ded9
                         fnstsw             ax                                      // 0x0060af05    dfe0
                         test               ah, 0x41                                // 0x0060af07    f6c441
                         {disp8} jne        _jmp_addr_0x0060af18                    // 0x0060af0a    750c
                         {disp8} fld        dword ptr [ecx + 0x1c]                  // 0x0060af0c    d9411c
                         {disp32} fadd      dword ptr [__real@3e4ccccd]             // 0x0060af0f    d80544b28a00
_jmp_addr_0x0060af15:    {disp8} fstp       dword ptr [ecx + 0x1c]                  // 0x0060af15    d9591c
_jmp_addr_0x0060af18:    {disp32} jmp       ?MoveTo@MobileWallHug@@QAEHXZ           // 0x0060af18    e903000000
                         nop                                                        // 0x0060af1d    90
                         nop                                                        // 0x0060af1e    90
                         nop                                                        // 0x0060af1f    90
?MoveTo@MobileWallHug@@QAEHXZ:
                                 sub                esp, 0x6c                               // 0x0060af20    83ec6c
                         push               ebx                                     // 0x0060af23    53
                         push               ebp                                     // 0x0060af24    55
                         push               esi                                     // 0x0060af25    56
                         xor.s              eax, eax                                // 0x0060af26    33c0
                         mov.s              esi, ecx                                // 0x0060af28    8bf1
                         {disp32} mov       byte ptr [_DAT_00d3eed0], 0x00          // 0x0060af2a    c605d0eed30000
                         {disp8} mov        al, byte ptr [esi + 0x5e]               // 0x0060af31    8a465e
                         push               edi                                     // 0x0060af34    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001      // 0x0060af35    c744241401000000
                         dec                eax                                     // 0x0060af3d    48
                         cmp                eax, 0x11                               // 0x0060af3e    83f811
                         {disp32} ja        _jmp_addr_0x0060b8bc                    // 0x0060af41    0f8775090000
                         xor.s              ecx, ecx                                // 0x0060af47    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0060bba4]         // 0x0060af49    8a88a4bb6000
                         jmp                dword ptr [ecx*4 + 0x60bb7c]            // 0x0060af4f    ff248d7cbb6000
                         push               0x0                                     // 0x0060af56    6a00
                         push               0x0                                     // 0x0060af58    6a00
                         push               0x0                                     // 0x0060af5a    6a00
                         mov.s              ecx, esi                                // 0x0060af5c    8bce
                         call               _jmp_addr_0x0060bd00                    // 0x0060af5e    e89d0d0000
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x0060af63    89442414
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060af67    e96c090000
                         {disp8} lea        edx, dword ptr [esi + 0x14]             // 0x0060af6c    8d5614
                         mov                eax, dword ptr [edx]                    // 0x0060af6f    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]             // 0x0060af71    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]             // 0x0060af74    8b5208
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060af77    89442438
                         mov                eax, dword ptr [esi]                    // 0x0060af7b    8b06
                         {disp8} mov        dword ptr [esp + 0x3c], ecx             // 0x0060af7d    894c243c
                         mov.s              ecx, esi                                // 0x0060af81    8bce
                         {disp8} mov        dword ptr [esp + 0x40], edx             // 0x0060af83    89542440
                         call               dword ptr [eax + 0x860]                 // 0x0060af87    ff9060080000
                         mov                ecx, dword ptr [eax]                    // 0x0060af8d    8b08
                         mov                edx, dword ptr [esi]                    // 0x0060af8f    8b16
                         {disp8} mov        dword ptr [esp + 0x38], ecx             // 0x0060af91    894c2438
                         mov.s              ecx, esi                                // 0x0060af95    8bce
                         call               dword ptr [edx + 0x860]                 // 0x0060af97    ff9260080000
                         {disp8} mov        eax, dword ptr [eax + 0x04]             // 0x0060af9d    8b4004
                         mov                edx, dword ptr [esi]                    // 0x0060afa0    8b16
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060afa2    8944243c
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060afa6    8d442438
                         push               eax                                     // 0x0060afaa    50
                         mov.s              ecx, esi                                // 0x0060afab    8bce
                         call               dword ptr [edx + 0x55c]                 // 0x0060afad    ff925c050000
                         pop                edi                                     // 0x0060afb3    5f
                         pop                esi                                     // 0x0060afb4    5e
                         pop                ebp                                     // 0x0060afb5    5d
                         mov                eax, 0x0000000a                         // 0x0060afb6    b80a000000
                         pop                ebx                                     // 0x0060afbb    5b
                         add                esp, 0x6c                               // 0x0060afbc    83c46c
                         ret                                                        // 0x0060afbf    c3
                         push               0x0                                     // 0x0060afc0    6a00
                         mov.s              ecx, esi                                // 0x0060afc2    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060afc4    e877fdffff
                         cmp                eax, 0x01                               // 0x0060afc9    83f801
                         {disp8} jne        _jmp_addr_0x0060b022                    // 0x0060afcc    7554
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x0060afce    8d4e14
                         mov                edx, dword ptr [ecx]                    // 0x0060afd1    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]             // 0x0060afd3    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]             // 0x0060afd6    8b4908
                         {disp8} mov        dword ptr [esp + 0x38], edx             // 0x0060afd9    89542438
                         mov                edx, dword ptr [esi]                    // 0x0060afdd    8b16
                         {disp8} mov        dword ptr [esp + 0x40], ecx             // 0x0060afdf    894c2440
                         mov.s              ecx, esi                                // 0x0060afe3    8bce
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060afe5    8944243c
                         call               dword ptr [edx + 0x860]                 // 0x0060afe9    ff9260080000
                         mov                eax, dword ptr [eax]                    // 0x0060afef    8b00
                         mov                edx, dword ptr [esi]                    // 0x0060aff1    8b16
                         mov.s              ecx, esi                                // 0x0060aff3    8bce
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060aff5    89442438
                         call               dword ptr [edx + 0x860]                 // 0x0060aff9    ff9260080000
                         {disp8} mov        eax, dword ptr [eax + 0x04]             // 0x0060afff    8b4004
                         mov                edx, dword ptr [esi]                    // 0x0060b002    8b16
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060b004    8944243c
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b008    8d442438
                         push               eax                                     // 0x0060b00c    50
                         mov.s              ecx, esi                                // 0x0060b00d    8bce
                         call               dword ptr [edx + 0x55c]                 // 0x0060b00f    ff925c050000
                         pop                edi                                     // 0x0060b015    5f
                         pop                esi                                     // 0x0060b016    5e
                         pop                ebp                                     // 0x0060b017    5d
                         mov                eax, 0x0000000a                         // 0x0060b018    b80a000000
                         pop                ebx                                     // 0x0060b01d    5b
                         add                esp, 0x6c                               // 0x0060b01e    83c46c
                         ret                                                        // 0x0060b021    c3
_jmp_addr_0x0060b022:    {disp8} mov        byte ptr [esi + 0x78], 0x10             // 0x0060b022    c6467810
                         {disp8} mov        byte ptr [esi + 0x5e], 0x0b             // 0x0060b026    c6465e0b
                         mov                edx, dword ptr [esi]                    // 0x0060b02a    8b16
                         mov.s              ecx, esi                                // 0x0060b02c    8bce
                         call               dword ptr [edx + 0x454]                 // 0x0060b02e    ff9254040000
                         test               eax, eax                                // 0x0060b034    85c0
                         {disp8} jne        _jmp_addr_0x0060b041                    // 0x0060b036    7509
                         dec                byte ptr [esi + 0x78]                   // 0x0060b038    fe4e78
                         {disp8} jne        _jmp_addr_0x0060b048                    // 0x0060b03b    750b
                         {disp8} mov        byte ptr [esi + 0x78], 0x7f             // 0x0060b03d    c646787f
_jmp_addr_0x0060b041:    mov.s              ecx, esi                                // 0x0060b041    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060b043    e8580f0000
_jmp_addr_0x0060b048:    {disp8} mov        ebp, dword ptr [esi + 0x6c]             // 0x0060b048    8b6e6c
                         {disp8} lea        edi, dword ptr [esi + 0x14]             // 0x0060b04b    8d7e14
                         mov.s              edx, edi                                // 0x0060b04e    8bd7
                         mov                eax, dword ptr [edx]                    // 0x0060b050    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]             // 0x0060b052    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]             // 0x0060b055    8b5208
                         add.s              ecx, ebp                                // 0x0060b058    03cd
                         {disp8} mov        dword ptr [esp + 0x40], edx             // 0x0060b05a    89542440
                         {disp8} mov        edx, dword ptr [esi + 0x64]             // 0x0060b05e    8b5664
                         {disp8} mov        dword ptr [esp + 0x3c], ecx             // 0x0060b061    894c243c
                         add.s              eax, edx                                // 0x0060b065    03c2
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b067    8d4c2438
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b06b    89442438
                         mov                eax, dword ptr [esi]                    // 0x0060b06f    8b06
                         push               ecx                                     // 0x0060b071    51
                         mov.s              ecx, esi                                // 0x0060b072    8bce
                         call               dword ptr [eax + 0x55c]                 // 0x0060b074    ff905c050000
                         push               0x0                                     // 0x0060b07a    6a00
                         mov.s              ecx, esi                                // 0x0060b07c    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x0060b07e    89442418
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060b082    e8b9fcffff
                         cmp                eax, 0x01                               // 0x0060b087    83f801
                         {disp32} jne       _jmp_addr_0x0060b8d8                    // 0x0060b08a    0f8548080000
                         {disp32} jmp       _jmp_addr_0x0060b801                    // 0x0060b090    e96c070000
                         cmp                byte ptr [esi + 0x74], -0x01            // 0x0060b095    807e74ff
                         {disp8} je         _jmp_addr_0x0060b0b2                    // 0x0060b099    7417
                         {disp8} lea        ecx, dword ptr [esi + 0x70]             // 0x0060b09b    8d4e70
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b09e    e8bdf5ffff
                         test               eax, eax                                // 0x0060b0a3    85c0
                         {disp8} jne        _jmp_addr_0x0060b0b2                    // 0x0060b0a5    750b
                         {disp8} lea        eax, dword ptr [esi + 0x14]             // 0x0060b0a7    8d4614
                         push               eax                                     // 0x0060b0aa    50
                         mov.s              ecx, esi                                // 0x0060b0ab    8bce
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060b0ad    e89e190000
_jmp_addr_0x0060b0b2:    mov.s              ecx, esi                                // 0x0060b0b2    8bce
                         call               ?MoveToCircleHug@MobileWallHug@@QAEHXZ  // 0x0060b0b4    e847270000
                         push               0x0                                     // 0x0060b0b9    6a00
                         mov.s              ecx, esi                                // 0x0060b0bb    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x0060b0bd    89442418
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060b0c1    e87afcffff
                         cmp                eax, 0x01                               // 0x0060b0c6    83f801
                         {disp32} jne       _jmp_addr_0x0060b8d8                    // 0x0060b0c9    0f8509080000
                         {disp8} mov        edx, dword ptr [esi + 0x14]             // 0x0060b0cf    8b5614
                         {disp8} mov        byte ptr [esi + 0x5e], 0x04             // 0x0060b0d2    c6465e04
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b0d6    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b0d9    8b8e84000000
                         {disp32} jmp       _jmp_addr_0x0060b810                    // 0x0060b0df    e92c070000
                         {disp8} lea        edi, dword ptr [esi + 0x70]             // 0x0060b0e4    8d7e70
                         mov.s              ecx, edi                                // 0x0060b0e7    8bcf
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b0e9    e872f5ffff
                         test               eax, eax                                // 0x0060b0ee    85c0
                         {disp8} jne        _jmp_addr_0x0060b10d                    // 0x0060b0f0    751b
                         mov.s              ecx, esi                                // 0x0060b0f2    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060b0f4    e8a70e0000
                         {disp8} lea        eax, dword ptr [esi + 0x14]             // 0x0060b0f9    8d4614
                         push               eax                                     // 0x0060b0fc    50
                         mov.s              ecx, esi                                // 0x0060b0fd    8bce
                         {disp8} mov        byte ptr [esi + 0x5e], 0x0d             // 0x0060b0ff    c6465e0d
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060b103    e848190000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b108    e9cb070000
_jmp_addr_0x0060b10d:    xor.s              ecx, ecx                                // 0x0060b10d    33c9
                         {disp8} mov        cx, word ptr [esi + 0x5a]               // 0x0060b10f    668b4e5a
                         {disp8} mov        dword ptr [esp + 0x18], ecx             // 0x0060b113    894c2418
                         {disp8} fild       dword ptr [esp + 0x18]                  // 0x0060b117    db442418
                         mov.s              ecx, edi                                // 0x0060b11b    8bcf
                         {disp8} fstp       dword ptr [esp + 0x18]                  // 0x0060b11d    d95c2418
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b121    e83af5ffff
                         {disp8} fld        dword ptr [esp + 0x18]                  // 0x0060b126    d9442418
                         {disp8} fdiv       dword ptr [eax + 0x0c]                  // 0x0060b12a    d8700c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87660]       // 0x0060b12d    d80d60069300
                         call               _jmp_addr_0x007a1400                    // 0x0060b133    e8c8621900
                         xor.s              edx, edx                                // 0x0060b138    33d2
                         mov.s              dx, ax                                  // 0x0060b13a    668bd0
                         xor.s              eax, eax                                // 0x0060b13d    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5c]               // 0x0060b13f    668b465c
                         mov.s              ecx, esi                                // 0x0060b143    8bce
                         sub.s              eax, edx                                // 0x0060b145    2bc2
                         dec                eax                                     // 0x0060b147    48
                         and                eax, 0x000007ff                         // 0x0060b148    25ff070000
                         push               eax                                     // 0x0060b14d    50
                         call               @SetGameAngle__13MobileWallHugFUs@10    // 0x0060b14e    e83d290000
                         mov.s              ecx, esi                                // 0x0060b153    8bce
                         call               ?RebuildMoveByStep@MobileWallHug@@QAEXXZ// 0x0060b155    e8b6ebffff
                         {disp8} fld        dword ptr [esi + 0x1c]                  // 0x0060b15a    d9461c
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b15d    8b4618
                         {disp8} mov        edx, dword ptr [esi + 0x6c]             // 0x0060b160    8b566c
                         {disp8} mov        ebp, dword ptr [esi + 0x64]             // 0x0060b163    8b6e64
                         push               ecx                                     // 0x0060b166    51
                         {disp8} mov        ecx, dword ptr [esi + 0x14]             // 0x0060b167    8b4e14
                         {disp8} lea        edi, dword ptr [esi + 0x64]             // 0x0060b16a    8d7e64
                         {disp8} lea        ebx, dword ptr [esi + 0x14]             // 0x0060b16d    8d5e14
                         add.s              eax, edx                                // 0x0060b170    03c2
                         fstp               dword ptr [esp]                         // 0x0060b172    d91c24
                         add.s              ecx, ebp                                // 0x0060b175    03cd
                         push               eax                                     // 0x0060b177    50
                         push               ecx                                     // 0x0060b178    51
                         {disp8} lea        ecx, dword ptr [esp + 0x44]             // 0x0060b179    8d4c2444
                         call               @__ct__9MapCoordsFllf@20                // 0x0060b17d    e82e80ffff
                         {disp8} mov        dx, word ptr [esp + 0x3a]               // 0x0060b182    668b54243a
                         cmp                dx, word ptr [esi + 0x16]               // 0x0060b187    663b5616
                         {disp8} jne        _jmp_addr_0x0060b198                    // 0x0060b18b    750b
                         {disp8} mov        ax, word ptr [esp + 0x3e]               // 0x0060b18d    668b44243e
                         cmp                ax, word ptr [esi + 0x1a]               // 0x0060b192    663b461a
                         {disp8} je         _jmp_addr_0x0060b1a6                    // 0x0060b196    740e
_jmp_addr_0x0060b198:    {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b198    8d4c2438
                         push               ecx                                     // 0x0060b19c    51
                         push               esi                                     // 0x0060b19d    56
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z             // 0x0060b19e    e84da80000
                         add                esp, 0x08                               // 0x0060b1a3    83c408
_jmp_addr_0x0060b1a6:    {disp8} mov        al, byte ptr [esi + 0x74]               // 0x0060b1a6    8a4674
                         cmp                al, -0x01                               // 0x0060b1a9    3cff
                         {disp8} je         _jmp_addr_0x0060b1d7                    // 0x0060b1ab    742a
                         mov.s              cl, al                                  // 0x0060b1ad    8ac8
                         dec                cl                                      // 0x0060b1af    fec9
                         test               al, al                                  // 0x0060b1b1    84c0
                         {disp8} mov        byte ptr [esi + 0x74], cl               // 0x0060b1b3    884e74
                         {disp8} jne        _jmp_addr_0x0060b1d7                    // 0x0060b1b6    751f
                         {disp8} lea        edx, dword ptr [esp + 0x38]             // 0x0060b1b8    8d542438
                         push               edx                                     // 0x0060b1bc    52
                         push               esi                                     // 0x0060b1bd    56
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z             // 0x0060b1be    e82da80000
                         mov                eax, dword ptr [esi]                    // 0x0060b1c3    8b06
                         add                esp, 0x08                               // 0x0060b1c5    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b1c8    8d4c2438
                         push               ecx                                     // 0x0060b1cc    51
                         mov.s              ecx, esi                                // 0x0060b1cd    8bce
                         call               dword ptr [eax + 0x55c]                 // 0x0060b1cf    ff905c050000
                         {disp8} jmp        _jmp_addr_0x0060b1e6                    // 0x0060b1d5    eb0f
_jmp_addr_0x0060b1d7:    mov                edx, dword ptr [esi]                    // 0x0060b1d7    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b1d9    8d442438
                         push               eax                                     // 0x0060b1dd    50
                         mov.s              ecx, esi                                // 0x0060b1de    8bce
                         call               dword ptr [edx + 0x55c]                 // 0x0060b1e0    ff925c050000
_jmp_addr_0x0060b1e6:    {disp8} mov        dword ptr [esp + 0x14], eax             // 0x0060b1e6    89442414
                         xor.s              eax, eax                                // 0x0060b1ea    33c0
                         {disp8} mov        ax, word ptr [esi + 0x76]               // 0x0060b1ec    668b4676
                         cmp                ax, -0x0001                             // 0x0060b1f0    663dffff
                         {disp8} je         _jmp_addr_0x0060b1ff                    // 0x0060b1f4    7409
                         and                eax, 0x0000ffff                         // 0x0060b1f6    25ffff0000
                         mov.s              ebp, eax                                // 0x0060b1fb    8be8
                         {disp8} jmp        _jmp_addr_0x0060b224                    // 0x0060b1fd    eb25
_jmp_addr_0x0060b1ff:    {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b1ff    8d4c2438
                         push               ecx                                     // 0x0060b203    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]             // 0x0060b204    8d54241c
                         push               edx                                     // 0x0060b208    52
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060b209    b978eed300
                         {disp8} mov        dword ptr [esp + 0x40], esi             // 0x0060b20e    89742440
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000      // 0x0060b212    c744244400000000
                         call               _jmp_addr_0x00610490                    // 0x0060b21a    e871520000
                         mov                eax, dword ptr [eax]                    // 0x0060b21f    8b00
                         {disp8} mov        ebp, dword ptr [eax + 0x10]             // 0x0060b221    8b6810
_jmp_addr_0x0060b224:    push               0x0                                     // 0x0060b224    6a00
                         mov.s              ecx, esi                                // 0x0060b226    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060b228    e813fbffff
                         cmp                eax, 0x01                               // 0x0060b22d    83f801
                         {disp8} jne        _jmp_addr_0x0060b25c                    // 0x0060b230    752a
                         mov                edx, dword ptr [ebx]                    // 0x0060b232    8b13
                         {disp32} mov       ebx, dword ptr [esi + 0x00000080]       // 0x0060b234    8b9e80000000
                         {disp8} mov        byte ptr [esi + 0x5e], 0x04             // 0x0060b23a    c6465e04
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b23e    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b241    8b8e84000000
                         sub.s              edx, ebx                                // 0x0060b247    2bd3
                         sub.s              eax, ecx                                // 0x0060b249    2bc1
                         mov                dword ptr [edi], edx                    // 0x0060b24b    8917
                         {disp8} mov        dword ptr [edi + 0x08], eax             // 0x0060b24d    894708
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000      // 0x0060b250    c7470400000000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b257    e97c060000
_jmp_addr_0x0060b25c:    {disp8} mov        dword ptr [esp + 0x38], ebp             // 0x0060b25c    896c2438
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000      // 0x0060b260    c744243c00000000
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b268    df6c2438
                         {disp32} lea       ebp, dword ptr [esi + 0x00000080]       // 0x0060b26c    8dae80000000
                         push               ebp                                     // 0x0060b272    55
                         fld                st(0)                                   // 0x0060b273    d9c0
                         mov.s              ecx, ebx                                // 0x0060b275    8bcb
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8765c]       // 0x0060b277    d80d5c069300
                         fmul               st, st(1)                               // 0x0060b27d    d8c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                  // 0x0060b27f    d95c241c
                         fstp               st(0)                                   // 0x0060b283    ddd8
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                    // 0x0060b285    e826adffff
                         {disp8} fcomp      dword ptr [esp + 0x18]                  // 0x0060b28a    d85c2418
                         fnstsw             ax                                      // 0x0060b28e    dfe0
                         test               ah, 0x01                                // 0x0060b290    f6c401
                         {disp32} je        _jmp_addr_0x0060b8d8                    // 0x0060b293    0f843f060000
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b299    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b29c    8b8e84000000
                         mov                edx, dword ptr [ebx]                    // 0x0060b2a2    8b13
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b2a4    89442438
                         xor.s              eax, eax                                // 0x0060b2a8    33c0
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060b2aa    8944243c
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b2ae    df6c2438
                         {disp8} mov        dword ptr [esp + 0x38], ecx             // 0x0060b2b2    894c2438
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]             // 0x0060b2b6    8b4d00
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060b2b9    8944243c
                         {disp8} fisub      dword ptr [esp + 0x38]                  // 0x0060b2bd    da642438
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060b2c1    8944243c
                         fild               dword ptr [edi]                         // 0x0060b2c5    db07
                         {disp8} mov        dword ptr [esp + 0x38], edx             // 0x0060b2c7    89542438
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b2cb    df6c2438
                         {disp8} mov        dword ptr [esp + 0x3c], eax             // 0x0060b2cf    8944243c
                         {disp8} mov        dword ptr [esp + 0x38], ecx             // 0x0060b2d3    894c2438
                         {disp8} fisub      dword ptr [esp + 0x38]                  // 0x0060b2d7    da642438
                         {disp8} fild       dword ptr [esi + 0x6c]                  // 0x0060b2db    db466c
                         fld                st(2)                                   // 0x0060b2de    d9c2
                         fmul               st, st(4)                               // 0x0060b2e0    d8cc
                         fld                st(1)                                   // 0x0060b2e2    d9c1
                         fmul               st, st(3)                               // 0x0060b2e4    d8cb
                         fsubp              st(1), st                               // 0x0060b2e6    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x0060b2e8    d81d98a38a00
                         fnstsw             ax                                      // 0x0060b2ee    dfe0
                         test               ah, 0x01                                // 0x0060b2f0    f6c401
                         {disp32} je        _jmp_addr_0x0060b8d0                    // 0x0060b2f3    0f84d7050000
                         fxch               st(1)                                   // 0x0060b2f9    d9c9
                         fmul               st, st(2)                               // 0x0060b2fb    d8ca
                         fxch               st(1)                                   // 0x0060b2fd    d9c9
                         fmul               st, st(3)                               // 0x0060b2ff    d8cb
                         faddp              st(1), st                               // 0x0060b301    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x0060b303    d81d98a38a00
                         fnstsw             ax                                      // 0x0060b309    dfe0
                         fstp               st(0)                                   // 0x0060b30b    ddd8
                         test               ah, 0x01                                // 0x0060b30d    f6c401
                         fstp               st(0)                                   // 0x0060b310    ddd8
                         {disp32} je        _jmp_addr_0x0060b8d8                    // 0x0060b312    0f84c0050000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b318    8d4c2438
                         call               ??0MapCoords@@QAE@XZ                    // 0x0060b31c    e83f68e3ff
                         {disp8} lea        edx, dword ptr [esp + 0x38]             // 0x0060b321    8d542438
                         push               edx                                     // 0x0060b325    52
                         {disp8} lea        ecx, dword ptr [esi + 0x70]             // 0x0060b326    8d4e70
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b329    e832f3ffff
                         push               eax                                     // 0x0060b32e    50
                         call               _jmp_addr_0x006137f0                    // 0x0060b32f    e8bc840000
                         {disp8} mov        eax, dword ptr [esp + 0x40]             // 0x0060b334    8b442440
                         {disp8} mov        ecx, dword ptr [esp + 0x44]             // 0x0060b338    8b4c2444
                         {disp8} mov        edx, dword ptr [esp + 0x48]             // 0x0060b33c    8b542448
                         {disp8} mov        dword ptr [esp + 0x60], eax             // 0x0060b340    89442460
                         {disp8} lea        eax, dword ptr [esp + 0x60]             // 0x0060b344    8d442460
                         push               ebx                                     // 0x0060b348    53
                         push               eax                                     // 0x0060b349    50
                         {disp8} mov        dword ptr [esp + 0x6c], ecx             // 0x0060b34a    894c246c
                         {disp8} mov        dword ptr [esp + 0x70], edx             // 0x0060b34e    89542470
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                         // 0x0060b352    e8e91e1400
                         add                esp, 0x10                               // 0x0060b357    83c410
                         push               eax                                     // 0x0060b35a    50
                         mov.s              ecx, esi                                // 0x0060b35b    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10    // 0x0060b35d    e82e270000
                         xor.s              ecx, ecx                                // 0x0060b362    33c9
                         {disp8} mov        cx, word ptr [esi + 0x5c]               // 0x0060b364    668b4e5c
                         xor.s              eax, eax                                // 0x0060b368    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]               // 0x0060b36a    668b465a
                         push               0x0                                     // 0x0060b36e    6a00
                         shl                ecx, 2                                  // 0x0060b370    c1e102
                         {disp32} mov       edx, dword ptr [ecx + _sin_lookup_table]// 0x0060b373    8b911416c300
                         {disp32} mov       ecx, dword ptr [ecx + _cos_lookup_table]// 0x0060b379    8b89141ec300
                         shr                eax, 4                                  // 0x0060b37f    c1e804
                         imul               edx, eax                                // 0x0060b382    0fafd0
                         imul               ecx, eax                                // 0x0060b385    0fafc8
                         sar                edx, 0xc                                // 0x0060b388    c1fa0c
                         sar                ecx, 0xc                                // 0x0060b38b    c1f90c
                         push               edx                                     // 0x0060b38e    52
                         push               ecx                                     // 0x0060b38f    51
                         mov.s              ecx, edi                                // 0x0060b390    8bcf
                         call               _jmp_addr_0x00609ca0                    // 0x0060b392    e809e9ffff
                         {disp8} lea        edx, dword ptr [esp + 0x2c]             // 0x0060b397    8d54242c
                         push               edx                                     // 0x0060b39b    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]             // 0x0060b39c    8d44241c
                         push               eax                                     // 0x0060b3a0    50
                         mov                ecx, 0x00d3eea8                         // 0x0060b3a1    b9a8eed300
                         {disp8} mov        byte ptr [esi + 0x5e], 0x12             // 0x0060b3a6    c6465e12
                         {disp8} mov        dword ptr [esp + 0x34], esi             // 0x0060b3aa    89742434
                         call               _jmp_addr_0x00611ac0                    // 0x0060b3ae    e80d670000
                         {disp8} mov        eax, dword ptr [esp + 0x18]             // 0x0060b3b3    8b442418
                         cmp                eax, dword ptr [data_bytes + 0x378eac]  // 0x0060b3b7    3b05aceed300
                         {disp8} je         _jmp_addr_0x0060b3cf                    // 0x0060b3bd    7410
                         push               eax                                     // 0x0060b3bf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]             // 0x0060b3c0    8d4c2448
                         push               ecx                                     // 0x0060b3c4    51
                         mov                ecx, 0x00d3eea8                         // 0x0060b3c5    b9a8eed300
                         call               _jmp_addr_0x00611610                    // 0x0060b3ca    e841620000
_jmp_addr_0x0060b3cf:    .byte              0x66, 0x81, 0x7e, 0x76, 0xff, 0xff// cmp word ptr [esi + 0x76], -0x0001 // 0x0060b3cf    66817e76ffff
                         {disp32} jne       _jmp_addr_0x0060b8d8                    // 0x0060b3d5    0f85fd040000
                         {disp8} lea        edx, dword ptr [esp + 0x30]             // 0x0060b3db    8d542430
                         push               edx                                     // 0x0060b3df    52
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b3e0    8d442438
                         push               eax                                     // 0x0060b3e4    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060b3e5    b978eed300
                         {disp8} mov        dword ptr [esp + 0x38], esi             // 0x0060b3ea    89742438
                         call               _jmp_addr_0x00610a40                    // 0x0060b3ee    e84d560000
                         {disp8} mov        eax, dword ptr [esp + 0x34]             // 0x0060b3f3    8b442434
                         cmp                eax, dword ptr [data_bytes + 0x378e7c]  // 0x0060b3f7    3b057ceed300
                         {disp32} je        _jmp_addr_0x0060b784                    // 0x0060b3fd    0f8481030000
                         push               eax                                     // 0x0060b403    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]             // 0x0060b404    8d4c244c
                         push               ecx                                     // 0x0060b408    51
                         {disp32} jmp       _jmp_addr_0x0060b77a                    // 0x0060b409    e96c030000
                         {disp8} lea        edi, dword ptr [esi + 0x70]             // 0x0060b40e    8d7e70
                         mov.s              ecx, edi                                // 0x0060b411    8bcf
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b413    e848f2ffff
                         test               eax, eax                                // 0x0060b418    85c0
                         {disp8} jne        _jmp_addr_0x0060b437                    // 0x0060b41a    751b
                         mov.s              ecx, esi                                // 0x0060b41c    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060b41e    e87d0b0000
                         {disp8} lea        edx, dword ptr [esi + 0x14]             // 0x0060b423    8d5614
                         push               edx                                     // 0x0060b426    52
                         mov.s              ecx, esi                                // 0x0060b427    8bce
                         {disp8} mov        byte ptr [esi + 0x5e], 0x0e             // 0x0060b429    c6465e0e
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060b42d    e81e160000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b432    e9a1040000
_jmp_addr_0x0060b437:    xor.s              eax, eax                                // 0x0060b437    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]               // 0x0060b439    668b465a
                         mov.s              ecx, edi                                // 0x0060b43d    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x0060b43f    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                  // 0x0060b443    db442418
                         {disp8} fstp       dword ptr [esp + 0x18]                  // 0x0060b447    d95c2418
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b44b    e810f2ffff
                         {disp8} fld        dword ptr [esp + 0x18]                  // 0x0060b450    d9442418
                         {disp8} fdiv       dword ptr [eax + 0x0c]                  // 0x0060b454    d8700c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x87660]       // 0x0060b457    d80d60069300
                         call               _jmp_addr_0x007a1400                    // 0x0060b45d    e89e5f1900
                         xor.s              ecx, ecx                                // 0x0060b462    33c9
                         {disp8} mov        cx, word ptr [esi + 0x5c]               // 0x0060b464    668b4e5c
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x01] // 0x0060b468    8d440801
                         and                eax, 0x000007ff                         // 0x0060b46c    25ff070000
                         push               eax                                     // 0x0060b471    50
                         mov.s              ecx, esi                                // 0x0060b472    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10    // 0x0060b474    e817260000
                         mov.s              ecx, esi                                // 0x0060b479    8bce
                         call               ?RebuildMoveByStep@MobileWallHug@@QAEXXZ// 0x0060b47b    e890e8ffff
                         {disp8} fld        dword ptr [esi + 0x1c]                  // 0x0060b480    d9461c
                         {disp8} mov        edx, dword ptr [esi + 0x18]             // 0x0060b483    8b5618
                         {disp8} mov        ebp, dword ptr [esi + 0x6c]             // 0x0060b486    8b6e6c
                         {disp8} mov        eax, dword ptr [esi + 0x14]             // 0x0060b489    8b4614
                         push               ecx                                     // 0x0060b48c    51
                         add.s              edx, ebp                                // 0x0060b48d    03d5
                         fstp               dword ptr [esp]                         // 0x0060b48f    d91c24
                         push               edx                                     // 0x0060b492    52
                         {disp8} mov        edx, dword ptr [esi + 0x64]             // 0x0060b493    8b5664
                         {disp8} lea        ebx, dword ptr [esi + 0x14]             // 0x0060b496    8d5e14
                         add.s              eax, edx                                // 0x0060b499    03c2
                         push               eax                                     // 0x0060b49b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]             // 0x0060b49c    8d4c2444
                         call               @__ct__9MapCoordsFllf@20                // 0x0060b4a0    e80b7dffff
                         {disp8} mov        cx, word ptr [esp + 0x3a]               // 0x0060b4a5    668b4c243a
                         cmp                cx, word ptr [esi + 0x16]               // 0x0060b4aa    663b4e16
                         {disp8} jne        _jmp_addr_0x0060b4bb                    // 0x0060b4ae    750b
                         {disp8} mov        dx, word ptr [esp + 0x3e]               // 0x0060b4b0    668b54243e
                         cmp                dx, word ptr [esi + 0x1a]               // 0x0060b4b5    663b561a
                         {disp8} je         _jmp_addr_0x0060b4c9                    // 0x0060b4b9    740e
_jmp_addr_0x0060b4bb:    {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b4bb    8d442438
                         push               eax                                     // 0x0060b4bf    50
                         push               esi                                     // 0x0060b4c0    56
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z             // 0x0060b4c1    e87a970000
                         add                esp, 0x08                               // 0x0060b4c6    83c408
_jmp_addr_0x0060b4c9:    {disp8} mov        al, byte ptr [esi + 0x74]               // 0x0060b4c9    8a4674
                         cmp                al, -0x01                               // 0x0060b4cc    3cff
                         {disp8} je         _jmp_addr_0x0060b4fa                    // 0x0060b4ce    742a
                         mov.s              cl, al                                  // 0x0060b4d0    8ac8
                         dec                cl                                      // 0x0060b4d2    fec9
                         test               al, al                                  // 0x0060b4d4    84c0
                         {disp8} mov        byte ptr [esi + 0x74], cl               // 0x0060b4d6    884e74
                         {disp8} jne        _jmp_addr_0x0060b4fa                    // 0x0060b4d9    751f
                         {disp8} lea        edx, dword ptr [esp + 0x38]             // 0x0060b4db    8d542438
                         push               edx                                     // 0x0060b4df    52
                         push               esi                                     // 0x0060b4e0    56
                         call               ?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z             // 0x0060b4e1    e85a970000
                         mov                eax, dword ptr [esi]                    // 0x0060b4e6    8b06
                         add                esp, 0x08                               // 0x0060b4e8    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b4eb    8d4c2438
                         push               ecx                                     // 0x0060b4ef    51
                         mov.s              ecx, esi                                // 0x0060b4f0    8bce
                         call               dword ptr [eax + 0x55c]                 // 0x0060b4f2    ff905c050000
                         {disp8} jmp        _jmp_addr_0x0060b509                    // 0x0060b4f8    eb0f
_jmp_addr_0x0060b4fa:    mov                edx, dword ptr [esi]                    // 0x0060b4fa    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b4fc    8d442438
                         push               eax                                     // 0x0060b500    50
                         mov.s              ecx, esi                                // 0x0060b501    8bce
                         call               dword ptr [edx + 0x55c]                 // 0x0060b503    ff925c050000
_jmp_addr_0x0060b509:    {disp8} mov        dword ptr [esp + 0x14], eax             // 0x0060b509    89442414
                         xor.s              eax, eax                                // 0x0060b50d    33c0
                         {disp8} mov        ax, word ptr [esi + 0x76]               // 0x0060b50f    668b4676
                         cmp                ax, -0x0001                             // 0x0060b513    663dffff
                         {disp8} je         _jmp_addr_0x0060b524                    // 0x0060b517    740b
                         and                eax, 0x0000ffff                         // 0x0060b519    25ffff0000
                         mov.s              ebp, eax                                // 0x0060b51e    8be8
                         xor.s              edi, edi                                // 0x0060b520    33ff
                         {disp8} jmp        _jmp_addr_0x0060b547                    // 0x0060b522    eb23
_jmp_addr_0x0060b524:    {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b524    8d4c2438
                         push               ecx                                     // 0x0060b528    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]             // 0x0060b529    8d54241c
                         xor.s              edi, edi                                // 0x0060b52d    33ff
                         push               edx                                     // 0x0060b52f    52
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060b530    b978eed300
                         {disp8} mov        dword ptr [esp + 0x40], esi             // 0x0060b535    89742440
                         {disp8} mov        dword ptr [esp + 0x44], edi             // 0x0060b539    897c2444
                         call               _jmp_addr_0x00610490                    // 0x0060b53d    e84e4f0000
                         mov                eax, dword ptr [eax]                    // 0x0060b542    8b00
                         {disp8} mov        ebp, dword ptr [eax + 0x10]             // 0x0060b544    8b6810
_jmp_addr_0x0060b547:    push               edi                                     // 0x0060b547    57
                         mov.s              ecx, esi                                // 0x0060b548    8bce
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060b54a    e8f1f7ffff
                         cmp                eax, 0x01                               // 0x0060b54f    83f801
                         {disp8} jne        _jmp_addr_0x0060b57b                    // 0x0060b552    7527
                         mov                edx, dword ptr [ebx]                    // 0x0060b554    8b13
                         {disp32} mov       ebx, dword ptr [esi + 0x00000080]       // 0x0060b556    8b9e80000000
                         {disp8} mov        byte ptr [esi + 0x5e], 0x04             // 0x0060b55c    c6465e04
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b560    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b563    8b8e84000000
                         sub.s              edx, ebx                                // 0x0060b569    2bd3
                         sub.s              eax, ecx                                // 0x0060b56b    2bc1
                         {disp8} mov        dword ptr [esi + 0x64], edx             // 0x0060b56d    895664
                         {disp8} mov        dword ptr [esi + 0x6c], eax             // 0x0060b570    89466c
                         {disp8} mov        dword ptr [esi + 0x68], edi             // 0x0060b573    897e68
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b576    e95d030000
_jmp_addr_0x0060b57b:    {disp8} mov        dword ptr [esp + 0x38], ebp             // 0x0060b57b    896c2438
                         {disp8} mov        dword ptr [esp + 0x3c], edi             // 0x0060b57f    897c243c
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b583    df6c2438
                         {disp32} lea       ebp, dword ptr [esi + 0x00000080]       // 0x0060b587    8dae80000000
                         push               ebp                                     // 0x0060b58d    55
                         fld                st(0)                                   // 0x0060b58e    d9c0
                         mov.s              ecx, ebx                                // 0x0060b590    8bcb
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8765c]       // 0x0060b592    d80d5c069300
                         fmul               st, st(1)                               // 0x0060b598    d8c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                  // 0x0060b59a    d95c241c
                         fstp               st(0)                                   // 0x0060b59e    ddd8
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                    // 0x0060b5a0    e80baaffff
                         {disp8} fcomp      dword ptr [esp + 0x18]                  // 0x0060b5a5    d85c2418
                         fnstsw             ax                                      // 0x0060b5a9    dfe0
                         test               ah, 0x01                                // 0x0060b5ab    f6c401
                         {disp32} je        _jmp_addr_0x0060b8d8                    // 0x0060b5ae    0f8424030000
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b5b4    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b5b7    8b8e84000000
                         mov                edx, dword ptr [ebx]                    // 0x0060b5bd    8b13
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b5bf    89442438
                         {disp8} mov        eax, dword ptr [ebp + 0x00]             // 0x0060b5c3    8b4500
                         {disp8} mov        dword ptr [esp + 0x3c], edi             // 0x0060b5c6    897c243c
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b5ca    df6c2438
                         {disp8} mov        dword ptr [esp + 0x38], ecx             // 0x0060b5ce    894c2438
                         {disp8} mov        dword ptr [esp + 0x3c], edi             // 0x0060b5d2    897c243c
                         {disp8} fisub      dword ptr [esp + 0x38]                  // 0x0060b5d6    da642438
                         {disp8} mov        dword ptr [esp + 0x38], edx             // 0x0060b5da    89542438
                         {disp8} fild       dword ptr [esi + 0x64]                  // 0x0060b5de    db4664
                         {disp8} mov        dword ptr [esp + 0x3c], edi             // 0x0060b5e1    897c243c
                         {disp8} fild       qword ptr [esp + 0x38]                  // 0x0060b5e5    df6c2438
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b5e9    89442438
                         {disp8} mov        dword ptr [esp + 0x3c], edi             // 0x0060b5ed    897c243c
                         {disp8} fisub      dword ptr [esp + 0x38]                  // 0x0060b5f1    da642438
                         {disp8} fild       dword ptr [esi + 0x6c]                  // 0x0060b5f5    db466c
                         fld                st(2)                                   // 0x0060b5f8    d9c2
                         fmul               st, st(4)                               // 0x0060b5fa    d8cc
                         fld                st(1)                                   // 0x0060b5fc    d9c1
                         fmul               st, st(3)                               // 0x0060b5fe    d8cb
                         fsubp              st(1), st                               // 0x0060b600    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x0060b602    d81d98a38a00
                         fnstsw             ax                                      // 0x0060b608    dfe0
                         test               ah, 0x41                                // 0x0060b60a    f6c441
                         {disp32} jne       _jmp_addr_0x0060b8d0                    // 0x0060b60d    0f85bd020000
                         fxch               st(1)                                   // 0x0060b613    d9c9
                         fmul               st, st(2)                               // 0x0060b615    d8ca
                         fxch               st(1)                                   // 0x0060b617    d9c9
                         fmul               st, st(3)                               // 0x0060b619    d8cb
                         faddp              st(1), st                               // 0x0060b61b    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x0060b61d    d81d98a38a00
                         fnstsw             ax                                      // 0x0060b623    dfe0
                         fstp               st(0)                                   // 0x0060b625    ddd8
                         test               ah, 0x01                                // 0x0060b627    f6c401
                         fstp               st(0)                                   // 0x0060b62a    ddd8
                         {disp32} je        _jmp_addr_0x0060b8d8                    // 0x0060b62c    0f84a6020000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b632    8d4c2438
                         call               ??0MapCoords@@QAE@XZ                    // 0x0060b636    e82565e3ff
                         {disp8} lea        ecx, dword ptr [esi + 0x70]             // 0x0060b63b    8d4e70
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b63e    e81df0ffff
                         mov.s              edi, eax                                // 0x0060b643    8bf8
                         fld                dword ptr [edi]                         // 0x0060b645    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]        // 0x0060b647    d80d00c48a00
                         call               _jmp_addr_0x007a1400                    // 0x0060b64d    e8ae5d1900
                         mov.s              ebp, eax                                // 0x0060b652    8be8
                         {disp8} mov        dword ptr [esp + 0x38], ebp             // 0x0060b654    896c2438
                         {disp8} fld        dword ptr [edi + 0x08]                  // 0x0060b658    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]        // 0x0060b65b    d80d00c48a00
                         call               _jmp_addr_0x007a1400                    // 0x0060b661    e89a5d1900
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000      // 0x0060b666    c744244000000000
                         {disp8} mov        ecx, dword ptr [esp + 0x40]             // 0x0060b66e    8b4c2440
                         {disp8} lea        edx, dword ptr [esp + 0x64]             // 0x0060b672    8d542464
                         push               ebx                                     // 0x0060b676    53
                         push               edx                                     // 0x0060b677    52
                         {disp8} mov        dword ptr [esp + 0x44], eax             // 0x0060b678    89442444
                         {disp8} mov        dword ptr [esp + 0x6c], ebp             // 0x0060b67c    896c246c
                         {disp8} mov        dword ptr [esp + 0x70], eax             // 0x0060b680    89442470
                         {disp8} mov        dword ptr [esp + 0x74], ecx             // 0x0060b684    894c2474
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                         // 0x0060b688    e8b31b1400
                         add                esp, 0x08                               // 0x0060b68d    83c408
                         push               eax                                     // 0x0060b690    50
                         mov.s              ecx, esi                                // 0x0060b691    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10    // 0x0060b693    e8f8230000
                         xor.s              edx, edx                                // 0x0060b698    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]               // 0x0060b69a    668b565c
                         xor.s              eax, eax                                // 0x0060b69e    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]               // 0x0060b6a0    668b465a
                         {disp8} mov        dword ptr [esp + 0x24], esi             // 0x0060b6a4    89742424
                         shl                edx, 2                                  // 0x0060b6a8    c1e202
                         {disp32} mov       ecx, dword ptr [edx + _sin_lookup_table]// 0x0060b6ab    8b8a1416c300
                         {disp32} mov       edx, dword ptr [edx + _cos_lookup_table]// 0x0060b6b1    8b92141ec300
                         shr                eax, 4                                  // 0x0060b6b7    c1e804
                         imul               ecx, eax                                // 0x0060b6ba    0fafc8
                         imul               edx, eax                                // 0x0060b6bd    0fafd0
                         sar                ecx, 0xc                                // 0x0060b6c0    c1f90c
                         {disp8} mov        dword ptr [esi + 0x6c], ecx             // 0x0060b6c3    894e6c
                         {disp8} lea        eax, dword ptr [esp + 0x24]             // 0x0060b6c6    8d442424
                         push               eax                                     // 0x0060b6ca    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]             // 0x0060b6cb    8d4c241c
                         sar                edx, 0xc                                // 0x0060b6cf    c1fa0c
                         push               ecx                                     // 0x0060b6d2    51
                         {disp8} mov        dword ptr [esi + 0x64], edx             // 0x0060b6d3    895664
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000      // 0x0060b6d6    c7466800000000
                         mov                ecx, 0x00d3eea8                         // 0x0060b6dd    b9a8eed300
                         {disp8} mov        byte ptr [esi + 0x5e], 0x11             // 0x0060b6e2    c6465e11
                         call               _jmp_addr_0x00613300                    // 0x0060b6e6    e8157c0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378eac]  // 0x0060b6eb    8b0daceed300
                         {disp8} mov        eax, dword ptr [esp + 0x18]             // 0x0060b6f1    8b442418
                         cmp.s              eax, ecx                                // 0x0060b6f5    3bc1
                         {disp8} je         _jmp_addr_0x0060b708                    // 0x0060b6f7    740f
                         {disp8} mov        edx, dword ptr [esp + 0x24]             // 0x0060b6f9    8b542424
                         cmp                edx, dword ptr [eax + 0x0c]             // 0x0060b6fd    3b500c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060b708 // 0x0060b700    7206
                         {disp8} lea        eax, dword ptr [esp + 0x18]             // 0x0060b702    8d442418
                         {disp8} jmp        _jmp_addr_0x0060b710                    // 0x0060b706    eb08
_jmp_addr_0x0060b708:    {disp8} mov        dword ptr [esp + 0x38], ecx             // 0x0060b708    894c2438
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b70c    8d442438
_jmp_addr_0x0060b710:    mov                eax, dword ptr [eax]                    // 0x0060b710    8b00
                         cmp.s              eax, ecx                                // 0x0060b712    3bc1
                         {disp8} je         _jmp_addr_0x0060b726                    // 0x0060b714    7410
                         push               eax                                     // 0x0060b716    50
                         {disp8} lea        eax, dword ptr [esp + 0x50]             // 0x0060b717    8d442450
                         push               eax                                     // 0x0060b71b    50
                         mov                ecx, 0x00d3eea8                         // 0x0060b71c    b9a8eed300
                         call               _jmp_addr_0x00611610                    // 0x0060b721    e8ea5e0000
_jmp_addr_0x0060b726:    .byte              0x66, 0x81, 0x7e, 0x76, 0xff, 0xff// cmp word ptr [esi + 0x76], -0x0001 // 0x0060b726    66817e76ffff
                         {disp32} jne       _jmp_addr_0x0060b8d8                    // 0x0060b72c    0f85a6010000
                         {disp8} lea        ecx, dword ptr [esp + 0x28]             // 0x0060b732    8d4c2428
                         push               ecx                                     // 0x0060b736    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]             // 0x0060b737    8d54241c
                         push               edx                                     // 0x0060b73b    52
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060b73c    b978eed300
                         {disp8} mov        dword ptr [esp + 0x30], esi             // 0x0060b741    89742430
                         call               _jmp_addr_0x00612bb0                    // 0x0060b745    e866740000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x378e7c]  // 0x0060b74a    a17ceed300
                         {disp8} mov        ecx, dword ptr [esp + 0x18]             // 0x0060b74f    8b4c2418
                         cmp.s              ecx, eax                                // 0x0060b753    3bc8
                         {disp8} je         _jmp_addr_0x0060b766                    // 0x0060b755    740f
                         {disp8} mov        edx, dword ptr [esp + 0x28]             // 0x0060b757    8b542428
                         cmp                edx, dword ptr [ecx + 0x0c]             // 0x0060b75b    3b510c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060b766 // 0x0060b75e    7206
                         {disp8} lea        ecx, dword ptr [esp + 0x18]             // 0x0060b760    8d4c2418
                         {disp8} jmp        _jmp_addr_0x0060b76e                    // 0x0060b764    eb08
_jmp_addr_0x0060b766:    {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b766    89442438
                         {disp8} lea        ecx, dword ptr [esp + 0x38]             // 0x0060b76a    8d4c2438
_jmp_addr_0x0060b76e:    mov                ecx, dword ptr [ecx]                    // 0x0060b76e    8b09
                         cmp.s              ecx, eax                                // 0x0060b770    3bc8
                         {disp8} je         _jmp_addr_0x0060b784                    // 0x0060b772    7410
                         push               ecx                                     // 0x0060b774    51
                         {disp8} lea        eax, dword ptr [esp + 0x58]             // 0x0060b775    8d442458
                         push               eax                                     // 0x0060b779    50
_jmp_addr_0x0060b77a:    mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78  // 0x0060b77a    b978eed300
                         call               _jmp_addr_0x00610590                    // 0x0060b77f    e80c4e0000
_jmp_addr_0x0060b784:    {disp8} mov        word ptr [esi + 0x76], 0x0000           // 0x0060b784    66c746760000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b78a    e949010000
                         {disp8} lea        ebx, dword ptr [esi + 0x70]             // 0x0060b78f    8d5e70
                         mov.s              ecx, ebx                                // 0x0060b792    8bcb
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b794    e8c7eeffff
                         test               eax, eax                                // 0x0060b799    85c0
                         {disp8} jne        _jmp_addr_0x0060b7c1                    // 0x0060b79b    7524
                         mov.s              ecx, esi                                // 0x0060b79d    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060b79f    e8fc070000
                         cmp                byte ptr [esi + 0x5e], 0x12             // 0x0060b7a4    807e5e12
                         setne              cl                                      // 0x0060b7a8    0f95c1
                         {disp8} lea        edx, dword ptr [esi + 0x14]             // 0x0060b7ab    8d5614
                         push               edx                                     // 0x0060b7ae    52
                         add                ecx, 0xd                                // 0x0060b7af    83c10d
                         {disp8} mov        byte ptr [esi + 0x5e], cl               // 0x0060b7b2    884e5e
                         mov.s              ecx, esi                                // 0x0060b7b5    8bce
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060b7b7    e894120000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b7bc    e917010000
_jmp_addr_0x0060b7c1:    {disp8} lea        edi, dword ptr [esi + 0x14]             // 0x0060b7c1    8d7e14
                         mov.s              edx, edi                                // 0x0060b7c4    8bd7
                         mov                eax, dword ptr [edx]                    // 0x0060b7c6    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]             // 0x0060b7c8    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]             // 0x0060b7cb    8b5208
                         {disp8} mov        dword ptr [esp + 0x20], edx             // 0x0060b7ce    89542420
                         add                eax, dword ptr [esi + 0x64]             // 0x0060b7d2    034664
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x0060b7d5    89442418
                         add                ecx, dword ptr [esi + 0x6c]             // 0x0060b7d9    034e6c
                         mov                eax, dword ptr [esi]                    // 0x0060b7dc    8b06
                         {disp8} mov        dword ptr [esp + 0x1c], ecx             // 0x0060b7de    894c241c
                         {disp8} lea        ecx, dword ptr [esp + 0x18]             // 0x0060b7e2    8d4c2418
                         push               ecx                                     // 0x0060b7e6    51
                         mov.s              ecx, esi                                // 0x0060b7e7    8bce
                         call               dword ptr [eax + 0x55c]                 // 0x0060b7e9    ff905c050000
                         push               0x0                                     // 0x0060b7ef    6a00
                         mov.s              ecx, esi                                // 0x0060b7f1    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x0060b7f3    89442418
                         call               @AreWeThere__13MobileWallHugFf@12       // 0x0060b7f7    e844f5ffff
                         cmp                eax, 0x01                               // 0x0060b7fc    83f801
                         {disp8} jne        _jmp_addr_0x0060b82a                    // 0x0060b7ff    7529
_jmp_addr_0x0060b801:    mov                edx, dword ptr [edi]                    // 0x0060b801    8b17
                         {disp8} mov        byte ptr [esi + 0x5e], 0x04             // 0x0060b803    c6465e04
                         {disp8} mov        eax, dword ptr [esi + 0x18]             // 0x0060b807    8b4618
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x0060b80a    8b8e84000000
_jmp_addr_0x0060b810:    sub                edx, dword ptr [esi + 0x00000080]       // 0x0060b810    2b9680000000
                         {disp8} mov        dword ptr [esi + 0x64], edx             // 0x0060b816    895664
                         sub.s              eax, ecx                                // 0x0060b819    2bc1
                         {disp8} mov        dword ptr [esi + 0x6c], eax             // 0x0060b81b    89466c
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000      // 0x0060b81e    c7466800000000
                         {disp32} jmp       _jmp_addr_0x0060b8d8                    // 0x0060b825    e9ae000000
_jmp_addr_0x0060b82a:    mov.s              ecx, ebx                                // 0x0060b82a    8bcb
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b82c    e82feeffff
                         mov.s              ebp, eax                                // 0x0060b831    8be8
                         {disp8} fld        dword ptr [ebp + 0x00]                  // 0x0060b833    d94500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]        // 0x0060b836    d80d00c48a00
                         call               _jmp_addr_0x007a1400                    // 0x0060b83c    e8bf5b1900
                         {disp8} fld        dword ptr [ebp + 0x08]                  // 0x0060b841    d94508
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]        // 0x0060b844    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b84a    89442438
                         call               _jmp_addr_0x007a1400                    // 0x0060b84e    e8ad5b1900
                         {disp8} mov        ecx, dword ptr [esp + 0x38]             // 0x0060b853    8b4c2438
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000      // 0x0060b857    c744244000000000
                         {disp8} mov        edx, dword ptr [esp + 0x40]             // 0x0060b85f    8b542440
                         {disp8} mov        dword ptr [esp + 0x70], ecx             // 0x0060b863    894c2470
                         push               edi                                     // 0x0060b867    57
                         {disp8} lea        ecx, dword ptr [esp + 0x74]             // 0x0060b868    8d4c2474
                         {disp8} mov        dword ptr [esp + 0x78], eax             // 0x0060b86c    89442478
                         {disp8} mov        dword ptr [esp + 0x7c], edx             // 0x0060b870    8954247c
                         call               @GetMetresDistanceSq__9MapCoordsCFRC9MapCoords@12                    // 0x0060b874    e837a7ffff
                         {disp8} fstp       dword ptr [esp + 0x38]                  // 0x0060b879    d95c2438
                         mov.s              ecx, ebx                                // 0x0060b87d    8bcb
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b87f    e8dcedffff
                         mov.s              ecx, ebx                                // 0x0060b884    8bcb
                         mov.s              ebp, eax                                // 0x0060b886    8be8
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ      // 0x0060b888    e8d3edffff
                         {disp8} fld        dword ptr [ebp + 0x0c]                  // 0x0060b88d    d9450c
                         {disp8} fmul       dword ptr [eax + 0x0c]                  // 0x0060b890    d8480c
                         {disp8} fcomp      dword ptr [esp + 0x38]                  // 0x0060b893    d85c2438
                         fnstsw             ax                                      // 0x0060b897    dfe0
                         test               ah, 0x01                                // 0x0060b899    f6c401
                         {disp8} je         _jmp_addr_0x0060b8d8                    // 0x0060b89c    743a
                         mov.s              ecx, esi                                // 0x0060b89e    8bce
                         call               ?InitStepsXZ@MobileWallHug@@QAEXXZ      // 0x0060b8a0    e8fb060000
                         cmp                byte ptr [esi + 0x5e], 0x12             // 0x0060b8a5    807e5e12
                         setne              al                                      // 0x0060b8a9    0f95c0
                         push               edi                                     // 0x0060b8ac    57
                         mov.s              ecx, esi                                // 0x0060b8ad    8bce
                         add                eax, 0x0d                               // 0x0060b8af    83c00d
                         {disp8} mov        byte ptr [esi + 0x5e], al               // 0x0060b8b2    88465e
                         call               @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12                    // 0x0060b8b5    e896110000
                         {disp8} jmp        _jmp_addr_0x0060b8d8                    // 0x0060b8ba    eb1c
_jmp_addr_0x0060b8bc:    pop                edi                                     // 0x0060b8bc    5f
                         pop                esi                                     // 0x0060b8bd    5e
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000      // 0x0060b8be    c744240c00000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]             // 0x0060b8c6    8b44240c
                         pop                ebp                                     // 0x0060b8ca    5d
                         pop                ebx                                     // 0x0060b8cb    5b
                         add                esp, 0x6c                               // 0x0060b8cc    83c46c
                         ret                                                        // 0x0060b8cf    c3
_jmp_addr_0x0060b8d0:    fstp               st(0)                                   // 0x0060b8d0    ddd8
                         fstp               st(0)                                   // 0x0060b8d2    ddd8
                         fstp               st(0)                                   // 0x0060b8d4    ddd8
                         fstp               st(0)                                   // 0x0060b8d6    ddd8
_jmp_addr_0x0060b8d8:    {disp32} mov       al, byte ptr [_DAT_00d3eed0]            // 0x0060b8d8    a0d0eed300
                         test               al, al                                  // 0x0060b8dd    84c0
                         {disp32} je        _jmp_addr_0x0060bb6f                    // 0x0060b8df    0f848a020000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x378eac]  // 0x0060b8e5    8b3daceed300
                         {disp8} lea        ecx, dword ptr [esp + 0x28]             // 0x0060b8eb    8d4c2428
                         push               ecx                                     // 0x0060b8ef    51
                         mov                ecx, 0x00d3eea8                         // 0x0060b8f0    b9a8eed300
                         {disp8} mov        dword ptr [esp + 0x2c], esi             // 0x0060b8f5    8974242c
                         call               _jmp_addr_0x006145d0                    // 0x0060b8f9    e8d28c0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378eac]  // 0x0060b8fe    8b0daceed300
                         cmp.s              eax, ecx                                // 0x0060b904    3bc1
                         {disp8} mov        dword ptr [esp + 0x38], eax             // 0x0060b906    89442438
                         {disp8} je         _jmp_addr_0x0060b91b                    // 0x0060b90a    740f
                         {disp8} mov        edx, dword ptr [esp + 0x28]             // 0x0060b90c    8b542428
                         cmp                edx, dword ptr [eax + 0x0c]             // 0x0060b910    3b500c
                         .byte              0x72, 0x6// {disp8} jb _jmp_addr_0x0060b91b // 0x0060b913    7206
                         {disp8} lea        eax, dword ptr [esp + 0x38]             // 0x0060b915    8d442438
                         {disp8} jmp        _jmp_addr_0x0060b923                    // 0x0060b919    eb08
_jmp_addr_0x0060b91b:    {disp8} mov        dword ptr [esp + 0x34], ecx             // 0x0060b91b    894c2434
                         {disp8} lea        eax, dword ptr [esp + 0x34]             // 0x0060b91f    8d442434
_jmp_addr_0x0060b923:    cmp                dword ptr [eax], edi                    // 0x0060b923    3938
                         {disp32} jne       _jmp_addr_0x0060bb6f                    // 0x0060b925    0f8544020000
                         {disp32} mov       al, byte ptr [data_bytes + 0x378eb8]    // 0x0060b92b    a0b8eed300
                         test               al, al                                  // 0x0060b930    84c0
                         {disp32} jne       _jmp_addr_0x0060bb6f                    // 0x0060b932    0f8537020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378e9c]  // 0x0060b938    8b0d9ceed300
                         {disp32} mov       edx, dword ptr [_DAT_00d3eee4]          // 0x0060b93e    8b15e4eed300
                         {disp8} mov        dword ptr [esp + 0x18], esi             // 0x0060b944    89742418
                         {disp8} mov        ebp, dword ptr [ecx + 0x04]             // 0x0060b948    8b6904
                         cmp.s              ebp, edx                                // 0x0060b94b    3bea
                         mov.s              edi, ecx                                // 0x0060b94d    8bf9
                         mov                al, 0x01                                // 0x0060b94f    b001
                         {disp8} je         _jmp_addr_0x0060b96b                    // 0x0060b951    7418
_jmp_addr_0x0060b953:    cmp                esi, dword ptr [ebp + 0x0c]             // 0x0060b953    3b750c
                         setb               al                                      // 0x0060b956    0f92c0
                         test               al, al                                  // 0x0060b959    84c0
                         mov.s              edi, ebp                                // 0x0060b95b    8bfd
                         {disp8} je         _jmp_addr_0x0060b964                    // 0x0060b95d    7405
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]             // 0x0060b95f    8b6d00
                         {disp8} jmp        _jmp_addr_0x0060b967                    // 0x0060b962    eb03
_jmp_addr_0x0060b964:    {disp8} mov        ebp, dword ptr [ebp + 0x08]             // 0x0060b964    8b6d08
_jmp_addr_0x0060b967:    cmp.s              ebp, edx                                // 0x0060b967    3bea
                         {disp8} jne        _jmp_addr_0x0060b953                    // 0x0060b969    75e8
_jmp_addr_0x0060b96b:    {disp32} mov       dl, byte ptr [data_bytes + 0x378ea0]    // 0x0060b96b    8a15a0eed300
                         test               dl, dl                                  // 0x0060b971    84d2
                         {disp32} je        _jmp_addr_0x0060baf1                    // 0x0060b973    0f8478010000
                         xor.s              ebx, ebx                                // 0x0060b979    33db
                         push               ebx                                     // 0x0060b97b    53
                         push               edi                                     // 0x0060b97c    57
                         mov                ecx, 0x00d3ee98                         // 0x0060b97d    b998eed300
                         call               _jmp_addr_0x00614600                    // 0x0060b982    e8798c0000
                         mov.s              esi, eax                                // 0x0060b987    8bf0
                         {disp32} mov       eax, dword ptr [_DAT_00d3eee4]          // 0x0060b989    a1e4eed300
                         mov                dword ptr [esi], eax                    // 0x0060b98e    8906
                         {disp32} mov       ecx, dword ptr [_DAT_00d3eee4]          // 0x0060b990    8b0de4eed300
                         {disp8} lea        edx, dword ptr [esp + 0x18]             // 0x0060b996    8d542418
                         push               edx                                     // 0x0060b99a    52
                         {disp8} lea        eax, dword ptr [esi + 0x0c]             // 0x0060b99b    8d460c
                         push               eax                                     // 0x0060b99e    50
                         {disp8} mov        dword ptr [esi + 0x08], ecx             // 0x0060b99f    894e08
                         call               _jmp_addr_0x006167f0                    // 0x0060b9a2    e849ae0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378ea4]  // 0x0060b9a7    8b0da4eed300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x378e9c]  // 0x0060b9ad    a19ceed300
                         add                esp, 0x08                               // 0x0060b9b2    83c408
                         inc                ecx                                     // 0x0060b9b5    41
                         cmp.s              edi, eax                                // 0x0060b9b6    3bf8
                         {disp32} mov       dword ptr [data_bytes + 0x378ea4], ecx  // 0x0060b9b8    890da4eed300
                         {disp8} je         _jmp_addr_0x0060b9e4                    // 0x0060b9be    7424
                         cmp                ebp, dword ptr [_DAT_00d3eee4]          // 0x0060b9c0    3b2de4eed300
                         {disp8} jne        _jmp_addr_0x0060b9e4                    // 0x0060b9c6    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]             // 0x0060b9c8    8b4c2418
                         cmp                ecx, dword ptr [edi + 0x0c]             // 0x0060b9cc    3b4f0c
                         .byte              0x72, 0x13// {disp8} jb _jmp_addr_0x0060b9e4 // 0x0060b9cf    7213
                         {disp8} mov        dword ptr [edi + 0x08], esi             // 0x0060b9d1    897708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378e9c]  // 0x0060b9d4    8b0d9ceed300
                         cmp                edi, dword ptr [ecx + 0x08]             // 0x0060b9da    3b7908
                         {disp8} jne        _jmp_addr_0x0060ba0a                    // 0x0060b9dd    752b
                         {disp8} mov        dword ptr [ecx + 0x08], esi             // 0x0060b9df    897108
                         {disp8} jmp        _jmp_addr_0x0060ba04                    // 0x0060b9e2    eb20
_jmp_addr_0x0060b9e4:    mov                dword ptr [edi], esi                    // 0x0060b9e4    8937
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x378e9c]  // 0x0060b9e6    8b0d9ceed300
                         cmp.s              edi, ecx                                // 0x0060b9ec    3bf9
                         {disp8} jne        _jmp_addr_0x0060b9fe                    // 0x0060b9ee    750e
                         {disp8} mov        dword ptr [ecx + 0x04], esi             // 0x0060b9f0    897104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x378e9c]  // 0x0060b9f3    8b159ceed300
                         {disp8} mov        dword ptr [edx + 0x08], esi             // 0x0060b9f9    897208
                         {disp8} jmp        _jmp_addr_0x0060ba04                    // 0x0060b9fc    eb06
_jmp_addr_0x0060b9fe:    cmp                edi, dword ptr [ecx]                    // 0x0060b9fe    3b39
                         {disp8} jne        _jmp_addr_0x0060ba0a                    // 0x0060ba00    7508
                         mov                dword ptr [ecx], esi                    // 0x0060ba02    8931
_jmp_addr_0x0060ba04:    {disp32} mov       ecx, dword ptr [data_bytes + 0x378e9c]  // 0x0060ba04    8b0d9ceed300
_jmp_addr_0x0060ba0a:    cmp                esi, dword ptr [ecx + 0x04]             // 0x0060ba0a    3b7104
                         mov                edi, 0x00000001                         // 0x0060ba0d    bf01000000
                         {disp32} je        _jmp_addr_0x0060badf                    // 0x0060ba12    0f84c7000000
_jmp_addr_0x0060ba18:    {disp8} mov        eax, dword ptr [esi + 0x04]             // 0x0060ba18    8b4604
                         cmp                dword ptr [eax + 0x10], ebx             // 0x0060ba1b    395810
                         {disp32} jne       _jmp_addr_0x0060badf                    // 0x0060ba1e    0f85bb000000
                         {disp8} mov        edx, dword ptr [eax + 0x04]             // 0x0060ba24    8b5004
                         mov                ecx, dword ptr [edx]                    // 0x0060ba27    8b0a
                         cmp.s              eax, ecx                                // 0x0060ba29    3bc1
                         {disp8} jne        _jmp_addr_0x0060ba83                    // 0x0060ba2b    7556
                         {disp8} mov        ecx, dword ptr [edx + 0x08]             // 0x0060ba2d    8b4a08
                         cmp                dword ptr [ecx + 0x10], ebx             // 0x0060ba30    395910
                         {disp8} jne        _jmp_addr_0x0060ba4f                    // 0x0060ba33    751a
                         {disp8} mov        dword ptr [eax + 0x10], edi             // 0x0060ba35    897810
                         {disp8} mov        dword ptr [ecx + 0x10], edi             // 0x0060ba38    897910
                         {disp8} mov        eax, dword ptr [esi + 0x04]             // 0x0060ba3b    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x04]             // 0x0060ba3e    8b4804
                         {disp8} mov        dword ptr [ecx + 0x10], ebx             // 0x0060ba41    895910
                         {disp8} mov        edx, dword ptr [esi + 0x04]             // 0x0060ba44    8b5604
                         {disp8} mov        esi, dword ptr [edx + 0x04]             // 0x0060ba47    8b7204
                         {disp32} jmp       _jmp_addr_0x0060bad0                    // 0x0060ba4a    e981000000
_jmp_addr_0x0060ba4f:    cmp                esi, dword ptr [eax + 0x08]             // 0x0060ba4f    3b7008
                         {disp8} jne        _jmp_addr_0x0060ba61                    // 0x0060ba52    750d
                         mov.s              esi, eax                                // 0x0060ba54    8bf0
                         push               esi                                     // 0x0060ba56    56
                         mov                ecx, 0x00d3ee98                         // 0x0060ba57    b998eed300
                         call               _jmp_addr_0x00613690                    // 0x0060ba5c    e82f7c0000
_jmp_addr_0x0060ba61:    {disp8} mov        eax, dword ptr [esi + 0x04]             // 0x0060ba61    8b4604
                         {disp8} mov        dword ptr [eax + 0x10], edi             // 0x0060ba64    897810
                         {disp8} mov        ecx, dword ptr [esi + 0x04]             // 0x0060ba67    8b4e04
                         {disp8} mov        edx, dword ptr [ecx + 0x04]             // 0x0060ba6a    8b5104
                         {disp8} mov        dword ptr [edx + 0x10], ebx             // 0x0060ba6d    895a10
                         {disp8} mov        eax, dword ptr [esi + 0x04]             // 0x0060ba70    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x04]             // 0x0060ba73    8b4804
                         push               ecx                                     // 0x0060ba76    51
                         mov                ecx, 0x00d3ee98                         // 0x0060ba77    b998eed300
                         call               _jmp_addr_0x006136f0                    // 0x0060ba7c    e86f7c0000
                         {disp8} jmp        _jmp_addr_0x0060bad0                    // 0x0060ba81    eb4d
_jmp_addr_0x0060ba83:    cmp                dword ptr [ecx + 0x10], ebx             // 0x0060ba83    395910
                         {disp8} jne        _jmp_addr_0x0060ba9f                    // 0x0060ba86    7517
                         {disp8} mov        dword ptr [eax + 0x10], edi             // 0x0060ba88    897810
                         {disp8} mov        dword ptr [ecx + 0x10], edi             // 0x0060ba8b    897910
                         {disp8} mov        edx, dword ptr [esi + 0x04]             // 0x0060ba8e    8b5604
                         {disp8} mov        eax, dword ptr [edx + 0x04]             // 0x0060ba91    8b4204
                         {disp8} mov        dword ptr [eax + 0x10], ebx             // 0x0060ba94    895810
                         {disp8} mov        ecx, dword ptr [esi + 0x04]             // 0x0060ba97    8b4e04
                         {disp8} mov        esi, dword ptr [ecx + 0x04]             // 0x0060ba9a    8b7104
                         {disp8} jmp        _jmp_addr_0x0060bad0                    // 0x0060ba9d    eb31
_jmp_addr_0x0060ba9f:    cmp                esi, dword ptr [eax]                    // 0x0060ba9f    3b30
                         {disp8} jne        _jmp_addr_0x0060bab0                    // 0x0060baa1    750d
                         mov.s              esi, eax                                // 0x0060baa3    8bf0
                         push               esi                                     // 0x0060baa5    56
                         mov                ecx, 0x00d3ee98                         // 0x0060baa6    b998eed300
                         call               _jmp_addr_0x006136f0                    // 0x0060baab    e8407c0000
_jmp_addr_0x0060bab0:    {disp8} mov        edx, dword ptr [esi + 0x04]             // 0x0060bab0    8b5604
                         {disp8} mov        dword ptr [edx + 0x10], edi             // 0x0060bab3    897a10
                         {disp8} mov        eax, dword ptr [esi + 0x04]             // 0x0060bab6    8b4604
                         {disp8} mov        ecx, dword ptr [eax + 0x04]             // 0x0060bab9    8b4804
                         {disp8} mov        dword ptr [ecx + 0x10], ebx             // 0x0060babc    895910
                         {disp8} mov        edx, dword ptr [esi + 0x04]             // 0x0060babf    8b5604
                         {disp8} mov        eax, dword ptr [edx + 0x04]             // 0x0060bac2    8b4204
                         push               eax                                     // 0x0060bac5    50
                         mov                ecx, 0x00d3ee98                         // 0x0060bac6    b998eed300
                         call               _jmp_addr_0x00613690                    // 0x0060bacb    e8c07b0000
_jmp_addr_0x0060bad0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x378e9c]  // 0x0060bad0    8b0d9ceed300
                         cmp                esi, dword ptr [ecx + 0x04]             // 0x0060bad6    3b7104
                         {disp32} jne       _jmp_addr_0x0060ba18                    // 0x0060bad9    0f8539ffffff
_jmp_addr_0x0060badf:    {disp8} mov        ecx, dword ptr [ecx + 0x04]             // 0x0060badf    8b4904
                         {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x0060bae2    8b442414
                         {disp8} mov        dword ptr [ecx + 0x10], edi             // 0x0060bae6    897910
                         pop                edi                                     // 0x0060bae9    5f
                         pop                esi                                     // 0x0060baea    5e
                         pop                ebp                                     // 0x0060baeb    5d
                         pop                ebx                                     // 0x0060baec    5b
                         add                esp, 0x6c                               // 0x0060baed    83c46c
                         ret                                                        // 0x0060baf0    c3
_jmp_addr_0x0060baf1:    test               al, al                                  // 0x0060baf1    84c0
                         {disp8} mov        dword ptr [esp + 0x24], edi             // 0x0060baf3    897c2424
                         {disp8} je         _jmp_addr_0x0060bb28                    // 0x0060baf7    742f
                         cmp                edi, dword ptr [ecx]                    // 0x0060baf9    3b39
                         {disp8} jne        _jmp_addr_0x0060bb1f                    // 0x0060bafb    7522
                         {disp8} lea        edx, dword ptr [esp + 0x18]             // 0x0060bafd    8d542418
                         push               edx                                     // 0x0060bb01    52
                         push               edi                                     // 0x0060bb02    57
                         push               ebp                                     // 0x0060bb03    55
                         {disp8} lea        eax, dword ptr [esp + 0x60]             // 0x0060bb04    8d442460
                         push               eax                                     // 0x0060bb08    50
                         mov                ecx, 0x00d3ee98                         // 0x0060bb09    b998eed300
                         call               _jmp_addr_0x00613410                    // 0x0060bb0e    e8fd780000
                         {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x0060bb13    8b442414
                         pop                edi                                     // 0x0060bb17    5f
                         pop                esi                                     // 0x0060bb18    5e
                         pop                ebp                                     // 0x0060bb19    5d
                         pop                ebx                                     // 0x0060bb1a    5b
                         add                esp, 0x6c                               // 0x0060bb1b    83c46c
                         ret                                                        // 0x0060bb1e    c3
_jmp_addr_0x0060bb1f:    {disp8} lea        ecx, dword ptr [esp + 0x24]             // 0x0060bb1f    8d4c2424
                         call               _jmp_addr_0x00614630                    // 0x0060bb23    e8088b0000
_jmp_addr_0x0060bb28:    {disp8} mov        edx, dword ptr [esp + 0x24]             // 0x0060bb28    8b542424
                         {disp8} mov        ecx, dword ptr [esp + 0x18]             // 0x0060bb2c    8b4c2418
                         cmp                dword ptr [edx + 0x0c], ecx             // 0x0060bb30    394a0c
                         {disp8} jae        _jmp_addr_0x0060bb57                    // 0x0060bb33    7322
                         {disp8} lea        eax, dword ptr [esp + 0x18]             // 0x0060bb35    8d442418
                         push               eax                                     // 0x0060bb39    50
                         push               edi                                     // 0x0060bb3a    57
                         push               ebp                                     // 0x0060bb3b    55
                         {disp8} lea        ecx, dword ptr [esp + 0x60]             // 0x0060bb3c    8d4c2460
                         push               ecx                                     // 0x0060bb40    51
                         mov                ecx, 0x00d3ee98                         // 0x0060bb41    b998eed300
                         call               _jmp_addr_0x00613410                    // 0x0060bb46    e8c5780000
                         {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x0060bb4b    8b442414
                         pop                edi                                     // 0x0060bb4f    5f
                         pop                esi                                     // 0x0060bb50    5e
                         pop                ebp                                     // 0x0060bb51    5d
                         pop                ebx                                     // 0x0060bb52    5b
                         add                esp, 0x6c                               // 0x0060bb53    83c46c
                         ret                                                        // 0x0060bb56    c3
_jmp_addr_0x0060bb57:    {disp8} lea        edx, dword ptr [esp + 0x13]             // 0x0060bb57    8d542413
                         push               edx                                     // 0x0060bb5b    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]             // 0x0060bb5c    8d442428
                         push               eax                                     // 0x0060bb60    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]             // 0x0060bb61    8d4c2454
                         {disp8} mov        byte ptr [esp + 0x1b], 0x00             // 0x0060bb65    c644241b00
                         call               _jmp_addr_0x00611f40                    // 0x0060bb6a    e8d1630000
_jmp_addr_0x0060bb6f:    {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x0060bb6f    8b442414
                         pop                edi                                     // 0x0060bb73    5f
                         pop                esi                                     // 0x0060bb74    5e
                         pop                ebp                                     // 0x0060bb75    5d
                         pop                ebx                                     // 0x0060bb76    5b
                         add                esp, 0x6c                               // 0x0060bb77    83c46c
                         ret                                                        // 0x0060bb7a    c3

// Snippet: db, [0x0060bb7b, 0x0060bb7c)
.byte 0x90                        // 0x0060bb7b

// Snippet: jmptbl, [0x0060bb7c, 0x0060bba4)
.byte 0xc0, 0xaf, 0x60, 0x00      // 0x0060bb7c
.byte 0x6c, 0xaf, 0x60, 0x00      // 0x0060bb80
.byte 0x56, 0xaf, 0x60, 0x00      // 0x0060bb84
.byte 0x6f, 0xbb, 0x60, 0x00      // 0x0060bb88
.byte 0x2a, 0xb0, 0x60, 0x00      // 0x0060bb8c
.byte 0x95, 0xb0, 0x60, 0x00      // 0x0060bb90
.byte 0xe4, 0xb0, 0x60, 0x00      // 0x0060bb94
.byte 0x0e, 0xb4, 0x60, 0x00      // 0x0060bb98
.byte 0x8f, 0xb7, 0x60, 0x00      // 0x0060bb9c
.byte 0xbc, 0xb8, 0x60, 0x00      // 0x0060bba0

// Snippet: ijmptbl, [0x0060bba4, 0x0060bbb6)
.byte 0x00, 0x09, 0x09, 0x01      // 0x0060bba4
.byte 0x02, 0x09, 0x09, 0x09      // 0x0060bba8
.byte 0x09, 0x03, 0x04, 0x05      // 0x0060bbac
.byte 0x05, 0x05, 0x06, 0x07      // 0x0060bbb0
.byte 0x08, 0x08                  // 0x0060bbb4

// Snippet: db, [0x0060bbb6, 0x0060bbc0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060bbb6
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060bbba
.byte 0x90, 0x90                  // 0x0060bbbe

