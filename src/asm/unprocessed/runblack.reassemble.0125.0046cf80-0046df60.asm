.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern ?ResetData@LHFile@@QAEIXZ
.extern _jmp_addr_0x00436a70
.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x0046c040
.extern ?ToggleLeftRight@CHand@@QAEXXZ
.extern _jmp_addr_0x0046c500
.extern _jmp_addr_0x0046e630
.extern _jmp_addr_0x0046e680
.extern _jmp_addr_0x0046edb0
.extern @Read__8AnimInfoFPc@12
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x005514d0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00617140
.extern @SelectMesh__9MorphableFl@12
.extern @ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20
.extern _jmp_addr_0x00617dc0
.extern _jmp_addr_0x00618150
.extern @GetAnim__9MorphableFll@16
.extern @GetSetAnim__9MorphableFlll@20
.extern _jmp_addr_0x0076d000
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @SetName__6LHFileFPCc@12
.extern @Open__14LHReleasedFileF12LH_FILE_MODE@12
.extern _jmp_addr_0x007bda20
.extern ?Close@LHFile@@QAEIXZ
.extern @OpenSegment__6LHFileFPc@12
.extern ?CloseSegment@LHFile@@QAEIXZ
.extern _jmp_addr_0x007bdfc0
.extern @GetSegmentData__6LHFileFPvUll@20
.extern _sprintf
.extern ___nw__FUl
.extern _jmp_addr_0x007e6450
.extern _jmp_addr_0x007e64a0
.extern _jmp_addr_0x00801c90
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x00814fd0
.extern _jmp_addr_0x00839f10
.extern ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z
.extern _jmp_addr_0x0083f310
.extern _jmp_addr_0x00860e00

.globl _jmp_addr_0x0046cf80
.globl _jmp_addr_0x0046d080
.globl _jmp_addr_0x0046d100
.globl _jmp_addr_0x0046d210
.globl _jmp_addr_0x0046d720
.globl _jmp_addr_0x0046d760
.globl _jmp_addr_0x0046d9d0
.globl _jmp_addr_0x0046daf0
.globl _jmp_addr_0x0046db70
.globl _jmp_addr_0x0046dc30
.globl ?ThrowObject@CHand@@QAEXXZ
.globl _jmp_addr_0x0046de40
.globl _jmp_addr_0x0046df00
.globl _LoadBinary_5CHandFPci
.globl ?AddForDrawing@CHand@@UAE_NXZ

start_0x0046cf80_0x0046df60:
// Snippet: asm, [0x0046cf80, 0x0046df48)
_jmp_addr_0x0046cf80:    push               ebp                                           // 0x0046cf80    55
                         push               esi                                           // 0x0046cf81    56
                         mov.s              esi, ecx                                      // 0x0046cf82    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0046cf84    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0046cf8a    e8c1880e00
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x0046cf8f    8b6c240c
                         cmp                ebp, 0x07                                     // 0x0046cf93    83fd07
                         {disp32} mov       eax, dword ptr [esi + 0x00004878]             // 0x0046cf96    8b8678480000
                         {disp8} jne        _jmp_addr_0x0046cfcb                          // 0x0046cf9c    752d
                         cmp.s              eax, ebp                                      // 0x0046cf9e    3bc5
                         {disp32} je        _jmp_addr_0x0046d06f                          // 0x0046cfa0    0f84c9000000
                         {disp32} mov       esi, dword ptr [esi + 0x000049b4]             // 0x0046cfa6    8bb6b4490000
                         test               byte ptr [esi + 0x24], 0x10                   // 0x0046cfac    f6462410
                         {disp32} je        _jmp_addr_0x0046d06f                          // 0x0046cfb0    0f84b9000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000003cc]             // 0x0046cfb6    8b8ecc030000
                         test               ecx, ecx                                      // 0x0046cfbc    85c9
                         {disp32} jne       _jmp_addr_0x0046d06f                          // 0x0046cfbe    0f85ab000000
                         pop                esi                                           // 0x0046cfc4    5e
                         mov.s              eax, ebp                                      // 0x0046cfc5    8bc5
                         pop                ebp                                           // 0x0046cfc7    5d
                         ret                0x0004                                        // 0x0046cfc8    c20400
_jmp_addr_0x0046cfcb:    cmp                eax, 0x07                                     // 0x0046cfcb    83f807
                         push               edi                                           // 0x0046cfce    57
                         {disp32} jne       _jmp_addr_0x0046d06c                          // 0x0046cfcf    0f8597000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000049b4]             // 0x0046cfd5    8b8eb4490000
                         test               ecx, ecx                                      // 0x0046cfdb    85c9
                         {disp32} mov       edi, dword ptr [esi + 0x00004898]             // 0x0046cfdd    8bbe98480000
                         {disp32} je        _jmp_addr_0x0046d06c                          // 0x0046cfe3    0f8483000000
                         mov                eax, dword ptr [ecx]                          // 0x0046cfe9    8b01
                         call               dword ptr [eax + 0x6e4]                       // 0x0046cfeb    ff90e4060000
                         cmp                eax, 0x01                                     // 0x0046cff1    83f801
                         {disp8} je         _jmp_addr_0x0046d06c                          // 0x0046cff4    7476
                         {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x0046cff6    d987d8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x0046cffc    d81d78b68a00
                         fnstsw             ax                                            // 0x0046d002    dfe0
                         test               ah, 0x41                                      // 0x0046d004    f6c441
                         {disp8} jne        _jmp_addr_0x0046d032                          // 0x0046d007    7529
                         {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x0046d009    d987d8000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0046d00f    d81d90a38a00
                         fnstsw             ax                                            // 0x0046d015    dfe0
                         test               ah, 0x01                                      // 0x0046d017    f6c401
                         {disp8} je         _jmp_addr_0x0046d028                          // 0x0046d01a    740c
                         {disp32} fld       dword ptr [edi + 0x000000d8]                  // 0x0046d01c    d987d8000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046d022    d95c2410
                         {disp8} jmp        _jmp_addr_0x0046d03a                          // 0x0046d026    eb12
_jmp_addr_0x0046d028:    {disp8} mov        dword ptr [esp + 0x10], 0x3f800000            // 0x0046d028    c74424100000803f
                         {disp8} jmp        _jmp_addr_0x0046d03a                          // 0x0046d030    eb08
_jmp_addr_0x0046d032:    {disp8} mov        dword ptr [esp + 0x10], 0xbf800000            // 0x0046d032    c7442410000080bf
_jmp_addr_0x0046d03a:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0046d03a    8b4c2410
                         push               ecx                                           // 0x0046d03e    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000049b4]             // 0x0046d03f    8b8eb4490000
                         call               _jmp_addr_0x00436a70                          // 0x0046d045    e8269afcff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0046d04a    8b0d5c19d000
                         push               eax                                           // 0x0046d050    50
                         push               0x59                                          // 0x0046d051    6a59
                         call               _jmp_addr_0x005514d0                          // 0x0046d053    e878440e00
                         {disp32} mov       dword ptr [esi + 0x000049b4], 0x00000000      // 0x0046d058    c786b449000000000000
                         {disp32} mov       dword ptr [esi + 0x000049b8], 0x00000000      // 0x0046d062    c786b849000000000000
_jmp_addr_0x0046d06c:    mov.s              eax, ebp                                      // 0x0046d06c    8bc5
                         pop                edi                                           // 0x0046d06e    5f
_jmp_addr_0x0046d06f:    pop                esi                                           // 0x0046d06f    5e
                         pop                ebp                                           // 0x0046d070    5d
                         ret                0x0004                                        // 0x0046d071    c20400
                         nop                                                              // 0x0046d074    90
                         nop                                                              // 0x0046d075    90
                         nop                                                              // 0x0046d076    90
                         nop                                                              // 0x0046d077    90
                         nop                                                              // 0x0046d078    90
                         nop                                                              // 0x0046d079    90
                         nop                                                              // 0x0046d07a    90
                         nop                                                              // 0x0046d07b    90
                         nop                                                              // 0x0046d07c    90
                         nop                                                              // 0x0046d07d    90
                         nop                                                              // 0x0046d07e    90
                         nop                                                              // 0x0046d07f    90
_jmp_addr_0x0046d080:    push               esi                                           // 0x0046d080    56
                         mov.s              esi, ecx                                      // 0x0046d081    8bf1
                         call               _jmp_addr_0x0046c040                          // 0x0046d083    e8b8efffff
                         {disp32} fdiv      dword ptr [esi + 0x0000008c]                  // 0x0046d088    d8b68c000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0046d08e    8b442408
                         xor.s              ecx, ecx                                      // 0x0046d092    33c9
                         {disp32} fmul      dword ptr [esi + 0x00004834]                  // 0x0046d094    d88e34480000
                         {disp32} fmul      dword ptr [esi + 0x00000090]                  // 0x0046d09a    d88e90000000
                         {disp32} fst       dword ptr [esi + 0x00000094]                  // 0x0046d0a0    d99694000000
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                   // 0x0046d0a6    89482c
                         {disp8} fst        dword ptr [eax + 0x20]                        // 0x0046d0a9    d95020
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0046d0ac    894828
                         {disp8} fst        dword ptr [eax + 0x10]                        // 0x0046d0af    d95010
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0046d0b2    894824
                         fst                dword ptr [eax]                               // 0x0046d0b5    d910
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0046d0b7    89481c
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0046d0ba    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0046d0bd    894814
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0046d0c0    89480c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0046d0c3    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0046d0c6    894804
                         cmp                dword ptr [esi + 0x0000484c], ecx             // 0x0046d0c9    398e4c480000
                         pop                esi                                           // 0x0046d0cf    5e
                         {disp8} je         _jmp_addr_0x0046d0e2                          // 0x0046d0d0    7410
                         fchs                                                             // 0x0046d0d2    d9e0
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0046d0d4    894804
                         fstp               dword ptr [eax]                               // 0x0046d0d7    d918
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0046d0d9    894808
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0046d0dc    894824
                         ret                0x0004                                        // 0x0046d0df    c20400
_jmp_addr_0x0046d0e2:    fstp               st(0)                                         // 0x0046d0e2    ddd8
                         ret                0x0004                                        // 0x0046d0e4    c20400
                         nop                                                              // 0x0046d0e7    90
                         nop                                                              // 0x0046d0e8    90
                         nop                                                              // 0x0046d0e9    90
                         nop                                                              // 0x0046d0ea    90
                         nop                                                              // 0x0046d0eb    90
                         nop                                                              // 0x0046d0ec    90
                         nop                                                              // 0x0046d0ed    90
                         nop                                                              // 0x0046d0ee    90
                         nop                                                              // 0x0046d0ef    90
?AddForDrawing@CHand@@UAE_NXZ:
                         call               _jmp_addr_0x0046d100                          // 0x0046d0f0    e80b000000
                         mov                eax, 0x00000001                               // 0x0046d0f5    b801000000
                         ret                                                              // 0x0046d0fa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0046d0fb    e87947f9ff
_jmp_addr_0x0046d100:    push               ecx                                           // 0x0046d100    51
                         push               esi                                           // 0x0046d101    56
                         push               edi                                           // 0x0046d102    57
                         mov.s              edi, ecx                                      // 0x0046d103    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0046d105    8b872c480000
                         {disp8} lea        ecx, dword ptr [eax + 0x50]                   // 0x0046d10b    8d4850
                         push               ecx                                           // 0x0046d10e    51
                         {disp8} lea        edx, dword ptr [eax + 0x4c]                   // 0x0046d10f    8d504c
                         push               edx                                           // 0x0046d112    52
                         add                eax, 0x38                                     // 0x0046d113    83c038
                         push               eax                                           // 0x0046d116    50
                         call               _jmp_addr_0x00801c90                          // 0x0046d117    e8744b3900
                         {disp32} mov       esi, dword ptr [edi + 0x0000482c]             // 0x0046d11c    8bb72c480000
                         xor.s              eax, eax                                      // 0x0046d122    33c0
                         {disp8} mov        al, byte ptr [esi + 0x4c]                     // 0x0046d124    8a464c
                         add                esi, 0x4c                                     // 0x0046d127    83c64c
                         add                esp, 0x0c                                     // 0x0046d12a    83c40c
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0046d12d    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x0046d131    db442408
                         {disp32} fmul      dword ptr [data_bytes + 0x8c8c]               // 0x0046d135    d80d8cec9c00
                         {disp32} fcom      dword ptr [__real@437f0000]                   // 0x0046d13b    d81570b28a00
                         fnstsw             ax                                            // 0x0046d141    dfe0
                         test               ah, 0x41                                      // 0x0046d143    f6c441
                         {disp8} jne        _jmp_addr_0x0046d150                          // 0x0046d146    7508
                         fstp               st(0)                                         // 0x0046d148    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x0046d14a    d90570b28a00
_jmp_addr_0x0046d150:    call               _jmp_addr_0x007a1400                          // 0x0046d150    e8ab423300
                         xor.s              ecx, ecx                                      // 0x0046d155    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x01]                     // 0x0046d157    8a4e01
                         mov                byte ptr [esi], al                            // 0x0046d15a    8806
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0046d15c    894c2408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x0046d160    db442408
                         {disp32} fmul      dword ptr [data_bytes + 0x8c8c]               // 0x0046d164    d80d8cec9c00
                         {disp32} fcom      dword ptr [__real@437f0000]                   // 0x0046d16a    d81570b28a00
                         fnstsw             ax                                            // 0x0046d170    dfe0
                         test               ah, 0x41                                      // 0x0046d172    f6c441
                         {disp8} jne        _jmp_addr_0x0046d17f                          // 0x0046d175    7508
                         fstp               st(0)                                         // 0x0046d177    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x0046d179    d90570b28a00
_jmp_addr_0x0046d17f:    call               _jmp_addr_0x007a1400                          // 0x0046d17f    e87c423300
                         xor.s              edx, edx                                      // 0x0046d184    33d2
                         {disp8} mov        dl, byte ptr [esi + 0x02]                     // 0x0046d186    8a5602
                         {disp8} mov        byte ptr [esi + 0x01], al                     // 0x0046d189    884601
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0046d18c    89542408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x0046d190    db442408
                         {disp32} fmul      dword ptr [data_bytes + 0x8c8c]               // 0x0046d194    d80d8cec9c00
                         {disp32} fcom      dword ptr [__real@437f0000]                   // 0x0046d19a    d81570b28a00
                         fnstsw             ax                                            // 0x0046d1a0    dfe0
                         test               ah, 0x41                                      // 0x0046d1a2    f6c441
                         {disp8} jne        _jmp_addr_0x0046d1af                          // 0x0046d1a5    7508
                         fstp               st(0)                                         // 0x0046d1a7    ddd8
                         {disp32} fld       dword ptr [__real@437f0000]                   // 0x0046d1a9    d90570b28a00
_jmp_addr_0x0046d1af:    call               _jmp_addr_0x007a1400                          // 0x0046d1af    e84c423300
                         {disp8} mov        byte ptr [esi + 0x02], al                     // 0x0046d1b4    884602
                         {disp32} mov       eax, dword ptr [edi + 0x0000482c]             // 0x0046d1b7    8b872c480000
                         {disp8} fld        dword ptr [eax + 0x40]                        // 0x0046d1bd    d94040
                         add                eax, 0x38                                     // 0x0046d1c0    83c038
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]             // 0x0046d1c3    d825c01dea00
                         push               0x0                                           // 0x0046d1c9    6a00
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0046d1cb    d94004
                         push               ecx                                           // 0x0046d1ce    51
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]             // 0x0046d1cf    d825bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504648]        // 0x0046d1d5    8b0d48a6ec00
                         fld                dword ptr [eax]                               // 0x0046d1db    d900
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]             // 0x0046d1dd    d825b81dea00
                         mov.s              edx, edi                                      // 0x0046d1e3    8bd7
                         fld                st(0)                                         // 0x0046d1e5    d9c0
                         fmul               st, st(1)                                     // 0x0046d1e7    d8c9
                         fld                st(2)                                         // 0x0046d1e9    d9c2
                         fmul               st, st(3)                                     // 0x0046d1eb    d8cb
                         faddp              st(1), st                                     // 0x0046d1ed    dec1
                         fld                st(3)                                         // 0x0046d1ef    d9c3
                         fmul               st, st(4)                                     // 0x0046d1f1    d8cc
                         faddp              st(1), st                                     // 0x0046d1f3    dec1
                         fstp               dword ptr [esp]                               // 0x0046d1f5    d91c24
                         push               0x0046d210                                    // 0x0046d1f8    6810d24600
                         fstp               st(0)                                         // 0x0046d1fd    ddd8
                         fstp               st(0)                                         // 0x0046d1ff    ddd8
                         fstp               st(0)                                         // 0x0046d201    ddd8
                         call               _jmp_addr_0x0083f310                          // 0x0046d203    e808213d00
                         pop                edi                                           // 0x0046d208    5f
                         pop                esi                                           // 0x0046d209    5e
                         pop                ecx                                           // 0x0046d20a    59
                         ret                                                              // 0x0046d20b    c3
                         nop                                                              // 0x0046d20c    90
                         nop                                                              // 0x0046d20d    90
                         nop                                                              // 0x0046d20e    90
                         nop                                                              // 0x0046d20f    90
