.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0MapCoords@@QAE@XZ
.extern ?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00601bc0
.extern @__ct__9MapCoordsFllf@20
.extern _jmp_addr_0x006033b0
.extern ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ
.extern ?Save@Mobile@@UAEIAAVGameOSFile@@@Z
.extern ?Load@Mobile@@UAEIAAVGameOSFile@@@Z
.extern _jmp_addr_0x0060a450
.extern _jmp_addr_0x0060a5e0
.extern ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ
.extern @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17
.extern @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16
.extern _jmp_addr_0x0060d520
.extern @SetGameAngle__13MobileWallHugFUs@10
.extern _jmp_addr_0x0060fee0
.extern _jmp_addr_0x00610010
.extern _jmp_addr_0x00610490
.extern @DotProduct__7Point2DRP7Point2D@12
.extern ?GetNormSq@Point2D@@QAEMXZ
.extern @InBounds__4GMapCFll@16
.extern ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z
.extern @find_or_insert__std__map__SubCollideBlockPosPNewCollide3Obj@16
.extern @find__std__map__SubCollideBlockPosPNewCollide3Obj@16
.extern _jmp_addr_0x00616750
.extern _jmp_addr_0x006167a0
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007370b0
.extern _jmp_addr_0x0074cd50
.extern ?GetAngleFromDXDZ@GUtils@@SAGJJ@Z
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z
.extern _jmp_addr_0x0074dce0
.extern _jmp_addr_0x0074e2b0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @__ct__Q210NewCollide3ObjFfP7LHPoint@16

.globl _jmp_addr_0x0060bbc0
.globl _jmp_addr_0x0060bd00
.globl _jmp_addr_0x0060bf90
.globl ?InitStepsXZ@MobileWallHug@@QAEXXZ
.globl _jmp_addr_0x0060c000
.globl _jmp_addr_0x0060c110
.globl _jmp_addr_0x0060c180
.globl _jmp_addr_0x0060c1a0
.globl _jmp_addr_0x0060c200
.globl _jmp_addr_0x0060c3f0
.globl ?Save@MobileWallHug@@UAEIAAVGameOSFile@@@Z
.globl ?Load@MobileWallHug@@UAEIAAVGameOSFile@@@Z
.globl @MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12
.globl @Init__20ObjectCircleIteratorFiRC9MapCoords@16

.globl _globl_ct_0x0060c1c0
.globl _globl_ct_0x0060c1e0
.globl ?SetNewWander@MobileWallHug@@UAEXABUMapCoords@@HH@Z
.globl ?GetFacingDirection@MobileWallHug@@UAEMXZ
.globl ?GetMovementDirection@MobileWallHug@@UAEXPAULHPoint@@@Z
.globl ?GetSpeedInMetres@MobileWallHug@@UBEMXZ
.globl ?SetSpeedInMetres@MobileWallHug@@UAEXMH@Z
.globl ?GetRunningSpeedInMetres@MobileWallHug@@UAEMXZ
.globl ?GetDefaultSpeedInMetres@MobileWallHug@@UAEMXZ
.globl ?GetSpeedInMetresPerSecond@MobileWallHug@@UBEMXZ
.globl ?GetRunningSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ
.globl ?GetDefaultSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ

start_0x0060bbc0_0x0060d280:
// Snippet: asm, [0x0060bbc0, 0x0060d252)
_jmp_addr_0x0060bbc0:    sub                esp, 0x0c                                     // 0x0060bbc0    83ec0c
                         push               esi                                           // 0x0060bbc3    56
                         mov.s              esi, ecx                                      // 0x0060bbc4    8bf1
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0060bbc6    8d4614
                         mov                ecx, dword ptr [eax]                          // 0x0060bbc9    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060bbcb    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0060bbce    8b4008
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0060bbd1    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0060bbd5    89542408
                         mov                edx, dword ptr [esi]                          // 0x0060bbd9    8b16
                         push               edi                                           // 0x0060bbdb    57
                         mov.s              ecx, esi                                      // 0x0060bbdc    8bce
                         mov                edi, 0x00000001                               // 0x0060bbde    bf01000000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060bbe3    89442410
                         call               dword ptr [edx + 0x860]                       // 0x0060bbe7    ff9260080000
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x0060bbed    8b4664
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0060bbf0    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0060bbf4    8b54240c
                         add.s              ecx, eax                                      // 0x0060bbf8    03c8
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0060bbfa    894c2408
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0060bbfe    8b4e6c
                         add.s              edx, ecx                                      // 0x0060bc01    03d1
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0060bc03    8d442408
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0060bc07    8954240c
                         mov                edx, dword ptr [esi]                          // 0x0060bc0b    8b16
                         push               eax                                           // 0x0060bc0d    50
                         mov.s              ecx, esi                                      // 0x0060bc0e    8bce
                         call               dword ptr [edx + 0x55c]                       // 0x0060bc10    ff925c050000
                         cmp                eax, 0x07                                     // 0x0060bc16    83f807
                         mov                eax, 0x00000007                               // 0x0060bc19    b807000000
                         {disp8} je         _jmp_addr_0x0060bc22                          // 0x0060bc1e    7402
                         mov.s              eax, edi                                      // 0x0060bc20    8bc7
_jmp_addr_0x0060bc22:    pop                edi                                           // 0x0060bc22    5f
                         pop                esi                                           // 0x0060bc23    5e
                         add                esp, 0x0c                                     // 0x0060bc24    83c40c
                         ret                                                              // 0x0060bc27    c3
                         nop                                                              // 0x0060bc28    90
                         nop                                                              // 0x0060bc29    90
                         nop                                                              // 0x0060bc2a    90
                         nop                                                              // 0x0060bc2b    90
                         nop                                                              // 0x0060bc2c    90
                         nop                                                              // 0x0060bc2d    90
                         nop                                                              // 0x0060bc2e    90
                         nop                                                              // 0x0060bc2f    90
                         mov                eax, 0x00000001                               // 0x0060bc30    b801000000
                         ret                                                              // 0x0060bc35    c3
                         nop                                                              // 0x0060bc36    90
                         nop                                                              // 0x0060bc37    90
                         nop                                                              // 0x0060bc38    90
                         nop                                                              // 0x0060bc39    90
                         nop                                                              // 0x0060bc3a    90
                         nop                                                              // 0x0060bc3b    90
                         nop                                                              // 0x0060bc3c    90
                         nop                                                              // 0x0060bc3d    90
                         nop                                                              // 0x0060bc3e    90
                         nop                                                              // 0x0060bc3f    90
?SetNewWander@MobileWallHug@@UAEXABUMapCoords@@HH@Z:
                         push               ebx                                           // 0x0060bc40    53
                         push               ebp                                           // 0x0060bc41    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x0060bc42    8b6c240c
                         push               esi                                           // 0x0060bc46    56
                         xor.s              ebx, ebx                                      // 0x0060bc47    33db
                         test               ebp, ebp                                      // 0x0060bc49    85ed
                         mov.s              esi, ecx                                      // 0x0060bc4b    8bf1
                         {disp8} mov        bx, word ptr [esi + 0x5c]                     // 0x0060bc4d    668b5e5c
                         push               edi                                           // 0x0060bc51    57
                         {disp8} je         _jmp_addr_0x0060bc91                          // 0x0060bc52    743d
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0060bc54    8d7e14
                         push               edi                                           // 0x0060bc57    57
                         push               ebp                                           // 0x0060bc58    55
                         call               _jmp_addr_0x0074cd50                          // 0x0060bc59    e8f2101400
                         add                esp, 0x08                                     // 0x0060bc5e    83c408
                         call               _jmp_addr_0x007a1400                          // 0x0060bc61    e89a571900
                         cmp                eax, dword ptr [esp + 0x1c]                   // 0x0060bc66    3b44241c
                         {disp8} jle        _jmp_addr_0x0060bc78                          // 0x0060bc6a    7e0c
                         push               ebp                                           // 0x0060bc6c    55
                         push               edi                                           // 0x0060bc6d    57
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x0060bc6e    e8cd151400
                         add                esp, 0x08                                     // 0x0060bc73    83c408
                         {disp8} jmp        _jmp_addr_0x0060bcac                          // 0x0060bc76    eb34
_jmp_addr_0x0060bc78:    cmp                eax, dword ptr [esp + 0x18]                   // 0x0060bc78    3b442418
                         {disp8} jge        _jmp_addr_0x0060bc8a                          // 0x0060bc7c    7d0c
                         push               edi                                           // 0x0060bc7e    57
                         push               ebp                                           // 0x0060bc7f    55
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x0060bc80    e8bb151400
                         add                esp, 0x08                                     // 0x0060bc85    83c408
                         {disp8} jmp        _jmp_addr_0x0060bcac                          // 0x0060bc88    eb22
_jmp_addr_0x0060bc8a:    push               0x00000438                                    // 0x0060bc8a    6838040000
                         {disp8} jmp        _jmp_addr_0x0060bc96                          // 0x0060bc8f    eb05
_jmp_addr_0x0060bc91:    push               0x0000043d                                    // 0x0060bc91    683d040000
_jmp_addr_0x0060bc96:    push               0x00bf42a4                                    // 0x0060bc96    68a442bf00
                         push               0x00000080                                    // 0x0060bc9b    6880000000
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0060bca0    e86b280d00
                         add                esp, 0x0c                                     // 0x0060bca5    83c40c
                         {disp8} lea        eax, dword ptr [ebx + eax * 0x1 + -0x40]      // 0x0060bca8    8d4403c0
_jmp_addr_0x0060bcac:    mov                edx, dword ptr [esi]                          // 0x0060bcac    8b16
                         and                eax, 0x000007ff                               // 0x0060bcae    25ff070000
                         push               eax                                           // 0x0060bcb3    50
                         mov.s              ecx, esi                                      // 0x0060bcb4    8bce
                         call               dword ptr [edx + 0x868]                       // 0x0060bcb6    ff9268080000
                         xor.s              edx, edx                                      // 0x0060bcbc    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]                     // 0x0060bcbe    668b565c
                         xor.s              eax, eax                                      // 0x0060bcc2    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]                     // 0x0060bcc4    668b465a
                         pop                edi                                           // 0x0060bcc8    5f
                         shl                edx, 2                                        // 0x0060bcc9    c1e202
                         {disp32} mov       ecx, dword ptr [edx + _sin_lookup_table]      // 0x0060bccc    8b8a1416c300
                         {disp32} mov       edx, dword ptr [edx + _cos_lookup_table]      // 0x0060bcd2    8b92141ec300
                         shr                eax, 4                                        // 0x0060bcd8    c1e804
                         imul               ecx, eax                                      // 0x0060bcdb    0fafc8
                         imul               edx, eax                                      // 0x0060bcde    0fafd0
                         sar                ecx, 0xc                                      // 0x0060bce1    c1f90c
                         sar                edx, 0xc                                      // 0x0060bce4    c1fa0c
                         {disp8} mov        dword ptr [esi + 0x64], edx                   // 0x0060bce7    895664
                         {disp8} mov        dword ptr [esi + 0x6c], ecx                   // 0x0060bcea    894e6c
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000            // 0x0060bced    c7466800000000
                         pop                esi                                           // 0x0060bcf4    5e
                         pop                ebp                                           // 0x0060bcf5    5d
                         pop                ebx                                           // 0x0060bcf6    5b
                         ret                0x000c                                        // 0x0060bcf7    c20c00
                         call               dword ptr [__imp__DirectDrawCreate@4]         // 0x0060bcfa    ff152c908a00
_jmp_addr_0x0060bd00:    sub                esp, 0x08                                     // 0x0060bd00    83ec08
                         push               esi                                           // 0x0060bd03    56
                         push               edi                                           // 0x0060bd04    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0060bd05    8d442408
                         mov.s              esi, ecx                                      // 0x0060bd09    8bf1
                         push               eax                                           // 0x0060bd0b    50
                         call               _jmp_addr_0x0060bea0                          // 0x0060bd0c    e88f010000
                         mov.s              edi, eax                                      // 0x0060bd11    8bf8
                         cmp                edi, 0x07                                     // 0x0060bd13    83ff07
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0060bd16    897c240c
                         {disp8} jne        _jmp_addr_0x0060bd3f                          // 0x0060bd1a    7523
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0060bd1c    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0060bd20    8b4c2418
                         mov                edx, dword ptr [esi]                          // 0x0060bd24    8b16
                         push               eax                                           // 0x0060bd26    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0060bd27    8b442418
                         push               ecx                                           // 0x0060bd2b    51
                         push               eax                                           // 0x0060bd2c    50
                         mov.s              ecx, esi                                      // 0x0060bd2d    8bce
                         call               dword ptr [edx + 0x870]                       // 0x0060bd2f    ff9270080000
_jmp_addr_0x0060bd35:    mov.s              eax, edi                                      // 0x0060bd35    8bc7
                         pop                edi                                           // 0x0060bd37    5f
                         pop                esi                                           // 0x0060bd38    5e
                         add                esp, 0x08                                     // 0x0060bd39    83c408
                         ret                0x000c                                        // 0x0060bd3c    c20c00
_jmp_addr_0x0060bd3f:    cmp                edi, 0x08                                     // 0x0060bd3f    83ff08
                         {disp8} jne        _jmp_addr_0x0060bd35                          // 0x0060bd42    75f1
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060bd44    8b442408
                         push               ebx                                           // 0x0060bd48    53
                         xor.s              ebx, ebx                                      // 0x0060bd49    33db
                         {disp8} mov        bx, word ptr [esi + 0x1a]                     // 0x0060bd4b    668b5e1a
                         xor.s              edx, edx                                      // 0x0060bd4f    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]                     // 0x0060bd51    668b565c
                         mov.s              ecx, eax                                      // 0x0060bd55    8bc8
                         xor.s              edi, edi                                      // 0x0060bd57    33ff
                         {disp8} mov        di, word ptr [esi + 0x16]                     // 0x0060bd59    668b7e16
                         shl                ecx, 9                                        // 0x0060bd5d    c1e109
                         push               ebp                                           // 0x0060bd60    55
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0060bd61    895c2420
                         sub.s              edx, ecx                                      // 0x0060bd65    2bd1
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0060bd67    c744242400000000
                         {disp8} jns        _jmp_addr_0x0060bdda                          // 0x0060bd6f    7969
_jmp_addr_0x0060bd71:    {disp32} mov       ebp, dword ptr [_game]                        // 0x0060bd71    8b2d5c19d000
                         dec                eax                                           // 0x0060bd77    48
                         and                eax, 0x03                                     // 0x0060bd78    83e003
                         {disp32} mov       dx, word ptr [eax * 0x4 + _JustMapXZ_ARRAY_00da59fc]         // 0x0060bd7b    668b1485fc59da00
                         movsx              ecx, dx                                       // 0x0060bd83    0fbfca
                         add.s              ecx, edi                                      // 0x0060bd86    03cf
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060bd88    89442410
                         cmp                ecx, dword ptr [ebp + 0x000059c8]             // 0x0060bd8c    3b8dc8590000
                         {disp8} jae        _jmp_addr_0x0060bdca                          // 0x0060bd92    7336
                         xor.s              ecx, ecx                                      // 0x0060bd94    33c9
                         {disp32} mov       cx, word ptr [eax * 0x4 + 0x00da59fe]         // 0x0060bd96    668b0c85fe59da00
                         movsx              ebp, cx                                       // 0x0060bd9e    0fbfe9
                         add.s              ebp, ebx                                      // 0x0060bda1    03eb
                         {disp32} mov       ebx, dword ptr [_game]                        // 0x0060bda3    8b1d5c19d000
                         cmp                ebp, dword ptr [ebx + 0x000059c4]             // 0x0060bda9    3babc4590000
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0060bdaf    8b5c2420
                         {disp8} jae        _jmp_addr_0x0060bdca                          // 0x0060bdb3    7315
                         add.s              ecx, ebx                                      // 0x0060bdb5    03cb
                         push               ecx                                           // 0x0060bdb7    51
                         add.s              edx, edi                                      // 0x0060bdb8    03d7
                         push               edx                                           // 0x0060bdba    52
                         mov.s              ecx, esi                                      // 0x0060bdbb    8bce
                         call               _jmp_addr_0x0060bef0                          // 0x0060bdbd    e82e010000
                         test               eax, eax                                      // 0x0060bdc2    85c0
                         {disp8} je         _jmp_addr_0x0060be43                          // 0x0060bdc4    747d
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060bdc6    8b442410
_jmp_addr_0x0060bdca:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0060bdca    8b4c2424
                         inc                ecx                                           // 0x0060bdce    41
                         cmp                ecx, 0x03                                     // 0x0060bdcf    83f903
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0060bdd2    894c2424
                         {disp8} jl         _jmp_addr_0x0060bd71                          // 0x0060bdd6    7c99
                         {disp8} jmp        _jmp_addr_0x0060be47                          // 0x0060bdd8    eb6d