_jmp_addr_0x0046d210:    push               esi                                           // 0x0046d210    56
                         mov.s              esi, ecx                                      // 0x0046d211    8bf1
                         cmp                dword ptr [esi + 0x000049a0], 0x01            // 0x0046d213    83bea049000001
                         {disp32} je        _jmp_addr_0x0046d2b3                          // 0x0046d21a    0f8493000000
                         {disp32} mov       al, byte ptr [data_bytes + 0x286cee]          // 0x0046d220    a0eeccc400
                         test               al, al                                        // 0x0046d225    84c0
                         {disp32} jne       _jmp_addr_0x0046d2b3                          // 0x0046d227    0f8586000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004850]             // 0x0046d22d    8b8e50480000
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x0046d233    e878f61600
                         mov                edx, dword ptr [eax]                          // 0x0046d238    8b10
                         mov.s              ecx, eax                                      // 0x0046d23a    8bc8
                         call               dword ptr [edx + 0x40c]                       // 0x0046d23c    ff920c040000
                         test               eax, eax                                      // 0x0046d242    85c0
                         {disp8} je         _jmp_addr_0x0046d2b3                          // 0x0046d244    746d
                         {disp32} mov       eax, dword ptr [esi + 0x000047bc]             // 0x0046d246    8b86bc470000
                         test               eax, eax                                      // 0x0046d24c    85c0
                         {disp8} je         _jmp_addr_0x0046d260                          // 0x0046d24e    7410
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046d250    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046d256    8b01
                         call               dword ptr [eax + 0x108]                       // 0x0046d258    ff9008010000
                         pop                esi                                           // 0x0046d25e    5e
                         ret                                                              // 0x0046d25f    c3
_jmp_addr_0x0046d260:    {disp32} mov       eax, dword ptr [esi + 0x00004878]             // 0x0046d260    8b8678480000
                         test               eax, eax                                      // 0x0046d266    85c0
                         {disp8} je         _jmp_addr_0x0046d2b3                          // 0x0046d268    7449
                         {disp32} mov       eax, dword ptr [esi + 0x0000483c]             // 0x0046d26a    8b863c480000
                         test               eax, eax                                      // 0x0046d270    85c0
                         {disp8} jne        _jmp_addr_0x0046d2b3                          // 0x0046d272    753f
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046d274    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0046d27a    8b11
                         call               dword ptr [edx + 0x108]                       // 0x0046d27c    ff9208010000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0046d282    a15c19d000
                         cmp                dword ptr [eax + 0x00205a28], 0x01            // 0x0046d287    83b8285a200001
                         {disp8} je         _jmp_addr_0x0046d2b3                          // 0x0046d28e    7423
                         {disp32} mov       ecx, dword ptr [esi + 0x00004948]             // 0x0046d290    8b8e48490000
                         mov                edx, dword ptr [ecx]                          // 0x0046d296    8b11
                         call               dword ptr [edx + 0x10]                        // 0x0046d298    ff5210
                         {disp32} mov       eax, dword ptr [esi + 0x00004850]             // 0x0046d29b    8b8650480000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000130]             // 0x0046d2a1    8b8830010000
                         call               _jmp_addr_0x0076d000                          // 0x0046d2a7    e854fd2f00
                         mov.s              ecx, esi                                      // 0x0046d2ac    8bce
                         call               _jmp_addr_0x0046e680                          // 0x0046d2ae    e8cd130000
_jmp_addr_0x0046d2b3:    pop                esi                                           // 0x0046d2b3    5e
                         ret                                                              // 0x0046d2b4    c3
                         nop                                                              // 0x0046d2b5    90
                         nop                                                              // 0x0046d2b6    90
                         nop                                                              // 0x0046d2b7    90
                         nop                                                              // 0x0046d2b8    90
                         nop                                                              // 0x0046d2b9    90
                         nop                                                              // 0x0046d2ba    90
                         nop                                                              // 0x0046d2bb    90
                         nop                                                              // 0x0046d2bc    90
                         nop                                                              // 0x0046d2bd    90
                         nop                                                              // 0x0046d2be    90
                         nop                                                              // 0x0046d2bf    90
_LoadBinary_5CHandFPci:
                         sub                esp, 0x48                                     // 0x0046d2c0    83ec48
                         push               ebx                                           // 0x0046d2c3    53
                         push               ebp                                           // 0x0046d2c4    55
                         push               esi                                           // 0x0046d2c5    56
                         mov.s              esi, ecx                                      // 0x0046d2c6    8bf1
                         push               edi                                           // 0x0046d2c8    57
                         {disp8} mov        edi, dword ptr [esp + 0x5c]                   // 0x0046d2c9    8b7c245c
                         {disp8} lea        ebx, dword ptr [esi + 0x0c]                   // 0x0046d2cd    8d5e0c
                         push               edi                                           // 0x0046d2d0    57
                         mov.s              ecx, ebx                                      // 0x0046d2d1    8bcb
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0046d2d3    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0046d2db    895c2418
                         call               @SetName__6LHFileFPCc@12                      // 0x0046d2df    e8ac003500
                         mov                eax, dword ptr [ebx]                          // 0x0046d2e4    8b03
                         push               0x2                                           // 0x0046d2e6    6a02
                         mov.s              ecx, ebx                                      // 0x0046d2e8    8bcb
                         call               dword ptr [eax]                               // 0x0046d2ea    ff10
                         test               eax, eax                                      // 0x0046d2ec    85c0
                         {disp8} je         _jmp_addr_0x0046d30a                          // 0x0046d2ee    741a
                         push               edi                                           // 0x0046d2f0    57
                         push               0x009cedcc                                    // 0x0046d2f1    68cced9c00
                         call               _jmp_addr_0x00617140                          // 0x0046d2f6    e8459e1a00
                         add                esp, 0x08                                     // 0x0046d2fb    83c408
                         pop                edi                                           // 0x0046d2fe    5f
                         pop                esi                                           // 0x0046d2ff    5e
                         pop                ebp                                           // 0x0046d300    5d
                         xor.s              eax, eax                                      // 0x0046d301    33c0
                         pop                ebx                                           // 0x0046d303    5b
                         add                esp, 0x48                                     // 0x0046d304    83c448
                         ret                0x0008                                        // 0x0046d307    c20800