_jmp_addr_0x0060bdda:    {disp32} mov       ebp, dword ptr [_game]                        // 0x0060bdda    8b2d5c19d000
                         inc                eax                                           // 0x0060bde0    40
                         and                eax, 0x03                                     // 0x0060bde1    83e003
                         {disp32} mov       dx, word ptr [eax * 0x4 + _JustMapXZ_ARRAY_00da59fc]         // 0x0060bde4    668b1485fc59da00
                         movsx              ecx, dx                                       // 0x0060bdec    0fbfca
                         add.s              ecx, edi                                      // 0x0060bdef    03cf
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0060bdf1    89442410
                         cmp                ecx, dword ptr [ebp + 0x000059c8]             // 0x0060bdf5    3b8dc8590000
                         {disp8} jae        _jmp_addr_0x0060be33                          // 0x0060bdfb    7336
                         xor.s              ecx, ecx                                      // 0x0060bdfd    33c9
                         {disp32} mov       cx, word ptr [eax * 0x4 + 0x00da59fe]         // 0x0060bdff    668b0c85fe59da00
                         movsx              ebp, cx                                       // 0x0060be07    0fbfe9
                         add.s              ebp, ebx                                      // 0x0060be0a    03eb
                         {disp32} mov       ebx, dword ptr [_game]                        // 0x0060be0c    8b1d5c19d000
                         cmp                ebp, dword ptr [ebx + 0x000059c4]             // 0x0060be12    3babc4590000
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0060be18    8b5c2420
                         {disp8} jae        _jmp_addr_0x0060be33                          // 0x0060be1c    7315
                         add.s              ecx, ebx                                      // 0x0060be1e    03cb
                         push               ecx                                           // 0x0060be20    51
                         add.s              edx, edi                                      // 0x0060be21    03d7
                         push               edx                                           // 0x0060be23    52
                         mov.s              ecx, esi                                      // 0x0060be24    8bce
                         call               _jmp_addr_0x0060bef0                          // 0x0060be26    e8c5000000
                         test               eax, eax                                      // 0x0060be2b    85c0
                         {disp8} je         _jmp_addr_0x0060be43                          // 0x0060be2d    7414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060be2f    8b442410
_jmp_addr_0x0060be33:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0060be33    8b4c2424
                         inc                ecx                                           // 0x0060be37    41
                         cmp                ecx, 0x03                                     // 0x0060be38    83f903
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0060be3b    894c2424
                         {disp8} jl         _jmp_addr_0x0060bdda                          // 0x0060be3f    7c99
                         {disp8} jmp        _jmp_addr_0x0060be47                          // 0x0060be41    eb04
_jmp_addr_0x0060be43:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060be43    8b442410
_jmp_addr_0x0060be47:    shl                eax, 9                                        // 0x0060be47    c1e009
                         push               eax                                           // 0x0060be4a    50
                         mov.s              ecx, esi                                      // 0x0060be4b    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10          // 0x0060be4d    e83e1c0000
                         xor.s              edx, edx                                      // 0x0060be52    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]                     // 0x0060be54    668b565c
                         xor.s              eax, eax                                      // 0x0060be58    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]                     // 0x0060be5a    668b465a
                         pop                ebp                                           // 0x0060be5e    5d
                         pop                ebx                                           // 0x0060be5f    5b
                         pop                edi                                           // 0x0060be60    5f
                         shl                edx, 2                                        // 0x0060be61    c1e202
                         {disp32} mov       ecx, dword ptr [edx + _sin_lookup_table]      // 0x0060be64    8b8a1416c300
                         {disp32} mov       edx, dword ptr [edx + _cos_lookup_table]      // 0x0060be6a    8b92141ec300
                         shr                eax, 4                                        // 0x0060be70    c1e804
                         imul               ecx, eax                                      // 0x0060be73    0fafc8
                         imul               edx, eax                                      // 0x0060be76    0fafd0
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060be79    8b442408
                         sar                ecx, 0xc                                      // 0x0060be7d    c1f90c
                         sar                edx, 0xc                                      // 0x0060be80    c1fa0c
                         {disp8} mov        dword ptr [esi + 0x64], edx                   // 0x0060be83    895664
                         {disp8} mov        dword ptr [esi + 0x6c], ecx                   // 0x0060be86    894e6c
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000            // 0x0060be89    c7466800000000
                         pop                esi                                           // 0x0060be90    5e
                         add                esp, 0x08                                     // 0x0060be91    83c408
                         ret                0x000c                                        // 0x0060be94    c20c00
                         nop                                                              // 0x0060be97    90
                         nop                                                              // 0x0060be98    90
                         nop                                                              // 0x0060be99    90
                         nop                                                              // 0x0060be9a    90
                         nop                                                              // 0x0060be9b    90
                         nop                                                              // 0x0060be9c    90
                         nop                                                              // 0x0060be9d    90
                         nop                                                              // 0x0060be9e    90
                         nop                                                              // 0x0060be9f    90
_jmp_addr_0x0060bea0:    sub                esp, 0x0c                                     // 0x0060bea0    83ec0c
                         push               esi                                           // 0x0060bea3    56
                         mov.s              esi, ecx                                      // 0x0060bea4    8bf1
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0060bea6    8d4614
                         mov.s              edx, eax                                      // 0x0060bea9    8bd0
                         mov                eax, dword ptr [edx]                          // 0x0060beab    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0060bead    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0060beb0    8b5208
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0060beb3    8954240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0060beb7    d944240c
                         {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0060bebb    8b566c
                         push               ecx                                           // 0x0060bebe    51
                         add.s              edx, ecx                                      // 0x0060bebf    03d1
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x0060bec1    8b4e64
                         fstp               dword ptr [esp]                               // 0x0060bec4    d91c24
                         add.s              ecx, eax                                      // 0x0060bec7    03c8
                         push               edx                                           // 0x0060bec9    52
                         push               ecx                                           // 0x0060beca    51
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0060becb    8d4c2410
                         call               @__ct__9MapCoordsFllf@20                      // 0x0060becf    e8dc72ffff
                         mov                edx, dword ptr [esi]                          // 0x0060bed4    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0060bed6    8d442404
                         push               eax                                           // 0x0060beda    50
                         mov.s              ecx, esi                                      // 0x0060bedb    8bce
                         call               dword ptr [edx + 0x55c]                       // 0x0060bedd    ff925c050000
                         pop                esi                                           // 0x0060bee3    5e
                         add                esp, 0x0c                                     // 0x0060bee4    83c40c
                         ret                0x0004                                        // 0x0060bee7    c20400
                         call               dword ptr [__imp__DirectInputCreateA@4]       // 0x0060beea    ff1534908a00
_jmp_addr_0x0060bef0:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060bef0    8b4128
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0060bef3    8b4c2404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0060bef7    8b542408
                         push               esi                                           // 0x0060befb    56
                         {disp32} mov       esi, dword ptr [_game]                        // 0x0060befc    8b355c19d000
                         push               edi                                           // 0x0060bf02    57
                         {disp32} mov       edi, dword ptr [eax + 0x0000011c]             // 0x0060bf03    8bb81c010000
                         {disp32} mov       eax, dword ptr [esi + 0x000059c8]             // 0x0060bf09    8b86c8590000
                         and                ecx, 0x0000ffff                               // 0x0060bf0f    81e1ffff0000
                         and                edx, 0x0000ffff                               // 0x0060bf15    81e2ffff0000
                         cmp.s              ecx, eax                                      // 0x0060bf1b    3bc8
                         {disp8} jae        _jmp_addr_0x0060bf29                          // 0x0060bf1d    730a
                         {disp32} mov       eax, dword ptr [esi + 0x000059c4]             // 0x0060bf1f    8b86c4590000
                         cmp.s              edx, eax                                      // 0x0060bf25    3bd0
                         .byte              0x72, 0x8// {disp8} jb _jmp_addr_0x0060bf31   // 0x0060bf27    7208
_jmp_addr_0x0060bf29:    pop                edi                                           // 0x0060bf29    5f
                         or                 eax, -0x1                                     // 0x0060bf2a    83c8ff
                         pop                esi                                           // 0x0060bf2d    5e
                         ret                0x0008                                        // 0x0060bf2e    c20800
_jmp_addr_0x0060bf31:    imul               eax, ecx                                      // 0x0060bf31    0fafc1
                         add.s              eax, edx                                      // 0x0060bf34    03c2
                         {disp32} lea       ecx, dword ptr [esi + eax * 0x8 + 0x000059fc] // 0x0060bf36    8d8cc6fc590000
                         push               edi                                           // 0x0060bf3d    57
                         call               _jmp_addr_0x00601bc0                          // 0x0060bf3e    e87d5cffff
                         pop                edi                                           // 0x0060bf43    5f
                         pop                esi                                           // 0x0060bf44    5e
                         ret                0x0008                                        // 0x0060bf45    c20800
                         nop                                                              // 0x0060bf48    90
                         nop                                                              // 0x0060bf49    90
                         nop                                                              // 0x0060bf4a    90
                         nop                                                              // 0x0060bf4b    90
                         nop                                                              // 0x0060bf4c    90
                         nop                                                              // 0x0060bf4d    90
                         nop                                                              // 0x0060bf4e    90
                         nop                                                              // 0x0060bf4f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060bf50    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x0000011c]             // 0x0060bf53    8b801c010000
                         push               eax                                           // 0x0060bf59    50
                         add                ecx, 0x14                                     // 0x0060bf5a    83c114
                         call               _jmp_addr_0x006033b0                          // 0x0060bf5d    e84e74ffff
                         ret                                                              // 0x0060bf62    c3
                         nop                                                              // 0x0060bf63    90
                         nop                                                              // 0x0060bf64    90
                         nop                                                              // 0x0060bf65    90
                         nop                                                              // 0x0060bf66    90
                         nop                                                              // 0x0060bf67    90
                         nop                                                              // 0x0060bf68    90
                         nop                                                              // 0x0060bf69    90
                         nop                                                              // 0x0060bf6a    90
                         nop                                                              // 0x0060bf6b    90
                         nop                                                              // 0x0060bf6c    90
                         nop                                                              // 0x0060bf6d    90
                         nop                                                              // 0x0060bf6e    90
                         nop                                                              // 0x0060bf6f    90
                         call               _jmp_addr_0x0060bf90                          // 0x0060bf70    e81b000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0060bf75    8b4c2404
                         push               eax                                           // 0x0060bf79    50
                         call               _jmp_addr_0x006033b0                          // 0x0060bf7a    e83174ffff
                         ret                0x0004                                        // 0x0060bf7f    c20400
                         nop                                                              // 0x0060bf82    90
                         nop                                                              // 0x0060bf83    90
                         nop                                                              // 0x0060bf84    90
                         nop                                                              // 0x0060bf85    90
                         nop                                                              // 0x0060bf86    90
                         nop                                                              // 0x0060bf87    90
                         nop                                                              // 0x0060bf88    90
                         nop                                                              // 0x0060bf89    90
                         nop                                                              // 0x0060bf8a    90
                         nop                                                              // 0x0060bf8b    90
                         nop                                                              // 0x0060bf8c    90
                         nop                                                              // 0x0060bf8d    90
                         nop                                                              // 0x0060bf8e    90
                         nop                                                              // 0x0060bf8f    90
_jmp_addr_0x0060bf90:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060bf90    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x0000011c]             // 0x0060bf93    8b801c010000
                         ret                                                              // 0x0060bf99    c3
                         call               dword ptr [rdata_bytes + 0xe8]                // 0x0060bf9a    ff15e8908a00
?InitStepsXZ@MobileWallHug@@QAEXXZ:
                                      push               esi                                           // 0x0060bfa0    56
                         mov.s              esi, ecx                                      // 0x0060bfa1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0060bfa3    8b06
                         call               dword ptr [eax + 0x860]                       // 0x0060bfa5    ff9060080000
                         push               eax                                           // 0x0060bfab    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0060bfac    8d4e14
                         push               ecx                                           // 0x0060bfaf    51
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x0060bfb0    e88b121400
                         mov                edx, dword ptr [esi]                          // 0x0060bfb5    8b16
                         add                esp, 0x08                                     // 0x0060bfb7    83c408
                         push               eax                                           // 0x0060bfba    50
                         mov.s              ecx, esi                                      // 0x0060bfbb    8bce
                         call               dword ptr [edx + 0x868]                       // 0x0060bfbd    ff9268080000
                         xor.s              edx, edx                                      // 0x0060bfc3    33d2
                         {disp8} mov        dx, word ptr [esi + 0x5c]                     // 0x0060bfc5    668b565c
                         xor.s              eax, eax                                      // 0x0060bfc9    33c0
                         {disp8} mov        ax, word ptr [esi + 0x5a]                     // 0x0060bfcb    668b465a
                         shl                edx, 2                                        // 0x0060bfcf    c1e202
                         {disp32} mov       ecx, dword ptr [edx + _sin_lookup_table]      // 0x0060bfd2    8b8a1416c300
                         {disp32} mov       edx, dword ptr [edx + _cos_lookup_table]      // 0x0060bfd8    8b92141ec300
                         shr                eax, 4                                        // 0x0060bfde    c1e804
                         imul               ecx, eax                                      // 0x0060bfe1    0fafc8
                         imul               edx, eax                                      // 0x0060bfe4    0fafd0
                         sar                ecx, 0xc                                      // 0x0060bfe7    c1f90c
                         sar                edx, 0xc                                      // 0x0060bfea    c1fa0c
                         {disp8} mov        dword ptr [esi + 0x64], edx                   // 0x0060bfed    895664
                         {disp8} mov        dword ptr [esi + 0x6c], ecx                   // 0x0060bff0    894e6c
                         {disp8} mov        dword ptr [esi + 0x68], 0x00000000            // 0x0060bff3    c7466800000000
                         pop                esi                                           // 0x0060bffa    5e
                         ret                                                              // 0x0060bffb    c3
                         nop                                                              // 0x0060bffc    90
                         nop                                                              // 0x0060bffd    90
                         nop                                                              // 0x0060bffe    90
                         nop                                                              // 0x0060bfff    90
_jmp_addr_0x0060c000:    push               esi                                           // 0x0060c000    56
                         mov.s              esi, ecx                                      // 0x0060c001    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0060c003    8b466c
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x0060c006    8b4e64
                         push               eax                                           // 0x0060c009    50
                         push               ecx                                           // 0x0060c00a    51
                         call               ?GetAngleFromDXDZ@GUtils@@SAGJJ@Z             // 0x0060c00b    e8f0111400
                         add                esp, 0x08                                     // 0x0060c010    83c408
                         push               eax                                           // 0x0060c013    50
                         mov.s              ecx, esi                                      // 0x0060c014    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10          // 0x0060c016    e8751a0000
                         pop                esi                                           // 0x0060c01b    5e
                         ret                                                              // 0x0060c01c    c3
                         nop                                                              // 0x0060c01d    90
                         nop                                                              // 0x0060c01e    90
                         nop                                                              // 0x0060c01f    90
?GetFacingDirection@MobileWallHug@@UAEMXZ:
                         xor.s              eax, eax                                      // 0x0060c020    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x5c]                     // 0x0060c022    668b415c
                         push               eax                                           // 0x0060c026    50
                         call               _jmp_addr_0x0074e2b0                          // 0x0060c027    e884221400
                         pop                ecx                                           // 0x0060c02c    59
                         ret                                                              // 0x0060c02d    c3
                         nop                                                              // 0x0060c02e    90
                         nop                                                              // 0x0060c02f    90
                         mov                eax, 0x00000001                               // 0x0060c030    b801000000
                         ret                                                              // 0x0060c035    c3
                         nop                                                              // 0x0060c036    90
                         nop                                                              // 0x0060c037    90
                         nop                                                              // 0x0060c038    90
                         nop                                                              // 0x0060c039    90
                         nop                                                              // 0x0060c03a    90
                         nop                                                              // 0x0060c03b    90
                         nop                                                              // 0x0060c03c    90
                         nop                                                              // 0x0060c03d    90
                         nop                                                              // 0x0060c03e    90
                         nop                                                              // 0x0060c03f    90
?GetMovementDirection@MobileWallHug@@UAEXPAULHPoint@@@Z:
                         test               byte ptr [ecx + 0x24], 0x40                   // 0x0060c040    f6412440
                         {disp8} je         _jmp_addr_0x0060c056                          // 0x0060c044    7410
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0060c046    8b542404
                         mov                eax, dword ptr [ecx]                          // 0x0060c04a    8b01
                         push               edx                                           // 0x0060c04c    52
                         call               dword ptr [eax + 0x16c]                       // 0x0060c04d    ff906c010000
                         ret                0x0004                                        // 0x0060c053    c20400
_jmp_addr_0x0060c056:    {disp8} fild       dword ptr [ecx + 0x64]                        // 0x0060c056    db4164
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0060c059    8b442404
                         fstp               dword ptr [eax]                               // 0x0060c05d    d918
                         {disp8} fild       dword ptr [ecx + 0x6c]                        // 0x0060c05f    db416c
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0060c062    c7400400000000
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0060c069    d95808
                         ret                0x0004                                        // 0x0060c06c    c20400
                         nop                                                              // 0x0060c06f    90
?GetSpeedInMetres@MobileWallHug@@UBEMXZ:
                         xor.s              eax, eax                                      // 0x0060c070    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x5a]                     // 0x0060c072    668b415a
                         push               eax                                           // 0x0060c076    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c077    e8441c1400
                         pop                ecx                                           // 0x0060c07c    59
                         ret                                                              // 0x0060c07d    c3
                         nop                                                              // 0x0060c07e    90
                         nop                                                              // 0x0060c07f    90
?SetSpeedInMetres@MobileWallHug@@UAEXMH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0060c080    8b442404
                         push               esi                                           // 0x0060c084    56
                         push               edi                                           // 0x0060c085    57
                         mov.s              esi, ecx                                      // 0x0060c086    8bf1
                         mov                edi, dword ptr [esi]                          // 0x0060c088    8b3e
                         push               eax                                           // 0x0060c08a    50
                         call               _jmp_addr_0x0074dce0                          // 0x0060c08b    e8501c1400
                         add                esp, 0x04                                     // 0x0060c090    83c404
                         push               eax                                           // 0x0060c093    50
                         mov.s              ecx, esi                                      // 0x0060c094    8bce
                         call               dword ptr [edi + 0x864]                       // 0x0060c096    ff9764080000
                         pop                edi                                           // 0x0060c09c    5f
                         pop                esi                                           // 0x0060c09d    5e
                         ret                0x0008                                        // 0x0060c09e    c20800
                         nop                                                              // 0x0060c0a1    90
                         nop                                                              // 0x0060c0a2    90
                         nop                                                              // 0x0060c0a3    90
                         nop                                                              // 0x0060c0a4    90
                         nop                                                              // 0x0060c0a5    90
                         nop                                                              // 0x0060c0a6    90
                         nop                                                              // 0x0060c0a7    90
                         nop                                                              // 0x0060c0a8    90
                         nop                                                              // 0x0060c0a9    90
                         nop                                                              // 0x0060c0aa    90
                         nop                                                              // 0x0060c0ab    90
                         nop                                                              // 0x0060c0ac    90
                         nop                                                              // 0x0060c0ad    90
                         nop                                                              // 0x0060c0ae    90
                         nop                                                              // 0x0060c0af    90
?GetRunningSpeedInMetres@MobileWallHug@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060c0b0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000118]             // 0x0060c0b3    8b8018010000
                         push               eax                                           // 0x0060c0b9    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c0ba    e8011c1400
                         pop                ecx                                           // 0x0060c0bf    59
                         ret                                                              // 0x0060c0c0    c3
                         nop                                                              // 0x0060c0c1    90
                         nop                                                              // 0x0060c0c2    90
                         nop                                                              // 0x0060c0c3    90
                         nop                                                              // 0x0060c0c4    90
                         nop                                                              // 0x0060c0c5    90
                         nop                                                              // 0x0060c0c6    90
                         nop                                                              // 0x0060c0c7    90
                         nop                                                              // 0x0060c0c8    90
                         nop                                                              // 0x0060c0c9    90
                         nop                                                              // 0x0060c0ca    90
                         nop                                                              // 0x0060c0cb    90
                         nop                                                              // 0x0060c0cc    90
                         nop                                                              // 0x0060c0cd    90
                         nop                                                              // 0x0060c0ce    90
                         nop                                                              // 0x0060c0cf    90
?GetDefaultSpeedInMetres@MobileWallHug@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060c0d0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x0060c0d3    8b8004010000
                         push               eax                                           // 0x0060c0d9    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c0da    e8e11b1400
                         pop                ecx                                           // 0x0060c0df    59
                         ret                                                              // 0x0060c0e0    c3
                         nop                                                              // 0x0060c0e1    90
                         nop                                                              // 0x0060c0e2    90
                         nop                                                              // 0x0060c0e3    90
                         nop                                                              // 0x0060c0e4    90
                         nop                                                              // 0x0060c0e5    90
                         nop                                                              // 0x0060c0e6    90
                         nop                                                              // 0x0060c0e7    90
                         nop                                                              // 0x0060c0e8    90
                         nop                                                              // 0x0060c0e9    90
                         nop                                                              // 0x0060c0ea    90
                         nop                                                              // 0x0060c0eb    90
                         nop                                                              // 0x0060c0ec    90
                         nop                                                              // 0x0060c0ed    90
                         nop                                                              // 0x0060c0ee    90
                         nop                                                              // 0x0060c0ef    90
?GetSpeedInMetresPerSecond@MobileWallHug@@UBEMXZ:
                         xor.s              eax, eax                                      // 0x0060c0f0    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x5a]                     // 0x0060c0f2    668b415a
                         push               eax                                           // 0x0060c0f6    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c0f7    e8c41b1400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0060c0fc    d80d14b48a00
                         add                esp, 0x04                                     // 0x0060c102    83c404
                         ret                                                              // 0x0060c105    c3
                         nop                                                              // 0x0060c106    90
                         nop                                                              // 0x0060c107    90
                         nop                                                              // 0x0060c108    90
                         nop                                                              // 0x0060c109    90
                         nop                                                              // 0x0060c10a    90
                         nop                                                              // 0x0060c10b    90
                         nop                                                              // 0x0060c10c    90
                         nop                                                              // 0x0060c10d    90
                         nop                                                              // 0x0060c10e    90
                         nop                                                              // 0x0060c10f    90
_jmp_addr_0x0060c110:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0060c110    d9442404
                         push               esi                                           // 0x0060c114    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0060c115    d80d04c48a00
                         mov.s              esi, ecx                                      // 0x0060c11b    8bf1
                         push               edi                                           // 0x0060c11d    57
                         mov                edi, dword ptr [esi]                          // 0x0060c11e    8b3e
                         push               ecx                                           // 0x0060c120    51
                         fstp               dword ptr [esp]                               // 0x0060c121    d91c24
                         call               _jmp_addr_0x0074dce0                          // 0x0060c124    e8b71b1400
                         add                esp, 0x04                                     // 0x0060c129    83c404
                         push               eax                                           // 0x0060c12c    50
                         mov.s              ecx, esi                                      // 0x0060c12d    8bce
                         call               dword ptr [edi + 0x864]                       // 0x0060c12f    ff9764080000
                         pop                edi                                           // 0x0060c135    5f
                         pop                esi                                           // 0x0060c136    5e
                         ret                0x0004                                        // 0x0060c137    c20400
                         call               dword ptr [__imp__DirectXSetupGetVersion]     // 0x0060c13a    ff153c908a00
?GetRunningSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060c140    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000118]             // 0x0060c143    8b8018010000
                         push               eax                                           // 0x0060c149    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c14a    e8711b1400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0060c14f    d80d14b48a00
                         add                esp, 0x04                                     // 0x0060c155    83c404
                         ret                                                              // 0x0060c158    c3
                         nop                                                              // 0x0060c159    90
                         nop                                                              // 0x0060c15a    90
                         nop                                                              // 0x0060c15b    90
                         nop                                                              // 0x0060c15c    90
                         nop                                                              // 0x0060c15d    90
                         nop                                                              // 0x0060c15e    90
                         nop                                                              // 0x0060c15f    90
?GetDefaultSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0060c160    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x0060c163    8b8004010000
                         push               eax                                           // 0x0060c169    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x0060c16a    e8511b1400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0060c16f    d80d14b48a00
                         add                esp, 0x04                                     // 0x0060c175    83c404
                         ret                                                              // 0x0060c178    c3
                         nop                                                              // 0x0060c179    90
                         nop                                                              // 0x0060c17a    90
                         nop                                                              // 0x0060c17b    90
                         nop                                                              // 0x0060c17c    90
                         nop                                                              // 0x0060c17d    90
                         nop                                                              // 0x0060c17e    90
                         nop                                                              // 0x0060c17f    90
_jmp_addr_0x0060c180:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060c180    8b442408
                         fild               dword ptr [eax]                               // 0x0060c184    db00
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0060c186    8b4c2404
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c18a    d80da4a38a00
                         fstp               dword ptr [ecx]                               // 0x0060c190    d919
                         {disp8} fild       dword ptr [eax + 0x04]                        // 0x0060c192    db4004
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c195    d80da4a38a00
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0060c19b    d95904
                         ret                                                              // 0x0060c19e    c3
                         nop                                                              // 0x0060c19f    90
_jmp_addr_0x0060c1a0:    {disp8} fild       dword ptr [esp + 0x08]                        // 0x0060c1a0    db442408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0060c1a4    8b442404
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c1a8    d80da4a38a00
                         fstp               dword ptr [eax]                               // 0x0060c1ae    d918
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0060c1b0    db44240c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c1b4    d80da4a38a00
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0060c1ba    d95804
                         ret                                                              // 0x0060c1bd    c3
                         nop                                                              // 0x0060c1be    90
                         nop                                                              // 0x0060c1bf    90
_globl_ct_0x0060c1c0:    {disp32} jmp       _jmp_addr_0x0060c1d0                          // 0x0060c1c0    e90b000000
                         nop                                                              // 0x0060c1c5    90
                         nop                                                              // 0x0060c1c6    90
                         nop                                                              // 0x0060c1c7    90
                         nop                                                              // 0x0060c1c8    90
                         nop                                                              // 0x0060c1c9    90
                         nop                                                              // 0x0060c1ca    90
                         nop                                                              // 0x0060c1cb    90
                         nop                                                              // 0x0060c1cc    90
                         nop                                                              // 0x0060c1cd    90
                         nop                                                              // 0x0060c1ce    90
                         nop                                                              // 0x0060c1cf    90
_jmp_addr_0x0060c1d0:    ret                                                              // 0x0060c1d0    c3
                         nop                                                              // 0x0060c1d1    90
                         nop                                                              // 0x0060c1d2    90
                         nop                                                              // 0x0060c1d3    90
                         nop                                                              // 0x0060c1d4    90
                         nop                                                              // 0x0060c1d5    90
                         nop                                                              // 0x0060c1d6    90
                         nop                                                              // 0x0060c1d7    90
                         nop                                                              // 0x0060c1d8    90
                         nop                                                              // 0x0060c1d9    90
                         nop                                                              // 0x0060c1da    90
                         nop                                                              // 0x0060c1db    90
                         nop                                                              // 0x0060c1dc    90
                         nop                                                              // 0x0060c1dd    90
                         nop                                                              // 0x0060c1de    90
                         nop                                                              // 0x0060c1df    90
_globl_ct_0x0060c1e0:    {disp32} jmp       _jmp_addr_0x0060c1f0                          // 0x0060c1e0    e90b000000
                         nop                                                              // 0x0060c1e5    90
                         nop                                                              // 0x0060c1e6    90
                         nop                                                              // 0x0060c1e7    90
                         nop                                                              // 0x0060c1e8    90
                         nop                                                              // 0x0060c1e9    90
                         nop                                                              // 0x0060c1ea    90
                         nop                                                              // 0x0060c1eb    90
                         nop                                                              // 0x0060c1ec    90
                         nop                                                              // 0x0060c1ed    90
                         nop                                                              // 0x0060c1ee    90
                         nop                                                              // 0x0060c1ef    90
_jmp_addr_0x0060c1f0:    ret                                                              // 0x0060c1f0    c3
                         nop                                                              // 0x0060c1f1    90
                         nop                                                              // 0x0060c1f2    90
                         nop                                                              // 0x0060c1f3    90
                         nop                                                              // 0x0060c1f4    90
                         nop                                                              // 0x0060c1f5    90
                         nop                                                              // 0x0060c1f6    90
                         nop                                                              // 0x0060c1f7    90
                         nop                                                              // 0x0060c1f8    90
                         nop                                                              // 0x0060c1f9    90
                         nop                                                              // 0x0060c1fa    90
                         nop                                                              // 0x0060c1fb    90
                         nop                                                              // 0x0060c1fc    90
                         nop                                                              // 0x0060c1fd    90
                         nop                                                              // 0x0060c1fe    90
                         nop                                                              // 0x0060c1ff    90
_jmp_addr_0x0060c200:    sub                esp, 0x30                                     // 0x0060c200    83ec30
                         push               ebx                                           // 0x0060c203    53
                         mov.s              ebx, ecx                                      // 0x0060c204    8bd9
                         push               esi                                           // 0x0060c206    56
                         mov                esi, dword ptr [ebx]                          // 0x0060c207    8b33
                         test               esi, esi                                      // 0x0060c209    85f6
                         push               edi                                           // 0x0060c20b    57
                         mov                dword ptr [ebx], 0x00000000                   // 0x0060c20c    c70300000000
                         {disp32} je        _jmp_addr_0x0060c3e5                          // 0x0060c212    0f84cd010000
                         mov                ecx, dword ptr [esi]                          // 0x0060c218    8b0e
                         or                 edi, 0xffffffff                               // 0x0060c21a    83cfff
                         test               ecx, ecx                                      // 0x0060c21d    85c9
                         {disp8} je         _jmp_addr_0x0060c25f                          // 0x0060c21f    743e
                         mov                eax, dword ptr [ecx]                          // 0x0060c221    8b01
                         call               dword ptr [eax + 0x858]                       // 0x0060c223    ff9058080000
                         test               eax, eax                                      // 0x0060c229    85c0
                         {disp32} je        _jmp_addr_0x0060c3dc                          // 0x0060c22b    0f84ab010000
                         mov                ecx, dword ptr [esi]                          // 0x0060c231    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x0060c233    8b11
                         call               dword ptr [edx + 0x858]                       // 0x0060c235    ff9258080000
                         mov                eax, dword ptr [eax]                          // 0x0060c23b    8b00
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0060c23d    8b4824
                         test               ecx, ecx                                      // 0x0060c240    85c9
                         {disp8} jne        _jmp_addr_0x0060c249                          // 0x0060c242    7505
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x0060c244    897e04
                         {disp8} jmp        _jmp_addr_0x0060c25f                          // 0x0060c247    eb16
_jmp_addr_0x0060c249:    mov                ecx, dword ptr [esi]                          // 0x0060c249    8b0e
                         mov                edx, dword ptr [ecx]                          // 0x0060c24b    8b11
                         call               dword ptr [edx + 0x858]                       // 0x0060c24d    ff9258080000
                         mov                eax, dword ptr [eax]                          // 0x0060c253    8b00
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0060c255    8b4824
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0060c258    8b5104
                         dec                edx                                           // 0x0060c25b    4a
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0060c25c    895604
_jmp_addr_0x0060c25f:    mov                ecx, dword ptr [esi]                          // 0x0060c25f    8b0e
                         test               ecx, ecx                                      // 0x0060c261    85c9
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0060c263    8b4604
                         {disp8} je         _jmp_addr_0x0060c2a6                          // 0x0060c266    743e
                         cmp.s              eax, edi                                      // 0x0060c268    3bc7
                         {disp8} jne        _jmp_addr_0x0060c283                          // 0x0060c26a    7517
                         mov                eax, dword ptr [ecx]                          // 0x0060c26c    8b01
                         call               dword ptr [eax + 0x858]                       // 0x0060c26e    ff9058080000
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x0060c274    8b4c2440
                         mov                eax, dword ptr [eax]                          // 0x0060c278    8b00
                         push               0x1                                           // 0x0060c27a    6a01
                         push               ecx                                           // 0x0060c27c    51
                         push               eax                                           // 0x0060c27d    50
                         {disp32} jmp       _jmp_addr_0x0060c3d5                          // 0x0060c27e    e952010000
_jmp_addr_0x0060c283:    mov                edx, dword ptr [ecx]                          // 0x0060c283    8b11
                         call               dword ptr [edx + 0x858]                       // 0x0060c285    ff9258080000
                         mov                eax, dword ptr [eax]                          // 0x0060c28b    8b00
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0060c28d    8b4824
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060c290    8b4108
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x0060c293    8b5604
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x0060c296    8b4c2440
                         mov                eax, dword ptr [eax + edx * 0x4]              // 0x0060c29a    8b0490
                         push               0x1                                           // 0x0060c29d    6a01
                         push               ecx                                           // 0x0060c29f    51
                         push               eax                                           // 0x0060c2a0    50
                         {disp32} jmp       _jmp_addr_0x0060c3d5                          // 0x0060c2a1    e92f010000
_jmp_addr_0x0060c2a6:    cmp                eax, 0x01                                     // 0x0060c2a6    83f801
                         {disp32} jne       _jmp_addr_0x0060c3dc                          // 0x0060c2a9    0f852d010000
                         {disp8} lea        edx, dword ptr [esi + 0x08]                   // 0x0060c2af    8d5608
                         mov                eax, dword ptr [edx]                          // 0x0060c2b2    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0060c2b4    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0060c2b7    8b5208
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0060c2ba    89442424
                         mov                eax, 0x00008000                               // 0x0060c2be    b800800000
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x0060c2c3    894c2428
                         {disp8} mov        word ptr [esp + 0x24], ax                     // 0x0060c2c7    6689442424
                         {disp8} mov        word ptr [esp + 0x28], ax                     // 0x0060c2cc    6689442428
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0060c2d1    8d442424
                         push               eax                                           // 0x0060c2d5    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0060c2d6    8d4c2410
                         push               ecx                                           // 0x0060c2da    51
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0060c2db    89542434
                         call               _jmp_addr_0x007370b0                          // 0x0060c2df    e8ccad1200
                         add                esp, 0x08                                     // 0x0060c2e4    83c408
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0060c2e7    8d54240c
                         push               edx                                           // 0x0060c2eb    52
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0060c2ec    8d442414
                         push               eax                                           // 0x0060c2f0    50
                         mov                ecx, 0x00d3eebc                               // 0x0060c2f1    b9bceed300
                         call               @find__std__map__SubCollideBlockPosPNewCollide3Obj@16                          // 0x0060c2f6    e875770000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060c2fb    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x378ec0]        // 0x0060c2ff    3b05c0eed300
                         {disp8} je         _jmp_addr_0x0060c31e                          // 0x0060c305    7417
                         add                eax, 0x0c                                     // 0x0060c307    83c00c
                         push               eax                                           // 0x0060c30a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0060c30b    8d4c2410
                         call               _jmp_addr_0x0060c3f0                          // 0x0060c30f    e8dc000000
                         test               al, al                                        // 0x0060c314    84c0
                         {disp8} jne        _jmp_addr_0x0060c31e                          // 0x0060c316    7506
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0060c318    8d442410
                         {disp8} jmp        _jmp_addr_0x0060c32c                          // 0x0060c31c    eb0e