_jmp_addr_0x0046d30a:    push               0x009cedc4                                    // 0x0046d30a    68c4ed9c00
                         mov.s              ecx, ebx                                      // 0x0046d30f    8bcb
                         call               @OpenSegment__6LHFileFPc@12                   // 0x0046d311    e8aa0b3500
                         test               eax, eax                                      // 0x0046d316    85c0
                         {disp8} je         _jmp_addr_0x0046d322                          // 0x0046d318    7408
                         push               edi                                           // 0x0046d31a    57
                         push               0x009ceda8                                    // 0x0046d31b    68a8ed9c00
                         {disp8} jmp        _jmp_addr_0x0046d361                          // 0x0046d320    eb3f
_jmp_addr_0x0046d322:    push               -0x1                                          // 0x0046d322    6aff
                         push               0x4                                           // 0x0046d324    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                   // 0x0046d326    8d4c2464
                         push               ecx                                           // 0x0046d32a    51
                         mov.s              ecx, ebx                                      // 0x0046d32b    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x0046d32d    e80e0d3500
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x0046d332    8b44245c
                         test               eax, eax                                      // 0x0046d336    85c0
                         {disp8} jle        _jmp_addr_0x0046d342                          // 0x0046d338    7e08
                         push               edi                                           // 0x0046d33a    57
                         push               0x009ced90                                    // 0x0046d33b    6890ed9c00
                         {disp8} jmp        _jmp_addr_0x0046d361                          // 0x0046d340    eb1f
_jmp_addr_0x0046d342:    push               -0x1                                          // 0x0046d342    6aff
                         push               0x4                                           // 0x0046d344    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x64]                   // 0x0046d346    8d542464
                         push               edx                                           // 0x0046d34a    52
                         mov.s              ecx, ebx                                      // 0x0046d34b    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x0046d34d    e8ee0c3500
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x0046d352    8b44245c
                         cmp                eax, 0x05                                     // 0x0046d356    83f805
                         {disp8} jle        _jmp_addr_0x0046d37c                          // 0x0046d359    7e21
                         push               edi                                           // 0x0046d35b    57
                         push               0x009ced78                                    // 0x0046d35c    6878ed9c00
_jmp_addr_0x0046d361:    call               _jmp_addr_0x00617140                          // 0x0046d361    e8da9d1a00
                         add                esp, 0x08                                     // 0x0046d366    83c408
                         mov.s              ecx, ebx                                      // 0x0046d369    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d36b    e850083500
                         pop                edi                                           // 0x0046d370    5f
                         pop                esi                                           // 0x0046d371    5e
                         pop                ebp                                           // 0x0046d372    5d
                         xor.s              eax, eax                                      // 0x0046d373    33c0
                         pop                ebx                                           // 0x0046d375    5b
                         add                esp, 0x48                                     // 0x0046d376    83c448
                         ret                0x0008                                        // 0x0046d379    c20800
_jmp_addr_0x0046d37c:    {disp32} jge       _jmp_addr_0x0046d436                          // 0x0046d37c    0f8db4000000
                         push               eax                                           // 0x0046d382    50
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0046d383    8d44241c
                         push               0x009ced64                                    // 0x0046d387    6864ed9c00
                         push               eax                                           // 0x0046d38c    50
                         call               _sprintf                                      // 0x0046d38d    e840843500
                         push               0x00000473                                    // 0x0046d392    6873040000
                         push               0x009ced1c                                    // 0x0046d397    681ced9c00
                         push               0x00005468                                    // 0x0046d39c    6868540000
                         call               ___nw__FUl                                    // 0x0046d3a1    e8eae33600
                         mov.s              ebp, eax                                      // 0x0046d3a6    8be8
                         add                esp, 0x18                                     // 0x0046d3a8    83c418
                         test               ebp, ebp                                      // 0x0046d3ab    85ed
                         {disp8} je         _jmp_addr_0x0046d3ed                          // 0x0046d3ad    743e
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                   // 0x0046d3af    8d4508
                         mov                ecx, 0x00000018                               // 0x0046d3b2    b918000000
_jmp_addr_0x0046d3b7:    mov                byte ptr [eax], 0x00                          // 0x0046d3b7    c60000
                         add                eax, 0x20                                     // 0x0046d3ba    83c020
                         dec                ecx                                           // 0x0046d3bd    49
                         {disp8} jne        _jmp_addr_0x0046d3b7                          // 0x0046d3be    75f7
                         {disp32} lea       edi, dword ptr [ebp + 0x0000030c]             // 0x0046d3c0    8dbd0c030000
                         mov                ebx, 0x00000018                               // 0x0046d3c6    bb18000000
_jmp_addr_0x0046d3cb:    push               0x0046d5e0                                    // 0x0046d3cb    68e0d54600
                         push               0x18                                          // 0x0046d3d0    6a18
                         push               0x20                                          // 0x0046d3d2    6a20
                         push               edi                                           // 0x0046d3d4    57
                         call               _jmp_addr_0x00401140                          // 0x0046d3d5    e8663df9ff
                         add                edi, 0x00000364                               // 0x0046d3da    81c764030000
                         dec                ebx                                           // 0x0046d3e0    4b
                         {disp8} jne        _jmp_addr_0x0046d3cb                          // 0x0046d3e1    75e8
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0046d3e3    8b5c2414
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0046d3e7    896c2410
                         {disp8} jmp        _jmp_addr_0x0046d3f5                          // 0x0046d3eb    eb08
_jmp_addr_0x0046d3ed:    {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0046d3ed    c744241000000000
_jmp_addr_0x0046d3f5:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0046d3f5    8d4c2418
                         push               ecx                                           // 0x0046d3f9    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0046d3fa    8b4c2414
                         call               @Read__8AnimInfoFPc@12                        // 0x0046d3fe    e8ad760500
                         test               eax, eax                                      // 0x0046d403    85c0
                         {disp8} jne        _jmp_addr_0x0046d436                          // 0x0046d405    752f
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0046d407    8d542418
                         push               edx                                           // 0x0046d40b    52
                         push               0x009ced54                                    // 0x0046d40c    6854ed9c00
                         call               _jmp_addr_0x00617140                          // 0x0046d411    e82a9d1a00
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0046d416    8b442418
                         push               eax                                           // 0x0046d41a    50
                         call               ??3@YAXPAX@Z                                  // 0x0046d41b    e8781a3400
                         add                esp, 0x0c                                     // 0x0046d420    83c40c
                         mov.s              ecx, ebx                                      // 0x0046d423    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d425    e896073500
                         pop                edi                                           // 0x0046d42a    5f
                         pop                esi                                           // 0x0046d42b    5e
                         pop                ebp                                           // 0x0046d42c    5d
                         xor.s              eax, eax                                      // 0x0046d42d    33c0
                         pop                ebx                                           // 0x0046d42f    5b
                         add                esp, 0x48                                     // 0x0046d430    83c448
                         ret                0x0008                                        // 0x0046d433    c20800
_jmp_addr_0x0046d436:    push               0x5                                           // 0x0046d436    6a05
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0046d438    8d4c241c
                         push               0x009ced64                                    // 0x0046d43c    6864ed9c00
                         push               ecx                                           // 0x0046d441    51
                         call               _sprintf                                      // 0x0046d442    e88b833500
                         push               0x0000047e                                    // 0x0046d447    687e040000
                         push               0x009ced1c                                    // 0x0046d44c    681ced9c00
                         push               0x00005468                                    // 0x0046d451    6868540000
                         call               ___nw__FUl                                    // 0x0046d456    e835e33600
                         mov.s              ebp, eax                                      // 0x0046d45b    8be8
                         add                esp, 0x18                                     // 0x0046d45d    83c418
                         test               ebp, ebp                                      // 0x0046d460    85ed
                         {disp8} je         _jmp_addr_0x0046d4a0                          // 0x0046d462    743c
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                   // 0x0046d464    8d4508
                         mov                ecx, 0x00000018                               // 0x0046d467    b918000000
_jmp_addr_0x0046d46c:    mov                byte ptr [eax], 0x00                          // 0x0046d46c    c60000
                         add                eax, 0x20                                     // 0x0046d46f    83c020
                         dec                ecx                                           // 0x0046d472    49
                         {disp8} jne        _jmp_addr_0x0046d46c                          // 0x0046d473    75f7
                         {disp32} lea       edi, dword ptr [ebp + 0x0000030c]             // 0x0046d475    8dbd0c030000
                         mov                ebx, 0x00000018                               // 0x0046d47b    bb18000000
_jmp_addr_0x0046d480:    push               0x0046d5e0                                    // 0x0046d480    68e0d54600
                         push               0x18                                          // 0x0046d485    6a18
                         push               0x20                                          // 0x0046d487    6a20
                         push               edi                                           // 0x0046d489    57
                         call               _jmp_addr_0x00401140                          // 0x0046d48a    e8b13cf9ff
                         add                edi, 0x00000364                               // 0x0046d48f    81c764030000
                         dec                ebx                                           // 0x0046d495    4b
                         {disp8} jne        _jmp_addr_0x0046d480                          // 0x0046d496    75e8
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0046d498    8b5c2414
                         mov.s              edi, ebp                                      // 0x0046d49c    8bfd
                         {disp8} jmp        _jmp_addr_0x0046d4a2                          // 0x0046d49e    eb02
_jmp_addr_0x0046d4a0:    xor.s              edi, edi                                      // 0x0046d4a0    33ff
_jmp_addr_0x0046d4a2:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0046d4a2    8d542418
                         push               edx                                           // 0x0046d4a6    52
                         mov.s              ecx, edi                                      // 0x0046d4a7    8bcf
                         call               @Read__8AnimInfoFPc@12                        // 0x0046d4a9    e802760500
                         test               eax, eax                                      // 0x0046d4ae    85c0
                         {disp8} jne        _jmp_addr_0x0046d4e7                          // 0x0046d4b0    7535
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0046d4b2    8d442418
                         push               eax                                           // 0x0046d4b6    50
                         push               0x009ced54                                    // 0x0046d4b7    6854ed9c00
                         call               _jmp_addr_0x00617140                          // 0x0046d4bc    e87f9c1a00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0046d4c1    8b4c2418
                         push               ecx                                           // 0x0046d4c5    51
                         call               ??3@YAXPAX@Z                                  // 0x0046d4c6    e8cd193400
                         push               edi                                           // 0x0046d4cb    57
                         call               ??3@YAXPAX@Z                                  // 0x0046d4cc    e8c7193400
                         add                esp, 0x10                                     // 0x0046d4d1    83c410
                         mov.s              ecx, ebx                                      // 0x0046d4d4    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d4d6    e8e5063500
                         pop                edi                                           // 0x0046d4db    5f
                         pop                esi                                           // 0x0046d4dc    5e
                         pop                ebp                                           // 0x0046d4dd    5d
                         xor.s              eax, eax                                      // 0x0046d4de    33c0
                         pop                ebx                                           // 0x0046d4e0    5b
                         add                esp, 0x48                                     // 0x0046d4e1    83c448
                         ret                0x0008                                        // 0x0046d4e4    c20800
_jmp_addr_0x0046d4e7:    {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0046d4e7    8b6c2410
                         test               ebp, ebp                                      // 0x0046d4eb    85ed
                         mov.s              eax, ebp                                      // 0x0046d4ed    8bc5
                         {disp8} jne        _jmp_addr_0x0046d4f3                          // 0x0046d4ef    7502
                         mov.s              eax, edi                                      // 0x0046d4f1    8bc7
_jmp_addr_0x0046d4f3:    push               edi                                           // 0x0046d4f3    57
                         push               eax                                           // 0x0046d4f4    50
                         push               ebx                                           // 0x0046d4f5    53
                         mov.s              ecx, esi                                      // 0x0046d4f6    8bce
                         call               @ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20                          // 0x0046d4f8    e8e3a51a00
                         test               eax, eax                                      // 0x0046d4fd    85c0
                         {disp8} jne        _jmp_addr_0x0046d523                          // 0x0046d4ff    7522
                         push               ebp                                           // 0x0046d501    55
                         call               ??3@YAXPAX@Z                                  // 0x0046d502    e891193400
                         push               edi                                           // 0x0046d507    57
                         call               ??3@YAXPAX@Z                                  // 0x0046d508    e88b193400
                         add                esp, 0x08                                     // 0x0046d50d    83c408
                         mov.s              ecx, ebx                                      // 0x0046d510    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d512    e8a9063500
                         pop                edi                                           // 0x0046d517    5f
                         pop                esi                                           // 0x0046d518    5e
                         pop                ebp                                           // 0x0046d519    5d
                         xor.s              eax, eax                                      // 0x0046d51a    33c0
                         pop                ebx                                           // 0x0046d51c    5b
                         add                esp, 0x48                                     // 0x0046d51d    83c448
                         ret                0x0008                                        // 0x0046d520    c20800
_jmp_addr_0x0046d523:    push               0x0                                           // 0x0046d523    6a00
                         push               0x1                                           // 0x0046d525    6a01
                         push               0x0                                           // 0x0046d527    6a00
                         mov.s              ecx, esi                                      // 0x0046d529    8bce
                         call               @GetSetAnim__9MorphableFlll@20                // 0x0046d52b    e860c11a00
                         push               0x0                                           // 0x0046d530    6a00
                         push               0x2                                           // 0x0046d532    6a02
                         push               0x0                                           // 0x0046d534    6a00
                         mov.s              ecx, esi                                      // 0x0046d536    8bce
                         call               @GetSetAnim__9MorphableFlll@20                // 0x0046d538    e853c11a00
                         push               0x0                                           // 0x0046d53d    6a00
                         push               0x3                                           // 0x0046d53f    6a03
                         push               0x0                                           // 0x0046d541    6a00
                         mov.s              ecx, esi                                      // 0x0046d543    8bce
                         call               @GetSetAnim__9MorphableFlll@20                // 0x0046d545    e846c11a00
                         push               0x0                                           // 0x0046d54a    6a00
                         push               0x4                                           // 0x0046d54c    6a04
                         push               0x0                                           // 0x0046d54e    6a00
                         mov.s              ecx, esi                                      // 0x0046d550    8bce
                         call               @GetSetAnim__9MorphableFlll@20                // 0x0046d552    e839c11a00
                         push               0x0                                           // 0x0046d557    6a00
                         push               0x5                                           // 0x0046d559    6a05
                         push               0x0                                           // 0x0046d55b    6a00
                         mov.s              ecx, esi                                      // 0x0046d55d    8bce
                         call               @GetSetAnim__9MorphableFlll@20                // 0x0046d55f    e82cc11a00
                         push               0x0                                           // 0x0046d564    6a00
                         mov.s              ecx, esi                                      // 0x0046d566    8bce
                         call               @SelectMesh__9MorphableFl@12                  // 0x0046d568    e8b3a01a00
                         mov.s              ecx, esi                                      // 0x0046d56d    8bce
                         call               ?ToggleLeftRight@CHand@@QAEXXZ                // 0x0046d56f    e8ececffff
                         push               ebp                                           // 0x0046d574    55
                         call               ??3@YAXPAX@Z                                  // 0x0046d575    e81e193400
                         push               edi                                           // 0x0046d57a    57
                         call               ??3@YAXPAX@Z                                  // 0x0046d57b    e818193400
                         mov                edx, dword ptr [esi]                          // 0x0046d580    8b16
                         add                esp, 0x08                                     // 0x0046d582    83c408
                         push               0x3f800000                                    // 0x0046d585    680000803f
                         mov.s              ecx, esi                                      // 0x0046d58a    8bce
                         call               dword ptr [edx + 8]                           // 0x0046d58c    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x000049ac]             // 0x0046d58f    8b86ac490000
                         test               eax, eax                                      // 0x0046d595    85c0
                         {disp8} je         _jmp_addr_0x0046d5a2                          // 0x0046d597    7409
                         push               eax                                           // 0x0046d599    50
                         call               ??3@YAXPAX@Z                                  // 0x0046d59a    e8f9183400
                         add                esp, 0x04                                     // 0x0046d59f    83c404
_jmp_addr_0x0046d5a2:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x0046d5a2    8b86b8470000
                         push               0x000004a1                                    // 0x0046d5a8    68a1040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0046d5ad    8d0440
                         shl                eax, 4                                        // 0x0046d5b0    c1e004
                         push               0x009ced1c                                    // 0x0046d5b3    681ced9c00
                         push               eax                                           // 0x0046d5b8    50
                         call               ___nw__FUl                                    // 0x0046d5b9    e8d2e13600
                         add                esp, 0x0c                                     // 0x0046d5be    83c40c
                         mov.s              ecx, esi                                      // 0x0046d5c1    8bce
                         {disp32} mov       dword ptr [esi + 0x000049ac], eax             // 0x0046d5c3    8986ac490000
                         call               _jmp_addr_0x0046e630                          // 0x0046d5c9    e862100000
                         pop                edi                                           // 0x0046d5ce    5f
                         pop                esi                                           // 0x0046d5cf    5e
                         pop                ebp                                           // 0x0046d5d0    5d
                         mov                eax, 0x00000001                               // 0x0046d5d1    b801000000
                         pop                ebx                                           // 0x0046d5d6    5b
                         add                esp, 0x48                                     // 0x0046d5d7    83c448
                         ret                0x0008                                        // 0x0046d5da    c20800
                         nop                                                              // 0x0046d5dd    90
                         nop                                                              // 0x0046d5de    90
                         nop                                                              // 0x0046d5df    90
                         mov.s              eax, ecx                                      // 0x0046d5e0    8bc1
                         mov                byte ptr [eax], 0x00                          // 0x0046d5e2    c60000
                         ret                                                              // 0x0046d5e5    c3
                         nop                                                              // 0x0046d5e6    90
                         nop                                                              // 0x0046d5e7    90
                         nop                                                              // 0x0046d5e8    90
                         nop                                                              // 0x0046d5e9    90
                         nop                                                              // 0x0046d5ea    90
                         nop                                                              // 0x0046d5eb    90
                         nop                                                              // 0x0046d5ec    90
                         nop                                                              // 0x0046d5ed    90
                         nop                                                              // 0x0046d5ee    90
                         nop                                                              // 0x0046d5ef    90
                         sub                esp, 0x6c                                     // 0x0046d5f0    83ec6c
                         push               esi                                           // 0x0046d5f3    56
                         mov.s              esi, ecx                                      // 0x0046d5f4    8bf1
                         push               edi                                           // 0x0046d5f6    57
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046d5f7    8d4c240c
                         call               _jmp_addr_0x0046edb0                          // 0x0046d5fb    e8b0170000
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0046d600    8d4c241c
                         call               _jmp_addr_0x0046d720                          // 0x0046d604    e817010000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d609    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x08], 0x008c4d14            // 0x0046d60d    c7442408144d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                     // 0x0046d615    e8460bfcff
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d61a    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x08], 0x008c4d0c            // 0x0046d61e    c74424080c4d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                     // 0x0046d626    e8350bfcff
                         {disp8} mov        edi, dword ptr [esp + 0x78]                   // 0x0046d62b    8b7c2478
                         push               edi                                           // 0x0046d62f    57
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046d630    8d4c240c
                         call               @SetName__6LHFileFPCc@12                      // 0x0046d634    e857fd3400
                         mov.s              ecx, esi                                      // 0x0046d639    8bce
                         call               _jmp_addr_0x00617dc0                          // 0x0046d63b    e880a71a00
                         push               0x0                                           // 0x0046d640    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046d642    8d4c240c
                         call               @Open__14LHReleasedFileF12LH_FILE_MODE@12     // 0x0046d646    e8e5003500
                         test               eax, eax                                      // 0x0046d64b    85c0
                         {disp8} je         _jmp_addr_0x0046d670                          // 0x0046d64d    7421
                         push               edi                                           // 0x0046d64f    57
                         push               0x009cede0                                    // 0x0046d650    68e0ed9c00
                         call               _jmp_addr_0x00617140                          // 0x0046d655    e8e69a1a00
                         add                esp, 0x08                                     // 0x0046d65a    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d65d    8d4c2408
                         call               _jmp_addr_0x007bda20                          // 0x0046d661    e8ba033500
                         pop                edi                                           // 0x0046d666    5f
                         xor.s              eax, eax                                      // 0x0046d667    33c0
                         pop                esi                                           // 0x0046d669    5e
                         add                esp, 0x6c                                     // 0x0046d66a    83c46c
                         ret                0x0004                                        // 0x0046d66d    c20400
_jmp_addr_0x0046d670:    push               0x009cedc4                                    // 0x0046d670    68c4ed9c00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046d675    8d4c240c
                         call               @OpenSegment__6LHFileFPc@12                   // 0x0046d679    e842083500
                         test               eax, eax                                      // 0x0046d67e    85c0
                         {disp8} je         _jmp_addr_0x0046d6ac                          // 0x0046d680    742a
                         push               edi                                           // 0x0046d682    57
                         push               0x009ceda8                                    // 0x0046d683    68a8ed9c00
                         call               _jmp_addr_0x00617140                          // 0x0046d688    e8b39a1a00
                         add                esp, 0x08                                     // 0x0046d68d    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d690    8d4c2408
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d694    e827053500
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d699    8d4c2408
                         call               _jmp_addr_0x007bda20                          // 0x0046d69d    e87e033500
                         pop                edi                                           // 0x0046d6a2    5f
                         xor.s              eax, eax                                      // 0x0046d6a3    33c0
                         pop                esi                                           // 0x0046d6a5    5e
                         add                esp, 0x6c                                     // 0x0046d6a6    83c46c
                         ret                0x0004                                        // 0x0046d6a9    c20400
_jmp_addr_0x0046d6ac:    push               0x4                                           // 0x0046d6ac    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x7c]                   // 0x0046d6ae    8d44247c
                         push               eax                                           // 0x0046d6b2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046d6b3    8d4c2410
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000000      // 0x0046d6b7    c784248000000000000000
                         call               _jmp_addr_0x007bdfc0                          // 0x0046d6c2    e8f9083500
                         push               0x4                                           // 0x0046d6c7    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x0046d6c9    8d4c247c
                         push               ecx                                           // 0x0046d6cd    51
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046d6ce    8d4c2410
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000005      // 0x0046d6d2    c784248000000005000000
                         call               _jmp_addr_0x007bdfc0                          // 0x0046d6dd    e8de083500
                         push               0x45                                          // 0x0046d6e2    6a45
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0046d6e4    8d54240c
                         push               edx                                           // 0x0046d6e8    52
                         mov.s              ecx, esi                                      // 0x0046d6e9    8bce
                         call               _jmp_addr_0x00618150                          // 0x0046d6eb    e860aa1a00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d6f0    8d4c2408
                         call               ?CloseSegment@LHFile@@QAEIXZ                  // 0x0046d6f4    e857083500
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d6f9    8d4c2408
                         call               ?Close@LHFile@@QAEIXZ                         // 0x0046d6fd    e8be043500
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0046d702    8d4c2408
                         call               _jmp_addr_0x007bda20                          // 0x0046d706    e815033500
                         pop                edi                                           // 0x0046d70b    5f
                         mov                eax, 0x00000001                               // 0x0046d70c    b801000000
                         pop                esi                                           // 0x0046d711    5e
                         add                esp, 0x6c                                     // 0x0046d712    83c46c
                         ret                0x0004                                        // 0x0046d715    c20400
                         nop                                                              // 0x0046d718    90
                         nop                                                              // 0x0046d719    90
                         nop                                                              // 0x0046d71a    90
                         nop                                                              // 0x0046d71b    90
                         nop                                                              // 0x0046d71c    90
                         nop                                                              // 0x0046d71d    90
                         nop                                                              // 0x0046d71e    90
                         nop                                                              // 0x0046d71f    90
_jmp_addr_0x0046d720:    mov.s              edx, ecx                                      // 0x0046d720    8bd1
                         push               edi                                           // 0x0046d722    57
                         xor.s              eax, eax                                      // 0x0046d723    33c0
                         {disp8} mov        dword ptr [edx + 0x24], eax                   // 0x0046d725    894224
                         {disp8} mov        dword ptr [edx + 0x28], eax                   // 0x0046d728    894228
                         mov                ecx, 0x00000008                               // 0x0046d72b    b908000000
                         mov.s              edi, edx                                      // 0x0046d730    8bfa
                         rep stosd                                                        // 0x0046d732    f3ab
                         stosb                                                            // 0x0046d734    aa
                         mov.s              eax, edx                                      // 0x0046d735    8bc2
                         pop                edi                                           // 0x0046d737    5f
                         ret                                                              // 0x0046d738    c3
                         nop                                                              // 0x0046d739    90
                         nop                                                              // 0x0046d73a    90
                         nop                                                              // 0x0046d73b    90
                         nop                                                              // 0x0046d73c    90
                         nop                                                              // 0x0046d73d    90
                         nop                                                              // 0x0046d73e    90
                         nop                                                              // 0x0046d73f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0046d740    8b442404
                         push               esi                                           // 0x0046d744    56
                         push               0x0                                           // 0x0046d745    6a00
                         mov.s              esi, ecx                                      // 0x0046d747    8bf1
                         push               eax                                           // 0x0046d749    50
                         call               @GetAnim__9MorphableFll@16                    // 0x0046d74a    e801bf1a00
                         test               eax, eax                                      // 0x0046d74f    85c0
                         {disp8} jne        _jmp_addr_0x0046d75c                          // 0x0046d751    7509
                         push               eax                                           // 0x0046d753    50
                         push               eax                                           // 0x0046d754    50
                         mov.s              ecx, esi                                      // 0x0046d755    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0046d757    e8f4be1a00
_jmp_addr_0x0046d75c:    pop                esi                                           // 0x0046d75c    5e
                         ret                0x0004                                        // 0x0046d75d    c20400
_jmp_addr_0x0046d760:    sub                esp, 0x78                                     // 0x0046d760    83ec78
                         push               ebx                                           // 0x0046d763    53
                         push               esi                                           // 0x0046d764    56
                         push               edi                                           // 0x0046d765    57
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0046d766    8d442454
                         mov.s              ebx, ecx                                      // 0x0046d76a    8bd9
                         push               eax                                           // 0x0046d76c    50
                         call               _jmp_addr_0x0046d080                          // 0x0046d76d    e80ef9ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x1a6a0]             // 0x0046d772    d905a0368c00
                         {disp32} fsub      dword ptr [ebx + 0x00000084]                  // 0x0046d778    d8a384000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0046d77e    c744241000000000
                         fld                st(0)                                         // 0x0046d786    d9c0
                         fsin                                                             // 0x0046d788    d9fe
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046d78a    d95c2418
                         fcos                                                             // 0x0046d78e    d9ff
                         fchs                                                             // 0x0046d790    d9e0
                         fchs                                                             // 0x0046d792    d9e0
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0046d794    d95c240c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046d798    d9442418
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046d79c    d95c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046d7a0    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046d7a4    d81d98a38a00
                         fnstsw             ax                                            // 0x0046d7aa    dfe0
                         test               ah, 0x40                                      // 0x0046d7ac    f6c440
                         {disp8} je         _jmp_addr_0x0046d7d3                          // 0x0046d7af    7422
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046d7b1    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046d7b5    d81d98a38a00
                         fnstsw             ax                                            // 0x0046d7bb    dfe0
                         test               ah, 0x40                                      // 0x0046d7bd    f6c440
                         {disp8} je         _jmp_addr_0x0046d7d3                          // 0x0046d7c0    7411
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046d7c2    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046d7c6    d81d98a38a00
                         fnstsw             ax                                            // 0x0046d7cc    dfe0
                         test               ah, 0x40                                      // 0x0046d7ce    f6c440
                         {disp8} jne        _jmp_addr_0x0046d813                          // 0x0046d7d1    7540
_jmp_addr_0x0046d7d3:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046d7d3    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0046d7d7    d84c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046d7db    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046d7df    d84c2410
                         faddp              st(1), st                                     // 0x0046d7e3    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046d7e5    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0046d7e9    d84c2414
                         faddp              st(1), st                                     // 0x0046d7ed    dec1
                         fsqrt                                                            // 0x0046d7ef    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0046d7f1    d83d90a38a00
                         fld                st(0)                                         // 0x0046d7f7    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0046d7f9    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0046d7fd    d95c240c
                         fld                st(0)                                         // 0x0046d801    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046d803    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046d807    d95c2410
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0046d80b    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046d80f    d95c2414
_jmp_addr_0x0046d813:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0046d813    d90598a38a00
                         push               ecx                                           // 0x0046d819    51
                         fld                st(0)                                         // 0x0046d81a    d9c0
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0046d81c    d8642410
                         fstp               dword ptr [esp]                               // 0x0046d820    d91c24
                         push               0x0                                           // 0x0046d823    6a00
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046d825    d944241c
                         push               ecx                                           // 0x0046d829    51
                         fsub               st, st(1)                                     // 0x0046d82a    d8e1
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0046d82c    8d4c2424
                         fstp               dword ptr [esp]                               // 0x0046d830    d91c24
                         fstp               st(0)                                         // 0x0046d833    ddd8
                         call               @__ct__7LHPointFfff@20                        // 0x0046d835    e8c64efdff
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046d83a    d944240c
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0046d83e    8d542424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0046d842    d95c2424
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046d846    d9442410
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x0046d84a    8d4c2454
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0046d84e    d95c2428
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046d852    d9442414
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x0046d856    c744243c00000000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0046d85e    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046d862    d9442418
                         {disp8} mov        dword ptr [esp + 0x40], 0xbf800000            // 0x0046d866    c7442440000080bf
                         fchs                                                             // 0x0046d86e    d9e0
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x0046d870    c744244400000000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0046d878    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046d87c    d944241c
                         fchs                                                             // 0x0046d880    d9e0
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0046d882    d95c2434
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046d886    d9442420
                         fchs                                                             // 0x0046d88a    d9e0
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0046d88c    d95c2438
                         call               _jmp_addr_0x0046d9d0                          // 0x0046d890    e83b010000
                         {disp8} mov        ecx, dword ptr [ebx + 0x78]                   // 0x0046d895    8b4b78
                         {disp8} mov        edx, dword ptr [ebx + 0x7c]                   // 0x0046d898    8b537c
                         {disp32} mov       eax, dword ptr [ebx + 0x00000080]             // 0x0046d89b    8b8380000000
                         {disp8} mov        dword ptr [esp + 0x78], ecx                   // 0x0046d8a1    894c2478
                         {disp8} mov        dword ptr [esp + 0x7c], edx                   // 0x0046d8a5    8954247c
                         {disp32} mov       dword ptr [esp + 0x00000080], eax             // 0x0046d8a9    89842480000000
                         call               _jmp_addr_0x0046c040                          // 0x0046d8b0    e88be7ffff
                         {disp8} fadd       dword ptr [esp + 0x7c]                        // 0x0046d8b5    d844247c
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047c0]             // 0x0046d8b9    8b8bc0470000
                         test               ecx, ecx                                      // 0x0046d8bf    85c9
                         {disp8} fstp       dword ptr [esp + 0x7c]                        // 0x0046d8c1    d95c247c
                         {disp8} je         _jmp_addr_0x0046d922                          // 0x0046d8c5    745b
                         {disp32} mov       edx, dword ptr [ebx + 0x000047fc]             // 0x0046d8c7    8b93fc470000
                         {disp32} mov       eax, dword ptr [ebx + 0x000047d0]             // 0x0046d8cd    8b83d0470000
                         push               0x1                                           // 0x0046d8d3    6a01
                         push               0x0                                           // 0x0046d8d5    6a00
                         push               edx                                           // 0x0046d8d7    52
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f8]             // 0x0046d8d8    8b93f8470000
                         push               eax                                           // 0x0046d8de    50
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f4]             // 0x0046d8df    8b83f4470000
                         push               edx                                           // 0x0046d8e5    52
                         {disp32} mov       edx, dword ptr [ebx + 0x00000098]             // 0x0046d8e6    8b9398000000
                         push               eax                                           // 0x0046d8ec    50
                         {disp32} mov       eax, dword ptr [ebx + edx * 0x4 + 0x000000b4] // 0x0046d8ed    8b8493b4000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f0]             // 0x0046d8f4    8b93f0470000
                         push               eax                                           // 0x0046d8fa    50
                         push               edx                                           // 0x0046d8fb    52
                         call               _jmp_addr_0x00860e00                          // 0x0046d8fc    e8ff343f00
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000098]             // 0x0046d901    8b8b98000000
                         {disp32} mov       edx, dword ptr [ebx + ecx * 0x4 + 0x000000b4] // 0x0046d907    8b948bb4000000
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0046d90e    8d442454
                         push               eax                                           // 0x0046d912    50
                         {disp32} mov       eax, dword ptr [ebx + 0x000047f0]             // 0x0046d913    8b83f0470000
                         push               edx                                           // 0x0046d919    52
                         push               eax                                           // 0x0046d91a    50
                         call               _jmp_addr_0x00839f10                          // 0x0046d91b    e8f0c53c00
                         {disp8} jmp        _jmp_addr_0x0046d943                          // 0x0046d920    eb21