_jmp_addr_0x0060c31e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x378ec0]        // 0x0060c31e    8b0dc0eed300
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0060c324    894c2414
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0060c328    8d442414
_jmp_addr_0x0060c32c:    mov                eax, dword ptr [eax]                          // 0x0060c32c    8b00
                         cmp                eax, dword ptr [data_bytes + 0x378ec0]        // 0x0060c32e    3b05c0eed300
                         {disp8} je         _jmp_addr_0x0060c33e                          // 0x0060c334    7408
                         {disp8} mov        edi, dword ptr [eax + 0x10]                   // 0x0060c336    8b7810
                         {disp32} jmp       _jmp_addr_0x0060c3cd                          // 0x0060c339    e98f000000
_jmp_addr_0x0060c33e:    {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0060c33e    8b54242c
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0060c342    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0060c346    89542414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0060c34a    e8416d1f00
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0060c34f    d8442414
                         push               0x000000d7                                    // 0x0060c353    68d7000000
                         push               0x00bf42a4                                    // 0x0060c358    68a442bf00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0060c35d    d95c243c
                         push               0x28                                          // 0x0060c361    6a28
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x0060c363    db442430
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c367    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0060c36d    d95c243c
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x0060c371    db442434
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060c375    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x0060c37b    d95c2444
                         call               ___nw__FUl                                    // 0x0060c37f    e80cf41c00
                         add                esp, 0x0c                                     // 0x0060c384    83c40c
                         test               eax, eax                                      // 0x0060c387    85c0
                         {disp8} je         _jmp_addr_0x0060c3a0                          // 0x0060c389    7415
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0060c38b    8d4c2430
                         push               ecx                                           // 0x0060c38f    51
                         push               0x40e66666                                    // 0x0060c390    686666e640
                         mov.s              ecx, eax                                      // 0x0060c395    8bc8
                         call               @__ct__Q210NewCollide3ObjFfP7LHPoint@16       // 0x0060c397    e8f4e92100
                         mov.s              edi, eax                                      // 0x0060c39c    8bf8
                         {disp8} jmp        _jmp_addr_0x0060c3a2                          // 0x0060c39e    eb02
_jmp_addr_0x0060c3a0:    xor.s              edi, edi                                      // 0x0060c3a0    33ff
_jmp_addr_0x0060c3a2:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0060c3a2    8b54240c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0060c3a6    8d442414
                         push               eax                                           // 0x0060c3aa    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0060c3ab    8d4c2420
                         push               ecx                                           // 0x0060c3af    51
                         mov                ecx, 0x00d3eebc                               // 0x0060c3b0    b9bceed300
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0060c3b5    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0060c3b9    c744242000000000
                         call               @find_or_insert__std__map__SubCollideBlockPosPNewCollide3Obj@16                          // 0x0060c3c1    e86a740000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0060c3c6    8b54241c
                         {disp8} mov        dword ptr [edx + 0x10], edi                   // 0x0060c3ca    897a10
_jmp_addr_0x0060c3cd:    {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060c3cd    8b442440
                         push               0x1                                           // 0x0060c3d1    6a01
                         push               eax                                           // 0x0060c3d3    50
                         push               edi                                           // 0x0060c3d4    57
_jmp_addr_0x0060c3d5:    mov.s              ecx, ebx                                      // 0x0060c3d5    8bcb
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                          // 0x0060c3d7    e894e3ffff
_jmp_addr_0x0060c3dc:    push               esi                                           // 0x0060c3dc    56
                         call               ??3@YAXPAX@Z                                  // 0x0060c3dd    e8b62a1a00
                         add                esp, 0x04                                     // 0x0060c3e2    83c404
_jmp_addr_0x0060c3e5:    pop                edi                                           // 0x0060c3e5    5f
                         pop                esi                                           // 0x0060c3e6    5e
                         pop                ebx                                           // 0x0060c3e7    5b
                         add                esp, 0x30                                     // 0x0060c3e8    83c430
                         ret                0x0004                                        // 0x0060c3eb    c20400
                         nop                                                              // 0x0060c3ee    90
                         nop                                                              // 0x0060c3ef    90
_jmp_addr_0x0060c3f0:    mov                ax, word ptr [ecx]                            // 0x0060c3f0    668b01
                         push               esi                                           // 0x0060c3f3    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0060c3f4    8b742408
                         mov                dx, word ptr [esi]                            // 0x0060c3f8    668b16
                         cmp.s              ax, dx                                        // 0x0060c3fb    663bc2
                         {disp8} jae        _jmp_addr_0x0060c406                          // 0x0060c3fe    7306
                         mov                al, 0x01                                      // 0x0060c400    b001
                         pop                esi                                           // 0x0060c402    5e
                         ret                0x0004                                        // 0x0060c403    c20400
_jmp_addr_0x0060c406:    {disp8} jbe        _jmp_addr_0x0060c40e                          // 0x0060c406    7606
                         xor.s              al, al                                        // 0x0060c408    32c0
                         pop                esi                                           // 0x0060c40a    5e
                         ret                0x0004                                        // 0x0060c40b    c20400
_jmp_addr_0x0060c40e:    {disp8} mov        ax, word ptr [ecx + 0x02]                     // 0x0060c40e    668b4102
                         cmp                ax, word ptr [esi + 0x02]                     // 0x0060c412    663b4602
                         pop                esi                                           // 0x0060c416    5e
                         sbb.s              eax, eax                                      // 0x0060c417    1bc0
                         neg                eax                                           // 0x0060c419    f7d8
                         ret                0x0004                                        // 0x0060c41b    c20400
                         nop                                                              // 0x0060c41e    90
                         nop                                                              // 0x0060c41f    90
?Save@MobileWallHug@@UAEIAAVGameOSFile@@@Z:
                         sub                esp, 0x24                                     // 0x0060c420    83ec24
                         push               esi                                           // 0x0060c423    56
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0060c424    8b74242c
                         push               edi                                           // 0x0060c428    57
                         mov.s              edi, ecx                                      // 0x0060c429    8bf9
                         push               esi                                           // 0x0060c42b    56
                         call               ?Save@Mobile@@UAEIAAVGameOSFile@@@Z           // 0x0060c42c    e8dfa7ffff
                         test               eax, eax                                      // 0x0060c431    85c0
                         {disp32} je        _jmp_addr_0x0060c729                          // 0x0060c433    0f84f0020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0060c439    a190c9be00
                         push               ebx                                           // 0x0060c43e    53
                         push               ebp                                           // 0x0060c43f    55
                         xor.s              ebp, ebp                                      // 0x0060c440    33ed
                         cmp.s              eax, ebp                                      // 0x0060c442    3bc5
                         {disp32} je        _jmp_addr_0x0060c51c                          // 0x0060c444    0f84d2000000
                         push               ebp                                           // 0x0060c44a    55
                         push               0x2                                           // 0x0060c44b    6a02
                         {disp8} lea        ebx, dword ptr [edi + 0x58]                   // 0x0060c44d    8d5f58
                         push               ebx                                           // 0x0060c450    53
                         mov.s              ecx, esi                                      // 0x0060c451    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c453    e8c8041b00
                         cmp                eax, 0x03                                     // 0x0060c458    83f803
                         {disp8} jne        _jmp_addr_0x0060c463                          // 0x0060c45b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c45d    892d90c9be00
_jmp_addr_0x0060c463:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c463    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060c469    33c0
                         mov                al, byte ptr [ebx]                            // 0x0060c46b    8a03
                         add                eax, 0x02                                     // 0x0060c46d    83c002
                         add.s              ecx, eax                                      // 0x0060c470    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c472    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c478    392d90c9be00
                         {disp32} je        _jmp_addr_0x0060c51c                          // 0x0060c47e    0f8498000000
                         push               ebp                                           // 0x0060c484    55
                         push               0x2                                           // 0x0060c485    6a02
                         {disp8} lea        ebx, dword ptr [edi + 0x5a]                   // 0x0060c487    8d5f5a
                         push               ebx                                           // 0x0060c48a    53
                         mov.s              ecx, esi                                      // 0x0060c48b    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c48d    e88e041b00
                         cmp                eax, 0x03                                     // 0x0060c492    83f803
                         {disp8} jne        _jmp_addr_0x0060c49d                          // 0x0060c495    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c497    892d90c9be00
_jmp_addr_0x0060c49d:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060c49d    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0060c4a3    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0060c4a5    8a0b
                         add                ecx, 0x2                                      // 0x0060c4a7    83c102
                         add.s              edx, ecx                                      // 0x0060c4aa    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0060c4ac    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c4b2    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c51c                          // 0x0060c4b8    7462
                         push               ebp                                           // 0x0060c4ba    55
                         push               0x2                                           // 0x0060c4bb    6a02
                         {disp8} lea        ebx, dword ptr [edi + 0x5c]                   // 0x0060c4bd    8d5f5c
                         push               ebx                                           // 0x0060c4c0    53
                         mov.s              ecx, esi                                      // 0x0060c4c1    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c4c3    e858041b00
                         cmp                eax, 0x03                                     // 0x0060c4c8    83f803
                         {disp8} jne        _jmp_addr_0x0060c4d3                          // 0x0060c4cb    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c4cd    892d90c9be00
_jmp_addr_0x0060c4d3:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c4d3    8b8e14020000
                         xor.s              edx, edx                                      // 0x0060c4d9    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0060c4db    8a13
                         add                edx, 0x02                                     // 0x0060c4dd    83c202
                         add.s              ecx, edx                                      // 0x0060c4e0    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c4e2    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c4e8    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c51c                          // 0x0060c4ee    742c
                         push               ebp                                           // 0x0060c4f0    55
                         push               0x1                                           // 0x0060c4f1    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x5e]                   // 0x0060c4f3    8d5f5e
                         push               ebx                                           // 0x0060c4f6    53
                         mov.s              ecx, esi                                      // 0x0060c4f7    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c4f9    e822041b00
                         cmp                eax, 0x03                                     // 0x0060c4fe    83f803
                         {disp8} jne        _jmp_addr_0x0060c509                          // 0x0060c501    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c503    892d90c9be00
_jmp_addr_0x0060c509:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c509    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060c50f    33c0
                         mov                al, byte ptr [ebx]                            // 0x0060c511    8a03
                         inc                eax                                           // 0x0060c513    40
                         add.s              ecx, eax                                      // 0x0060c514    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c516    898e14020000
_jmp_addr_0x0060c51c:    {disp8} mov        al, byte ptr [edi + 0x5e]                     // 0x0060c51c    8a475e
                         cmp                al, 0x0b                                      // 0x0060c51f    3c0b
                         {disp32} je        _jmp_addr_0x0060c68c                          // 0x0060c521    0f8465010000
                         {disp32} jbe       _jmp_addr_0x0060c6c0                          // 0x0060c527    0f8693010000
                         cmp                al, 0x12                                      // 0x0060c52d    3c12
                         {disp32} ja        _jmp_addr_0x0060c6c0                          // 0x0060c52f    0f878b010000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c535    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c569                          // 0x0060c53b    742c
                         push               ebp                                           // 0x0060c53d    55
                         push               0x1                                           // 0x0060c53e    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x74]                   // 0x0060c540    8d5f74
                         push               ebx                                           // 0x0060c543    53
                         mov.s              ecx, esi                                      // 0x0060c544    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c546    e8d5031b00
                         cmp                eax, 0x03                                     // 0x0060c54b    83f803
                         {disp8} jne        _jmp_addr_0x0060c556                          // 0x0060c54e    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c550    892d90c9be00
_jmp_addr_0x0060c556:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060c556    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0060c55c    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0060c55e    8a0b
                         inc                ecx                                           // 0x0060c560    41
                         add.s              eax, ecx                                      // 0x0060c561    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060c563    898614020000
_jmp_addr_0x0060c569:    xor.s              eax, eax                                      // 0x0060c569    33c0
                         {disp8} mov        ax, word ptr [edi + 0x76]                     // 0x0060c56b    668b4776
                         cmp                ax, -0x0001                                   // 0x0060c56f    663dffff
                         {disp8} je         _jmp_addr_0x0060c580                          // 0x0060c573    740b
                         and                eax, 0x0000ffff                               // 0x0060c575    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0060c57a    89442438
                         {disp8} jmp        _jmp_addr_0x0060c5a5                          // 0x0060c57e    eb25
_jmp_addr_0x0060c580:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0060c580    8d542410
                         push               edx                                           // 0x0060c584    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0060c585    8d44241c
                         push               eax                                           // 0x0060c589    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78        // 0x0060c58a    b978eed300
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x0060c58f    897c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x0060c593    896c241c
                         call               _jmp_addr_0x00610490                          // 0x0060c597    e8f43e0000
                         mov                eax, dword ptr [eax]                          // 0x0060c59c    8b00
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0060c59e    8b4810
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0060c5a1    894c2438
_jmp_addr_0x0060c5a5:    cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c5a5    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c5e1                          // 0x0060c5ab    7434
                         push               ebp                                           // 0x0060c5ad    55
                         push               0x4                                           // 0x0060c5ae    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x0060c5b0    8d542440
                         push               edx                                           // 0x0060c5b4    52
                         mov.s              ecx, esi                                      // 0x0060c5b5    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c5b7    e864031b00
                         cmp                eax, 0x03                                     // 0x0060c5bc    83f803
                         {disp8} jne        _jmp_addr_0x0060c5c7                          // 0x0060c5bf    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c5c1    892d90c9be00
_jmp_addr_0x0060c5c7:    {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060c5c7    8b442438
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c5cb    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0060c5d1    25ff000000
                         add                eax, 0x04                                     // 0x0060c5d6    83c004
                         add.s              ecx, eax                                      // 0x0060c5d9    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c5db    898e14020000
_jmp_addr_0x0060c5e1:    {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0060c5e1    8d4c2428
                         call               ??0MapCoords@@QAE@XZ                          // 0x0060c5e5    e87655e3ff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0060c5ea    8d4c2420
                         {disp8} lea        ebx, dword ptr [edi + 0x70]                   // 0x0060c5ee    8d5f70
                         push               ecx                                           // 0x0060c5f1    51
                         mov.s              ecx, ebx                                      // 0x0060c5f2    8bcb
                         call               ?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ            // 0x0060c5f4    e867e0ffff
                         push               eax                                           // 0x0060c5f9    50
                         mov.s              ecx, ebx                                      // 0x0060c5fa    8bcb
                         call               _jmp_addr_0x0060a450                          // 0x0060c5fc    e84fdeffff
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0060c601    8b542420
                         push               edx                                           // 0x0060c605    52
                         mov.s              ecx, esi                                      // 0x0060c606    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0060c608    e80358f5ff
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c60d    392d90c9be00
                         {disp32} je        _jmp_addr_0x0060c6c0                          // 0x0060c613    0f84a7000000
                         push               ebp                                           // 0x0060c619    55
                         push               0x4                                           // 0x0060c61a    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0060c61c    8d44242c
                         push               eax                                           // 0x0060c620    50
                         mov.s              ecx, esi                                      // 0x0060c621    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c623    e8f8021b00
                         cmp                eax, 0x03                                     // 0x0060c628    83f803
                         {disp8} jne        _jmp_addr_0x0060c633                          // 0x0060c62b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c62d    892d90c9be00
_jmp_addr_0x0060c633:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0060c633    8b4c2424
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060c637    8b9614020000
                         and                ecx, 0x000000ff                               // 0x0060c63d    81e1ff000000
                         add                ecx, 0x4                                      // 0x0060c643    83c104
                         add.s              edx, ecx                                      // 0x0060c646    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0060c648    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c64e    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c6c0                          // 0x0060c654    746a
                         push               ebp                                           // 0x0060c656    55
                         push               0xc                                           // 0x0060c657    6a0c
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0060c659    8d542430
                         push               edx                                           // 0x0060c65d    52
                         mov.s              ecx, esi                                      // 0x0060c65e    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c660    e8bb021b00
                         cmp                eax, 0x03                                     // 0x0060c665    83f803
                         {disp8} jne        _jmp_addr_0x0060c670                          // 0x0060c668    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c66a    892d90c9be00
_jmp_addr_0x0060c670:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0060c670    8b442428
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c674    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0060c67a    25ff000000
                         add                eax, 0x0c                                     // 0x0060c67f    83c00c
                         add.s              ecx, eax                                      // 0x0060c682    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c684    898e14020000
                         {disp8} jmp        _jmp_addr_0x0060c6c0                          // 0x0060c68a    eb34
_jmp_addr_0x0060c68c:    cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c68c    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c6c0                          // 0x0060c692    742c
                         push               ebp                                           // 0x0060c694    55
                         push               0x1                                           // 0x0060c695    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0060c697    8d5f78
                         push               ebx                                           // 0x0060c69a    53
                         mov.s              ecx, esi                                      // 0x0060c69b    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c69d    e87e021b00
                         cmp                eax, 0x03                                     // 0x0060c6a2    83f803
                         {disp8} jne        _jmp_addr_0x0060c6ad                          // 0x0060c6a5    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c6a7    892d90c9be00
_jmp_addr_0x0060c6ad:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060c6ad    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0060c6b3    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0060c6b5    8a0b
                         inc                ecx                                           // 0x0060c6b7    41
                         add.s              eax, ecx                                      // 0x0060c6b8    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060c6ba    898614020000
_jmp_addr_0x0060c6c0:    {disp8} mov        edx, dword ptr [edi + 0x7c]                   // 0x0060c6c0    8b577c
                         push               edx                                           // 0x0060c6c3    52
                         mov.s              ecx, esi                                      // 0x0060c6c4    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0060c6c6    e84557f5ff
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0060c6cb    392d90c9be00
                         {disp8} je         _jmp_addr_0x0060c704                          // 0x0060c6d1    7431
                         push               ebp                                           // 0x0060c6d3    55
                         push               0xc                                           // 0x0060c6d4    6a0c
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x0060c6d6    8d9f80000000
                         push               ebx                                           // 0x0060c6dc    53
                         mov.s              ecx, esi                                      // 0x0060c6dd    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0060c6df    e83c021b00
                         cmp                eax, 0x03                                     // 0x0060c6e4    83f803
                         {disp8} jne        _jmp_addr_0x0060c6ef                          // 0x0060c6e7    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0060c6e9    892d90c9be00
_jmp_addr_0x0060c6ef:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c6ef    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060c6f5    33c0
                         mov                al, byte ptr [ebx]                            // 0x0060c6f7    8a03
                         add                eax, 0x0c                                     // 0x0060c6f9    83c00c
                         add.s              ecx, eax                                      // 0x0060c6fc    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c6fe    898e14020000
_jmp_addr_0x0060c704:    {disp8} mov        ecx, dword ptr [edi + 0x60]                   // 0x0060c704    8b4f60
                         push               ecx                                           // 0x0060c707    51
                         mov.s              ecx, esi                                      // 0x0060c708    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0060c70a    e80157f5ff
                         add                edi, 0x64                                     // 0x0060c70f    83c764
                         push               edi                                           // 0x0060c712    57
                         mov.s              ecx, esi                                      // 0x0060c713    8bce
                         call               _jmp_addr_0x00616750                          // 0x0060c715    e836a00000
                         pop                ebp                                           // 0x0060c71a    5d
                         pop                ebx                                           // 0x0060c71b    5b
                         pop                edi                                           // 0x0060c71c    5f
                         mov                eax, 0x00000001                               // 0x0060c71d    b801000000
                         pop                esi                                           // 0x0060c722    5e
                         add                esp, 0x24                                     // 0x0060c723    83c424
                         ret                0x0004                                        // 0x0060c726    c20400
_jmp_addr_0x0060c729:    pop                edi                                           // 0x0060c729    5f
                         xor.s              eax, eax                                      // 0x0060c72a    33c0
                         pop                esi                                           // 0x0060c72c    5e
                         add                esp, 0x24                                     // 0x0060c72d    83c424
                         ret                0x0004                                        // 0x0060c730    c20400
                         nop                                                              // 0x0060c733    90
                         nop                                                              // 0x0060c734    90
                         nop                                                              // 0x0060c735    90
                         nop                                                              // 0x0060c736    90
                         nop                                                              // 0x0060c737    90
                         nop                                                              // 0x0060c738    90
                         nop                                                              // 0x0060c739    90
                         nop                                                              // 0x0060c73a    90
                         nop                                                              // 0x0060c73b    90
                         nop                                                              // 0x0060c73c    90
                         nop                                                              // 0x0060c73d    90
                         nop                                                              // 0x0060c73e    90
                         nop                                                              // 0x0060c73f    90
?Load@MobileWallHug@@UAEIAAVGameOSFile@@@Z:
                         sub                esp, 0x24                                     // 0x0060c740    83ec24
                         push               ebx                                           // 0x0060c743    53
                         push               esi                                           // 0x0060c744    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x0060c745    8b742430
                         mov.s              ebx, ecx                                      // 0x0060c749    8bd9
                         push               esi                                           // 0x0060c74b    56
                         call               ?Load@Mobile@@UAEIAAVGameOSFile@@@Z           // 0x0060c74c    e81fa5ffff
                         test               eax, eax                                      // 0x0060c751    85c0
                         {disp32} je        _jmp_addr_0x0060ca43                          // 0x0060c753    0f84ea020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0060c759    a194c9be00
                         push               ebp                                           // 0x0060c75e    55
                         xor.s              ebp, ebp                                      // 0x0060c75f    33ed
                         cmp.s              eax, ebp                                      // 0x0060c761    3bc5
                         push               edi                                           // 0x0060c763    57
                         {disp8} lea        edi, dword ptr [ebx + 0x58]                   // 0x0060c764    8d7b58
                         {disp8} je         _jmp_addr_0x0060c799                          // 0x0060c767    7430
                         push               ebp                                           // 0x0060c769    55
                         push               0x2                                           // 0x0060c76a    6a02
                         push               edi                                           // 0x0060c76c    57
                         mov.s              ecx, esi                                      // 0x0060c76d    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c76f    e86c011b00
                         cmp                eax, 0x03                                     // 0x0060c774    83f803
                         {disp8} jne        _jmp_addr_0x0060c77f                          // 0x0060c777    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c779    892d94c9be00
_jmp_addr_0x0060c77f:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c77f    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060c785    33c0
                         mov                al, byte ptr [edi]                            // 0x0060c787    8a07
                         add                eax, 0x02                                     // 0x0060c789    83c002
                         add.s              ecx, eax                                      // 0x0060c78c    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c78e    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0060c794    a194c9be00
_jmp_addr_0x0060c799:    cmp.s              eax, ebp                                      // 0x0060c799    3bc5
                         {disp8} lea        edi, dword ptr [ebx + 0x5a]                   // 0x0060c79b    8d7b5a
                         {disp8} je         _jmp_addr_0x0060c7d0                          // 0x0060c79e    7430
                         push               ebp                                           // 0x0060c7a0    55
                         push               0x2                                           // 0x0060c7a1    6a02
                         push               edi                                           // 0x0060c7a3    57
                         mov.s              ecx, esi                                      // 0x0060c7a4    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c7a6    e835011b00
                         cmp                eax, 0x03                                     // 0x0060c7ab    83f803
                         {disp8} jne        _jmp_addr_0x0060c7b6                          // 0x0060c7ae    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c7b0    892d94c9be00
_jmp_addr_0x0060c7b6:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060c7b6    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0060c7bc    33c9
                         mov                cl, byte ptr [edi]                            // 0x0060c7be    8a0f
                         add                ecx, 0x2                                      // 0x0060c7c0    83c102
                         add.s              eax, ecx                                      // 0x0060c7c3    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060c7c5    898614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0060c7cb    a194c9be00
_jmp_addr_0x0060c7d0:    cmp.s              eax, ebp                                      // 0x0060c7d0    3bc5
                         {disp8} lea        edi, dword ptr [ebx + 0x5c]                   // 0x0060c7d2    8d7b5c
                         {disp8} je         _jmp_addr_0x0060c807                          // 0x0060c7d5    7430
                         push               ebp                                           // 0x0060c7d7    55
                         push               0x2                                           // 0x0060c7d8    6a02
                         push               edi                                           // 0x0060c7da    57
                         mov.s              ecx, esi                                      // 0x0060c7db    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c7dd    e8fe001b00
                         cmp                eax, 0x03                                     // 0x0060c7e2    83f803
                         {disp8} jne        _jmp_addr_0x0060c7ed                          // 0x0060c7e5    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c7e7    892d94c9be00
_jmp_addr_0x0060c7ed:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060c7ed    8b8614020000
                         xor.s              edx, edx                                      // 0x0060c7f3    33d2
                         mov                dl, byte ptr [edi]                            // 0x0060c7f5    8a17
                         add                edx, 0x02                                     // 0x0060c7f7    83c202
                         add.s              eax, edx                                      // 0x0060c7fa    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060c7fc    898614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0060c802    a194c9be00
_jmp_addr_0x0060c807:    cmp.s              eax, ebp                                      // 0x0060c807    3bc5
                         {disp8} lea        edi, dword ptr [ebx + 0x5e]                   // 0x0060c809    8d7b5e
                         {disp8} je         _jmp_addr_0x0060c83c                          // 0x0060c80c    742e
                         push               ebp                                           // 0x0060c80e    55
                         push               0x1                                           // 0x0060c80f    6a01
                         push               edi                                           // 0x0060c811    57
                         mov.s              ecx, esi                                      // 0x0060c812    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c814    e8c7001b00
                         cmp                eax, 0x03                                     // 0x0060c819    83f803
                         {disp8} jne        _jmp_addr_0x0060c824                          // 0x0060c81c    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c81e    892d94c9be00
_jmp_addr_0x0060c824:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c824    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060c82a    33c0
                         mov                al, byte ptr [edi]                            // 0x0060c82c    8a07
                         inc                eax                                           // 0x0060c82e    40
                         add.s              ecx, eax                                      // 0x0060c82f    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c831    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0060c837    a194c9be00
_jmp_addr_0x0060c83c:    mov                cl, byte ptr [edi]                            // 0x0060c83c    8a0f
                         cmp                cl, 0x0b                                      // 0x0060c83e    80f90b
                         {disp32} je        _jmp_addr_0x0060c9aa                          // 0x0060c841    0f8463010000
                         {disp32} jbe       _jmp_addr_0x0060c9da                          // 0x0060c847    0f868d010000
                         cmp                cl, 0x12                                      // 0x0060c84d    80f912
                         {disp32} ja        _jmp_addr_0x0060c9da                          // 0x0060c850    0f8784010000
                         cmp.s              eax, ebp                                      // 0x0060c856    3bc5
                         {disp8} lea        edi, dword ptr [ebx + 0x74]                   // 0x0060c858    8d7b74
                         {disp8} je         _jmp_addr_0x0060c8c7                          // 0x0060c85b    746a
                         push               ebp                                           // 0x0060c85d    55
                         push               0x1                                           // 0x0060c85e    6a01
                         push               edi                                           // 0x0060c860    57
                         mov.s              ecx, esi                                      // 0x0060c861    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c863    e878001b00
                         cmp                eax, 0x03                                     // 0x0060c868    83f803
                         {disp8} jne        _jmp_addr_0x0060c873                          // 0x0060c86b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c86d    892d94c9be00
_jmp_addr_0x0060c873:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060c873    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0060c879    33c9
                         mov                cl, byte ptr [edi]                            // 0x0060c87b    8a0f
                         inc                ecx                                           // 0x0060c87d    41
                         add.s              edx, ecx                                      // 0x0060c87e    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0060c880    899614020000
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0060c886    392d94c9be00
                         {disp8} je         _jmp_addr_0x0060c8c7                          // 0x0060c88c    7439
                         push               ebp                                           // 0x0060c88e    55
                         push               0x4                                           // 0x0060c88f    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x0060c891    8d542440
                         push               edx                                           // 0x0060c895    52
                         mov.s              ecx, esi                                      // 0x0060c896    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c898    e843001b00
                         cmp                eax, 0x03                                     // 0x0060c89d    83f803
                         {disp8} jne        _jmp_addr_0x0060c8a8                          // 0x0060c8a0    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c8a2    892d94c9be00
_jmp_addr_0x0060c8a8:    {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060c8a8    8b442438
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060c8ac    8b9614020000
                         mov.s              ecx, eax                                      // 0x0060c8b2    8bc8
                         and                ecx, 0x000000ff                               // 0x0060c8b4    81e1ff000000
                         add                ecx, 0x4                                      // 0x0060c8ba    83c104
                         add.s              edx, ecx                                      // 0x0060c8bd    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0060c8bf    899614020000
                         {disp8} jmp        _jmp_addr_0x0060c8cb                          // 0x0060c8c5    eb04
_jmp_addr_0x0060c8c7:    {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060c8c7    8b442438
_jmp_addr_0x0060c8cb:    cmp                eax, 0x0000ffff                               // 0x0060c8cb    3dffff0000
                         .byte              0x72, 0x2d// {disp8} jb _jmp_addr_0x0060c8ff  // 0x0060c8d0    722d
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0060c8d2    8d542418
                         push               edx                                           // 0x0060c8d6    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0060c8d7    8d442424
                         push               eax                                           // 0x0060c8db    50
                         mov                ecx, OFFSET _CircleHugStateInfoT_00d3ee78        // 0x0060c8dc    b978eed300
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0060c8e1    895c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0060c8e5    896c2424
                         call               _jmp_addr_0x00610490                          // 0x0060c8e9    e8a23b0000
                         mov                eax, dword ptr [eax]                          // 0x0060c8ee    8b00
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0060c8f0    8b4c2438
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0060c8f4    894810
                         {disp8} mov        word ptr [ebx + 0x76], -0x0001                // 0x0060c8f7    66c74376ffff
                         {disp8} jmp        _jmp_addr_0x0060c903                          // 0x0060c8fd    eb04
_jmp_addr_0x0060c8ff:    {disp8} mov        word ptr [ebx + 0x76], ax                     // 0x0060c8ff    66894376
_jmp_addr_0x0060c903:    {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0060c903    8d4c2428
                         call               ??0MapCoords@@QAE@XZ                          // 0x0060c907    e85452e3ff
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0060c90c    8d542414
                         push               edx                                           // 0x0060c910    52
                         mov.s              ecx, esi                                      // 0x0060c911    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0060c913    e86858f5ff
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0060c918    392d94c9be00
                         {disp8} je         _jmp_addr_0x0060c991                          // 0x0060c91e    7471
                         push               ebp                                           // 0x0060c920    55
                         push               0x4                                           // 0x0060c921    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0060c923    8d442418
                         push               eax                                           // 0x0060c927    50
                         mov.s              ecx, esi                                      // 0x0060c928    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c92a    e8b1ff1a00
                         cmp                eax, 0x03                                     // 0x0060c92f    83f803
                         {disp8} jne        _jmp_addr_0x0060c93a                          // 0x0060c932    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c934    892d94c9be00
_jmp_addr_0x0060c93a:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060c93a    8b4c2410
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060c93e    8b9614020000
                         and                ecx, 0x000000ff                               // 0x0060c944    81e1ff000000
                         add                ecx, 0x4                                      // 0x0060c94a    83c104
                         add.s              edx, ecx                                      // 0x0060c94d    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0060c94f    899614020000
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0060c955    392d94c9be00
                         {disp8} je         _jmp_addr_0x0060c991                          // 0x0060c95b    7434
                         push               ebp                                           // 0x0060c95d    55
                         push               0xc                                           // 0x0060c95e    6a0c
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0060c960    8d542430
                         push               edx                                           // 0x0060c964    52
                         mov.s              ecx, esi                                      // 0x0060c965    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c967    e874ff1a00
                         cmp                eax, 0x03                                     // 0x0060c96c    83f803
                         {disp8} jne        _jmp_addr_0x0060c977                          // 0x0060c96f    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c971    892d94c9be00
_jmp_addr_0x0060c977:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0060c977    8b442428
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060c97b    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0060c981    25ff000000
                         add                eax, 0x0c                                     // 0x0060c986    83c00c
                         add.s              ecx, eax                                      // 0x0060c989    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060c98b    898e14020000
_jmp_addr_0x0060c991:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0060c991    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0060c995    8b442414
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0060c999    8d4c2428
                         push               ecx                                           // 0x0060c99d    51
                         push               edx                                           // 0x0060c99e    52
                         push               eax                                           // 0x0060c99f    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x70]                   // 0x0060c9a0    8d4b70
                         call               _jmp_addr_0x0060a5e0                          // 0x0060c9a3    e838dcffff
                         {disp8} jmp        _jmp_addr_0x0060c9da                          // 0x0060c9a8    eb30
_jmp_addr_0x0060c9aa:    cmp.s              eax, ebp                                      // 0x0060c9aa    3bc5
                         {disp8} lea        edi, dword ptr [ebx + 0x78]                   // 0x0060c9ac    8d7b78
                         {disp8} je         _jmp_addr_0x0060c9da                          // 0x0060c9af    7429
                         push               ebp                                           // 0x0060c9b1    55
                         push               0x1                                           // 0x0060c9b2    6a01
                         push               edi                                           // 0x0060c9b4    57
                         mov.s              ecx, esi                                      // 0x0060c9b5    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c9b7    e824ff1a00
                         cmp                eax, 0x03                                     // 0x0060c9bc    83f803
                         {disp8} jne        _jmp_addr_0x0060c9c7                          // 0x0060c9bf    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060c9c1    892d94c9be00
_jmp_addr_0x0060c9c7:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060c9c7    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0060c9cd    33c9
                         mov                cl, byte ptr [edi]                            // 0x0060c9cf    8a0f
                         inc                ecx                                           // 0x0060c9d1    41
                         add.s              eax, ecx                                      // 0x0060c9d2    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060c9d4    898614020000
_jmp_addr_0x0060c9da:    {disp8} lea        edx, dword ptr [ebx + 0x7c]                   // 0x0060c9da    8d537c
                         push               edx                                           // 0x0060c9dd    52
                         mov.s              ecx, esi                                      // 0x0060c9de    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0060c9e0    e89b57f5ff
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0060c9e5    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x00000080]             // 0x0060c9eb    8dbb80000000
                         {disp8} je         _jmp_addr_0x0060ca1e                          // 0x0060c9f1    742b
                         push               ebp                                           // 0x0060c9f3    55
                         push               0xc                                           // 0x0060c9f4    6a0c
                         push               edi                                           // 0x0060c9f6    57
                         mov.s              ecx, esi                                      // 0x0060c9f7    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0060c9f9    e8e2fe1a00
                         cmp                eax, 0x03                                     // 0x0060c9fe    83f803
                         {disp8} jne        _jmp_addr_0x0060ca09                          // 0x0060ca01    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0060ca03    892d94c9be00
_jmp_addr_0x0060ca09:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0060ca09    8b8e14020000
                         xor.s              eax, eax                                      // 0x0060ca0f    33c0
                         mov                al, byte ptr [edi]                            // 0x0060ca11    8a07
                         add                eax, 0x0c                                     // 0x0060ca13    83c00c
                         add.s              ecx, eax                                      // 0x0060ca16    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0060ca18    898e14020000
_jmp_addr_0x0060ca1e:    {disp8} lea        ecx, dword ptr [ebx + 0x60]                   // 0x0060ca1e    8d4b60
                         push               ecx                                           // 0x0060ca21    51
                         mov.s              ecx, esi                                      // 0x0060ca22    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0060ca24    e85757f5ff
                         add                ebx, 0x64                                     // 0x0060ca29    83c364
                         push               ebx                                           // 0x0060ca2c    53
                         mov.s              ecx, esi                                      // 0x0060ca2d    8bce
                         call               _jmp_addr_0x006167a0                          // 0x0060ca2f    e86c9d0000
                         pop                edi                                           // 0x0060ca34    5f
                         pop                ebp                                           // 0x0060ca35    5d
                         pop                esi                                           // 0x0060ca36    5e
                         mov                eax, 0x00000001                               // 0x0060ca37    b801000000
                         pop                ebx                                           // 0x0060ca3c    5b
                         add                esp, 0x24                                     // 0x0060ca3d    83c424
                         ret                0x0004                                        // 0x0060ca40    c20400
_jmp_addr_0x0060ca43:    pop                esi                                           // 0x0060ca43    5e
                         xor.s              eax, eax                                      // 0x0060ca44    33c0
                         pop                ebx                                           // 0x0060ca46    5b
                         add                esp, 0x24                                     // 0x0060ca47    83c424
                         ret                0x0004                                        // 0x0060ca4a    c20400
                         nop                                                              // 0x0060ca4d    90
                         nop                                                              // 0x0060ca4e    90
                         nop                                                              // 0x0060ca4f    90
@MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords@12:    sub                esp, 0x38                                     // 0x0060ca50    83ec38
                         push               esi                                           // 0x0060ca53    56
                         mov.s              esi, ecx                                      // 0x0060ca54    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0060ca56    8b466c
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x0060ca59    8b4e64
                         push               edi                                           // 0x0060ca5c    57
                         push               eax                                           // 0x0060ca5d    50
                         push               ecx                                           // 0x0060ca5e    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0060ca5f    8d542420
                         push               edx                                           // 0x0060ca63    52
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0060ca64    89742414
                         call               _jmp_addr_0x0060c1a0                          // 0x0060ca68    e833f7ffff
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0060ca6d    8d4614
                         push               eax                                           // 0x0060ca70    50
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0060ca71    8d4c2438
                         push               ecx                                           // 0x0060ca75    51
                         call               _jmp_addr_0x0060c180                          // 0x0060ca76    e805f7ffff
                         add                esp, 0x14                                     // 0x0060ca7b    83c414
                         push               0x0                                           // 0x0060ca7e    6a00
                         push               esi                                           // 0x0060ca80    56
                         {disp8} lea        ecx, dword ptr [esi + 0x70]                   // 0x0060ca81    8d4e70
                         push               0x0                                           // 0x0060ca84    6a00
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0060ca86    894c2420
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                          // 0x0060ca8a    e8e1dcffff
                         {disp8} mov        edi, dword ptr [esp + 0x44]                   // 0x0060ca8f    8b7c2444
                         push               edi                                           // 0x0060ca93    57
                         mov.s              ecx, edi                                      // 0x0060ca94    8bcf
                         call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ         // 0x0060ca96    e8156affff
                         push               eax                                           // 0x0060ca9b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0060ca9c    8d4c2438
                         call               @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16                          // 0x0060caa0    e8db070000
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0060caa5    8b44243c
                         test               eax, eax                                      // 0x0060caa9    85c0
                         {disp8} jne        _jmp_addr_0x0060cab9                          // 0x0060caab    750c
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060caad    8b442438
                         test               eax, eax                                      // 0x0060cab1    85c0
                         {disp32} je        _jmp_addr_0x0060cec0                          // 0x0060cab3    0f8407040000
_jmp_addr_0x0060cab9:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x0060cab9    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cabd    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cac3    dfe0
                         test               ah, 0x40                                      // 0x0060cac5    f6c440
                         {disp8} je         _jmp_addr_0x0060cae5                          // 0x0060cac8    741b
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0060caca    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cace    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cad4    dfe0
                         test               ah, 0x40                                      // 0x0060cad6    f6c440
                         {disp8} je         _jmp_addr_0x0060cae5                          // 0x0060cad9    740a
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0060cadb    c744240c00000000
                         {disp8} jmp        _jmp_addr_0x0060cb1d                          // 0x0060cae3    eb38
_jmp_addr_0x0060cae5:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0060cae5    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0060cae9    d84c241c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0060caed    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0060caf1    d84c2418
                         faddp              st(1), st                                     // 0x0060caf5    dec1
                         fsqrt                                                            // 0x0060caf7    d9fa
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0060caf9    d95c240c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0060cafd    d90590a38a00
                         {disp8} fdiv       dword ptr [esp + 0x0c]                        // 0x0060cb03    d874240c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0060cb07    d9442418
                         fmul               st, st(1)                                     // 0x0060cb0b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0060cb0d    d95c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0060cb11    d944241c
                         fmul               st, st(1)                                     // 0x0060cb15    d8c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0060cb17    d95c241c
                         fstp               st(0)                                         // 0x0060cb1b    ddd8
_jmp_addr_0x0060cb1d:    push               ebx                                           // 0x0060cb1d    53
                         push               ebp                                           // 0x0060cb1e    55
                         push               0x000006eb                                    // 0x0060cb1f    68eb060000
                         push               0x00bf42a4                                    // 0x0060cb24    68a442bf00
                         push               0x10                                          // 0x0060cb29    6a10
                         call               ___nw__FUl                                    // 0x0060cb2b    e860ec1c00
                         mov.s              esi, eax                                      // 0x0060cb30    8bf0
                         add                esp, 0x0c                                     // 0x0060cb32    83c40c
                         test               esi, esi                                      // 0x0060cb35    85f6
                         {disp8} je         _jmp_addr_0x0060cb6e                          // 0x0060cb37    7435
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060cb39    8b442440
                         test               eax, eax                                      // 0x0060cb3d    85c0
                         {disp8} jne        _jmp_addr_0x0060cb58                          // 0x0060cb3f    7517
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0060cb41    8b54243c
                         mov                eax, dword ptr [edx]                          // 0x0060cb45    8b02
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0060cb47    8b4824
                         test               ecx, ecx                                      // 0x0060cb4a    85c9
                         {disp8} je         _jmp_addr_0x0060cb58                          // 0x0060cb4c    740a
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0060cb4e    8b4108
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0060cb51    8b4c2438
                         mov                eax, dword ptr [eax + ecx * 0x4]              // 0x0060cb55    8b0488
_jmp_addr_0x0060cb58:    {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0060cb58    8d542420
                         push               edx                                           // 0x0060cb5c    52
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0060cb5d    8d4c2434
                         push               ecx                                           // 0x0060cb61    51
                         push               eax                                           // 0x0060cb62    50
                         mov.s              ecx, esi                                      // 0x0060cb63    8bce
                         call               _jmp_addr_0x0060cf20                          // 0x0060cb65    e8b6030000
                         mov.s              ebx, esi                                      // 0x0060cb6a    8bde
                         {disp8} jmp        _jmp_addr_0x0060cb70                          // 0x0060cb6c    eb02
_jmp_addr_0x0060cb6e:    xor.s              ebx, ebx                                      // 0x0060cb6e    33db
_jmp_addr_0x0060cb70:    push               0x000006ec                                    // 0x0060cb70    68ec060000
                         push               0x00bf42a4                                    // 0x0060cb75    68a442bf00
                         push               0x10                                          // 0x0060cb7a    6a10
                         call               ___nw__FUl                                    // 0x0060cb7c    e80fec1c00
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0060cb81    d94308
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cb84    d81d98a38a00
                         mov.s              ebp, eax                                      // 0x0060cb8a    8be8
                         add                esp, 0x0c                                     // 0x0060cb8c    83c40c
                         fnstsw             ax                                            // 0x0060cb8f    dfe0
                         test               ah, 0x41                                      // 0x0060cb91    f6c441
                         {disp32} je        _jmp_addr_0x0060ccba                          // 0x0060cb94    0f8420010000
_jmp_addr_0x0060cb9a:    {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060cb9a    8b442440
                         test               eax, eax                                      // 0x0060cb9e    85c0
                         {disp8} je         _jmp_addr_0x0060cbb4                          // 0x0060cba0    7412
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0060cba2    8b542438
                         push               edi                                           // 0x0060cba6    57
                         inc                edx                                           // 0x0060cba7    42
                         push               edx                                           // 0x0060cba8    52
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0060cba9    8d4c2440
                         call               @Init__20ObjectCircleIteratorFiRC9MapCoords@16// 0x0060cbad    e8ee040000
                         {disp8} jmp        _jmp_addr_0x0060cbe9                          // 0x0060cbb2    eb35
_jmp_addr_0x0060cbb4:    {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0060cbb4    8b44243c
                         mov                ecx, dword ptr [eax]                          // 0x0060cbb8    8b08
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x0060cbba    8b5124
                         test               edx, edx                                      // 0x0060cbbd    85d2
                         {disp8} je         _jmp_addr_0x0060cbd4                          // 0x0060cbbf    7413
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0060cbc1    8b4c2438
                         inc                ecx                                           // 0x0060cbc5    41
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0060cbc6    894c2438
                         mov                edx, dword ptr [eax]                          // 0x0060cbca    8b10
                         {disp8} mov        eax, dword ptr [edx + 0x24]                   // 0x0060cbcc    8b4224
                         cmp                ecx, dword ptr [eax + 0x04]                   // 0x0060cbcf    3b4804
                         {disp8} jl         _jmp_addr_0x0060cbe9                          // 0x0060cbd2    7c15
_jmp_addr_0x0060cbd4:    {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0060cbd4    8b4c2444
                         push               edi                                           // 0x0060cbd8    57
                         push               edi                                           // 0x0060cbd9    57
                         call               @GetMapChild__6ObjectFRC9MapCoords@12         // 0x0060cbda    e881b90200
                         push               eax                                           // 0x0060cbdf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0060cbe0    8d4c2440
                         call               @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16                          // 0x0060cbe4    e897060000
_jmp_addr_0x0060cbe9:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0060cbe9    8b442444
                         test               eax, eax                                      // 0x0060cbed    85c0
                         {disp8} mov        esi, dword ptr [esp + 0x40]                   // 0x0060cbef    8b742440
                         {disp8} jne        _jmp_addr_0x0060cbff                          // 0x0060cbf3    750a
                         test               esi, esi                                      // 0x0060cbf5    85f6
                         {disp32} je        _jmp_addr_0x0060ccca                          // 0x0060cbf7    0f84cd000000
                         {disp8} jmp        _jmp_addr_0x0060cc1a                          // 0x0060cbfd    eb1b
_jmp_addr_0x0060cbff:    test               esi, esi                                      // 0x0060cbff    85f6
                         {disp8} jne        _jmp_addr_0x0060cc1a                          // 0x0060cc01    7517
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0060cc03    8b4c243c
                         mov                esi, dword ptr [ecx]                          // 0x0060cc07    8b31
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x0060cc09    8b4624
                         test               eax, eax                                      // 0x0060cc0c    85c0
                         {disp8} je         _jmp_addr_0x0060cc1a                          // 0x0060cc0e    740a
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0060cc10    8b5008
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060cc13    8b442438
                         mov                esi, dword ptr [edx + eax * 0x4]              // 0x0060cc17    8b3482
_jmp_addr_0x0060cc1a:    fld                dword ptr [esi]                               // 0x0060cc1a    d906
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0060cc1c    8d4c2428
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0060cc20    d94608
                         push               ecx                                           // 0x0060cc23    51
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0060cc24    d95c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0060cc28    8d4c2424
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0060cc2c    d8642434
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0060cc30    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0060cc34    d9442430
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x0060cc38    d8642438
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0060cc3c    d95c2430
                         call               @DotProduct__7Point2DRP7Point2D@12            // 0x0060cc40    e82b450000
                         {disp8} fst        dword ptr [ebx + 0x04]                        // 0x0060cc45    d95304
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x0060cc48    8b560c
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x0060cc4b    8954244c
                         {disp8} fsub       dword ptr [esp + 0x4c]                        // 0x0060cc4f    d864244c
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0060cc53    8d4c2428
                         fstp               dword ptr [ebx]                               // 0x0060cc57    d91b
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0060cc59    d944244c
                         {disp8} fmul       dword ptr [esp + 0x4c]                        // 0x0060cc5d    d84c244c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0060cc61    d95c2418
                         call               ?GetNormSq@Point2D@@QAEMXZ                    // 0x0060cc65    e886490000
                         {disp8} fsubr      dword ptr [esp + 0x18]                        // 0x0060cc6a    d86c2418
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0060cc6e    d94304
                         {disp8} mov        dword ptr [ebx + 0x0c], esi                   // 0x0060cc71    89730c
                         fld                st(0)                                         // 0x0060cc74    d9c0
                         fmul               st, st(1)                                     // 0x0060cc76    d8c9
                         faddp              st(2), st                                     // 0x0060cc78    dec2
                         fstp               st(0)                                         // 0x0060cc7a    ddd8
                         {disp8} fst        dword ptr [ebx + 0x08]                        // 0x0060cc7c    d95308
                         fld                dword ptr [ebx]                               // 0x0060cc7f    d903
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060cc81    dc1d68069300
                         fnstsw             ax                                            // 0x0060cc87    dfe0
                         test               ah, 0x01                                      // 0x0060cc89    f6c401
                         {disp8} je         _jmp_addr_0x0060cca4                          // 0x0060cc8c    7416
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cc8e    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cc94    dfe0
                         test               ah, 0x41                                      // 0x0060cc96    f6c441
                         {disp8} jne        _jmp_addr_0x0060cca6                          // 0x0060cc99    750b
                         mov.s              ecx, ebx                                      // 0x0060cc9b    8bcb
                         call               _jmp_addr_0x0060cee0                          // 0x0060cc9d    e83e020000
                         {disp8} jmp        _jmp_addr_0x0060cca6                          // 0x0060cca2    eb02
_jmp_addr_0x0060cca4:    fstp               st(0)                                         // 0x0060cca4    ddd8
_jmp_addr_0x0060cca6:    {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0060cca6    d94308
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cca9    d81d98a38a00
                         fnstsw             ax                                            // 0x0060ccaf    dfe0
                         test               ah, 0x41                                      // 0x0060ccb1    f6c441
                         {disp32} jne       _jmp_addr_0x0060cb9a                          // 0x0060ccb4    0f85e0feffff
_jmp_addr_0x0060ccba:    {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0060ccba    8b4c2444
                         test               ecx, ecx                                      // 0x0060ccbe    85c9
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060ccc0    8b442440
                         {disp8} jne        _jmp_addr_0x0060ccf0                          // 0x0060ccc4    752a
                         test               eax, eax                                      // 0x0060ccc6    85c0
                         {disp8} jne        _jmp_addr_0x0060ccf4                          // 0x0060ccc8    752a
_jmp_addr_0x0060ccca:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060ccca    8b4c2410
                         {disp8} mov        byte ptr [ecx + 0x74], -0x01                  // 0x0060ccce    c64174ff
_jmp_addr_0x0060ccd2:    push               ebx                                           // 0x0060ccd2    53
                         call               ??3@YAXPAX@Z                                  // 0x0060ccd3    e8c0211a00
                         push               ebp                                           // 0x0060ccd8    55
                         call               ??3@YAXPAX@Z                                  // 0x0060ccd9    e8ba211a00
                         add                esp, 0x08                                     // 0x0060ccde    83c408
                         pop                ebp                                           // 0x0060cce1    5d
                         pop                ebx                                           // 0x0060cce2    5b
                         pop                edi                                           // 0x0060cce3    5f
                         mov                eax, 0x00000001                               // 0x0060cce4    b801000000
                         pop                esi                                           // 0x0060cce9    5e
                         add                esp, 0x38                                     // 0x0060ccea    83c438
                         ret                0x0004                                        // 0x0060cced    c20400
_jmp_addr_0x0060ccf0:    test               eax, eax                                      // 0x0060ccf0    85c0
                         {disp8} je         _jmp_addr_0x0060cd06                          // 0x0060ccf2    7412
_jmp_addr_0x0060ccf4:    {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060ccf4    8b442438
                         push               edi                                           // 0x0060ccf8    57
                         inc                eax                                           // 0x0060ccf9    40
                         push               eax                                           // 0x0060ccfa    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0060ccfb    8d4c2440
                         call               @Init__20ObjectCircleIteratorFiRC9MapCoords@16// 0x0060ccff    e89c030000
                         {disp8} jmp        _jmp_addr_0x0060cd37                          // 0x0060cd04    eb31
_jmp_addr_0x0060cd06:    {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0060cd06    8b44243c
                         mov                edx, dword ptr [eax]                          // 0x0060cd0a    8b10
                         {disp8} mov        esi, dword ptr [edx + 0x24]                   // 0x0060cd0c    8b7224
                         test               esi, esi                                      // 0x0060cd0f    85f6
                         {disp8} je         _jmp_addr_0x0060cd26                          // 0x0060cd11    7413
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0060cd13    8b542438
                         inc                edx                                           // 0x0060cd17    42
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0060cd18    89542438
                         mov                eax, dword ptr [eax]                          // 0x0060cd1c    8b00
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x0060cd1e    8b4024
                         cmp                edx, dword ptr [eax + 0x04]                   // 0x0060cd21    3b5004
                         {disp8} jl         _jmp_addr_0x0060cd37                          // 0x0060cd24    7c11
_jmp_addr_0x0060cd26:    push               edi                                           // 0x0060cd26    57
                         push               edi                                           // 0x0060cd27    57
_jmp_addr_0x0060cd28:    call               @GetMapChild__6ObjectFRC9MapCoords@12         // 0x0060cd28    e833b80200
                         push               eax                                           // 0x0060cd2d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0060cd2e    8d4c2440
                         call               @Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords@16                          // 0x0060cd32    e849050000
_jmp_addr_0x0060cd37:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0060cd37    8b442444
                         test               eax, eax                                      // 0x0060cd3b    85c0
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x0060cd3d    8b4c2440
                         {disp8} jne        _jmp_addr_0x0060cd4d                          // 0x0060cd41    750a
                         test               ecx, ecx                                      // 0x0060cd43    85c9
                         {disp32} je        _jmp_addr_0x0060ce44                          // 0x0060cd45    0f84f9000000
                         {disp8} jmp        _jmp_addr_0x0060cd68                          // 0x0060cd4b    eb1b
_jmp_addr_0x0060cd4d:    test               ecx, ecx                                      // 0x0060cd4d    85c9
                         {disp8} jne        _jmp_addr_0x0060cd68                          // 0x0060cd4f    7517
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0060cd51    8b4c243c
                         mov                ecx, dword ptr [ecx]                          // 0x0060cd55    8b09
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x0060cd57    8b4124
                         test               eax, eax                                      // 0x0060cd5a    85c0
                         {disp8} je         _jmp_addr_0x0060cd68                          // 0x0060cd5c    740a
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0060cd5e    8b5008
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060cd61    8b442438
                         mov                ecx, dword ptr [edx + eax * 0x4]              // 0x0060cd65    8b0c82
_jmp_addr_0x0060cd68:    {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0060cd68    8d542420
                         push               edx                                           // 0x0060cd6c    52
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x0060cd6d    8d442434
                         push               eax                                           // 0x0060cd71    50
                         push               ecx                                           // 0x0060cd72    51
                         mov.s              ecx, ebp                                      // 0x0060cd73    8bcd
                         call               _jmp_addr_0x0060cf20                          // 0x0060cd75    e8a6010000
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0060cd7a    d94508
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cd7d    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cd83    dfe0
                         test               ah, 0x41                                      // 0x0060cd85    f6c441
                         {disp8} je         _jmp_addr_0x0060cde7                          // 0x0060cd88    745d
_jmp_addr_0x0060cd8a:    push               edi                                           // 0x0060cd8a    57
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x0060cd8b    8d4c243c
                         call               _jmp_addr_0x0060d520                          // 0x0060cd8f    e88c070000
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0060cd94    8b442444
                         test               eax, eax                                      // 0x0060cd98    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060cd9a    8b442440
                         {disp8} jne        _jmp_addr_0x0060cdaa                          // 0x0060cd9e    750a
                         test               eax, eax                                      // 0x0060cda0    85c0
                         {disp32} je        _jmp_addr_0x0060ce44                          // 0x0060cda2    0f849c000000
                         {disp8} jmp        _jmp_addr_0x0060cdc5                          // 0x0060cda8    eb1b
_jmp_addr_0x0060cdaa:    test               eax, eax                                      // 0x0060cdaa    85c0
                         {disp8} jne        _jmp_addr_0x0060cdc5                          // 0x0060cdac    7517
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0060cdae    8b4c243c
                         mov                eax, dword ptr [ecx]                          // 0x0060cdb2    8b01
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x0060cdb4    8b4824
                         test               ecx, ecx                                      // 0x0060cdb7    85c9
                         {disp8} je         _jmp_addr_0x0060cdc5                          // 0x0060cdb9    740a
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0060cdbb    8b5108
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0060cdbe    8b442438
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x0060cdc2    8b0482
_jmp_addr_0x0060cdc5:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0060cdc5    8d4c2420
                         push               ecx                                           // 0x0060cdc9    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0060cdca    8d542434
                         push               edx                                           // 0x0060cdce    52
                         push               eax                                           // 0x0060cdcf    50
                         mov.s              ecx, ebp                                      // 0x0060cdd0    8bcd
                         call               _jmp_addr_0x0060cf20                          // 0x0060cdd2    e849010000
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0060cdd7    d94508
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cdda    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cde0    dfe0
                         test               ah, 0x41                                      // 0x0060cde2    f6c441
                         {disp8} jne        _jmp_addr_0x0060cd8a                          // 0x0060cde5    75a3
_jmp_addr_0x0060cde7:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x0060cde7    8b442444
                         test               eax, eax                                      // 0x0060cdeb    85c0
                         {disp8} jne        _jmp_addr_0x0060cdf7                          // 0x0060cded    7508
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060cdef    8b442440
                         test               eax, eax                                      // 0x0060cdf3    85c0
                         {disp8} je         _jmp_addr_0x0060ce44                          // 0x0060cdf5    744d
_jmp_addr_0x0060cdf7:    push               ebx                                           // 0x0060cdf7    53
                         mov.s              ecx, ebp                                      // 0x0060cdf8    8bcd
                         call               _jmp_addr_0x0060cff0                          // 0x0060cdfa    e8f1010000
                         test               eax, eax                                      // 0x0060cdff    85c0
                         {disp8} je         _jmp_addr_0x0060ce09                          // 0x0060ce01    7406
                         mov.s              eax, ebx                                      // 0x0060ce03    8bc3
                         mov.s              ebx, ebp                                      // 0x0060ce05    8bdd
                         mov.s              ebp, eax                                      // 0x0060ce07    8be8
_jmp_addr_0x0060ce09:    {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0060ce09    8b442440
                         test               eax, eax                                      // 0x0060ce0d    85c0
                         {disp32} jne       _jmp_addr_0x0060ccf4                          // 0x0060ce0f    0f85dffeffff
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0060ce15    8b44243c
                         mov                ecx, dword ptr [eax]                          // 0x0060ce19    8b08
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x0060ce1b    8b5124
                         test               edx, edx                                      // 0x0060ce1e    85d2
                         {disp8} je         _jmp_addr_0x0060ce39                          // 0x0060ce20    7417
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0060ce22    8b4c2438
                         inc                ecx                                           // 0x0060ce26    41
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0060ce27    894c2438
                         mov                edx, dword ptr [eax]                          // 0x0060ce2b    8b10
                         {disp8} mov        eax, dword ptr [edx + 0x24]                   // 0x0060ce2d    8b4224
                         cmp                ecx, dword ptr [eax + 0x04]                   // 0x0060ce30    3b4804
                         {disp32} jl        _jmp_addr_0x0060cd37                          // 0x0060ce33    0f8cfefeffff
_jmp_addr_0x0060ce39:    {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0060ce39    8b4c2444
                         push               edi                                           // 0x0060ce3d    57
                         push               edi                                           // 0x0060ce3e    57
                         {disp32} jmp       _jmp_addr_0x0060cd28                          // 0x0060ce3f    e9e4feffff
_jmp_addr_0x0060ce44:    mov.s              ecx, ebx                                      // 0x0060ce44    8bcb
                         call               _jmp_addr_0x0060cee0                          // 0x0060ce46    e895000000
                         fld                dword ptr [ebx]                               // 0x0060ce4b    d903
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x87654]             // 0x0060ce4d    d81d54069300
                         fnstsw             ax                                            // 0x0060ce53    dfe0
                         test               ah, 0x40                                      // 0x0060ce55    f6c440
                         {disp32} jne       _jmp_addr_0x0060ccca                          // 0x0060ce58    0f856cfeffff
                         fld                dword ptr [ebx]                               // 0x0060ce5e    d903
                         {disp8} fdiv       dword ptr [esp + 0x14]                        // 0x0060ce60    d8742414
                         {disp32} fcom      dword ptr [__real@437f0000]                   // 0x0060ce64    d81570b28a00
                         fst                dword ptr [ebx]                               // 0x0060ce6a    d913
                         fnstsw             ax                                            // 0x0060ce6c    dfe0
                         test               ah, 0x41                                      // 0x0060ce6e    f6c441
                         {disp8} jne        _jmp_addr_0x0060ce82                          // 0x0060ce71    750f
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0060ce73    8b542410
                         fstp               st(0)                                         // 0x0060ce77    ddd8
                         {disp8} mov        byte ptr [edx + 0x74], -0x01                  // 0x0060ce79    c64274ff
                         {disp32} jmp       _jmp_addr_0x0060ccd2                          // 0x0060ce7d    e950feffff
_jmp_addr_0x0060ce82:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0060ce82    d81598a38a00
                         fnstsw             ax                                            // 0x0060ce88    dfe0
                         test               ah, 0x41                                      // 0x0060ce8a    f6c441
                         {disp8} je         _jmp_addr_0x0060ce97                          // 0x0060ce8d    7408
                         fstp               st(0)                                         // 0x0060ce8f    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0060ce91    d90598a38a00
_jmp_addr_0x0060ce97:    call               _jmp_addr_0x007a1400                          // 0x0060ce97    e864451900
                         cmp                al, -0x01                                     // 0x0060ce9c    3cff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060ce9e    8b4c2410
                         {disp8} mov        byte ptr [ecx + 0x74], al                     // 0x0060cea2    884174
                         {disp32} je        _jmp_addr_0x0060ccd2                          // 0x0060cea5    0f8427feffff
                         {disp8} mov        eax, dword ptr [ebx + 0x0c]                   // 0x0060ceab    8b430c
                         push               0x0                                           // 0x0060ceae    6a00
                         push               ecx                                           // 0x0060ceb0    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0060ceb1    8b4c2424
                         push               eax                                           // 0x0060ceb5    50
                         call               @SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb@17                          // 0x0060ceb6    e8b5d8ffff
                         {disp32} jmp       _jmp_addr_0x0060ccd2                          // 0x0060cebb    e912feffff
_jmp_addr_0x0060cec0:    pop                edi                                           // 0x0060cec0    5f
                         {disp8} mov        byte ptr [esi + 0x74], -0x01                  // 0x0060cec1    c64674ff
                         mov                eax, 0x00000001                               // 0x0060cec5    b801000000
                         pop                esi                                           // 0x0060ceca    5e
                         add                esp, 0x38                                     // 0x0060cecb    83c438
                         ret                0x0004                                        // 0x0060cece    c20400
                         nop                                                              // 0x0060ced1    90
                         nop                                                              // 0x0060ced2    90
                         nop                                                              // 0x0060ced3    90
                         nop                                                              // 0x0060ced4    90
                         nop                                                              // 0x0060ced5    90
                         nop                                                              // 0x0060ced6    90
                         nop                                                              // 0x0060ced7    90
                         nop                                                              // 0x0060ced8    90
                         nop                                                              // 0x0060ced9    90
                         nop                                                              // 0x0060ceda    90
                         nop                                                              // 0x0060cedb    90
                         nop                                                              // 0x0060cedc    90
                         nop                                                              // 0x0060cedd    90
                         nop                                                              // 0x0060cede    90
                         nop                                                              // 0x0060cedf    90
_jmp_addr_0x0060cee0:    fld                dword ptr [ecx]                               // 0x0060cee0    d901
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x0060cee2    d85904
                         fnstsw             ax                                            // 0x0060cee5    dfe0
                         test               ah, 0x40                                      // 0x0060cee7    f6c440
                         {disp8} jne        _jmp_addr_0x0060cf18                          // 0x0060ceea    752c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060ceec    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0060ceef    d94108
                         fsqrt                                                            // 0x0060cef2    d9fa
                         fsubp              st(1), st                                     // 0x0060cef4    dee9
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0060cef6    d95104
                         fst                dword ptr [ecx]                               // 0x0060cef9    d911
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060cefb    dc1d68069300
                         fnstsw             ax                                            // 0x0060cf01    dfe0
                         test               ah, 0x01                                      // 0x0060cf03    f6c401
                         {disp8} je         _jmp_addr_0x0060cf18                          // 0x0060cf06    7410
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060cf08    a154069300
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0060cf0d    894104
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x87654]        // 0x0060cf10    8b1554069300
                         mov                dword ptr [ecx], edx                          // 0x0060cf16    8911
_jmp_addr_0x0060cf18:    ret                                                              // 0x0060cf18    c3
                         nop                                                              // 0x0060cf19    90
                         nop                                                              // 0x0060cf1a    90
                         nop                                                              // 0x0060cf1b    90
                         nop                                                              // 0x0060cf1c    90
                         nop                                                              // 0x0060cf1d    90
                         nop                                                              // 0x0060cf1e    90
                         nop                                                              // 0x0060cf1f    90
_jmp_addr_0x0060cf20:    sub                esp, 0x08                                     // 0x0060cf20    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0060cf23    8b44240c
                         fld                dword ptr [eax]                               // 0x0060cf27    d900
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0060cf29    8b542410
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0060cf2d    d94008
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0060cf30    d95c2404
                         fsub               dword ptr [edx]                               // 0x0060cf34    d822
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0060cf36    d9442404
                         {disp8} fsub       dword ptr [edx + 0x04]                        // 0x0060cf3a    d86204
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0060cf3d    8b542414
                         fld                st(0)                                         // 0x0060cf41    d9c0
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0060cf43    d84a04
                         fld                st(2)                                         // 0x0060cf46    d9c2
                         fmul               dword ptr [edx]                               // 0x0060cf48    d80a
                         faddp              st(1), st                                     // 0x0060cf4a    dec1
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0060cf4c    d95104
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x0060cf4f    8b500c
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0060cf52    8954240c
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0060cf56    d864240c
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x0060cf5a    89410c
                         fstp               dword ptr [ecx]                               // 0x0060cf5d    d919
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060cf5f    d94104
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0060cf62    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0060cf66    d84c240c
                         fld                st(2)                                         // 0x0060cf6a    d9c2
                         fmul               st, st(3)                                     // 0x0060cf6c    d8cb
                         fld                st(4)                                         // 0x0060cf6e    d9c4
                         fmul               st, st(5)                                     // 0x0060cf70    d8cd
                         faddp              st(1), st                                     // 0x0060cf72    dec1
                         fsubp              st(1), st                                     // 0x0060cf74    dee9
                         fld                st(1)                                         // 0x0060cf76    d9c1
                         fmul               st, st(2)                                     // 0x0060cf78    d8ca
                         faddp              st(1), st                                     // 0x0060cf7a    dec1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0060cf7c    d95908
                         fstp               st(0)                                         // 0x0060cf7f    ddd8
                         fstp               st(0)                                         // 0x0060cf81    ddd8
                         fstp               st(0)                                         // 0x0060cf83    ddd8
                         fld                dword ptr [ecx]                               // 0x0060cf85    d901
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060cf87    dc1d68069300
                         fnstsw             ax                                            // 0x0060cf8d    dfe0
                         test               ah, 0x01                                      // 0x0060cf8f    f6c401
                         {disp8} je         _jmp_addr_0x0060cfdc                          // 0x0060cf92    7448
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0060cf94    d94108
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0060cf97    d81d98a38a00
                         fnstsw             ax                                            // 0x0060cf9d    dfe0
                         test               ah, 0x41                                      // 0x0060cf9f    f6c441
                         {disp8} jne        _jmp_addr_0x0060cfdc                          // 0x0060cfa2    7538
                         fld                dword ptr [ecx]                               // 0x0060cfa4    d901
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x0060cfa6    d85904
                         fnstsw             ax                                            // 0x0060cfa9    dfe0
                         test               ah, 0x40                                      // 0x0060cfab    f6c440
                         {disp8} jne        _jmp_addr_0x0060cfdc                          // 0x0060cfae    752c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060cfb0    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0060cfb3    d94108
                         fsqrt                                                            // 0x0060cfb6    d9fa
                         fsubp              st(1), st                                     // 0x0060cfb8    dee9
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0060cfba    d95104
                         fst                dword ptr [ecx]                               // 0x0060cfbd    d911
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060cfbf    dc1d68069300
                         fnstsw             ax                                            // 0x0060cfc5    dfe0
                         test               ah, 0x01                                      // 0x0060cfc7    f6c401
                         {disp8} je         _jmp_addr_0x0060cfdc                          // 0x0060cfca    7410
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060cfcc    a154069300
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0060cfd1    894104
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x87654]        // 0x0060cfd4    8b1554069300
                         mov                dword ptr [ecx], edx                          // 0x0060cfda    8911
_jmp_addr_0x0060cfdc:    add                esp, 0x08                                     // 0x0060cfdc    83c408
                         ret                0x000c                                        // 0x0060cfdf    c20c00
                         nop                                                              // 0x0060cfe2    90
                         nop                                                              // 0x0060cfe3    90
                         nop                                                              // 0x0060cfe4    90
                         nop                                                              // 0x0060cfe5    90
                         nop                                                              // 0x0060cfe6    90
                         nop                                                              // 0x0060cfe7    90
                         nop                                                              // 0x0060cfe8    90
                         nop                                                              // 0x0060cfe9    90
                         nop                                                              // 0x0060cfea    90
                         nop                                                              // 0x0060cfeb    90
                         nop                                                              // 0x0060cfec    90
                         nop                                                              // 0x0060cfed    90
                         nop                                                              // 0x0060cfee    90
                         nop                                                              // 0x0060cfef    90
_jmp_addr_0x0060cff0:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060cff0    d94104
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0060cff3    8b542404
                         fcomp              dword ptr [edx]                               // 0x0060cff7    d81a
                         fnstsw             ax                                            // 0x0060cff9    dfe0
                         test               ah, 0x01                                      // 0x0060cffb    f6c401
                         {disp8} je         _jmp_addr_0x0060d008                          // 0x0060cffe    7408
                         mov                eax, 0x00000001                               // 0x0060d000    b801000000
                         ret                0x0004                                        // 0x0060d005    c20400
_jmp_addr_0x0060d008:    fld                dword ptr [ecx]                               // 0x0060d008    d901
                         {disp8} fcomp      dword ptr [edx + 0x04]                        // 0x0060d00a    d85a04
                         fnstsw             ax                                            // 0x0060d00d    dfe0
                         test               ah, 0x41                                      // 0x0060d00f    f6c441
                         {disp32} je        _jmp_addr_0x0060d09a                          // 0x0060d012    0f8482000000
                         fld                dword ptr [ecx]                               // 0x0060d018    d901
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x0060d01a    d85904
                         fnstsw             ax                                            // 0x0060d01d    dfe0
                         test               ah, 0x40                                      // 0x0060d01f    f6c440
                         {disp8} jne        _jmp_addr_0x0060d04f                          // 0x0060d022    752b
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060d024    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0060d027    d94108
                         fsqrt                                                            // 0x0060d02a    d9fa
                         fsubp              st(1), st                                     // 0x0060d02c    dee9
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0060d02e    d95104
                         fst                dword ptr [ecx]                               // 0x0060d031    d911
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060d033    dc1d68069300
                         fnstsw             ax                                            // 0x0060d039    dfe0
                         test               ah, 0x01                                      // 0x0060d03b    f6c401
                         {disp8} je         _jmp_addr_0x0060d04f                          // 0x0060d03e    740f
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060d040    a154069300
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0060d045    894104
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060d048    a154069300
                         mov                dword ptr [ecx], eax                          // 0x0060d04d    8901
_jmp_addr_0x0060d04f:    fld                dword ptr [edx]                               // 0x0060d04f    d902
                         {disp8} fcomp      dword ptr [edx + 0x04]                        // 0x0060d051    d85a04
                         fnstsw             ax                                            // 0x0060d054    dfe0
                         test               ah, 0x40                                      // 0x0060d056    f6c440
                         {disp8} jne        _jmp_addr_0x0060d086                          // 0x0060d059    752b
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0060d05b    d94204
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0060d05e    d94208
                         fsqrt                                                            // 0x0060d061    d9fa
                         fsubp              st(1), st                                     // 0x0060d063    dee9
                         {disp8} fst        dword ptr [edx + 0x04]                        // 0x0060d065    d95204
                         fst                dword ptr [edx]                               // 0x0060d068    d912
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x87668]             // 0x0060d06a    dc1d68069300
                         fnstsw             ax                                            // 0x0060d070    dfe0
                         test               ah, 0x01                                      // 0x0060d072    f6c401
                         {disp8} je         _jmp_addr_0x0060d086                          // 0x0060d075    740f
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060d077    a154069300
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0060d07c    894204
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x87654]        // 0x0060d07f    a154069300
                         mov                dword ptr [edx], eax                          // 0x0060d084    8902
_jmp_addr_0x0060d086:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0060d086    d94104
                         fcomp              dword ptr [edx]                               // 0x0060d089    d81a
                         fnstsw             ax                                            // 0x0060d08b    dfe0
                         test               ah, 0x01                                      // 0x0060d08d    f6c401
                         {disp8} je         _jmp_addr_0x0060d09a                          // 0x0060d090    7408
                         mov                eax, 0x00000001                               // 0x0060d092    b801000000
                         ret                0x0004                                        // 0x0060d097    c20400
_jmp_addr_0x0060d09a:    xor.s              eax, eax                                      // 0x0060d09a    33c0
                         ret                0x0004                                        // 0x0060d09c    c20400
                         nop                                                              // 0x0060d09f    90
@Init__20ObjectCircleIteratorFiRC9MapCoords@16:    sub                esp, 0x1c                                     // 0x0060d0a0    83ec1c
                         push               ebx                                           // 0x0060d0a3    53
                         push               ebp                                           // 0x0060d0a4    55
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x0060d0a5    8b6c242c
                         mov.s              edx, ecx                                      // 0x0060d0a9    8bd1
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0060d0ab    8b4c2428
                         push               esi                                           // 0x0060d0af    56
                         push               edi                                           // 0x0060d0b0    57
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0060d0b1    89542410
_jmp_addr_0x0060d0b5:    mov.s              eax, ebp                                      // 0x0060d0b5    8bc5
                         mov                esi, dword ptr [eax]                          // 0x0060d0b7    8b30
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0060d0b9    89742414
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0060d0bd    8b7004
                         {disp8} mov        ebx, dword ptr [eax + 0x08]                   // 0x0060d0c0    8b5808
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0060d0c3    8d41ff
                         cmp                eax, 0x08                                     // 0x0060d0c6    83f808
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0060d0c9    89742418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0060d0cd    895c241c
                         {disp8} ja         _jmp_addr_0x0060d111                          // 0x0060d0d1    773e
                         jmp                dword ptr [eax*4 + 0x60d254]                  // 0x0060d0d3    ff248554d26000
                         {disp8} inc        word ptr [esp + 0x1a]                         // 0x0060d0da    66ff44241a
                         {disp8} jmp        _jmp_addr_0x0060d111                          // 0x0060d0df    eb30
                         dec                word ptr [esp + 0x1a]                         // 0x0060d0e1    66ff4c241a
                         {disp8} jmp        _jmp_addr_0x0060d111                          // 0x0060d0e6    eb29
                         dec                word ptr [esp + 0x1a]                         // 0x0060d0e8    66ff4c241a
                         dec                word ptr [esp + 0x16]                         // 0x0060d0ed    66ff4c2416
                         {disp8} jmp        _jmp_addr_0x0060d111                          // 0x0060d0f2    eb1d
                         {disp8} inc        word ptr [esp + 0x1a]                         // 0x0060d0f4    66ff44241a
                         dec                word ptr [esp + 0x16]                         // 0x0060d0f9    66ff4c2416
                         {disp8} jmp        _jmp_addr_0x0060d111                          // 0x0060d0fe    eb11
                         dec                word ptr [esp + 0x1a]                         // 0x0060d100    66ff4c241a
                         {disp8} jmp        _jmp_addr_0x0060d10c                          // 0x0060d105    eb05
                         {disp8} inc        word ptr [esp + 0x1a]                         // 0x0060d107    66ff44241a
_jmp_addr_0x0060d10c:    {disp8} inc        word ptr [esp + 0x16]                         // 0x0060d10c    66ff442416
_jmp_addr_0x0060d111:    {disp8} mov        esi, dword ptr [esp + 0x16]                   // 0x0060d111    8b742416
                         mov                dword ptr [edx], ecx                          // 0x0060d115    890a
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0060d117    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x000059c8]             // 0x0060d11d    8b81c8590000
                         add                ecx, 0x000059b8                               // 0x0060d123    81c1b8590000
                         and                esi, 0x0000ffff                               // 0x0060d129    81e6ffff0000
                         cmp.s              esi, eax                                      // 0x0060d12f    3bf0
                         {disp8} jae        _jmp_addr_0x0060d187                          // 0x0060d131    7354
                         {disp8} mov        edi, dword ptr [esp + 0x1a]                   // 0x0060d133    8b7c241a
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x0060d137    8b410c
                         and                edi, 0x0000ffff                               // 0x0060d13a    81e7ffff0000
                         cmp.s              edi, eax                                      // 0x0060d140    3bf8
                         {disp8} jae        _jmp_addr_0x0060d187                          // 0x0060d142    7343
                         push               edi                                           // 0x0060d144    57
                         push               esi                                           // 0x0060d145    56
                         call               @InBounds__4GMapCFll@16                       // 0x0060d146    e845550000
                         push               edi                                           // 0x0060d14b    57
                         push               esi                                           // 0x0060d14c    56
                         call               ?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z      // 0x0060d14d    e84e99f0ff
                         add                esp, 0x08                                     // 0x0060d152    83c408
                         test               eax, eax                                      // 0x0060d155    85c0
                         {disp8} je         _jmp_addr_0x0060d187                          // 0x0060d157    742e
                         xor.s              edx, edx                                      // 0x0060d159    33d2
                         {disp8} mov        dl, byte ptr [eax + 0x06]                     // 0x0060d15b    8a5006
                         and                edx, 0x10                                     // 0x0060d15e    83e210
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0060d161    89542434
                         {disp8} jne        _jmp_addr_0x0060d187                          // 0x0060d165    7520
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060d167    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0060d16b    8b08
                         inc                ecx                                           // 0x0060d16d    41
                         mov.s              edx, eax                                      // 0x0060d16e    8bd0
                         {disp32} jmp       _jmp_addr_0x0060d0b5                          // 0x0060d170    e940ffffff
                         pop                edi                                           // 0x0060d175    5f
                         pop                esi                                           // 0x0060d176    5e
                         xor.s              eax, eax                                      // 0x0060d177    33c0
                         pop                ebp                                           // 0x0060d179    5d
                         {disp8} mov        dword ptr [edx + 0x0c], eax                   // 0x0060d17a    89420c
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0060d17d    894208
                         pop                ebx                                           // 0x0060d180    5b
                         add                esp, 0x1c                                     // 0x0060d181    83c41c
                         ret                0x0008                                        // 0x0060d184    c20800
_jmp_addr_0x0060d187:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0060d187    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0060d18b    8b542418
                         mov                eax, 0x00008000                               // 0x0060d18f    b800800000
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0060d194    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0060d198    89542424
                         {disp8} mov        word ptr [esp + 0x20], ax                     // 0x0060d19c    6689442420
                         {disp8} mov        word ptr [esp + 0x24], ax                     // 0x0060d1a1    6689442424
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0060d1a6    8d442420
                         push               eax                                           // 0x0060d1aa    50
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0060d1ab    8d4c2438
                         push               ecx                                           // 0x0060d1af    51
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x0060d1b0    895c2430
                         call               _jmp_addr_0x007370b0                          // 0x0060d1b4    e8f79e1200
                         add                esp, 0x08                                     // 0x0060d1b9    83c408
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0060d1bc    8d542434
                         push               edx                                           // 0x0060d1c0    52
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x0060d1c1    8d442434
                         push               eax                                           // 0x0060d1c5    50
                         mov                ecx, 0x00d3eebc                               // 0x0060d1c6    b9bceed300
                         call               _jmp_addr_0x00610010                          // 0x0060d1cb    e8402e0000
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0060d1d0    8b442430
                         cmp                eax, dword ptr [data_bytes + 0x378ec0]        // 0x0060d1d4    3b05c0eed300
                         {disp8} je         _jmp_addr_0x0060d1f0                          // 0x0060d1da    7414
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0060d1dc    8b4010
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060d1df    8b4c2410
                         pop                edi                                           // 0x0060d1e3    5f
                         pop                esi                                           // 0x0060d1e4    5e
                         pop                ebp                                           // 0x0060d1e5    5d
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0060d1e6    894108
                         pop                ebx                                           // 0x0060d1e9    5b
                         add                esp, 0x1c                                     // 0x0060d1ea    83c41c
                         ret                0x0008                                        // 0x0060d1ed    c20800
_jmp_addr_0x0060d1f0:    {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0060d1f0    8d4c2414
                         push               ecx                                           // 0x0060d1f4    51
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0060d1f5    8d542424
                         push               edx                                           // 0x0060d1f9    52
                         call               ?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z              // 0x0060d1fa    e851650000
                         push               0x000000d7                                    // 0x0060d1ff    68d7000000
                         push               0x00bf42a4                                    // 0x0060d204    68a442bf00
                         push               0x28                                          // 0x0060d209    6a28
                         call               ___nw__FUl                                    // 0x0060d20b    e880e51c00
                         add                esp, 0x14                                     // 0x0060d210    83c414
                         test               eax, eax                                      // 0x0060d213    85c0
                         {disp8} je         _jmp_addr_0x0060d22c                          // 0x0060d215    7415
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0060d217    8d4c2414
                         push               ecx                                           // 0x0060d21b    51
                         push               0x40e66666                                    // 0x0060d21c    686666e640
                         mov.s              ecx, eax                                      // 0x0060d221    8bc8
                         call               @__ct__Q210NewCollide3ObjFfP7LHPoint@16       // 0x0060d223    e868db2100
                         mov.s              esi, eax                                      // 0x0060d228    8bf0
                         {disp8} jmp        _jmp_addr_0x0060d22e                          // 0x0060d22a    eb02
_jmp_addr_0x0060d22c:    xor.s              esi, esi                                      // 0x0060d22c    33f6
_jmp_addr_0x0060d22e:    {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0060d22e    8d542434
                         push               edx                                           // 0x0060d232    52
                         mov                ecx, 0x00d3eebc                               // 0x0060d233    b9bceed300
                         call               _jmp_addr_0x0060fee0                          // 0x0060d238    e8a32c0000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060d23d    8b4c2410
                         mov                dword ptr [eax], esi                          // 0x0060d241    8930
                         pop                edi                                           // 0x0060d243    5f
                         mov.s              eax, esi                                      // 0x0060d244    8bc6
                         pop                esi                                           // 0x0060d246    5e
                         pop                ebp                                           // 0x0060d247    5d
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0060d248    894108
                         pop                ebx                                           // 0x0060d24b    5b
                         add                esp, 0x1c                                     // 0x0060d24c    83c41c
                         ret                0x0008                                        // 0x0060d24f    c20800

// Snippet: db, [0x0060d252, 0x0060d254)
.byte 0x8b, 0xff                  // 0x0060d252

// Snippet: jmptbl, [0x0060d254, 0x0060d278)
.byte 0x0c, 0xd1, 0x60, 0x00      // 0x0060d254
.byte 0xf9, 0xd0, 0x60, 0x00      // 0x0060d258
.byte 0xda, 0xd0, 0x60, 0x00      // 0x0060d25c
.byte 0xe1, 0xd0, 0x60, 0x00      // 0x0060d260
.byte 0xe8, 0xd0, 0x60, 0x00      // 0x0060d264
.byte 0xf4, 0xd0, 0x60, 0x00      // 0x0060d268
.byte 0x00, 0xd1, 0x60, 0x00      // 0x0060d26c
.byte 0x07, 0xd1, 0x60, 0x00      // 0x0060d270
.byte 0x75, 0xd1, 0x60, 0x00      // 0x0060d274

// Snippet: db, [0x0060d278, 0x0060d280)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060d278
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060d27c