_jmp_addr_0x0046d922:    {disp32} mov       edx, dword ptr [ebx + 0x00000098]             // 0x0046d922    8b9398000000
                         {disp32} mov       eax, dword ptr [ebx + edx * 0x4 + 0x000000b4] // 0x0046d928    8b8493b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x0046d92f    8d4c2454
                         push               ecx                                           // 0x0046d933    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f0]             // 0x0046d934    8b8bf0470000
                         push               eax                                           // 0x0046d93a    50
                         push               ecx                                           // 0x0046d93b    51
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                     // 0x0046d93c    e88fc83c00
                         fstp               st(0)                                         // 0x0046d941    ddd8
_jmp_addr_0x0046d943:    {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]             // 0x0046d943    8b8b2c480000
                         {disp32} mov       edx, dword ptr [ebx + 0x00000098]             // 0x0046d949    8b9398000000
                         mov                eax, dword ptr [ecx]                          // 0x0046d94f    8b01
                         {disp32} mov       edx, dword ptr [ebx + edx * 0x4 + 0x000000b4] // 0x0046d951    8b9493b4000000
                         add                esp, 0x0c                                     // 0x0046d958    83c40c
                         push               0x0                                           // 0x0046d95b    6a00
                         push               0x0                                           // 0x0046d95d    6a00
                         call               dword ptr [eax + 0xf4]                        // 0x0046d95f    ff90f4000000
                         {disp32} mov       edi, dword ptr [ebx + 0x0000482c]             // 0x0046d965    8bbb2c480000
                         add                edi, 0x14                                     // 0x0046d96b    83c714
                         mov                ecx, 0x0000000c                               // 0x0046d96e    b90c000000
                         {disp8} lea        esi, dword ptr [esp + 0x54]                   // 0x0046d973    8d742454
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046d977    f3a5
                         {disp32} mov       eax, dword ptr [ebx + 0x0000482c]             // 0x0046d979    8b832c480000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000047f0]             // 0x0046d97f    8b8bf0470000
                         {disp32} mov       dword ptr [eax + 0x00000080], ecx             // 0x0046d985    898880000000
                         {disp32} mov       edx, dword ptr [ebx + 0x000047f0]             // 0x0046d98b    8b93f0470000
                         {disp32} mov       dword ptr [data_bytes + 0x271d9c], edx        // 0x0046d991    89159c7dc300
                         {disp32} mov       eax, dword ptr [ebx + 0x0000482c]             // 0x0046d997    8b832c480000
                         {disp32} mov       dword ptr [eax + 0x000000bc], 0x00000001      // 0x0046d99d    c780bc00000001000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000482c]             // 0x0046d9a7    8b8b2c480000
                         call               _jmp_addr_0x00814fd0                          // 0x0046d9ad    e81e763a00
                         pop                edi                                           // 0x0046d9b2    5f
                         pop                esi                                           // 0x0046d9b3    5e
                         {disp32} mov       dword ptr [data_bytes + 0x271d9c], OFFSET ?g_current_list_matrix@LH3DMesh@@2PAULH3DMatrix@@A // 0x0046d9b4    c7059c7dc30028cee900
                         pop                ebx                                           // 0x0046d9be    5b
                         add                esp, 0x78                                     // 0x0046d9bf    83c478
                         ret                                                              // 0x0046d9c2    c3
                         nop                                                              // 0x0046d9c3    90
                         nop                                                              // 0x0046d9c4    90
                         nop                                                              // 0x0046d9c5    90
                         nop                                                              // 0x0046d9c6    90
                         nop                                                              // 0x0046d9c7    90
                         nop                                                              // 0x0046d9c8    90
                         nop                                                              // 0x0046d9c9    90
                         nop                                                              // 0x0046d9ca    90
                         nop                                                              // 0x0046d9cb    90
                         nop                                                              // 0x0046d9cc    90
                         nop                                                              // 0x0046d9cd    90
                         nop                                                              // 0x0046d9ce    90
                         nop                                                              // 0x0046d9cf    90
_jmp_addr_0x0046d9d0:    sub                esp, 0x30                                     // 0x0046d9d0    83ec30
                         fld                dword ptr [ecx]                               // 0x0046d9d3    d901
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x0046d9d5    8b410c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0046d9d8    d94104
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0046d9db    8944240c
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0046d9df    d94108
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0046d9e2    8b4110
                         fld                st(0)                                         // 0x0046d9e5    d9c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0046d9e7    89442410
                         {disp8} fmul       dword ptr [edx + 0x18]                        // 0x0046d9eb    d84a18
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x0046d9ee    8b4114
                         fld                st(2)                                         // 0x0046d9f1    d9c2
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0046d9f3    89442414
                         {disp8} fmul       dword ptr [edx + 0x0c]                        // 0x0046d9f7    d84a0c
                         {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0046d9fa    8b4118
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0046d9fd    89442418
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x0046da01    8b411c
                         faddp              st(1), st                                     // 0x0046da04    dec1
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0046da06    8944241c
                         fld                st(3)                                         // 0x0046da0a    d9c3
                         {disp8} mov        eax, dword ptr [ecx + 0x20]                   // 0x0046da0c    8b4120
                         fmul               dword ptr [edx]                               // 0x0046da0f    d80a
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0046da11    89442420
                         faddp              st(1), st                                     // 0x0046da15    dec1
                         fstp               dword ptr [ecx]                               // 0x0046da17    d919
                         fld                st(0)                                         // 0x0046da19    d9c0
                         {disp8} fmul       dword ptr [edx + 0x1c]                        // 0x0046da1b    d84a1c
                         fld                st(2)                                         // 0x0046da1e    d9c2
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x0046da20    d84a10
                         faddp              st(1), st                                     // 0x0046da23    dec1
                         fld                st(3)                                         // 0x0046da25    d9c3
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0046da27    d84a04
                         faddp              st(1), st                                     // 0x0046da2a    dec1
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0046da2c    d95904
                         fxch               st(2)                                         // 0x0046da2f    d9ca
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0046da31    d84a08
                         fxch               st(2)                                         // 0x0046da34    d9ca
                         {disp8} fmul       dword ptr [edx + 0x20]                        // 0x0046da36    d84a20
                         faddp              st(2), st                                     // 0x0046da39    dec2
                         {disp8} fmul       dword ptr [edx + 0x14]                        // 0x0046da3b    d84a14
                         faddp              st(1), st                                     // 0x0046da3e    dec1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0046da40    d95908
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046da43    d9442414
                         {disp8} fmul       dword ptr [edx + 0x18]                        // 0x0046da47    d84a18
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046da4a    d9442410
                         {disp8} fmul       dword ptr [edx + 0x0c]                        // 0x0046da4e    d84a0c
                         faddp              st(1), st                                     // 0x0046da51    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046da53    d944240c
                         fmul               dword ptr [edx]                               // 0x0046da57    d80a
                         faddp              st(1), st                                     // 0x0046da59    dec1
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x0046da5b    d9590c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046da5e    d9442414
                         {disp8} fmul       dword ptr [edx + 0x1c]                        // 0x0046da62    d84a1c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046da65    d9442410
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x0046da69    d84a10
                         faddp              st(1), st                                     // 0x0046da6c    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046da6e    d944240c
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0046da72    d84a04
                         faddp              st(1), st                                     // 0x0046da75    dec1
                         {disp8} fstp       dword ptr [ecx + 0x10]                        // 0x0046da77    d95910
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046da7a    d944240c
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0046da7e    d84a08
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046da81    d9442414
                         {disp8} fmul       dword ptr [edx + 0x20]                        // 0x0046da85    d84a20
                         faddp              st(1), st                                     // 0x0046da88    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046da8a    d9442410
                         {disp8} fmul       dword ptr [edx + 0x14]                        // 0x0046da8e    d84a14
                         faddp              st(1), st                                     // 0x0046da91    dec1
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x0046da93    d95914
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046da96    d9442420
                         {disp8} fmul       dword ptr [edx + 0x18]                        // 0x0046da9a    d84a18
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046da9d    d944241c
                         {disp8} fmul       dword ptr [edx + 0x0c]                        // 0x0046daa1    d84a0c
                         faddp              st(1), st                                     // 0x0046daa4    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046daa6    d9442418
                         fmul               dword ptr [edx]                               // 0x0046daaa    d80a
                         faddp              st(1), st                                     // 0x0046daac    dec1
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x0046daae    d95918
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046dab1    d9442420
                         {disp8} fmul       dword ptr [edx + 0x1c]                        // 0x0046dab5    d84a1c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046dab8    d944241c
                         {disp8} fmul       dword ptr [edx + 0x10]                        // 0x0046dabc    d84a10
                         faddp              st(1), st                                     // 0x0046dabf    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046dac1    d9442418
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0046dac5    d84a04
                         faddp              st(1), st                                     // 0x0046dac8    dec1
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x0046daca    d9591c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046dacd    d9442418
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0046dad1    d84a08
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046dad4    d9442420
                         {disp8} fmul       dword ptr [edx + 0x20]                        // 0x0046dad8    d84a20
                         faddp              st(1), st                                     // 0x0046dadb    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046dadd    d944241c
                         {disp8} fmul       dword ptr [edx + 0x14]                        // 0x0046dae1    d84a14
                         faddp              st(1), st                                     // 0x0046dae4    dec1
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x0046dae6    d95920
                         add                esp, 0x30                                     // 0x0046dae9    83c430
                         ret                                                              // 0x0046daec    c3
                         nop                                                              // 0x0046daed    90
                         nop                                                              // 0x0046daee    90
                         nop                                                              // 0x0046daef    90
_jmp_addr_0x0046daf0:    push               esi                                           // 0x0046daf0    56
                         mov.s              esi, ecx                                      // 0x0046daf1    8bf1
                         {disp32} fild      dword ptr [esi + 0x0000486c]                  // 0x0046daf3    db866c480000
                         {disp32} fstp      dword ptr [data_bytes + 0x5403ac]             // 0x0046daf9    d91dac63f000
                         {disp32} fild      dword ptr [esi + 0x00004870]                  // 0x0046daff    db8670480000
                         {disp32} fstp      dword ptr [data_bytes + 0x5403b0]             // 0x0046db05    d91db063f000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000499c]             // 0x0046db0b    8b8e9c490000
                         call               _jmp_addr_0x007e6450                          // 0x0046db11    e83a893700
                         test               eax, eax                                      // 0x0046db16    85c0
                         {disp8} jne        _jmp_addr_0x0046db69                          // 0x0046db18    754f
                         {disp32} mov       eax, dword ptr [esi + 0x0000499c]             // 0x0046db1a    8b869c490000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0046db20    8b4818
                         {disp32} mov       dword ptr [data_bytes + 0x5403a8], ecx        // 0x0046db23    890da863f000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046db29    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0046db2f    8b11
                         call               dword ptr [edx + 0x178]                       // 0x0046db31    ff9278010000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000499c]             // 0x0046db37    8b8e9c490000
                         call               _jmp_addr_0x007e64a0                          // 0x0046db3d    e85e893700
                         {disp32} fld       dword ptr [data_bytes + 0x5403ac]             // 0x0046db42    d905ac63f000
                         call               _jmp_addr_0x007a1400                          // 0x0046db48    e8b3383300
                         {disp32} fld       dword ptr [data_bytes + 0x5403b0]             // 0x0046db4d    d905b063f000
                         movsx              eax, ax                                       // 0x0046db53    0fbfc0
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2b8], eax        // 0x0046db56    a3b852e800
                         call               _jmp_addr_0x007a1400                          // 0x0046db5b    e8a0383300
                         movsx              ecx, ax                                       // 0x0046db60    0fbfc8
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2bc], ecx        // 0x0046db63    890dbc52e800
_jmp_addr_0x0046db69:    pop                esi                                           // 0x0046db69    5e
                         ret                                                              // 0x0046db6a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0046db6b    e8093df9ff
_jmp_addr_0x0046db70:    sub                esp, 0x1c                                     // 0x0046db70    83ec1c
                         push               esi                                           // 0x0046db73    56
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0046db74    8b742424
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0046db78    8b4640
                         test               eax, eax                                      // 0x0046db7b    85c0
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0046db7d    c744240400000000
                         {disp8} je         _jmp_addr_0x0046db92                          // 0x0046db85    740b
                         mov                eax, dword ptr [esi]                          // 0x0046db87    8b06
                         mov.s              ecx, esi                                      // 0x0046db89    8bce
                         call               dword ptr [eax + 0x64]                        // 0x0046db8b    ff5064
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0046db8e    d95c2404
_jmp_addr_0x0046db92:    {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x0046db92    8b4e1c
                         add                esi, 0x14                                     // 0x0046db95    83c614
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0046db98    894c2424
                         mov.s              ecx, esi                                      // 0x0046db9c    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0046db9e    e8ed543900
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0046dba3    d8442424
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0046dba7    8b0d5c19d000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046dbad    d95c2418
                         fild               dword ptr [esi]                               // 0x0046dbb1    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0046dbb3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046dbb9    d95c2414
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0046dbbd    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0046dbc0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0046dbc6    d95c241c
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0046dbca    e8b1e50d00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x0046dbcf    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x0046dbd5    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0046dbda    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0046dbe0    89542408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0046dbe4    d9442408
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0046dbe8    d8642414
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0046dbec    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046dbf0    d944240c
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0046dbf4    894c2410
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0046dbf8    d8642418
                         pop                esi                                           // 0x0046dbfc    5e
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046dbfd    d944240c
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0046dc01    d8642418
                         fld                st(0)                                         // 0x0046dc05    d9c0
                         fmul               st, st(1)                                     // 0x0046dc07    d8c9
                         fld                st(2)                                         // 0x0046dc09    d9c2
                         fmul               st, st(3)                                     // 0x0046dc0b    d8cb
                         faddp              st(1), st                                     // 0x0046dc0d    dec1
                         fld                st(3)                                         // 0x0046dc0f    d9c3
                         fmul               st, st(4)                                     // 0x0046dc11    d8cc
                         faddp              st(1), st                                     // 0x0046dc13    dec1
                         fsqrt                                                            // 0x0046dc15    d9fa
                         fstp               st(3)                                         // 0x0046dc17    dddb
                         fstp               st(0)                                         // 0x0046dc19    ddd8
                         fstp               st(0)                                         // 0x0046dc1b    ddd8
                         {disp8} fsub       dword ptr [esp + 0x00]                        // 0x0046dc1d    d8642400
                         add                esp, 0x1c                                     // 0x0046dc21    83c41c
                         ret                0x0004                                        // 0x0046dc24    c20400
                         nop                                                              // 0x0046dc27    90
                         nop                                                              // 0x0046dc28    90
                         nop                                                              // 0x0046dc29    90
                         nop                                                              // 0x0046dc2a    90
                         nop                                                              // 0x0046dc2b    90
                         nop                                                              // 0x0046dc2c    90
                         nop                                                              // 0x0046dc2d    90
                         nop                                                              // 0x0046dc2e    90
                         nop                                                              // 0x0046dc2f    90
_jmp_addr_0x0046dc30:    push               ebx                                           // 0x0046dc30    53
                         push               ebp                                           // 0x0046dc31    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x0046dc32    8b6c240c
                         push               esi                                           // 0x0046dc36    56
                         xor.s              ebx, ebx                                      // 0x0046dc37    33db
                         cmp.s              ebp, ebx                                      // 0x0046dc39    3beb
                         mov.s              esi, ecx                                      // 0x0046dc3b    8bf1
                         push               edi                                           // 0x0046dc3d    57
                         {disp32} mov       dword ptr [esi + 0x00004904], ebp             // 0x0046dc3e    89ae04490000
                         {disp8} jne        _jmp_addr_0x0046dc53                          // 0x0046dc44    750d
                         pop                edi                                           // 0x0046dc46    5f
                         {disp32} mov       dword ptr [esi + 0x00004908], ebx             // 0x0046dc47    899e08490000
                         pop                esi                                           // 0x0046dc4d    5e
                         pop                ebp                                           // 0x0046dc4e    5d
                         pop                ebx                                           // 0x0046dc4f    5b
                         ret                0x0008                                        // 0x0046dc50    c20800
_jmp_addr_0x0046dc53:    {disp8} mov        edi, dword ptr [ebp + 0x40]                   // 0x0046dc53    8b7d40
                         cmp.s              edi, ebx                                      // 0x0046dc56    3bfb
                         {disp8} jne        _jmp_addr_0x0046dc67                          // 0x0046dc58    750d
                         pop                edi                                           // 0x0046dc5a    5f
                         {disp32} mov       dword ptr [esi + 0x00004908], ebx             // 0x0046dc5b    899e08490000
                         pop                esi                                           // 0x0046dc61    5e
                         pop                ebp                                           // 0x0046dc62    5d
                         pop                ebx                                           // 0x0046dc63    5b
                         ret                0x0008                                        // 0x0046dc64    c20800
_jmp_addr_0x0046dc67:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0046dc67    8b4500
                         mov.s              ecx, ebp                                      // 0x0046dc6a    8bcd
                         call               dword ptr [eax + 0x4c4]                       // 0x0046dc6c    ff90c4040000
                         test               eax, eax                                      // 0x0046dc72    85c0
                         {disp8} je         _jmp_addr_0x0046dc7a                          // 0x0046dc74    7404
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0046dc76    895c2418
_jmp_addr_0x0046dc7a:    {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x0046dc7a    8b8e04490000
                         cmp.s              ecx, ebx                                      // 0x0046dc80    3bcb
                         {disp8} je         _jmp_addr_0x0046dca1                          // 0x0046dc82    741d
                         mov                edx, dword ptr [ecx]                          // 0x0046dc84    8b11
                         call               dword ptr [edx + 0x618]                       // 0x0046dc86    ff9218060000
                         test               al, al                                        // 0x0046dc8c    84c0
                         {disp8} je         _jmp_addr_0x0046dca1                          // 0x0046dc8e    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046dc90    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046dc96    8b01
                         push               edi                                           // 0x0046dc98    57
                         call               dword ptr [eax + 0x234]                       // 0x0046dc99    ff9034020000
                         {disp8} jmp        _jmp_addr_0x0046dcb0                          // 0x0046dc9f    eb0f
_jmp_addr_0x0046dca1:    {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046dca1    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0046dca7    8b11
                         push               ebx                                           // 0x0046dca9    53
                         call               dword ptr [edx + 0x234]                       // 0x0046dcaa    ff9234020000
_jmp_addr_0x0046dcb0:    mov                eax, dword ptr [edi]                          // 0x0046dcb0    8b07
                         mov.s              ecx, edi                                      // 0x0046dcb2    8bcf
                         call               dword ptr [eax + 0x44]                        // 0x0046dcb4    ff5044
                         {disp32} mov       dword ptr [esi + 0x00004910], eax             // 0x0046dcb7    898610490000
                         mov                edx, dword ptr [edi]                          // 0x0046dcbd    8b17
                         mov.s              ecx, edi                                      // 0x0046dcbf    8bcf
                         call               dword ptr [edx + 0x7c]                        // 0x0046dcc1    ff527c
                         {disp32} mov       dword ptr [esi + 0x00004914], eax             // 0x0046dcc4    898614490000
                         mov                eax, dword ptr [edi]                          // 0x0046dcca    8b07
                         mov                edx, 0x00000001                               // 0x0046dccc    ba01000000
                         mov.s              ecx, edi                                      // 0x0046dcd1    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x0046dcd3    ff5040
                         mov                eax, dword ptr [edi]                          // 0x0046dcd6    8b07
                         xor.s              edx, edx                                      // 0x0046dcd8    33d2
                         mov.s              ecx, edi                                      // 0x0046dcda    8bcf
                         call               dword ptr [eax + 0x78]                        // 0x0046dcdc    ff5078
                         {disp8} mov        dword ptr [edi + 0x50], ebx                   // 0x0046dcdf    895f50
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0046dce2    8b5500
                         mov.s              ecx, ebp                                      // 0x0046dce5    8bcd
                         call               dword ptr [edx + 0x58c]                       // 0x0046dce7    ff928c050000
                         {disp32} mov       dword ptr [esi + 0x0000490c], eax             // 0x0046dced    89860c490000
                         test               byte ptr [ebp + 0x24], 0x40                   // 0x0046dcf3    f6452440
                         {disp8} je         _jmp_addr_0x0046dd03                          // 0x0046dcf7    740a
                         test               byte ptr [ebp + 0x0a], 0x10                   // 0x0046dcf9    f6450a10
                         {disp8} jne        _jmp_addr_0x0046dd03                          // 0x0046dcfd    7504
                         mov                al, 0x01                                      // 0x0046dcff    b001
                         {disp8} jmp        _jmp_addr_0x0046dd05                          // 0x0046dd01    eb02
_jmp_addr_0x0046dd03:    xor.s              al, al                                        // 0x0046dd03    32c0
_jmp_addr_0x0046dd05:    cmp                dword ptr [esp + 0x18], ebx                   // 0x0046dd05    395c2418
                         {disp8} je         _jmp_addr_0x0046dd20                          // 0x0046dd09    7415
                         cmp.s              al, bl                                        // 0x0046dd0b    3ac3
                         {disp8} jne        _jmp_addr_0x0046dd20                          // 0x0046dd0d    7511
                         pop                edi                                           // 0x0046dd0f    5f
                         {disp32} mov       dword ptr [esi + 0x00004908], 0x00000001      // 0x0046dd10    c7860849000001000000
                         pop                esi                                           // 0x0046dd1a    5e
                         pop                ebp                                           // 0x0046dd1b    5d
                         pop                ebx                                           // 0x0046dd1c    5b
                         ret                0x0008                                        // 0x0046dd1d    c20800
_jmp_addr_0x0046dd20:    {disp32} mov       dword ptr [esi + 0x00004908], ebx             // 0x0046dd20    899e08490000
                         {disp8} mov        eax, dword ptr [ebp + 0x40]                   // 0x0046dd26    8b4540
                         {disp8} mov        ecx, dword ptr [eax + 0x38]                   // 0x0046dd29    8b4838
                         add                eax, 0x38                                     // 0x0046dd2c    83c038
                         {disp32} mov       dword ptr [esi + 0x0000492c], ecx             // 0x0046dd2f    898e2c490000
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0046dd35    8b5004
                         {disp32} mov       dword ptr [esi + 0x00004930], edx             // 0x0046dd38    899630490000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046dd3e    8b4008
                         {disp32} mov       dword ptr [esi + 0x00004934], eax             // 0x0046dd41    898634490000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0046dd47    8b5500
                         mov.s              ecx, ebp                                      // 0x0046dd4a    8bcd
                         call               dword ptr [edx + 0x594]                       // 0x0046dd4c    ff9294050000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046dd52    d95c2418
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0046dd56    8b4500
                         mov.s              ecx, ebp                                      // 0x0046dd59    8bcd
                         call               dword ptr [eax + 0x42c]                       // 0x0046dd5b    ff902c040000
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0046dd61    d84c2418
                         {disp32} fstp      dword ptr [esi + 0x00004944]                  // 0x0046dd65    d99e44490000
                         call               _jmp_addr_0x0046c040                          // 0x0046dd6b    e8d0e2ffff
                         {disp32} fmul      dword ptr [esi + 0x00004834]                  // 0x0046dd70    d88e34480000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0046dd76    d80d3cb28a00
                         {disp32} fld       dword ptr [esi + 0x00004944]                  // 0x0046dd7c    d98644490000
                         fld                st(1)                                         // 0x0046dd82    d9c1
                         fcompp                                                           // 0x0046dd84    ded9
                         fnstsw             ax                                            // 0x0046dd86    dfe0
                         test               ah, 0x41                                      // 0x0046dd88    f6c441
                         {disp8} je         _jmp_addr_0x0046dd95                          // 0x0046dd8b    7408
                         fstp               st(0)                                         // 0x0046dd8d    ddd8
                         {disp32} fld       dword ptr [esi + 0x00004944]                  // 0x0046dd8f    d98644490000
_jmp_addr_0x0046dd95:    {disp32} fstp      dword ptr [esi + 0x00004944]                  // 0x0046dd95    d99e44490000
                         {disp32} mov       dword ptr [esi + 0x00004940], ebx             // 0x0046dd9b    899e40490000
                         {disp32} mov       dword ptr [esi + 0x0000493c], ebx             // 0x0046dda1    899e3c490000
                         {disp32} mov       dword ptr [esi + 0x00004938], ebx             // 0x0046dda7    899e38490000
                         pop                edi                                           // 0x0046ddad    5f
                         {disp32} mov       dword ptr [esi + 0x00004928], ebx             // 0x0046ddae    899e28490000
                         {disp32} mov       dword ptr [esi + 0x00004924], ebx             // 0x0046ddb4    899e24490000
                         {disp32} mov       dword ptr [esi + 0x00004920], ebx             // 0x0046ddba    899e20490000
                         pop                esi                                           // 0x0046ddc0    5e
                         pop                ebp                                           // 0x0046ddc1    5d
                         pop                ebx                                           // 0x0046ddc2    5b
                         ret                0x0008                                        // 0x0046ddc3    c20800
                         nop                                                              // 0x0046ddc6    90
                         nop                                                              // 0x0046ddc7    90
                         nop                                                              // 0x0046ddc8    90
                         nop                                                              // 0x0046ddc9    90
                         nop                                                              // 0x0046ddca    90
                         nop                                                              // 0x0046ddcb    90
                         nop                                                              // 0x0046ddcc    90
                         nop                                                              // 0x0046ddcd    90
                         nop                                                              // 0x0046ddce    90
                         nop                                                              // 0x0046ddcf    90
?ThrowObject@CHand@@QAEXXZ:push               esi                                           // 0x0046ddd0    56
                         mov.s              esi, ecx                                      // 0x0046ddd1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004904]             // 0x0046ddd3    8b8604490000
                         test               eax, eax                                      // 0x0046ddd9    85c0
                         {disp8} je         _jmp_addr_0x0046de30                          // 0x0046dddb    7453
                         push               edi                                           // 0x0046dddd    57
                         {disp8} mov        edi, dword ptr [eax + 0x40]                   // 0x0046ddde    8b7840
                         test               edi, edi                                      // 0x0046dde1    85ff
                         {disp8} je         _jmp_addr_0x0046ddff                          // 0x0046dde3    741a
                         mov                eax, dword ptr [edi]                          // 0x0046dde5    8b07
                         {disp32} mov       edx, dword ptr [esi + 0x00004910]             // 0x0046dde7    8b9610490000
                         mov.s              ecx, edi                                      // 0x0046dded    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x0046ddef    ff5040
                         mov                eax, dword ptr [edi]                          // 0x0046ddf2    8b07
                         {disp32} mov       edx, dword ptr [esi + 0x00004914]             // 0x0046ddf4    8b9614490000
                         mov.s              ecx, edi                                      // 0x0046ddfa    8bcf
                         call               dword ptr [eax + 0x78]                        // 0x0046ddfc    ff5078
_jmp_addr_0x0046ddff:    {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046ddff    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0046de05    8b11
                         push               0x0                                           // 0x0046de07    6a00
                         call               dword ptr [edx + 0x234]                       // 0x0046de09    ff9234020000
                         {disp32} mov       eax, dword ptr [esi + 0x00004904]             // 0x0046de0f    8b8604490000
                         {disp32} mov       dword ptr [esi + 0x000048fc], eax             // 0x0046de15    8986fc480000
                         {disp32} mov       dword ptr [esi + 0x00004904], 0x00000000      // 0x0046de1b    c7860449000000000000
                         {disp32} mov       dword ptr [data_bytes + 0x22d58c], 0x00000002 // 0x0046de25    c7058c35bf0002000000
                         pop                edi                                           // 0x0046de2f    5f
_jmp_addr_0x0046de30:    pop                esi                                           // 0x0046de30    5e
                         ret                                                              // 0x0046de31    c3
                         nop                                                              // 0x0046de32    90
                         nop                                                              // 0x0046de33    90
                         nop                                                              // 0x0046de34    90
                         nop                                                              // 0x0046de35    90
                         nop                                                              // 0x0046de36    90
                         nop                                                              // 0x0046de37    90
                         nop                                                              // 0x0046de38    90
                         nop                                                              // 0x0046de39    90
                         nop                                                              // 0x0046de3a    90
                         nop                                                              // 0x0046de3b    90
                         nop                                                              // 0x0046de3c    90
                         nop                                                              // 0x0046de3d    90
                         nop                                                              // 0x0046de3e    90
                         nop                                                              // 0x0046de3f    90
_jmp_addr_0x0046de40:    push               esi                                           // 0x0046de40    56
                         mov.s              esi, ecx                                      // 0x0046de41    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x0046de43    8b8e04490000
                         push               edi                                           // 0x0046de49    57
                         {disp8} mov        edi, dword ptr [ecx + 0x40]                   // 0x0046de4a    8b7940
                         test               edi, edi                                      // 0x0046de4d    85ff
                         {disp8} je         _jmp_addr_0x0046de6a                          // 0x0046de4f    7419
                         mov                eax, dword ptr [ecx]                          // 0x0046de51    8b01
                         {disp8} lea        edx, dword ptr [edi + 0x14]                   // 0x0046de53    8d5714
                         push               edx                                           // 0x0046de56    52
                         call               dword ptr [eax + 0x63c]                       // 0x0046de57    ff903c060000
                         mov                eax, dword ptr [edi]                          // 0x0046de5d    8b07
                         {disp32} mov       edx, dword ptr [esi + 0x00004910]             // 0x0046de5f    8b9610490000
                         mov.s              ecx, edi                                      // 0x0046de65    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x0046de67    ff5040
_jmp_addr_0x0046de6a:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0046de6a    8b4c240c
                         {disp32} mov       dword ptr [esi + 0x00004904], ecx             // 0x0046de6e    898e04490000
                         mov                edx, dword ptr [ecx]                          // 0x0046de74    8b11
                         call               dword ptr [edx + 0x58c]                       // 0x0046de76    ff928c050000
                         {disp32} mov       dword ptr [esi + 0x0000490c], eax             // 0x0046de7c    89860c490000
                         {disp32} mov       eax, dword ptr [esi + 0x00004904]             // 0x0046de82    8b8604490000
                         {disp8} mov        edi, dword ptr [eax + 0x40]                   // 0x0046de88    8b7840
                         mov                edx, dword ptr [edi]                          // 0x0046de8b    8b17
                         mov.s              ecx, edi                                      // 0x0046de8d    8bcf
                         call               dword ptr [edx + 0x44]                        // 0x0046de8f    ff5244
                         {disp32} mov       dword ptr [esi + 0x00004910], eax             // 0x0046de92    898610490000
                         mov                eax, dword ptr [edi]                          // 0x0046de98    8b07
                         mov                edx, 0x00000001                               // 0x0046de9a    ba01000000
                         mov.s              ecx, edi                                      // 0x0046de9f    8bcf
                         call               dword ptr [eax + 0x40]                        // 0x0046dea1    ff5040
                         {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x0046dea4    8b8e04490000
                         test               ecx, ecx                                      // 0x0046deaa    85c9
                         {disp8} je         _jmp_addr_0x0046ded5                          // 0x0046deac    7427
                         mov                edx, dword ptr [ecx]                          // 0x0046deae    8b11
                         call               dword ptr [edx + 0x618]                       // 0x0046deb0    ff9218060000
                         test               al, al                                        // 0x0046deb6    84c0
                         {disp8} je         _jmp_addr_0x0046ded5                          // 0x0046deb8    741b
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046deba    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046dec0    8b01
                         push               edi                                           // 0x0046dec2    57
                         call               dword ptr [eax + 0x234]                       // 0x0046dec3    ff9034020000
                         mov.s              ecx, esi                                      // 0x0046dec9    8bce
                         call               _jmp_addr_0x0046c500                          // 0x0046decb    e830e6ffff
                         pop                edi                                           // 0x0046ded0    5f
                         pop                esi                                           // 0x0046ded1    5e
                         ret                0x0004                                        // 0x0046ded2    c20400
_jmp_addr_0x0046ded5:    {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046ded5    8b8e2c480000
                         mov                edx, dword ptr [ecx]                          // 0x0046dedb    8b11
                         push               0x0                                           // 0x0046dedd    6a00
                         call               dword ptr [edx + 0x234]                       // 0x0046dedf    ff9234020000
                         mov.s              ecx, esi                                      // 0x0046dee5    8bce
                         call               _jmp_addr_0x0046c500                          // 0x0046dee7    e814e6ffff
                         pop                edi                                           // 0x0046deec    5f
                         pop                esi                                           // 0x0046deed    5e
                         ret                0x0004                                        // 0x0046deee    c20400
                         nop                                                              // 0x0046def1    90
                         nop                                                              // 0x0046def2    90
                         nop                                                              // 0x0046def3    90
                         nop                                                              // 0x0046def4    90
                         nop                                                              // 0x0046def5    90
                         nop                                                              // 0x0046def6    90
                         nop                                                              // 0x0046def7    90
                         nop                                                              // 0x0046def8    90
                         nop                                                              // 0x0046def9    90
                         nop                                                              // 0x0046defa    90
                         nop                                                              // 0x0046defb    90
                         nop                                                              // 0x0046defc    90
                         nop                                                              // 0x0046defd    90
                         nop                                                              // 0x0046defe    90
                         nop                                                              // 0x0046deff    90
_jmp_addr_0x0046df00:    {disp32} mov       al, byte ptr [data_bytes + 0x286cee]          // 0x0046df00    a0eeccc400
                         test               al, al                                        // 0x0046df05    84c0
                         push               esi                                           // 0x0046df07    56
                         mov.s              esi, ecx                                      // 0x0046df08    8bf1
                         {disp8} jne        _jmp_addr_0x0046df46                          // 0x0046df0a    753a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004850]             // 0x0046df0c    8b8e50480000
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x0046df12    e899e91600
                         mov                edx, dword ptr [eax]                          // 0x0046df17    8b10
                         mov.s              ecx, eax                                      // 0x0046df19    8bc8
                         call               dword ptr [edx + 0x40c]                       // 0x0046df1b    ff920c040000
                         test               eax, eax                                      // 0x0046df21    85c0
                         {disp8} je         _jmp_addr_0x0046df46                          // 0x0046df23    7421
                         {disp32} mov       eax, dword ptr [esi + 0x00004878]             // 0x0046df25    8b8678480000
                         {disp8} lea        ecx, dword ptr [eax + -0x03]                  // 0x0046df2b    8d48fd
                         cmp                ecx, 0x05                                     // 0x0046df2e    83f905
                         {disp8} ja         _jmp_addr_0x0046df46                          // 0x0046df31    7713
                         jmp                dword ptr [ecx*4 + 0x46df48]                  // 0x0046df33    ff248d48df4600
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x0000487c] // 0x0046df3a    8b8c867c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046df41    8b01
                         call               dword ptr [eax + 4]                           // 0x0046df43    ff5004
_jmp_addr_0x0046df46:    pop                esi                                           // 0x0046df46    5e
                         ret                                                              // 0x0046df47    c3

// Snippet: jmptbl, [0x0046df48, 0x0046df60)
.byte 0x3a, 0xdf, 0x46, 0x00      // 0x0046df48
.byte 0x3a, 0xdf, 0x46, 0x00      // 0x0046df4c
.byte 0x46, 0xdf, 0x46, 0x00      // 0x0046df50
.byte 0x3a, 0xdf, 0x46, 0x00      // 0x0046df54
.byte 0x46, 0xdf, 0x46, 0x00      // 0x0046df58
.byte 0x3a, 0xdf, 0x46, 0x00      // 0x0046df5c

