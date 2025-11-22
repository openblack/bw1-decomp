.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern _jmp_addr_0x00428620
.extern ??0LHFile@@QAE@XZ
.extern ?ResetData@LHFile@@QAEIXZ
.extern _jmp_addr_0x00436960
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x00477440
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x00482d40
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x004867f0
.extern _jmp_addr_0x0048d7b0
.extern _jmp_addr_0x0048f5b0
.extern ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern @Read__8AnimInfoFPc@12
.extern _jmp_addr_0x004cf060
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004d8bb0
.extern _jmp_addr_0x004dc260
.extern _jmp_addr_0x004dc2d0
.extern _jmp_addr_0x004dce20
.extern _jmp_addr_0x004de730
.extern _jmp_addr_0x004e11c0
.extern _jmp_addr_0x004e1b80
.extern _jmp_addr_0x004e1c50
.extern _jmp_addr_0x004e2380
.extern _jmp_addr_0x004e28c0
.extern _jmp_addr_0x004e3880
.extern _jmp_addr_0x004e9d60
.extern _jmp_addr_0x004eecd0
.extern _jmp_addr_0x004efc70
.extern _jmp_addr_0x004f0f70
.extern _jmp_addr_0x004f10a0
.extern _jmp_addr_0x004f11b0
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f12e0
.extern _jmp_addr_0x004f1b60
.extern _jmp_addr_0x004f8ca0
.extern @GetNearestTown__9MapCoordsCFf@12
.extern _jmp_addr_0x00617140
.extern ?AddHairGroup@Morphable@@QAEIXZ
.extern @SelectMesh__9MorphableFl@12
.extern @ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20
.extern _jmp_addr_0x00617dc0
.extern ?LoadBase@Morphable@@UAEIPAD@Z
.extern ?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z
.extern @GetAnim__9MorphableFll@16
.extern @GetSetAnim__9MorphableFlll@20
.extern _jmp_addr_0x0063a710
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
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
.extern _atexit
.extern _sprintf
.extern ___nw__FUl
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x007faff0
.extern _jmp_addr_0x00839f10
.extern _jmp_addr_0x0083a020
.extern ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z
.extern _jmp_addr_0x00848040
.extern @ReadBinary__9HairGroupFP6LHFile@12
.extern _jmp_addr_0x00860e00
.extern _jmp_addr_0x00861ee0
.extern _jmp_addr_0x00867b50
.extern @ReadBinary__13MeshIntersectFP6LHFile@12
.extern _jmp_addr_0x00867d10

.globl _jmp_addr_0x004e9f40
.globl ?DecideOnNewPlan@Creature@@QAEXAAVCreaturePlan@@@Z
.globl _jmp_addr_0x004ea900
.globl _jmp_addr_0x004eaab0
.globl _jmp_addr_0x004eb430
.globl _jmp_addr_0x004ebe10
.globl _jmp_addr_0x004ec3f0
.globl _jmp_addr_0x004ec450
.globl _jmp_addr_0x004ec4b0
.globl _jmp_addr_0x004ec580
.globl _jmp_addr_0x004ec590

.globl _globl_ct_0x004eabe0
.globl _globl_ct_0x004eac10
.globl _globl_ct_0x004eac40
.globl _globl_ct_0x004eac60
.globl _LoadBase__12LH3DCreatureFPc
.globl ?GetCreatureMimicType@Villager@@UAEIXZ
.globl ?GetCreatureMimicType@Animal@@UAEIXZ

start_0x004e9f40_0x004ed180:
// Snippet: asm, [0x004e9f40, 0x004ed15e)
_jmp_addr_0x004e9f40:    sub                esp, 0x08                                     // 0x004e9f40    83ec08
                         push               ebx                                           // 0x004e9f43    53
                         push               esi                                           // 0x004e9f44    56
                         push               edi                                           // 0x004e9f45    57
                         mov.s              edi, ecx                                      // 0x004e9f46    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x00000164]             // 0x004e9f48    8bb764010000
                         {disp32} mov       eax, dword ptr [esi + 0x00001c54]             // 0x004e9f4e    8b86541c0000
                         {disp32} mov       edx, dword ptr [esi + 0x00001c58]             // 0x004e9f54    8b96581c0000
                         add                esi, 0x00001c30                               // 0x004e9f5a    81c6301c0000
                         xor.s              ecx, ecx                                      // 0x004e9f60    33c9
                         cmp.s              eax, edx                                      // 0x004e9f62    3bc2
                         {disp32} jae       _jmp_addr_0x004ea02c                          // 0x004e9f64    0f83c2000000
                         {disp8} mov        ebx, dword ptr [esi + 0x20]                   // 0x004e9f6a    8b5e20
                         cmp.s              ebx, ecx                                      // 0x004e9f6d    3bd9
                         {disp8} jne        _jmp_addr_0x004e9f7a                          // 0x004e9f6f    7509
                         cmp                eax, 0x01                                     // 0x004e9f71    83f801
                         {disp32} jae       _jmp_addr_0x004ea02c                          // 0x004e9f74    0f83b2000000
_jmp_addr_0x004e9f7a:    {disp32} mov       eax, dword ptr [_game]                        // 0x004e9f7a    a15c19d000
                         {disp8} mov        edx, dword ptr [esi + 0x2c]                   // 0x004e9f7f    8b562c
                         push               ebp                                           // 0x004e9f82    55
                         {disp32} mov       ebp, dword ptr [eax + 0x00205a40]             // 0x004e9f83    8ba8405a2000
                         sub.s              ebp, edx                                      // 0x004e9f89    2bea
                         xor.s              edx, edx                                      // 0x004e9f8b    33d2
                         mov                eax, 0x000003e8                               // 0x004e9f8d    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x004e9f92    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x004e9f98    894c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004e9f9c    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x004e9fa0    df6c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2638c]             // 0x004e9fa4    d80d8cf38c00
                         call               _jmp_addr_0x007a1400                          // 0x004e9faa    e851742b00
                         cmp.s              ebp, eax                                      // 0x004e9faf    3be8
                         pop                ebp                                           // 0x004e9fb1    5d
                         {disp8} ja         _jmp_addr_0x004ea02a                          // 0x004e9fb2    7776
                         mov.s              eax, ebx                                      // 0x004e9fb4    8bc3
                         sub                eax, 0x00                                     // 0x004e9fb6    83e800
                         {disp8} je         _jmp_addr_0x004e9fd3                          // 0x004e9fb9    7418
                         dec                eax                                           // 0x004e9fbb    48
                         {disp8} je         _jmp_addr_0x004e9fca                          // 0x004e9fbc    740c
                         dec                eax                                           // 0x004e9fbe    48
                         {disp8} jne        _jmp_addr_0x004e9fda                          // 0x004e9fbf    7519
                         mov.s              ecx, edi                                      // 0x004e9fc1    8bcf
                         call               _jmp_addr_0x004ea540                          // 0x004e9fc3    e878050000
                         {disp8} jmp        _jmp_addr_0x004e9fda                          // 0x004e9fc8    eb10
_jmp_addr_0x004e9fca:    mov.s              ecx, edi                                      // 0x004e9fca    8bcf
                         call               _jmp_addr_0x004ea130                          // 0x004e9fcc    e85f010000
                         {disp8} jmp        _jmp_addr_0x004e9fda                          // 0x004e9fd1    eb07
_jmp_addr_0x004e9fd3:    mov.s              ecx, edi                                      // 0x004e9fd3    8bcf
                         call               _jmp_addr_0x004ea0e0                          // 0x004e9fd5    e806010000
_jmp_addr_0x004e9fda:    {disp32} mov       edi, dword ptr [edi + 0x00000164]             // 0x004e9fda    8bbf64010000
                         add                edi, 0x00000710                               // 0x004e9fe0    81c710070000
                         {disp32} lea       ecx, dword ptr [edi + 0x00000838]             // 0x004e9fe6    8d8f38080000
                         call               _jmp_addr_0x004f12e0                          // 0x004e9fec    e8ef720000
                         test               eax, eax                                      // 0x004e9ff1    85c0
                         {disp32} je        _jmp_addr_0x004ea094                          // 0x004e9ff3    0f849b000000
                         {disp32} mov       eax, dword ptr [edi + 0x000008ac]             // 0x004e9ff9    8b87ac080000
                         test               eax, eax                                      // 0x004e9fff    85c0
                         {disp32} jbe       _jmp_addr_0x004ea094                          // 0x004ea001    0f868d000000
                         cmp                dword ptr [edi + 0x000008a4], eax             // 0x004ea007    3987a4080000
                         {disp32} jae       _jmp_addr_0x004ea094                          // 0x004ea00d    0f8381000000
                         cmp                dword ptr [edi + 0x000008a8], 0x03            // 0x004ea013    83bfa808000003
                         {disp8} jge        _jmp_addr_0x004ea094                          // 0x004ea01a    7d78
                         pop                edi                                           // 0x004ea01c    5f
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000001            // 0x004ea01d    c7460c01000000
                         pop                esi                                           // 0x004ea024    5e
                         pop                ebx                                           // 0x004ea025    5b
                         add                esp, 0x08                                     // 0x004ea026    83c408
                         ret                                                              // 0x004ea029    c3
_jmp_addr_0x004ea02a:    xor.s              ecx, ecx                                      // 0x004ea02a    33c9
_jmp_addr_0x004ea02c:    {disp8} mov        edi, dword ptr [esi + 0x20]                   // 0x004ea02c    8b7e20
                         inc                edi                                           // 0x004ea02f    47
                         mov.s              eax, edi                                      // 0x004ea030    8bc7
                         cmp                eax, 0x03                                     // 0x004ea032    83f803
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x004ea035    897e20
                         {disp8} jge        _jmp_addr_0x004ea091                          // 0x004ea038    7d57
                         cmp                eax, 0x02                                     // 0x004ea03a    83f802
                         {disp8} jne        _jmp_addr_0x004ea050                          // 0x004ea03d    7511
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x004ea03f    8b4610
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x004ea042    8d1440
                         shl                edx, 6                                        // 0x004ea045    c1e206
                         cmp                dword ptr [edx + 0x00cab24c], ecx             // 0x004ea048    398a4cb2ca00
                         {disp8} je         _jmp_addr_0x004ea091                          // 0x004ea04e    7441
_jmp_addr_0x004ea050:    {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x004ea050    8b4610
                         push               0x00000089                                    // 0x004ea053    6889000000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ea058    8d0440
                         shl                eax, 6                                        // 0x004ea05b    c1e006
                         push               0x00be004c                                    // 0x004ea05e    684c00be00
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x004ea063    894e24
                         {disp32} mov       edi, dword ptr [eax + 0x00cab248]             // 0x004ea066    8bb848b2ca00
                         push               0x1                                           // 0x004ea06c    6a01
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004ea06e    e89d441f00
                         add                esp, 0x0c                                     // 0x004ea073    83c40c
                         add.s              eax, edi                                      // 0x004ea076    03c7
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x004ea078    894628
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004ea07b    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x004ea081    8b91405a2000
                         pop                edi                                           // 0x004ea087    5f
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x004ea088    89562c
                         pop                esi                                           // 0x004ea08b    5e
                         pop                ebx                                           // 0x004ea08c    5b
                         add                esp, 0x08                                     // 0x004ea08d    83c408
                         ret                                                              // 0x004ea090    c3
_jmp_addr_0x004ea091:    {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x004ea091    894e08
_jmp_addr_0x004ea094:    pop                edi                                           // 0x004ea094    5f
                         pop                esi                                           // 0x004ea095    5e
                         pop                ebx                                           // 0x004ea096    5b
                         add                esp, 0x08                                     // 0x004ea097    83c408
                         ret                                                              // 0x004ea09a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004ea09b    e8d977f1ff
_jmp_addr_0x004ea0a0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004ea0a0    8b442404
                         cmp                eax, 0x12                                     // 0x004ea0a4    83f812
                         {disp8} jne        _jmp_addr_0x004ea0c2                          // 0x004ea0a7    7519
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004ea0a9    8b44240c
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x004ea0ad    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x004ea0b4    2bc8
                         shl                ecx, 4                                        // 0x004ea0b6    c1e104
                         {disp32} mov       eax, dword ptr [ecx + 0x00ca9cd8]             // 0x004ea0b9    8b81d89cca00
                         ret                0x000c                                        // 0x004ea0bf    c20c00
_jmp_addr_0x004ea0c2:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x004ea0c2    8d1440
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004ea0c5    8b442408
                         shl                edx, 4                                        // 0x004ea0c9    c1e204
                         add.s              edx, eax                                      // 0x004ea0cc    03d0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00cab22c]       // 0x004ea0ce    8b04952cb2ca00
                         ret                0x000c                                        // 0x004ea0d5    c20c00
                         nop                                                              // 0x004ea0d8    90
                         nop                                                              // 0x004ea0d9    90
                         nop                                                              // 0x004ea0da    90
                         nop                                                              // 0x004ea0db    90
                         nop                                                              // 0x004ea0dc    90
                         nop                                                              // 0x004ea0dd    90
                         nop                                                              // 0x004ea0de    90
                         nop                                                              // 0x004ea0df    90
_jmp_addr_0x004ea0e0:    push               esi                                           // 0x004ea0e0    56
                         mov.s              esi, ecx                                      // 0x004ea0e1    8bf1
                         push               edi                                           // 0x004ea0e3    57
                         {disp32} mov       edi, dword ptr [esi + 0x00000164]             // 0x004ea0e4    8bbe64010000
                         {disp32} mov       eax, dword ptr [edi + 0x00001c48]             // 0x004ea0ea    8b87481c0000
                         test               eax, eax                                      // 0x004ea0f0    85c0
                         {disp8} je         _jmp_addr_0x004ea126                          // 0x004ea0f2    7432
                         push               eax                                           // 0x004ea0f4    50
                         push               esi                                           // 0x004ea0f5    56
                         mov.s              ecx, edi                                      // 0x004ea0f6    8bcf
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea0f8    e8d3dafeff
                         test               eax, eax                                      // 0x004ea0fd    85c0
                         {disp8} je         _jmp_addr_0x004ea126                          // 0x004ea0ff    7425
                         {disp32} mov       edi, dword ptr [edi + 0x00001c40]             // 0x004ea101    8bbf401c0000
                         push               0x1                                           // 0x004ea107    6a01
                         push               0x1                                           // 0x004ea109    6a01
                         push               0x0                                           // 0x004ea10b    6a00
                         push               eax                                           // 0x004ea10d    50
                         lea                eax, dword ptr [edi + edi * 0x2]              // 0x004ea10e    8d047f
                         shl                eax, 6                                        // 0x004ea111    c1e006
                         {disp32} mov       ecx, dword ptr [eax + 0x00cab228]             // 0x004ea114    8b8828b2ca00
                         push               ecx                                           // 0x004ea11a    51
                         push               0x0                                           // 0x004ea11b    6a00
                         push               0x6                                           // 0x004ea11d    6a06
                         mov.s              ecx, esi                                      // 0x004ea11f    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x004ea121    e82aa3fdff
_jmp_addr_0x004ea126:    pop                edi                                           // 0x004ea126    5f
                         pop                esi                                           // 0x004ea127    5e
                         ret                                                              // 0x004ea128    c3
                         nop                                                              // 0x004ea129    90
                         nop                                                              // 0x004ea12a    90
                         nop                                                              // 0x004ea12b    90
                         nop                                                              // 0x004ea12c    90
                         nop                                                              // 0x004ea12d    90
                         nop                                                              // 0x004ea12e    90
                         nop                                                              // 0x004ea12f    90
_jmp_addr_0x004ea130:    sub                esp, 0x38                                     // 0x004ea130    83ec38
                         push               ebx                                           // 0x004ea133    53
                         push               ebp                                           // 0x004ea134    55
                         push               esi                                           // 0x004ea135    56
                         mov.s              esi, ecx                                      // 0x004ea136    8bf1
                         {disp32} mov       ebp, dword ptr [esi + 0x00000164]             // 0x004ea138    8bae64010000
                         {disp32} mov       eax, dword ptr [ebp + 0x00001c40]             // 0x004ea13e    8b85401c0000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ea144    8d0440
                         shl                eax, 6                                        // 0x004ea147    c1e006
                         {disp32} mov       ecx, dword ptr [eax + 0x00cab244]             // 0x004ea14a    8b8844b2ca00
                         {disp32} mov       eax, dword ptr [ebp + 0x00001c48]             // 0x004ea150    8b85481c0000
                         push               edi                                           // 0x004ea156    57
                         xor.s              edi, edi                                      // 0x004ea157    33ff
                         cmp.s              eax, edi                                      // 0x004ea159    3bc7
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x004ea15b    894c2414
                         {disp32} je        _jmp_addr_0x004ea2cb                          // 0x004ea15f    0f8466010000
                         push               eax                                           // 0x004ea165    50
                         push               esi                                           // 0x004ea166    56
                         mov.s              ecx, ebp                                      // 0x004ea167    8bcd
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea169    e862dafeff
                         mov.s              ebx, eax                                      // 0x004ea16e    8bd8
                         cmp.s              ebx, edi                                      // 0x004ea170    3bdf
                         {disp32} je        _jmp_addr_0x004ea2cb                          // 0x004ea172    0f8453010000
                         {disp8} mov        eax, dword ptr [ebx + 0x30]                   // 0x004ea178    8b4330
                         cmp.s              eax, edi                                      // 0x004ea17b    3bc7
                         {disp8} je         _jmp_addr_0x004ea199                          // 0x004ea17d    741a
                         test               byte ptr [eax + 0x24], 0x04                   // 0x004ea17f    f6402404
                         {disp8} je         _jmp_addr_0x004ea199                          // 0x004ea183    7414
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x004ea185    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x00001c38], edi             // 0x004ea18b    89ba381c0000
                         pop                edi                                           // 0x004ea191    5f
                         pop                esi                                           // 0x004ea192    5e
                         pop                ebp                                           // 0x004ea193    5d
                         pop                ebx                                           // 0x004ea194    5b
                         add                esp, 0x38                                     // 0x004ea195    83c438
                         ret                                                              // 0x004ea198    c3
_jmp_addr_0x004ea199:    push               ebx                                           // 0x004ea199    53
                         mov.s              ecx, esi                                      // 0x004ea19a    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004ea19c    e80feafeff
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x004ea1a1    897c2410
_jmp_addr_0x004ea1a5:    {disp32} mov       eax, dword ptr [ebp + 0x00001c44]             // 0x004ea1a5    8b85441c0000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004ea1ab    8b4c2410
                         {disp32} mov       edx, dword ptr [ebp + 0x00001c40]             // 0x004ea1af    8b95401c0000
                         push               eax                                           // 0x004ea1b5    50
                         push               ecx                                           // 0x004ea1b6    51
                         push               edx                                           // 0x004ea1b7    52
                         mov.s              ecx, esi                                      // 0x004ea1b8    8bce
                         call               _jmp_addr_0x004ea0a0                          // 0x004ea1ba    e8e1feffff
                         mov.s              edi, eax                                      // 0x004ea1bf    8bf8
                         test               edi, edi                                      // 0x004ea1c1    85ff
                         {disp32} je        _jmp_addr_0x004ea2b9                          // 0x004ea1c3    0f84f0000000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ea1c9    8b442414
                         push               0x3f800000                                    // 0x004ea1cd    680000803f
                         push               0x0                                           // 0x004ea1d2    6a00
                         push               ebx                                           // 0x004ea1d4    53
                         push               0x0                                           // 0x004ea1d5    6a00
                         push               edi                                           // 0x004ea1d7    57
                         push               eax                                           // 0x004ea1d8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004ea1d9    8d4c2430
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x004ea1dd    e84e700000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea1e2    8d4c2418
                         push               ecx                                           // 0x004ea1e6    51
                         push               edi                                           // 0x004ea1e7    57
                         mov.s              ecx, esi                                      // 0x004ea1e8    8bce
                         call               _jmp_addr_0x004f1b60                          // 0x004ea1ea    e871790000
                         test               eax, eax                                      // 0x004ea1ef    85c0
                         {disp32} je        _jmp_addr_0x004ea2b0                          // 0x004ea1f1    0f84b9000000
                         {disp8} mov        eax, dword ptr [ebx + 0x30]                   // 0x004ea1f7    8b4330
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea1fa    8b8e64010000
                         push               edi                                           // 0x004ea200    57
                         push               eax                                           // 0x004ea201    50
                         add                ecx, 0x00000710                               // 0x004ea202    81c110070000
                         call               _jmp_addr_0x004e3880                          // 0x004ea208    e87396ffff
                         test               eax, eax                                      // 0x004ea20d    85c0
                         {disp32} je        _jmp_addr_0x004ea2b0                          // 0x004ea20f    0f849b000000
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x004ea215    8b542428
                         push               edx                                           // 0x004ea219    52
                         mov.s              ecx, esi                                      // 0x004ea21a    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004ea21c    e88fe9feff
                         test               eax, eax                                      // 0x004ea221    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea223    89442424
                         {disp8} jne        _jmp_addr_0x004ea267                          // 0x004ea227    753e
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ea229    8b442414
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x004ea22d    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x004ea234    2bc8
                         shl                ecx, 6                                        // 0x004ea236    c1e106
                         {disp32} mov       eax, dword ptr [ecx + 0x00c67ec0]             // 0x004ea239    8b81c07ec600
                         test               eax, eax                                      // 0x004ea23f    85c0
                         {disp8} je         _jmp_addr_0x004ea267                          // 0x004ea241    7424
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x275ac]        // 0x004ea243    8b15ac058d00
                         push               edx                                           // 0x004ea249    52
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004ea24a    8d4e14
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x004ea24d    e88e7e1100
                         test               eax, eax                                      // 0x004ea252    85c0
                         {disp8} je         _jmp_addr_0x004ea267                          // 0x004ea254    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea256    8b8e64010000
                         push               eax                                           // 0x004ea25c    50
                         push               esi                                           // 0x004ea25d    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea25e    e86dd9feff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea263    89442424
_jmp_addr_0x004ea267:    {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004ea267    8d442418
                         push               eax                                           // 0x004ea26b    50
                         mov.s              ecx, esi                                      // 0x004ea26c    8bce
                         call               _jmp_addr_0x004f11b0                          // 0x004ea26e    e83d6f0000
                         test               eax, eax                                      // 0x004ea273    85c0
                         {disp8} je         _jmp_addr_0x004ea2b0                          // 0x004ea275    7439
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea277    8d4c2418
                         call               _jmp_addr_0x004f12e0                          // 0x004ea27b    e860700000
                         test               eax, eax                                      // 0x004ea280    85c0
                         {disp8} je         _jmp_addr_0x004ea2b0                          // 0x004ea282    742c
                         push               0x1                                           // 0x004ea284    6a01
                         push               0x1                                           // 0x004ea286    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004ea288    8d4c2420
                         push               ecx                                           // 0x004ea28c    51
                         mov.s              ecx, esi                                      // 0x004ea28d    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x004ea28f    e81ca2fdff
                         push               0x000000ed                                    // 0x004ea294    68ed000000
                         push               0x00be004c                                    // 0x004ea299    684c00be00
                         push               0x2                                           // 0x004ea29e    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004ea2a0    e86b421f00
                         add                esp, 0x0c                                     // 0x004ea2a5    83c40c
                         test               eax, eax                                      // 0x004ea2a8    85c0
                         {disp32} je        _jmp_addr_0x004ea3e8                          // 0x004ea2aa    0f8438010000
_jmp_addr_0x004ea2b0:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea2b0    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea2b4    e817700000
_jmp_addr_0x004ea2b9:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ea2b9    8b442410
                         inc                eax                                           // 0x004ea2bd    40
                         cmp                eax, 0x06                                     // 0x004ea2be    83f806
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004ea2c1    89442410
                         {disp32} jb        _jmp_addr_0x004ea1a5                          // 0x004ea2c5    0f82dafeffff
_jmp_addr_0x004ea2cb:    xor.s              ebx, ebx                                      // 0x004ea2cb    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x004ea2cd    895c2410
_jmp_addr_0x004ea2d1:    {disp32} mov       edx, dword ptr [ebp + 0x00001c44]             // 0x004ea2d1    8b95441c0000
                         {disp32} mov       eax, dword ptr [ebp + 0x00001c40]             // 0x004ea2d7    8b85401c0000
                         push               edx                                           // 0x004ea2dd    52
                         push               ebx                                           // 0x004ea2de    53
                         push               eax                                           // 0x004ea2df    50
                         mov.s              ecx, esi                                      // 0x004ea2e0    8bce
                         call               _jmp_addr_0x004ea0a0                          // 0x004ea2e2    e8b9fdffff
                         mov.s              edi, eax                                      // 0x004ea2e7    8bf8
                         test               edi, edi                                      // 0x004ea2e9    85ff
                         {disp32} je        _jmp_addr_0x004ea3d8                          // 0x004ea2eb    0f84e7000000
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x004ea2f1    8b5c2414
                         push               0x3f800000                                    // 0x004ea2f5    680000803f
                         push               0x0                                           // 0x004ea2fa    6a00
                         push               0x0                                           // 0x004ea2fc    6a00
                         push               0x0                                           // 0x004ea2fe    6a00
                         push               edi                                           // 0x004ea300    57
                         push               ebx                                           // 0x004ea301    53
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004ea302    8d4c2430
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x004ea306    e8256f0000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea30b    8d4c2418
                         push               ecx                                           // 0x004ea30f    51
                         mov.s              ecx, esi                                      // 0x004ea310    8bce
                         call               _jmp_addr_0x004f0f70                          // 0x004ea312    e8596c0000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004ea317    8b442428
                         test               eax, eax                                      // 0x004ea31b    85c0
                         {disp32} je        _jmp_addr_0x004ea3cb                          // 0x004ea31d    0f84a8000000
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004ea323    8d542418
                         push               edx                                           // 0x004ea327    52
                         push               edi                                           // 0x004ea328    57
                         mov.s              ecx, esi                                      // 0x004ea329    8bce
                         call               _jmp_addr_0x004f1b60                          // 0x004ea32b    e830780000
                         test               eax, eax                                      // 0x004ea330    85c0
                         {disp32} je        _jmp_addr_0x004ea3cb                          // 0x004ea332    0f8493000000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004ea338    8b442428
                         push               eax                                           // 0x004ea33c    50
                         mov.s              ecx, esi                                      // 0x004ea33d    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004ea33f    e86ce8feff
                         test               eax, eax                                      // 0x004ea344    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea346    89442424
                         {disp8} jne        _jmp_addr_0x004ea386                          // 0x004ea34a    753a
                         {disp32} lea       ecx, dword ptr [ebx * 0x8 + 0x00000000]       // 0x004ea34c    8d0cdd00000000
                         sub.s              ecx, ebx                                      // 0x004ea353    2bcb
                         shl                ecx, 6                                        // 0x004ea355    c1e106
                         {disp32} mov       eax, dword ptr [ecx + 0x00c67ec0]             // 0x004ea358    8b81c07ec600
                         test               eax, eax                                      // 0x004ea35e    85c0
                         {disp8} je         _jmp_addr_0x004ea386                          // 0x004ea360    7424
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x275ac]        // 0x004ea362    8b15ac058d00
                         push               edx                                           // 0x004ea368    52
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004ea369    8d4e14
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x004ea36c    e86f7d1100
                         test               eax, eax                                      // 0x004ea371    85c0
                         {disp8} je         _jmp_addr_0x004ea386                          // 0x004ea373    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea375    8b8e64010000
                         push               eax                                           // 0x004ea37b    50
                         push               esi                                           // 0x004ea37c    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea37d    e84ed8feff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea382    89442424
_jmp_addr_0x004ea386:    {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004ea386    8d442418
                         push               eax                                           // 0x004ea38a    50
                         mov.s              ecx, esi                                      // 0x004ea38b    8bce
                         call               _jmp_addr_0x004f11b0                          // 0x004ea38d    e81e6e0000
                         test               eax, eax                                      // 0x004ea392    85c0
                         {disp8} je         _jmp_addr_0x004ea3cb                          // 0x004ea394    7435
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea396    8d4c2418
                         call               _jmp_addr_0x004f12e0                          // 0x004ea39a    e8416f0000
                         test               eax, eax                                      // 0x004ea39f    85c0
                         {disp8} je         _jmp_addr_0x004ea3cb                          // 0x004ea3a1    7428
                         push               0x1                                           // 0x004ea3a3    6a01
                         push               0x1                                           // 0x004ea3a5    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004ea3a7    8d4c2420
                         push               ecx                                           // 0x004ea3ab    51
                         mov.s              ecx, esi                                      // 0x004ea3ac    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x004ea3ae    e8fda0fdff
                         push               0x0000011a                                    // 0x004ea3b3    681a010000
                         push               0x00be004c                                    // 0x004ea3b8    684c00be00
                         push               0x2                                           // 0x004ea3bd    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004ea3bf    e84c411f00
                         add                esp, 0x0c                                     // 0x004ea3c4    83c40c
                         test               eax, eax                                      // 0x004ea3c7    85c0
                         {disp8} je         _jmp_addr_0x004ea3f9                          // 0x004ea3c9    742e
_jmp_addr_0x004ea3cb:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea3cb    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea3cf    e8fc6e0000
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x004ea3d4    8b5c2410
_jmp_addr_0x004ea3d8:    inc                ebx                                           // 0x004ea3d8    43
                         cmp                ebx, 0x06                                     // 0x004ea3d9    83fb06
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x004ea3dc    895c2410
                         {disp32} jb        _jmp_addr_0x004ea2d1                          // 0x004ea3e0    0f82ebfeffff
                         {disp8} jmp        _jmp_addr_0x004ea40a                          // 0x004ea3e6    eb22
_jmp_addr_0x004ea3e8:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea3e8    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea3ec    e8df6e0000
                         pop                edi                                           // 0x004ea3f1    5f
                         pop                esi                                           // 0x004ea3f2    5e
                         pop                ebp                                           // 0x004ea3f3    5d
                         pop                ebx                                           // 0x004ea3f4    5b
                         add                esp, 0x38                                     // 0x004ea3f5    83c438
                         ret                                                              // 0x004ea3f8    c3
_jmp_addr_0x004ea3f9:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea3f9    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea3fd    e8ce6e0000
                         pop                edi                                           // 0x004ea402    5f
                         pop                esi                                           // 0x004ea403    5e
                         pop                ebp                                           // 0x004ea404    5d
                         pop                ebx                                           // 0x004ea405    5b
                         add                esp, 0x38                                     // 0x004ea406    83c438
                         ret                                                              // 0x004ea409    c3
_jmp_addr_0x004ea40a:    xor.s              ebx, ebx                                      // 0x004ea40a    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x004ea40c    895c2410
_jmp_addr_0x004ea410:    {disp32} mov       edx, dword ptr [ebp + 0x00001c44]             // 0x004ea410    8b95441c0000
                         {disp32} mov       eax, dword ptr [ebp + 0x00001c40]             // 0x004ea416    8b85401c0000
                         push               edx                                           // 0x004ea41c    52
                         push               ebx                                           // 0x004ea41d    53
                         push               eax                                           // 0x004ea41e    50
                         mov.s              ecx, esi                                      // 0x004ea41f    8bce
                         call               _jmp_addr_0x004ea0a0                          // 0x004ea421    e87afcffff
                         mov.s              edi, eax                                      // 0x004ea426    8bf8
                         test               edi, edi                                      // 0x004ea428    85ff
                         {disp32} je        _jmp_addr_0x004ea519                          // 0x004ea42a    0f84e9000000
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x004ea430    8b5c2414
                         push               0x3f800000                                    // 0x004ea434    680000803f
                         push               0x0                                           // 0x004ea439    6a00
                         push               0x0                                           // 0x004ea43b    6a00
                         push               0x0                                           // 0x004ea43d    6a00
                         push               edi                                           // 0x004ea43f    57
                         push               ebx                                           // 0x004ea440    53
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004ea441    8d4c2430
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x004ea445    e8e66d0000
                         push               0x18                                          // 0x004ea44a    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004ea44c    8d4c241c
                         push               ecx                                           // 0x004ea450    51
                         mov.s              ecx, esi                                      // 0x004ea451    8bce
                         call               _jmp_addr_0x004f10a0                          // 0x004ea453    e8486c0000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004ea458    8b442428
                         test               eax, eax                                      // 0x004ea45c    85c0
                         {disp32} je        _jmp_addr_0x004ea50c                          // 0x004ea45e    0f84a8000000
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004ea464    8d542418
                         push               edx                                           // 0x004ea468    52
                         push               edi                                           // 0x004ea469    57
                         mov.s              ecx, esi                                      // 0x004ea46a    8bce
                         call               _jmp_addr_0x004f1b60                          // 0x004ea46c    e8ef760000
                         test               eax, eax                                      // 0x004ea471    85c0
                         {disp32} je        _jmp_addr_0x004ea50c                          // 0x004ea473    0f8493000000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004ea479    8b442428
                         push               eax                                           // 0x004ea47d    50
                         mov.s              ecx, esi                                      // 0x004ea47e    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004ea480    e82be7feff
                         test               eax, eax                                      // 0x004ea485    85c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea487    89442424
                         {disp8} jne        _jmp_addr_0x004ea4c7                          // 0x004ea48b    753a
                         {disp32} lea       ecx, dword ptr [ebx * 0x8 + 0x00000000]       // 0x004ea48d    8d0cdd00000000
                         sub.s              ecx, ebx                                      // 0x004ea494    2bcb
                         shl                ecx, 6                                        // 0x004ea496    c1e106
                         {disp32} mov       eax, dword ptr [ecx + 0x00c67ec0]             // 0x004ea499    8b81c07ec600
                         test               eax, eax                                      // 0x004ea49f    85c0
                         {disp8} je         _jmp_addr_0x004ea4c7                          // 0x004ea4a1    7424
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x275ac]        // 0x004ea4a3    8b15ac058d00
                         push               edx                                           // 0x004ea4a9    52
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004ea4aa    8d4e14
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x004ea4ad    e82e7c1100
                         test               eax, eax                                      // 0x004ea4b2    85c0
                         {disp8} je         _jmp_addr_0x004ea4c7                          // 0x004ea4b4    7411
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea4b6    8b8e64010000
                         push               eax                                           // 0x004ea4bc    50
                         push               esi                                           // 0x004ea4bd    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea4be    e80dd7feff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004ea4c3    89442424
_jmp_addr_0x004ea4c7:    {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004ea4c7    8d442418
                         push               eax                                           // 0x004ea4cb    50
                         mov.s              ecx, esi                                      // 0x004ea4cc    8bce
                         call               _jmp_addr_0x004f11b0                          // 0x004ea4ce    e8dd6c0000
                         test               eax, eax                                      // 0x004ea4d3    85c0
                         {disp8} je         _jmp_addr_0x004ea50c                          // 0x004ea4d5    7435
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea4d7    8d4c2418
                         call               _jmp_addr_0x004f12e0                          // 0x004ea4db    e8006e0000
                         test               eax, eax                                      // 0x004ea4e0    85c0
                         {disp8} je         _jmp_addr_0x004ea50c                          // 0x004ea4e2    7428
                         push               0x1                                           // 0x004ea4e4    6a01
                         push               0x1                                           // 0x004ea4e6    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004ea4e8    8d4c2420
                         push               ecx                                           // 0x004ea4ec    51
                         mov.s              ecx, esi                                      // 0x004ea4ed    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x004ea4ef    e8bc9ffdff
                         push               0x00000140                                    // 0x004ea4f4    6840010000
                         push               0x00be004c                                    // 0x004ea4f9    684c00be00
                         push               0x2                                           // 0x004ea4fe    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004ea500    e80b401f00
                         add                esp, 0x0c                                     // 0x004ea505    83c40c
                         test               eax, eax                                      // 0x004ea508    85c0
                         {disp8} je         _jmp_addr_0x004ea52f                          // 0x004ea50a    7423
_jmp_addr_0x004ea50c:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea50c    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea510    e8bb6d0000
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x004ea515    8b5c2410
_jmp_addr_0x004ea519:    inc                ebx                                           // 0x004ea519    43
                         cmp                ebx, 0x06                                     // 0x004ea51a    83fb06
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x004ea51d    895c2410
                         {disp32} jb        _jmp_addr_0x004ea410                          // 0x004ea521    0f82e9feffff
                         pop                edi                                           // 0x004ea527    5f
                         pop                esi                                           // 0x004ea528    5e
                         pop                ebp                                           // 0x004ea529    5d
                         pop                ebx                                           // 0x004ea52a    5b
                         add                esp, 0x38                                     // 0x004ea52b    83c438
                         ret                                                              // 0x004ea52e    c3
_jmp_addr_0x004ea52f:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ea52f    8d4c2418
                         call               _jmp_addr_0x004f12d0                          // 0x004ea533    e8986d0000
                         pop                edi                                           // 0x004ea538    5f
                         pop                esi                                           // 0x004ea539    5e
                         pop                ebp                                           // 0x004ea53a    5d
                         pop                ebx                                           // 0x004ea53b    5b
                         add                esp, 0x38                                     // 0x004ea53c    83c438
                         ret                                                              // 0x004ea53f    c3
_jmp_addr_0x004ea540:    sub                esp, 0x08                                     // 0x004ea540    83ec08
                         push               esi                                           // 0x004ea543    56
                         mov.s              esi, ecx                                      // 0x004ea544    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea546    8b8e64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x004ea54c    8b8160010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000170]             // 0x004ea552    8b9170010000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x004ea558    89442404
                         {disp32} mov       eax, dword ptr [ecx + 0x00001c40]             // 0x004ea55c    8b81401c0000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ea562    8d0440
                         push               0x0                                           // 0x004ea565    6a00
                         shl                eax, 6                                        // 0x004ea567    c1e006
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x004ea56a    8954240c
                         {disp32} mov       edx, dword ptr [eax + 0x00cab244]             // 0x004ea56e    8b9044b2ca00
                         push               0x42f00000                                    // 0x004ea574    680000f042
                         push               edx                                           // 0x004ea579    52
                         call               _jmp_addr_0x004dce20                          // 0x004ea57a    e8a128ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea57f    8b8e64010000
                         push               0x21                                          // 0x004ea585    6a21
                         add                ecx, 0x8                                      // 0x004ea587    83c108
                         call               _jmp_addr_0x004dc2d0                          // 0x004ea58a    e8411dffff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004ea58f    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001c3c], 0x00000001      // 0x004ea595    c7803c1c000001000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004ea59f    8b8664010000
                         cmp                dword ptr [eax + 0x000021fc], 0x28            // 0x004ea5a5    83b8fc21000028
                         {disp8} jbe        _jmp_addr_0x004ea5cd                          // 0x004ea5ac    761f
                         {disp32} mov       dword ptr [eax + 0x00001c38], 0x00000000      // 0x004ea5ae    c780381c000000000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea5b8    8b8e64010000
                         push               0x42200000                                    // 0x004ea5be    6800002042
                         push               0x21                                          // 0x004ea5c3    6a21
                         add                ecx, 0x8                                      // 0x004ea5c5    83c108
                         call               _jmp_addr_0x004dc260                          // 0x004ea5c8    e8931cffff
_jmp_addr_0x004ea5cd:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x004ea5cd    d9442404
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea5d1    8b8e64010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ea5d7    d81d98a38a00
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004ea5dd    8b542404
                         add                ecx, 0x8                                      // 0x004ea5e1    83c108
                         {disp32} mov       dword ptr [ecx + 0x00000158], edx             // 0x004ea5e4    899158010000
                         mov                edx, 0x3f800000                               // 0x004ea5ea    ba0000803f
                         fnstsw             ax                                            // 0x004ea5ef    dfe0
                         test               ah, 0x01                                      // 0x004ea5f1    f6c401
                         {disp8} je         _jmp_addr_0x004ea602                          // 0x004ea5f4    740c
                         {disp32} mov       dword ptr [ecx + 0x00000158], 0x00000000      // 0x004ea5f6    c7815801000000000000
                         {disp8} jmp        _jmp_addr_0x004ea619                          // 0x004ea600    eb17
_jmp_addr_0x004ea602:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x004ea602    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004ea606    d81d90a38a00
                         fnstsw             ax                                            // 0x004ea60c    dfe0
                         test               ah, 0x41                                      // 0x004ea60e    f6c441
                         {disp8} jne        _jmp_addr_0x004ea619                          // 0x004ea611    7506
                         {disp32} mov       dword ptr [ecx + 0x00000158], edx             // 0x004ea613    899158010000
_jmp_addr_0x004ea619:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x004ea619    d9442408
                         {disp32} mov       esi, dword ptr [esi + 0x00000164]             // 0x004ea61d    8bb664010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ea623    d81d98a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004ea629    8b442408
                         add                esi, 0x08                                     // 0x004ea62d    83c608
                         {disp32} mov       dword ptr [esi + 0x00000168], eax             // 0x004ea630    898668010000
                         fnstsw             ax                                            // 0x004ea636    dfe0
                         test               ah, 0x01                                      // 0x004ea638    f6c401
                         {disp8} je         _jmp_addr_0x004ea64c                          // 0x004ea63b    740f
                         {disp32} mov       dword ptr [esi + 0x00000168], 0x00000000      // 0x004ea63d    c7866801000000000000
                         pop                esi                                           // 0x004ea647    5e
                         add                esp, 0x08                                     // 0x004ea648    83c408
                         ret                                                              // 0x004ea64b    c3
_jmp_addr_0x004ea64c:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x004ea64c    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004ea650    d81d90a38a00
                         fnstsw             ax                                            // 0x004ea656    dfe0
                         test               ah, 0x41                                      // 0x004ea658    f6c441
                         {disp8} jne        _jmp_addr_0x004ea663                          // 0x004ea65b    7506
                         {disp32} mov       dword ptr [esi + 0x00000168], edx             // 0x004ea65d    899668010000
_jmp_addr_0x004ea663:    pop                esi                                           // 0x004ea663    5e
                         add                esp, 0x08                                     // 0x004ea664    83c408
                         ret                                                              // 0x004ea667    c3
                         nop                                                              // 0x004ea668    90
                         nop                                                              // 0x004ea669    90
                         nop                                                              // 0x004ea66a    90
                         nop                                                              // 0x004ea66b    90
                         nop                                                              // 0x004ea66c    90
                         nop                                                              // 0x004ea66d    90
                         nop                                                              // 0x004ea66e    90
                         nop                                                              // 0x004ea66f    90
?DecideOnNewPlan@Creature@@QAEXAAVCreaturePlan@@@Z:
                         sub                esp, 0x000000b0                               // 0x004ea670    81ecb0000000
                         push               ebx                                           // 0x004ea676    53
                         {disp32} mov       ebx, dword ptr [esp + 0x000000c0]             // 0x004ea677    8b9c24c0000000
                         push               ebp                                           // 0x004ea67e    55
                         push               esi                                           // 0x004ea67f    56
                         xor.s              ebp, ebp                                      // 0x004ea680    33ed
                         cmp.s              ebx, ebp                                      // 0x004ea682    3bdd
                         push               edi                                           // 0x004ea684    57
                         mov.s              esi, ecx                                      // 0x004ea685    8bf1
                         {disp32} je        _jmp_addr_0x004ea717                          // 0x004ea687    0f848a000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004ea68d    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + ebx * 0x4 + 0x00017d38] // 0x004ea693    8b8c98387d0100
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x004ea69a    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x004ea69e    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x004ea6a2    df6c2418
                         push               ebx                                           // 0x004ea6a6    53
                         mov.s              ecx, esi                                      // 0x004ea6a7    8bce
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ea6a9    d95c2414
                         call               _jmp_addr_0x004f8ca0                          // 0x004ea6ad    e8eee50000
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x004ea6b2    d8642410
                         call               _jmp_addr_0x007a1400                          // 0x004ea6b6    e8456d2b00
                         push               ebx                                           // 0x004ea6bb    53
                         mov.s              ecx, esi                                      // 0x004ea6bc    8bce
                         mov.s              edi, eax                                      // 0x004ea6be    8bf8
                         call               _jmp_addr_0x004f8ca0                          // 0x004ea6c0    e8dbe50000
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x004ea6c5    d87c2410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004ea6c9    d81d90a38a00
                         fnstsw             ax                                            // 0x004ea6cf    dfe0
                         test               ah, 0x41                                      // 0x004ea6d1    f6c441
                         {disp8} je         _jmp_addr_0x004ea6e0                          // 0x004ea6d4    740a
                         push               ebx                                           // 0x004ea6d6    53
                         mov.s              ecx, esi                                      // 0x004ea6d7    8bce
                         call               _jmp_addr_0x004f8ca0                          // 0x004ea6d9    e8c2e50000
                         fstp               st(0)                                         // 0x004ea6de    ddd8
_jmp_addr_0x004ea6e0:    cmp.s              edi, ebp                                      // 0x004ea6e0    3bfd
                         {disp8} jle        _jmp_addr_0x004ea717                          // 0x004ea6e2    7e33
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea6e4    8b8e64010000
                         push               ebx                                           // 0x004ea6ea    53
                         push               0x1                                           // 0x004ea6eb    6a01
                         call               _jmp_addr_0x004e2380                          // 0x004ea6ed    e88e7cffff
                         cmp                edi, 0x01                                     // 0x004ea6f2    83ff01
                         {disp32} jg        _jmp_addr_0x004ea8e8                          // 0x004ea6f5    0f8fed010000
                         push               0x0000016c                                    // 0x004ea6fb    686c010000
                         push               0x00be004c                                    // 0x004ea700    684c00be00
                         push               0x2                                           // 0x004ea705    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004ea707    e8043e1f00
                         add                esp, 0x0c                                     // 0x004ea70c    83c40c
                         test               eax, eax                                      // 0x004ea70f    85c0
                         {disp32} je        _jmp_addr_0x004ea8e8                          // 0x004ea711    0f84d1010000
_jmp_addr_0x004ea717:    {disp32} mov       edx, dword ptr [esp + 0x000000c8]             // 0x004ea717    8b9424c8000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea71e    8b8e64010000
                         push               edx                                           // 0x004ea724    52
                         push               esi                                           // 0x004ea725    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x004ea726    e8a5d4feff
                         mov.s              edi, eax                                      // 0x004ea72b    8bf8
                         push               edi                                           // 0x004ea72d    57
                         mov.s              ecx, esi                                      // 0x004ea72e    8bce
                         call               _jmp_addr_0x004d8bb0                          // 0x004ea730    e87be4feff
                         push               ebx                                           // 0x004ea735    53
                         push               ebp                                           // 0x004ea736    55
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x004ea737    896c2420
                         {disp32} mov       ebp, dword ptr [esp + 0x000000cc]             // 0x004ea73b    8bac24cc000000
                         push               ebp                                           // 0x004ea742    55
                         mov.s              ecx, esi                                      // 0x004ea743    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004ea745    8944241c
                         call               _jmp_addr_0x004ea0a0                          // 0x004ea749    e852f9ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004ea74e    8b542410
                         push               0x3f800000                                    // 0x004ea752    680000803f
                         push               edi                                           // 0x004ea757    57
                         push               edi                                           // 0x004ea758    57
                         {disp8} lea        ecx, dword ptr [ebp + ebp * 0x2 + 0x00]       // 0x004ea759    8d4c6d00
                         shl                ecx, 6                                        // 0x004ea75d    c1e106
                         {disp32} mov       ecx, dword ptr [ecx + 0x00cab244]             // 0x004ea760    8b8944b2ca00
                         push               edx                                           // 0x004ea766    52
                         push               eax                                           // 0x004ea767    50
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x004ea768    894c2428
                         push               ecx                                           // 0x004ea76c    51
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x004ea76d    8d4c2438
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x004ea771    e8ba6a0000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004ea776    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x0001d480]             // 0x004ea77c    8b8880d40100
                         push               ecx                                           // 0x004ea782    51
                         push               0x0                                           // 0x004ea783    6a00
                         push               0x3d                                          // 0x004ea785    6a3d
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x004ea787    8d54242c
                         push               edx                                           // 0x004ea78b    52
                         push               esi                                           // 0x004ea78c    56
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                   // 0x004ea78d    8d4c2464
                         call               _jmp_addr_0x004e1b80                          // 0x004ea791    e8ea73ffff
                         mov                edi, 0x00000001                               // 0x004ea796    bf01000000
_jmp_addr_0x004ea79b:    push               0x0                                           // 0x004ea79b    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x004ea79d    8d44241c
                         push               eax                                           // 0x004ea7a1    50
                         push               0x1                                           // 0x004ea7a2    6a01
                         push               edi                                           // 0x004ea7a4    57
                         push               0x3f000000                                    // 0x004ea7a5    680000003f
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                   // 0x004ea7aa    8d4c2464
                         push               ecx                                           // 0x004ea7ae    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea7af    8b8e64010000
                         call               _jmp_addr_0x004e11c0                          // 0x004ea7b5    e8066affff
                         inc                edi                                           // 0x004ea7ba    47
                         cmp                edi, 0x02                                     // 0x004ea7bb    83ff02
                         {disp8} jle        _jmp_addr_0x004ea79b                          // 0x004ea7be    7edb
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x004ea7c0    8d4c2450
                         call               _jmp_addr_0x004e1c50                          // 0x004ea7c4    e88774ffff
                         cmp                dword ptr [esp + 0x14], 0x02                  // 0x004ea7c9    837c241402
                         {disp32} mov       edi, dword ptr [esp + 0x000000c8]             // 0x004ea7ce    8bbc24c8000000
                         {disp8} jne        _jmp_addr_0x004ea806                          // 0x004ea7d5    752f
                         test               edi, edi                                      // 0x004ea7d7    85ff
                         {disp8} je         _jmp_addr_0x004ea806                          // 0x004ea7d9    742b
                         mov                edx, dword ptr [edi]                          // 0x004ea7db    8b17
                         mov.s              ecx, edi                                      // 0x004ea7dd    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x004ea7df    ff521c
                         mov.s              edi, eax                                      // 0x004ea7e2    8bf8
                         mov                eax, dword ptr [esi]                          // 0x004ea7e4    8b06
                         mov.s              ecx, esi                                      // 0x004ea7e6    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x004ea7e8    ff501c
                         cmp.s              edi, eax                                      // 0x004ea7eb    3bf8
                         {disp8} jne        _jmp_addr_0x004ea7ff                          // 0x004ea7ed    7510
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea7ef    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x0001d488], 0x00000000      // 0x004ea7f5    c78188d4010000000000
_jmp_addr_0x004ea7ff:    {disp32} mov       edi, dword ptr [esp + 0x000000c8]             // 0x004ea7ff    8bbc24c8000000
_jmp_addr_0x004ea806:    push               0x1                                           // 0x004ea806    6a01
                         push               0x1                                           // 0x004ea808    6a01
                         push               0x00be0070                                    // 0x004ea80a    687000be00
                         mov.s              ecx, esi                                      // 0x004ea80f    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x004ea811    e81aaff8ff
                         xor.s              eax, eax                                      // 0x004ea816    33c0
                         push               ebx                                           // 0x004ea818    53
                         {disp32} mov       dword ptr [esi + 0x00001150], eax             // 0x004ea819    898650110000
                         {disp32} mov       dword ptr [esi + 0x00001154], eax             // 0x004ea81f    898654110000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea825    8b8e64010000
                         push               edi                                           // 0x004ea82b    57
                         push               ebp                                           // 0x004ea82c    55
                         add                ecx, 0x00001c30                               // 0x004ea82d    81c1301c0000
                         call               _jmp_addr_0x004e9d60                          // 0x004ea833    e828f5ffff
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x004ea838    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x0001a9e4], ebp             // 0x004ea83e    89aae4a90100
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004ea844    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x0001a9e8], edi             // 0x004ea84a    89b8e8a90100
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ea850    8b442410
                         test               eax, eax                                      // 0x004ea854    85c0
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea856    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x0001a9f0], ebx             // 0x004ea85c    8999f0a90100
                         {disp8} je         _jmp_addr_0x004ea873                          // 0x004ea862    740f
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x004ea864    8b9664010000
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x004ea86a    8b4030
                         {disp32} mov       dword ptr [edx + 0x0001a9ec], eax             // 0x004ea86d    8982eca90100
_jmp_addr_0x004ea873:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ea873    8b442414
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x004ea877    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x004ea87e    2bc8
                         shl                ecx, 6                                        // 0x004ea880    c1e106
                         {disp32} mov       edx, dword ptr [ecx + 0x00c67ea0]             // 0x004ea883    8b91a07ec600
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea889    8b8e64010000
                         push               0x3dcccccd                                    // 0x004ea88f    68cdcccc3d
                         push               edx                                           // 0x004ea894    52
                         add                ecx, 0x8                                      // 0x004ea895    83c108
                         call               _jmp_addr_0x004de730                          // 0x004ea898    e8933effff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea89d    8b8e64010000
                         push               0x3e99999a                                    // 0x004ea8a3    689a99993e
                         push               0x36                                          // 0x004ea8a8    6a36
                         add                ecx, 0x8                                      // 0x004ea8aa    83c108
                         call               _jmp_addr_0x004de730                          // 0x004ea8ad    e87e3effff
                         test               ebx, ebx                                      // 0x004ea8b2    85db
                         {disp8} je         _jmp_addr_0x004ea8cd                          // 0x004ea8b4    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x004ea8b6    8b8e64010000
                         push               0x1                                           // 0x004ea8bc    6a01
                         push               ebx                                           // 0x004ea8be    53
                         push               0x1                                           // 0x004ea8bf    6a01
                         push               esi                                           // 0x004ea8c1    56
                         add                ecx, 0x0001a9fc                               // 0x004ea8c2    81c1fca90100
                         call               _jmp_addr_0x004e28c0                          // 0x004ea8c8    e8f37fffff
_jmp_addr_0x004ea8cd:    {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x004ea8cd    8d4c2458
                         call               _jmp_addr_0x004f12d0                          // 0x004ea8d1    e8fa690000
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x004ea8d6    8d4c2450
                         call               _jmp_addr_0x00436960                          // 0x004ea8da    e881c0f4ff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004ea8df    8d4c2420
                         call               _jmp_addr_0x004f12d0                          // 0x004ea8e3    e8e8690000
_jmp_addr_0x004ea8e8:    pop                edi                                           // 0x004ea8e8    5f
                         pop                esi                                           // 0x004ea8e9    5e
                         pop                ebp                                           // 0x004ea8ea    5d
                         pop                ebx                                           // 0x004ea8eb    5b
                         add                esp, 0x000000b0                               // 0x004ea8ec    81c4b0000000
                         ret                0x000c                                        // 0x004ea8f2    c20c00
                         nop                                                              // 0x004ea8f5    90
                         nop                                                              // 0x004ea8f6    90
                         nop                                                              // 0x004ea8f7    90
                         nop                                                              // 0x004ea8f8    90
                         nop                                                              // 0x004ea8f9    90
                         nop                                                              // 0x004ea8fa    90
                         nop                                                              // 0x004ea8fb    90
                         nop                                                              // 0x004ea8fc    90
                         nop                                                              // 0x004ea8fd    90
                         nop                                                              // 0x004ea8fe    90
                         nop                                                              // 0x004ea8ff    90
_jmp_addr_0x004ea900:    sub                esp, 0x08                                     // 0x004ea900    83ec08
                         push               ebx                                           // 0x004ea903    53
                         push               ebp                                           // 0x004ea904    55
                         push               esi                                           // 0x004ea905    56
                         {disp32} mov       esi, dword ptr [ecx + 0x00000a4c]             // 0x004ea906    8bb14c0a0000
                         test               esi, esi                                      // 0x004ea90c    85f6
                         push               edi                                           // 0x004ea90e    57
                         {disp32} je        _jmp_addr_0x004eaa98                          // 0x004ea90f    0f8483010000
                         test               byte ptr [esi + 0x24], 0x10                   // 0x004ea915    f6462410
                         {disp32} jne       _jmp_addr_0x004eaa98                          // 0x004ea919    0f8579010000
                         mov.s              ecx, esi                                      // 0x004ea91f    8bce
                         call               _jmp_addr_0x004cf060                          // 0x004ea921    e83a47feff
                         test               eax, eax                                      // 0x004ea926    85c0
                         {disp8} je         _jmp_addr_0x004ea93b                          // 0x004ea928    7411
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x004ea92a    8b802c010000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x004ea930    8b4818
                         test               ecx, ecx                                      // 0x004ea933    85c9
                         {disp32} je        _jmp_addr_0x004eaa98                          // 0x004ea935    0f845d010000
_jmp_addr_0x004ea93b:    mov                edx, dword ptr [esi]                          // 0x004ea93b    8b16
                         mov.s              ecx, esi                                      // 0x004ea93d    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x004ea93f    ff521c
                         test               eax, eax                                      // 0x004ea942    85c0
                         {disp32} je        _jmp_addr_0x004eaa98                          // 0x004ea944    0f844e010000
                         mov                eax, dword ptr [esi]                          // 0x004ea94a    8b06
                         mov.s              ecx, esi                                      // 0x004ea94c    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x004ea94e    ff501c
                         {disp32} mov       ecx, dword ptr [eax + 0x000008e0]             // 0x004ea951    8b88e0080000
                         mov                edi, 0x00000002                               // 0x004ea957    bf02000000
                         cmp.s              ecx, edi                                      // 0x004ea95c    3bcf
                         {disp32} je        _jmp_addr_0x004eaa98                          // 0x004ea95e    0f8434010000
                         cmp                dword ptr [esi + 0x00001268], 0x03            // 0x004ea964    83be6812000003
                         {disp32} jl        _jmp_addr_0x004eaa98                          // 0x004ea96b    0f8c27010000
                         mov.s              ecx, esi                                      // 0x004ea971    8bce
                         call               _jmp_addr_0x004cf060                          // 0x004ea973    e8e846feff
                         test               eax, eax                                      // 0x004ea978    85c0
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x004ea97a    8b5c2420
                         {disp8} je         _jmp_addr_0x004ea9b3                          // 0x004ea97e    7433
                         mov.s              ecx, esi                                      // 0x004ea980    8bce
                         call               _jmp_addr_0x004cf060                          // 0x004ea982    e8d946feff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x004ea987    8b802c010000
                         cmp                dword ptr [eax + 0x1c], edi                   // 0x004ea98d    39781c
                         {disp8} jne        _jmp_addr_0x004ea9b3                          // 0x004ea990    7521
                         mov.s              ecx, esi                                      // 0x004ea992    8bce
                         call               _jmp_addr_0x004cf060                          // 0x004ea994    e8c746feff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]             // 0x004ea999    8b802c010000
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x004ea99f    8b4824
                         test               ecx, ecx                                      // 0x004ea9a2    85c9
                         {disp8} jne        _jmp_addr_0x004ea9b3                          // 0x004ea9a4    750d
                         mov.s              ecx, esi                                      // 0x004ea9a6    8bce
                         call               _jmp_addr_0x004cf060                          // 0x004ea9a8    e8b346feff
                         cmp                eax, dword ptr [esp + 0x1c]                   // 0x004ea9ad    3b44241c
                         {disp8} je         _jmp_addr_0x004ea9c7                          // 0x004ea9b1    7414
_jmp_addr_0x004ea9b3:    lea                ecx, dword ptr [ebx + ebx * 0x2]              // 0x004ea9b3    8d0c5b
                         shl                ecx, 6                                        // 0x004ea9b6    c1e106
                         {disp32} mov       eax, dword ptr [ecx + 0x00cab224]             // 0x004ea9b9    8b8124b2ca00
                         test               eax, eax                                      // 0x004ea9bf    85c0
                         {disp32} jne       _jmp_addr_0x004eaa98                          // 0x004ea9c1    0f85d1000000
_jmp_addr_0x004ea9c7:    {disp32} mov       ecx, dword ptr [esi + 0x00000094]             // 0x004ea9c7    8b8e94000000
                         test               ecx, ecx                                      // 0x004ea9cd    85c9
                         {disp8} je         _jmp_addr_0x004ea9e3                          // 0x004ea9cf    7412
                         call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ     // 0x004ea9d1    e82a9d1f00
                         cmp                dword ptr [eax + 0x10], 0x00000096            // 0x004ea9d6    81781096000000
                         {disp32} jae       _jmp_addr_0x004eaa98                          // 0x004ea9dd    0f83b5000000
_jmp_addr_0x004ea9e3:    {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x004ea9e3    8b6c2424
                         {disp8} lea        edi, dword ptr [ebp + 0x14]                   // 0x004ea9e7    8d7d14
                         push               edi                                           // 0x004ea9ea    57
                         mov.s              ecx, esi                                      // 0x004ea9eb    8bce
                         call               _jmp_addr_0x00477440                          // 0x004ea9ed    e84ecaf8ff
                         test               eax, eax                                      // 0x004ea9f2    85c0
                         {disp32} je        _jmp_addr_0x004eaa98                          // 0x004ea9f4    0f849e000000
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x004ea9fa    8d5614
                         push               edx                                           // 0x004ea9fd    52
                         push               edi                                           // 0x004ea9fe    57
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x004ea9ff    e86c232600
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x004eaa04    d95c2428
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x004eaa08    8b8e60010000
                         add                esp, 0x08                                     // 0x004eaa0e    83c408
                         call               _jmp_addr_0x004efc70                          // 0x004eaa11    e85a520000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004eaa16    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x004eaa1a    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x004eaa22    df6c2410
                         {disp8} fcomp      dword ptr [esp + 0x20]                        // 0x004eaa26    d85c2420
                         fnstsw             ax                                            // 0x004eaa2a    dfe0
                         test               ah, 0x41                                      // 0x004eaa2c    f6c441
                         {disp8} jne        _jmp_addr_0x004eaa98                          // 0x004eaa2f    7567
                         lea                eax, dword ptr [ebx + ebx * 0x2]              // 0x004eaa31    8d045b
                         shl                eax, 6                                        // 0x004eaa34    c1e006
                         {disp32} fld       dword ptr [eax + 0x00cab220]                  // 0x004eaa37    d98020b2ca00
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x004eaa3d    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c38]             // 0x004eaa43    8b88381c0000
                         test               ecx, ecx                                      // 0x004eaa49    85c9
                         {disp8} jne        _jmp_addr_0x004eaa5c                          // 0x004eaa4b    750f
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004eaa4d    d81d98a38a00
                         fnstsw             ax                                            // 0x004eaa53    dfe0
                         test               ah, 0x41                                      // 0x004eaa55    f6c441
                         {disp8} jne        _jmp_addr_0x004eaa98                          // 0x004eaa58    753e
                         {disp8} jmp        _jmp_addr_0x004eaa8a                          // 0x004eaa5a    eb2e
_jmp_addr_0x004eaa5c:    cmp                dword ptr [eax + 0x00001c50], 0x02            // 0x004eaa5c    83b8501c000002
                         {disp8} je         _jmp_addr_0x004eaa88                          // 0x004eaa63    7423
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c40]             // 0x004eaa65    8b88401c0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x004eaa6b    8d1449
                         shl                edx, 6                                        // 0x004eaa6e    c1e206
                         {disp32} fld       dword ptr [edx + 0x00cab220]                  // 0x004eaa71    d98220b2ca00
                         fxch               st(1)                                         // 0x004eaa77    d9c9
                         fcompp                                                           // 0x004eaa79    ded9
                         fnstsw             ax                                            // 0x004eaa7b    dfe0
                         test               ah, 0x01                                      // 0x004eaa7d    f6c401
                         {disp8} jne        _jmp_addr_0x004eaa98                          // 0x004eaa80    7516
                         cmp.s              ebx, ecx                                      // 0x004eaa82    3bd9
                         {disp8} je         _jmp_addr_0x004eaa98                          // 0x004eaa84    7412
                         {disp8} jmp        _jmp_addr_0x004eaa8a                          // 0x004eaa86    eb02
_jmp_addr_0x004eaa88:    fstp               st(0)                                         // 0x004eaa88    ddd8
_jmp_addr_0x004eaa8a:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004eaa8a    8b442428
                         push               eax                                           // 0x004eaa8e    50
                         push               ebp                                           // 0x004eaa8f    55
                         push               ebx                                           // 0x004eaa90    53
                         mov.s              ecx, esi                                      // 0x004eaa91    8bce
                         call               ?DecideOnNewPlan@Creature@@QAEXAAVCreaturePlan@@@Z                          // 0x004eaa93    e8d8fbffff
_jmp_addr_0x004eaa98:    pop                edi                                           // 0x004eaa98    5f
                         pop                esi                                           // 0x004eaa99    5e
                         pop                ebp                                           // 0x004eaa9a    5d
                         pop                ebx                                           // 0x004eaa9b    5b
                         add                esp, 0x08                                     // 0x004eaa9c    83c408
                         ret                0x0010                                        // 0x004eaa9f    c21000
                         nop                                                              // 0x004eaaa2    90
                         nop                                                              // 0x004eaaa3    90
                         nop                                                              // 0x004eaaa4    90
                         nop                                                              // 0x004eaaa5    90
                         nop                                                              // 0x004eaaa6    90
                         nop                                                              // 0x004eaaa7    90
                         nop                                                              // 0x004eaaa8    90
                         nop                                                              // 0x004eaaa9    90
                         nop                                                              // 0x004eaaaa    90
                         nop                                                              // 0x004eaaab    90
                         nop                                                              // 0x004eaaac    90
                         nop                                                              // 0x004eaaad    90
                         nop                                                              // 0x004eaaae    90
                         nop                                                              // 0x004eaaaf    90
_jmp_addr_0x004eaab0:    sub                esp, 0x08                                     // 0x004eaab0    83ec08
                         push               ebx                                           // 0x004eaab3    53
                         push               ebp                                           // 0x004eaab4    55
                         push               esi                                           // 0x004eaab5    56
                         push               edi                                           // 0x004eaab6    57
                         mov.s              esi, ecx                                      // 0x004eaab7    8bf1
                         call               _jmp_addr_0x0063a710                          // 0x004eaab9    e852fc1400
                         mov.s              ebx, eax                                      // 0x004eaabe    8bd8
                         test               ebx, ebx                                      // 0x004eaac0    85db
                         {disp32} je        _jmp_addr_0x004eab93                          // 0x004eaac2    0f84cb000000
                         mov                eax, dword ptr [ebx]                          // 0x004eaac8    8b03
                         mov.s              ecx, ebx                                      // 0x004eaaca    8bcb
                         call               dword ptr [eax + 0x1c]                        // 0x004eaacc    ff501c
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x275ac]        // 0x004eaacf    8b15ac058d00
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004eaad5    8d4e14
                         push               edx                                           // 0x004eaad8    52
                         mov.s              edi, eax                                      // 0x004eaad9    8bf8
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x004eaadb    e800761100
                         mov                edx, dword ptr [esi]                          // 0x004eaae0    8b16
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004eaae2    89442414
                         {disp32} mov       eax, dword ptr [edi + 0x00000a48]             // 0x004eaae6    8b87480a0000
                         mov.s              ecx, esi                                      // 0x004eaaec    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004eaaee    89442410
                         call               dword ptr [edx + 0x48]                        // 0x004eaaf2    ff5248
                         mov.s              ebp, eax                                      // 0x004eaaf5    8be8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eaaf7    8b442410
                         test               eax, eax                                      // 0x004eaafb    85c0
                         {disp8} je         _jmp_addr_0x004eab56                          // 0x004eaafd    7457
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004eaaff    8d4e14
                         push               ecx                                           // 0x004eab02    51
                         add                eax, 0x14                                     // 0x004eab03    83c014
                         push               eax                                           // 0x004eab06    50
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x004eab07    e864222600
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2760c]             // 0x004eab0c    d81d0c068d00
                         add                esp, 0x08                                     // 0x004eab12    83c408
                         fnstsw             ax                                            // 0x004eab15    dfe0
                         test               ah, 0x01                                      // 0x004eab17    f6c401
                         {disp8} je         _jmp_addr_0x004eab56                          // 0x004eab1a    743a
                         test               ebp, ebp                                      // 0x004eab1c    85ed
                         {disp8} je         _jmp_addr_0x004eab41                          // 0x004eab1e    7421
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x004eab20    8b4500
                         mov.s              ecx, ebp                                      // 0x004eab23    8bcd
                         call               dword ptr [eax + 0x1c]                        // 0x004eab25    ff501c
                         cmp.s              eax, edi                                      // 0x004eab28    3bc7
                         {disp8} je         _jmp_addr_0x004eab41                          // 0x004eab2a    7415
                         push               0x0                                           // 0x004eab2c    6a00
                         push               esi                                           // 0x004eab2e    56
                         push               0x24                                          // 0x004eab2f    6a24
                         push               ebx                                           // 0x004eab31    53
                         mov.s              ecx, edi                                      // 0x004eab32    8bcf
                         call               _jmp_addr_0x004ea900                          // 0x004eab34    e8c7fdffff
                         pop                edi                                           // 0x004eab39    5f
                         pop                esi                                           // 0x004eab3a    5e
                         pop                ebp                                           // 0x004eab3b    5d
                         pop                ebx                                           // 0x004eab3c    5b
                         add                esp, 0x08                                     // 0x004eab3d    83c408
                         ret                                                              // 0x004eab40    c3
_jmp_addr_0x004eab41:    push               0x0                                           // 0x004eab41    6a00
                         push               esi                                           // 0x004eab43    56
                         push               0x20                                          // 0x004eab44    6a20
                         push               ebx                                           // 0x004eab46    53
                         mov.s              ecx, edi                                      // 0x004eab47    8bcf
                         call               _jmp_addr_0x004ea900                          // 0x004eab49    e8b2fdffff
                         pop                edi                                           // 0x004eab4e    5f
                         pop                esi                                           // 0x004eab4f    5e
                         pop                ebp                                           // 0x004eab50    5d
                         pop                ebx                                           // 0x004eab51    5b
                         add                esp, 0x08                                     // 0x004eab52    83c408
                         ret                                                              // 0x004eab55    c3
_jmp_addr_0x004eab56:    test               ebp, ebp                                      // 0x004eab56    85ed
                         {disp8} je         _jmp_addr_0x004eab93                          // 0x004eab58    7439
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x004eab5a    8b5500
                         mov.s              ecx, ebp                                      // 0x004eab5d    8bcd
                         call               dword ptr [edx + 0x1c]                        // 0x004eab5f    ff521c
                         cmp.s              eax, edi                                      // 0x004eab62    3bc7
                         {disp8} je         _jmp_addr_0x004eab93                          // 0x004eab64    742d
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x004eab66    8b6c2414
                         test               ebp, ebp                                      // 0x004eab6a    85ed
                         {disp8} je         _jmp_addr_0x004eab93                          // 0x004eab6c    7425
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x004eab6e    8b4500
                         mov.s              ecx, ebp                                      // 0x004eab71    8bcd
                         call               dword ptr [eax + 0x1c]                        // 0x004eab73    ff501c
                         test               eax, eax                                      // 0x004eab76    85c0
                         {disp8} je         _jmp_addr_0x004eab93                          // 0x004eab78    7419
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x004eab7a    8b5500
                         mov.s              ecx, ebp                                      // 0x004eab7d    8bcd
                         call               dword ptr [edx + 0x1c]                        // 0x004eab7f    ff521c
                         cmp.s              eax, edi                                      // 0x004eab82    3bc7
                         {disp8} jne        _jmp_addr_0x004eab93                          // 0x004eab84    750d
                         push               0x0                                           // 0x004eab86    6a00
                         push               esi                                           // 0x004eab88    56
                         push               0x23                                          // 0x004eab89    6a23
                         push               ebx                                           // 0x004eab8b    53
                         mov.s              ecx, edi                                      // 0x004eab8c    8bcf
                         call               _jmp_addr_0x004ea900                          // 0x004eab8e    e86dfdffff
_jmp_addr_0x004eab93:    pop                edi                                           // 0x004eab93    5f
                         pop                esi                                           // 0x004eab94    5e
                         pop                ebp                                           // 0x004eab95    5d
                         pop                ebx                                           // 0x004eab96    5b
                         add                esp, 0x08                                     // 0x004eab97    83c408
                         ret                                                              // 0x004eab9a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004eab9b    e8d96cf1ff
?GetCreatureMimicType@Villager@@UAEIXZ:
                         push               esi                                           // 0x004eaba0    56
                         mov.s              esi, ecx                                      // 0x004eaba1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x004eaba3    8b06
                         call               dword ptr [eax + 0xaf8]                       // 0x004eaba5    ff90f80a0000
                         test               eax, eax                                      // 0x004eabab    85c0
                         {disp8} je         _jmp_addr_0x004eabb6                          // 0x004eabad    7407
                         mov                eax, 0x00000002                               // 0x004eabaf    b802000000
                         pop                esi                                           // 0x004eabb4    5e
                         ret                                                              // 0x004eabb5    c3
_jmp_addr_0x004eabb6:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x004eabb6    8b4e28
                         {disp32} mov       edx, dword ptr [ecx + 0x000001f8]             // 0x004eabb9    8b91f8010000
                         xor.s              eax, eax                                      // 0x004eabbf    33c0
                         test               edx, edx                                      // 0x004eabc1    85d2
                         setne              al                                            // 0x004eabc3    0f95c0
                         pop                esi                                           // 0x004eabc6    5e
                         ret                                                              // 0x004eabc7    c3
                         nop                                                              // 0x004eabc8    90
                         nop                                                              // 0x004eabc9    90
                         nop                                                              // 0x004eabca    90
                         nop                                                              // 0x004eabcb    90
                         nop                                                              // 0x004eabcc    90
                         nop                                                              // 0x004eabcd    90
                         nop                                                              // 0x004eabce    90
                         nop                                                              // 0x004eabcf    90
?GetCreatureMimicType@Animal@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x004eabd0    8b4128
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x004eabd3    8b4014
                         dec                eax                                           // 0x004eabd6    48
                         neg                eax                                           // 0x004eabd7    f7d8
                         sbb.s              eax, eax                                      // 0x004eabd9    1bc0
                         add                eax, 0x04                                     // 0x004eabdb    83c004
                         ret                                                              // 0x004eabde    c3
                         nop                                                              // 0x004eabdf    90
_globl_ct_0x004eabe0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x004eabe0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x004eabe6    b001
                         test               al, cl                                        // 0x004eabe8    84c8
                         {disp8} jne        _jmp_addr_0x004eabf4                          // 0x004eabea    7508
                         or.s               cl, al                                        // 0x004eabec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x004eabee    880d34c9fa00
_jmp_addr_0x004eabf4:    {disp32} jmp       _jmp_addr_0x004eac00                          // 0x004eabf4    e907000000
                         nop                                                              // 0x004eabf9    90
                         nop                                                              // 0x004eabfa    90
                         nop                                                              // 0x004eabfb    90
                         nop                                                              // 0x004eabfc    90
                         nop                                                              // 0x004eabfd    90
                         nop                                                              // 0x004eabfe    90
                         nop                                                              // 0x004eabff    90
_jmp_addr_0x004eac00:    push               0x00407870                                    // 0x004eac00    6870784000
                         call               _atexit                                       // 0x004eac05    e887ab2d00
                         pop                ecx                                           // 0x004eac0a    59
                         ret                                                              // 0x004eac0b    c3
                         nop                                                              // 0x004eac0c    90
                         nop                                                              // 0x004eac0d    90
                         nop                                                              // 0x004eac0e    90
                         nop                                                              // 0x004eac0f    90
_globl_ct_0x004eac10:    {disp32} jmp       _jmp_addr_0x004eac20                          // 0x004eac10    e90b000000
                         nop                                                              // 0x004eac15    90
                         nop                                                              // 0x004eac16    90
                         nop                                                              // 0x004eac17    90
                         nop                                                              // 0x004eac18    90
                         nop                                                              // 0x004eac19    90
                         nop                                                              // 0x004eac1a    90
                         nop                                                              // 0x004eac1b    90
                         nop                                                              // 0x004eac1c    90
                         nop                                                              // 0x004eac1d    90
                         nop                                                              // 0x004eac1e    90
                         nop                                                              // 0x004eac1f    90
_jmp_addr_0x004eac20:    {disp32} fld       dword ptr [rdata_bytes + 0x27618]             // 0x004eac20    d90518068d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x27614]             // 0x004eac26    d80d14068d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7418]             // 0x004eac2c    d91d18d4ca00
                         ret                                                              // 0x004eac32    c3
                         nop                                                              // 0x004eac33    90
                         nop                                                              // 0x004eac34    90
                         nop                                                              // 0x004eac35    90
                         nop                                                              // 0x004eac36    90
                         nop                                                              // 0x004eac37    90
                         nop                                                              // 0x004eac38    90
                         nop                                                              // 0x004eac39    90
                         nop                                                              // 0x004eac3a    90
                         nop                                                              // 0x004eac3b    90
                         nop                                                              // 0x004eac3c    90
                         nop                                                              // 0x004eac3d    90
                         nop                                                              // 0x004eac3e    90
                         nop                                                              // 0x004eac3f    90
_globl_ct_0x004eac40:    {disp32} jmp       _jmp_addr_0x004eac50                          // 0x004eac40    e90b000000
                         nop                                                              // 0x004eac45    90
                         nop                                                              // 0x004eac46    90
                         nop                                                              // 0x004eac47    90
                         nop                                                              // 0x004eac48    90
                         nop                                                              // 0x004eac49    90
                         nop                                                              // 0x004eac4a    90
                         nop                                                              // 0x004eac4b    90
                         nop                                                              // 0x004eac4c    90
                         nop                                                              // 0x004eac4d    90
                         nop                                                              // 0x004eac4e    90
                         nop                                                              // 0x004eac4f    90
_jmp_addr_0x004eac50:    {disp32} mov       dword ptr [data_bytes + 0x2e7414], 0xffffffff // 0x004eac50    c70514d4ca00ffffffff
                         ret                                                              // 0x004eac5a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004eac5b    e8196cf1ff
_globl_ct_0x004eac60:    {disp32} jmp       _jmp_addr_0x004eac70                          // 0x004eac60    e90b000000
                         nop                                                              // 0x004eac65    90
                         nop                                                              // 0x004eac66    90
                         nop                                                              // 0x004eac67    90
                         nop                                                              // 0x004eac68    90
                         nop                                                              // 0x004eac69    90
                         nop                                                              // 0x004eac6a    90
                         nop                                                              // 0x004eac6b    90
                         nop                                                              // 0x004eac6c    90
                         nop                                                              // 0x004eac6d    90
                         nop                                                              // 0x004eac6e    90
                         nop                                                              // 0x004eac6f    90
_jmp_addr_0x004eac70:    {disp32} fld       dword ptr [rdata_bytes + 0x2761c]             // 0x004eac70    d9051c068d00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x004eac76    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7410]             // 0x004eac7c    d91d10d4ca00
                         ret                                                              // 0x004eac82    c3
                         nop                                                              // 0x004eac83    90
                         nop                                                              // 0x004eac84    90
                         nop                                                              // 0x004eac85    90
                         nop                                                              // 0x004eac86    90
                         nop                                                              // 0x004eac87    90
                         nop                                                              // 0x004eac88    90
                         nop                                                              // 0x004eac89    90
                         nop                                                              // 0x004eac8a    90
                         nop                                                              // 0x004eac8b    90
                         nop                                                              // 0x004eac8c    90
                         nop                                                              // 0x004eac8d    90
                         nop                                                              // 0x004eac8e    90
                         nop                                                              // 0x004eac8f    90
_LoadBase__12LH3DCreatureFPc:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004eac90    8b442404
                         push               esi                                           // 0x004eac94    56
                         mov.s              esi, ecx                                      // 0x004eac95    8bf1
                         push               eax                                           // 0x004eac97    50
                         call               ?LoadBase@Morphable@@UAEIPAD@Z                // 0x004eac98    e8c3d61200
                         test               eax, eax                                      // 0x004eac9d    85c0
                         {disp8} jne        _jmp_addr_0x004eaca5                          // 0x004eac9f    7504
                         pop                esi                                           // 0x004eaca1    5e
                         ret                0x0004                                        // 0x004eaca2    c20400
_jmp_addr_0x004eaca5:    {disp32} mov       eax, dword ptr [esi + 0x00005174]             // 0x004eaca5    8b8674510000
                         test               eax, eax                                      // 0x004eacab    85c0
                         {disp8} je         _jmp_addr_0x004eacb8                          // 0x004eacad    7409
                         push               eax                                           // 0x004eacaf    50
                         call               ??3@YAXPAX@Z                                  // 0x004eacb0    e8e3412c00
                         add                esp, 0x04                                     // 0x004eacb5    83c404
_jmp_addr_0x004eacb8:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x004eacb8    8b86b8470000
                         push               0x29                                          // 0x004eacbe    6a29
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x004eacc0    8d0c40
                         shl                ecx, 4                                        // 0x004eacc3    c1e104
                         push               0x00be0080                                    // 0x004eacc6    688000be00
                         push               ecx                                           // 0x004eaccb    51
                         call               ___nw__FUl                                    // 0x004eaccc    e8bf0a2f00
                         {disp32} mov       dword ptr [esi + 0x00005174], eax             // 0x004eacd1    898674510000
                         {disp32} mov       eax, dword ptr [esi + 0x00005178]             // 0x004eacd7    8b8678510000
                         add                esp, 0x0c                                     // 0x004eacdd    83c40c
                         test               eax, eax                                      // 0x004eace0    85c0
                         {disp8} je         _jmp_addr_0x004eaced                          // 0x004eace2    7409
                         push               eax                                           // 0x004eace4    50
                         call               ??3@YAXPAX@Z                                  // 0x004eace5    e8ae412c00
                         add                esp, 0x04                                     // 0x004eacea    83c404
_jmp_addr_0x004eaced:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x004eaced    8b86b8470000
                         push               0x2b                                          // 0x004eacf3    6a2b
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x004eacf5    8d1440
                         shl                edx, 4                                        // 0x004eacf8    c1e204
                         push               0x00be0080                                    // 0x004eacfb    688000be00
                         push               edx                                           // 0x004ead00    52
                         call               ___nw__FUl                                    // 0x004ead01    e88a0a2f00
                         {disp32} mov       dword ptr [esi + 0x00005178], eax             // 0x004ead06    898678510000
                         {disp32} mov       eax, dword ptr [esi + 0x0000517c]             // 0x004ead0c    8b867c510000
                         add                esp, 0x0c                                     // 0x004ead12    83c40c
                         test               eax, eax                                      // 0x004ead15    85c0
                         {disp8} je         _jmp_addr_0x004ead22                          // 0x004ead17    7409
                         push               eax                                           // 0x004ead19    50
                         call               ??3@YAXPAX@Z                                  // 0x004ead1a    e879412c00
                         add                esp, 0x04                                     // 0x004ead1f    83c404
_jmp_addr_0x004ead22:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x004ead22    8b86b8470000
                         push               0x2d                                          // 0x004ead28    6a2d
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ead2a    8d0440
                         shl                eax, 4                                        // 0x004ead2d    c1e004
                         push               0x00be0080                                    // 0x004ead30    688000be00
                         push               eax                                           // 0x004ead35    50
                         call               ___nw__FUl                                    // 0x004ead36    e8550a2f00
                         {disp32} mov       dword ptr [esi + 0x0000517c], eax             // 0x004ead3b    89867c510000
                         {disp32} mov       eax, dword ptr [esi + 0x00005180]             // 0x004ead41    8b8680510000
                         add                esp, 0x0c                                     // 0x004ead47    83c40c
                         test               eax, eax                                      // 0x004ead4a    85c0
                         {disp8} je         _jmp_addr_0x004ead57                          // 0x004ead4c    7409
                         push               eax                                           // 0x004ead4e    50
                         call               ??3@YAXPAX@Z                                  // 0x004ead4f    e844412c00
                         add                esp, 0x04                                     // 0x004ead54    83c404
_jmp_addr_0x004ead57:    {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x004ead57    8b86b8470000
                         push               0x2f                                          // 0x004ead5d    6a2f
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x004ead5f    8d0c40
                         shl                ecx, 4                                        // 0x004ead62    c1e104
                         push               0x00be0080                                    // 0x004ead65    688000be00
                         push               ecx                                           // 0x004ead6a    51
                         call               ___nw__FUl                                    // 0x004ead6b    e8200a2f00
                         {disp32} mov       dword ptr [esi + 0x00005180], eax             // 0x004ead70    898680510000
                         {disp32} mov       eax, dword ptr [esi + 0x000051f0]             // 0x004ead76    8b86f0510000
                         add                esp, 0x0c                                     // 0x004ead7c    83c40c
                         test               eax, eax                                      // 0x004ead7f    85c0
                         {disp8} jne        _jmp_addr_0x004eadc6                          // 0x004ead81    7543
                         {disp32} mov       edx, dword ptr [esi + 0x000047b8]             // 0x004ead83    8b96b8470000
                         push               0x32                                          // 0x004ead89    6a32
                         shl                edx, 2                                        // 0x004ead8b    c1e202
                         push               0x00be0080                                    // 0x004ead8e    688000be00
                         push               edx                                           // 0x004ead93    52
                         call               ___nw__FUl                                    // 0x004ead94    e8f7092f00
                         {disp32} mov       ecx, dword ptr [esi + 0x000047b8]             // 0x004ead99    8b8eb8470000
                         {disp32} mov       dword ptr [esi + 0x000051f0], eax             // 0x004ead9f    8986f0510000
                         add                esp, 0x0c                                     // 0x004eada5    83c40c
                         xor.s              eax, eax                                      // 0x004eada8    33c0
                         test               ecx, ecx                                      // 0x004eadaa    85c9
                         {disp8} jle        _jmp_addr_0x004eadc6                          // 0x004eadac    7e18
_jmp_addr_0x004eadae:    {disp32} mov       ecx, dword ptr [esi + 0x000051f0]             // 0x004eadae    8b8ef0510000
                         mov                dword ptr [ecx + eax * 0x4], 0xffffffff       // 0x004eadb4    c70481ffffffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000047b8]             // 0x004eadbb    8b8eb8470000
                         inc                eax                                           // 0x004eadc1    40
                         cmp.s              eax, ecx                                      // 0x004eadc2    3bc1
                         {disp8} jl         _jmp_addr_0x004eadae                          // 0x004eadc4    7ce8
_jmp_addr_0x004eadc6:    mov                eax, 0x00000001                               // 0x004eadc6    b801000000
                         pop                esi                                           // 0x004eadcb    5e
                         ret                0x0004                                        // 0x004eadcc    c20400
                         nop                                                              // 0x004eadcf    90
                         sub                esp, 0x000000c0                               // 0x004eadd0    81ecc0000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000c4]             // 0x004eadd6    8b8424c4000000
                         push               ebx                                           // 0x004eaddd    53
                         push               edi                                           // 0x004eadde    57
                         push               eax                                           // 0x004eaddf    50
                         mov.s              ebx, ecx                                      // 0x004eade0    8bd9
                         {disp32} lea       ecx, dword ptr [esp + 0x0000008c]             // 0x004eade2    8d8c248c000000
                         push               0x00be00f0                                    // 0x004eade9    68f000be00
                         push               ecx                                           // 0x004eadee    51
                         call               _sprintf                                      // 0x004eadef    e8dea92d00
                         add                esp, 0x0c                                     // 0x004eadf4    83c40c
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eadf7    8d4c241c
                         call               ??0LHFile@@QAE@XZ                             // 0x004eadfb    e81033f4ff
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eae00    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x1c], 0x008c4d0c            // 0x004eae04    c744241c0c4d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                     // 0x004eae0c    e84f33f4ff
                         {disp32} lea       edx, dword ptr [esp + 0x00000088]             // 0x004eae11    8d942488000000
                         push               edx                                           // 0x004eae18    52
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eae19    8d4c2420
                         call               @SetName__6LHFileFPCc@12                      // 0x004eae1d    e86e252d00
                         push               0x2                                           // 0x004eae22    6a02
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eae24    8d4c2420
                         call               @Open__14LHReleasedFileF12LH_FILE_MODE@12     // 0x004eae28    e803292d00
                         test               eax, eax                                      // 0x004eae2d    85c0
                         {disp8} je         _jmp_addr_0x004eae5c                          // 0x004eae2f    742b
                         {disp32} lea       eax, dword ptr [esp + 0x00000088]             // 0x004eae31    8d842488000000
                         push               eax                                           // 0x004eae38    50
                         push               0x00be00dc                                    // 0x004eae39    68dc00be00
                         call               _jmp_addr_0x00617140                          // 0x004eae3e    e8fdc21200
                         add                esp, 0x08                                     // 0x004eae43    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eae46    8d4c241c
                         call               _jmp_addr_0x007bda20                          // 0x004eae4a    e8d12b2d00
                         pop                edi                                           // 0x004eae4f    5f
                         xor.s              eax, eax                                      // 0x004eae50    33c0
                         pop                ebx                                           // 0x004eae52    5b
                         add                esp, 0x000000c0                               // 0x004eae53    81c4c0000000
                         ret                0x0004                                        // 0x004eae59    c20400
_jmp_addr_0x004eae5c:    push               0x009c8bb4                                    // 0x004eae5c    68b48b9c00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eae61    8d4c2420
                         call               @OpenSegment__6LHFileFPc@12                   // 0x004eae65    e856302d00
                         test               eax, eax                                      // 0x004eae6a    85c0
                         {disp8} je         _jmp_addr_0x004eaea2                          // 0x004eae6c    7434
                         {disp32} lea       ecx, dword ptr [esp + 0x00000088]             // 0x004eae6e    8d8c2488000000
                         push               ecx                                           // 0x004eae75    51
                         push               0x00be00bc                                    // 0x004eae76    68bc00be00
                         call               _jmp_addr_0x00617140                          // 0x004eae7b    e8c0c21200
                         add                esp, 0x08                                     // 0x004eae80    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eae83    8d4c241c
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eae87    e8342d2d00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eae8c    8d4c241c
                         call               _jmp_addr_0x007bda20                          // 0x004eae90    e88b2b2d00
                         pop                edi                                           // 0x004eae95    5f
                         xor.s              eax, eax                                      // 0x004eae96    33c0
                         pop                ebx                                           // 0x004eae98    5b
                         add                esp, 0x000000c0                               // 0x004eae99    81c4c0000000
                         ret                0x0004                                        // 0x004eae9f    c20400
_jmp_addr_0x004eaea2:    push               -0x1                                          // 0x004eaea2    6aff
                         push               0x4                                           // 0x004eaea4    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x004eaea6    8d54241c
                         push               edx                                           // 0x004eaeaa    52
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x004eaeab    8d4c2428
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaeaf    e88c312d00
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x004eaeb4    8b7c2414
                         cmp                edi, 0x03                                     // 0x004eaeb8    83ff03
                         {disp8} jle        _jmp_addr_0x004eaef1                          // 0x004eaebb    7e34
                         {disp32} lea       eax, dword ptr [esp + 0x00000088]             // 0x004eaebd    8d842488000000
                         push               eax                                           // 0x004eaec4    50
                         push               0x00be00a4                                    // 0x004eaec5    68a400be00
                         call               _jmp_addr_0x00617140                          // 0x004eaeca    e871c21200
                         add                esp, 0x08                                     // 0x004eaecf    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eaed2    8d4c241c
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eaed6    e8e52c2d00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eaedb    8d4c241c
                         call               _jmp_addr_0x007bda20                          // 0x004eaedf    e83c2b2d00
                         pop                edi                                           // 0x004eaee4    5f
                         xor.s              eax, eax                                      // 0x004eaee5    33c0
                         pop                ebx                                           // 0x004eaee7    5b
                         add                esp, 0x000000c0                               // 0x004eaee8    81c4c0000000
                         ret                0x0004                                        // 0x004eaeee    c20400
_jmp_addr_0x004eaef1:    push               ebp                                           // 0x004eaef1    55
                         push               esi                                           // 0x004eaef2    56
                         {disp32} lea       esi, dword ptr [ebx + 0x0000567c]             // 0x004eaef3    8db37c560000
                         mov                ebp, 0x00000008                               // 0x004eaef9    bd08000000
_jmp_addr_0x004eaefe:    push               -0x1                                          // 0x004eaefe    6aff
                         push               0x4                                           // 0x004eaf00    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eaf02    8d4c2424
                         push               ecx                                           // 0x004eaf06    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf07    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf0b    e830312d00
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004eaf10    8b44241c
                         test               eax, eax                                      // 0x004eaf14    85c0
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x004eaf16    894620
                         {disp8} je         _jmp_addr_0x004eaf86                          // 0x004eaf19    746b
                         push               -0x1                                          // 0x004eaf1b    6aff
                         push               0x4                                           // 0x004eaf1d    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x004eaf1f    8d542428
                         push               edx                                           // 0x004eaf23    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf24    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf28    e813312d00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004eaf2d    8b442420
                         push               -0x1                                          // 0x004eaf31    6aff
                         push               0x4                                           // 0x004eaf33    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eaf35    8d4c2420
                         push               ecx                                           // 0x004eaf39    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf3a    8d4c2430
                         mov                dword ptr [esi], eax                          // 0x004eaf3e    8906
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf40    e8fb302d00
                         cmp                edi, 0x01                                     // 0x004eaf45    83ff01
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004eaf48    8b542418
                         {disp32} mov       dword ptr [esi + 0x00000080], edx             // 0x004eaf4c    899680000000
                         {disp8} jle        _jmp_addr_0x004eaf86                          // 0x004eaf52    7e32
                         push               -0x1                                          // 0x004eaf54    6aff
                         push               0x4                                           // 0x004eaf56    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x004eaf58    8d44241c
                         push               eax                                           // 0x004eaf5c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf5d    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf61    e8da302d00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004eaf66    8b4c2414
                         push               -0x1                                          // 0x004eaf6a    6aff
                         push               0x4                                           // 0x004eaf6c    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eaf6e    8d542418
                         {disp8} mov        dword ptr [esi + 0x40], ecx                   // 0x004eaf72    894e40
                         push               edx                                           // 0x004eaf75    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf76    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf7a    e8c1302d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eaf7f    8b442410
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x004eaf83    894660
_jmp_addr_0x004eaf86:    add                esi, 0x04                                     // 0x004eaf86    83c604
                         dec                ebp                                           // 0x004eaf89    4d
                         {disp32} jne       _jmp_addr_0x004eaefe                          // 0x004eaf8a    0f856effffff
                         push               -0x1                                          // 0x004eaf90    6aff
                         push               0x4                                           // 0x004eaf92    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eaf94    8d4c2418
                         push               ecx                                           // 0x004eaf98    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eaf99    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eaf9d    e89e302d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eafa2    8b442410
                         test               eax, eax                                      // 0x004eafa6    85c0
                         {disp32} mov       dword ptr [ebx + 0x00005430], eax             // 0x004eafa8    898330540000
                         {disp8} je         _jmp_addr_0x004eafc0                          // 0x004eafae    7410
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x004eafb0    8d542424
                         push               edx                                           // 0x004eafb4    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005408]             // 0x004eafb5    8d8b08540000
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eafbb    e860cc3700
_jmp_addr_0x004eafc0:    cmp                edi, 0x02                                     // 0x004eafc0    83ff02
                         {disp8} jle        _jmp_addr_0x004eaff7                          // 0x004eafc3    7e32
                         push               -0x1                                          // 0x004eafc5    6aff
                         push               0x4                                           // 0x004eafc7    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eafc9    8d442418
                         push               eax                                           // 0x004eafcd    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eafce    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eafd2    e869302d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eafd7    8b442410
                         test               eax, eax                                      // 0x004eafdb    85c0
                         {disp32} mov       dword ptr [ebx + 0x0000545c], eax             // 0x004eafdd    89835c540000
                         {disp8} je         _jmp_addr_0x004eb001                          // 0x004eafe3    741c
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eafe5    8d4c2424
                         push               ecx                                           // 0x004eafe9    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005434]             // 0x004eafea    8d8b34540000
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eaff0    e82bcc3700
                         {disp8} jmp        _jmp_addr_0x004eb001                          // 0x004eaff5    eb0a
_jmp_addr_0x004eaff7:    {disp32} mov       dword ptr [ebx + 0x0000545c], 0x00000000      // 0x004eaff7    c7835c54000000000000
_jmp_addr_0x004eb001:    push               -0x1                                          // 0x004eb001    6aff
                         push               0x4                                           // 0x004eb003    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb005    8d542418
                         push               edx                                           // 0x004eb009    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb00a    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb00e    e82d302d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb013    8b442410
                         {disp32} mov       dword ptr [ebx + 0x00005474], eax             // 0x004eb017    898374540000
                         {disp32} lea       esi, dword ptr [ebx + 0x00005528]             // 0x004eb01d    8db328550000
                         {disp32} lea       edi, dword ptr [ebx + 0x00005478]             // 0x004eb023    8dbb78540000
                         mov                ebp, 0x00000004                               // 0x004eb029    bd04000000
_jmp_addr_0x004eb02e:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb02e    8d4c2424
                         push               ecx                                           // 0x004eb032    51
                         mov.s              ecx, edi                                      // 0x004eb033    8bcf
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eb035    e8e6cb3700
                         push               -0x1                                          // 0x004eb03a    6aff
                         push               0x4                                           // 0x004eb03c    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb03e    8d542418
                         push               edx                                           // 0x004eb042    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb043    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb047    e8f42f2d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb04c    8b442410
                         push               -0x1                                          // 0x004eb050    6aff
                         push               0x4                                           // 0x004eb052    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eb054    8d4c241c
                         push               ecx                                           // 0x004eb058    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb059    8d4c2430
                         {disp8} mov        dword ptr [esi + -0x10], eax                  // 0x004eb05d    8946f0
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb060    e8db2f2d00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004eb065    8b542414
                         mov                dword ptr [esi], edx                          // 0x004eb069    8916
                         add                esi, 0x04                                     // 0x004eb06b    83c604
                         add                edi, 0x28                                     // 0x004eb06e    83c728
                         dec                ebp                                           // 0x004eb071    4d
                         {disp8} jne        _jmp_addr_0x004eb02e                          // 0x004eb072    75ba
                         {disp32} lea       esi, dword ptr [ebx + 0x00005664]             // 0x004eb074    8db364560000
                         mov                edi, 0x00000003                               // 0x004eb07a    bf03000000
_jmp_addr_0x004eb07f:    push               -0x1                                          // 0x004eb07f    6aff
                         push               0x4                                           // 0x004eb081    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb083    8d442418
                         push               eax                                           // 0x004eb087    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb088    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb08c    e8af2f2d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb091    8b4c2410
                         push               -0x1                                          // 0x004eb095    6aff
                         push               0x4                                           // 0x004eb097    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x004eb099    8d54241c
                         {disp8} mov        dword ptr [esi + -0x0c], ecx                  // 0x004eb09d    894ef4
                         push               edx                                           // 0x004eb0a0    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb0a1    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb0a5    e8962f2d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004eb0aa    8b442414
                         push               -0x1                                          // 0x004eb0ae    6aff
                         push               0x4                                           // 0x004eb0b0    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb0b2    8d4c2420
                         push               ecx                                           // 0x004eb0b6    51
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb0b7    8d4c2430
                         mov                dword ptr [esi], eax                          // 0x004eb0bb    8906
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb0bd    e87e2f2d00
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004eb0c2    8b542418
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x004eb0c6    89560c
                         add                esi, 0x04                                     // 0x004eb0c9    83c604
                         dec                edi                                           // 0x004eb0cc    4f
                         {disp8} jne        _jmp_addr_0x004eb07f                          // 0x004eb0cd    75b0
                         push               -0x1                                          // 0x004eb0cf    6aff
                         push               0x4                                           // 0x004eb0d1    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb0d3    8d442418
                         push               eax                                           // 0x004eb0d7    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb0d8    8d4c2430
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb0dc    e85f2f2d00
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004eb0e1    8b7c2410
                         test               edi, edi                                      // 0x004eb0e5    85ff
                         {disp8} jle        _jmp_addr_0x004eb108                          // 0x004eb0e7    7e1f
                         {disp32} lea       esi, dword ptr [ebx + 0x00004804]             // 0x004eb0e9    8db304480000
_jmp_addr_0x004eb0ef:    mov.s              ecx, ebx                                      // 0x004eb0ef    8bcb
                         call               ?AddHairGroup@Morphable@@QAEIXZ               // 0x004eb0f1    e87ac31200
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb0f6    8d4c2424
                         push               ecx                                           // 0x004eb0fa    51
                         mov                ecx, dword ptr [esi]                          // 0x004eb0fb    8b0e
                         call               @ReadBinary__9HairGroupFP6LHFile@12           // 0x004eb0fd    e87ed03500
                         add                esi, 0x04                                     // 0x004eb102    83c604
                         dec                edi                                           // 0x004eb105    4f
                         {disp8} jne        _jmp_addr_0x004eb0ef                          // 0x004eb106    75e7
_jmp_addr_0x004eb108:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb108    8d4c2424
                         call               ?CloseSegment@LHFile@@QAEIXZ                  // 0x004eb10c    e83f2e2d00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb111    8d4c2424
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb115    e8a62a2d00
                         mov.s              ecx, ebx                                      // 0x004eb11a    8bcb
                         call               ?Create@LH3DTexture@@SAPAV1@PAXKKPAUTextureFormat@@@Z // 0x004eb11c    e88fd51200
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb121    8d4c2424
                         call               _jmp_addr_0x007bda20                          // 0x004eb125    e8f6282d00
                         pop                esi                                           // 0x004eb12a    5e
                         pop                ebp                                           // 0x004eb12b    5d
                         pop                edi                                           // 0x004eb12c    5f
                         mov                eax, 0x00000001                               // 0x004eb12d    b801000000
                         pop                ebx                                           // 0x004eb132    5b
                         add                esp, 0x000000c0                               // 0x004eb133    81c4c0000000
                         ret                0x0004                                        // 0x004eb139    c20400
                         nop                                                              // 0x004eb13c    90
                         nop                                                              // 0x004eb13d    90
                         nop                                                              // 0x004eb13e    90
                         nop                                                              // 0x004eb13f    90
                         sub                esp, 0x78                                     // 0x004eb140    83ec78
                         push               esi                                           // 0x004eb143    56
                         mov.s              esi, ecx                                      // 0x004eb144    8bf1
                         push               edi                                           // 0x004eb146    57
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb147    8d4c2414
                         call               ??0LHFile@@QAE@XZ                             // 0x004eb14b    e8c02ff4ff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb150    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x14], 0x008c4d0c            // 0x004eb154    c74424140c4d8c00
                         call               ?ResetData@LHFile@@QAEIXZ                     // 0x004eb15c    e8ff2ff4ff
                         {disp32} mov       edi, dword ptr [esp + 0x00000084]             // 0x004eb161    8bbc2484000000
                         push               edi                                           // 0x004eb168    57
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb169    8d4c2418
                         call               @SetName__6LHFileFPCc@12                      // 0x004eb16d    e81e222d00
                         mov.s              ecx, esi                                      // 0x004eb172    8bce
                         call               _jmp_addr_0x00617dc0                          // 0x004eb174    e847cc1200
                         push               0x0                                           // 0x004eb179    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb17b    8d4c2418
                         call               @Open__14LHReleasedFileF12LH_FILE_MODE@12     // 0x004eb17f    e8ac252d00
                         test               eax, eax                                      // 0x004eb184    85c0
                         {disp8} je         _jmp_addr_0x004eb1a9                          // 0x004eb186    7421
                         push               edi                                           // 0x004eb188    57
                         push               0x009cede0                                    // 0x004eb189    68e0ed9c00
                         call               _jmp_addr_0x00617140                          // 0x004eb18e    e8adbf1200
                         add                esp, 0x08                                     // 0x004eb193    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb196    8d4c2414
                         call               _jmp_addr_0x007bda20                          // 0x004eb19a    e881282d00
                         pop                edi                                           // 0x004eb19f    5f
                         xor.s              eax, eax                                      // 0x004eb1a0    33c0
                         pop                esi                                           // 0x004eb1a2    5e
                         add                esp, 0x78                                     // 0x004eb1a3    83c478
                         ret                0x0004                                        // 0x004eb1a6    c20400
_jmp_addr_0x004eb1a9:    push               0x009c8bb4                                    // 0x004eb1a9    68b48b9c00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb1ae    8d4c2418
                         call               @OpenSegment__6LHFileFPc@12                   // 0x004eb1b2    e8092d2d00
                         test               eax, eax                                      // 0x004eb1b7    85c0
                         {disp8} je         _jmp_addr_0x004eb1e5                          // 0x004eb1b9    742a
                         push               edi                                           // 0x004eb1bb    57
                         push               0x00be00bc                                    // 0x004eb1bc    68bc00be00
                         call               _jmp_addr_0x00617140                          // 0x004eb1c1    e87abf1200
                         add                esp, 0x08                                     // 0x004eb1c6    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb1c9    8d4c2414
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb1cd    e8ee292d00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb1d2    8d4c2414
                         call               _jmp_addr_0x007bda20                          // 0x004eb1d6    e845282d00
                         pop                edi                                           // 0x004eb1db    5f
                         xor.s              eax, eax                                      // 0x004eb1dc    33c0
                         pop                esi                                           // 0x004eb1de    5e
                         add                esp, 0x78                                     // 0x004eb1df    83c478
                         ret                0x0004                                        // 0x004eb1e2    c20400
_jmp_addr_0x004eb1e5:    push               ebx                                           // 0x004eb1e5    53
                         push               0x4                                           // 0x004eb1e6    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x004eb1e8    8d442410
                         push               eax                                           // 0x004eb1ec    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb1ed    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000003            // 0x004eb1f1    c744241403000000
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb1f9    e8c22d2d00
                         {disp32} lea       edi, dword ptr [esi + 0x0000569c]             // 0x004eb1fe    8dbe9c560000
                         mov                ebx, 0x00000008                               // 0x004eb204    bb08000000
_jmp_addr_0x004eb209:    mov                ecx, dword ptr [edi]                          // 0x004eb209    8b0f
                         push               0x4                                           // 0x004eb20b    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x004eb20d    8d542410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x004eb211    894c2410
                         push               edx                                           // 0x004eb215    52
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb216    8d4c2420
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb21a    e8a12d2d00
                         cmp                dword ptr [edi], 0x00                         // 0x004eb21f    833f00
                         {disp8} je         _jmp_addr_0x004eb280                          // 0x004eb222    745c
                         {disp8} mov        eax, dword ptr [edi + -0x20]                  // 0x004eb224    8b47e0
                         push               0x4                                           // 0x004eb227    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004eb229    8d4c2410
                         push               ecx                                           // 0x004eb22d    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb22e    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004eb232    89442414
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb236    e8852d2d00
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x004eb23b    8b5760
                         push               0x4                                           // 0x004eb23e    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004eb240    8d442414
                         push               eax                                           // 0x004eb244    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb245    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004eb249    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb24d    e86e2d2d00
                         {disp8} mov        ecx, dword ptr [edi + 0x20]                   // 0x004eb252    8b4f20
                         push               0x4                                           // 0x004eb255    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x004eb257    8d542410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x004eb25b    894c2410
                         push               edx                                           // 0x004eb25f    52
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb260    8d4c2420
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb264    e8572d2d00
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x004eb269    8b4740
                         push               0x4                                           // 0x004eb26c    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004eb26e    8d4c2410
                         push               ecx                                           // 0x004eb272    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb273    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004eb277    89442414
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb27b    e8402d2d00
_jmp_addr_0x004eb280:    add                edi, 0x04                                     // 0x004eb280    83c704
                         dec                ebx                                           // 0x004eb283    4b
                         {disp8} jne        _jmp_addr_0x004eb209                          // 0x004eb284    7583
                         {disp32} mov       edx, dword ptr [esi + 0x00005430]             // 0x004eb286    8b9630540000
                         push               0x4                                           // 0x004eb28c    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004eb28e    8d442414
                         push               eax                                           // 0x004eb292    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb293    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004eb297    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb29b    e8202d2d00
                         {disp32} mov       eax, dword ptr [esi + 0x00005430]             // 0x004eb2a0    8b8630540000
                         test               eax, eax                                      // 0x004eb2a6    85c0
                         {disp8} je         _jmp_addr_0x004eb2ba                          // 0x004eb2a8    7410
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb2aa    8d4c2418
                         push               ecx                                           // 0x004eb2ae    51
                         {disp32} lea       ecx, dword ptr [esi + 0x00005408]             // 0x004eb2af    8d8e08540000
                         call               _jmp_addr_0x00867b50                          // 0x004eb2b5    e896c83700
_jmp_addr_0x004eb2ba:    {disp32} mov       edx, dword ptr [esi + 0x0000545c]             // 0x004eb2ba    8b965c540000
                         push               0x4                                           // 0x004eb2c0    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004eb2c2    8d442414
                         push               eax                                           // 0x004eb2c6    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb2c7    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004eb2cb    89542418
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb2cf    e8ec2c2d00
                         {disp32} mov       eax, dword ptr [esi + 0x0000545c]             // 0x004eb2d4    8b865c540000
                         test               eax, eax                                      // 0x004eb2da    85c0
                         {disp8} je         _jmp_addr_0x004eb2ee                          // 0x004eb2dc    7410
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb2de    8d4c2418
                         push               ecx                                           // 0x004eb2e2    51
                         {disp32} lea       ecx, dword ptr [esi + 0x00005434]             // 0x004eb2e3    8d8e34540000
                         call               _jmp_addr_0x00867b50                          // 0x004eb2e9    e862c83700
_jmp_addr_0x004eb2ee:    {disp32} mov       edx, dword ptr [esi + 0x00005474]             // 0x004eb2ee    8b9674540000
                         push               ebp                                           // 0x004eb2f4    55
                         push               0x4                                           // 0x004eb2f5    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb2f7    8d442418
                         push               eax                                           // 0x004eb2fb    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb2fc    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x004eb300    8954241c
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb304    e8b72c2d00
                         {disp32} lea       edi, dword ptr [esi + 0x00005528]             // 0x004eb309    8dbe28550000
                         {disp32} lea       ebx, dword ptr [esi + 0x00005478]             // 0x004eb30f    8d9e78540000
                         mov                ebp, 0x00000004                               // 0x004eb315    bd04000000
_jmp_addr_0x004eb31a:    {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eb31a    8d4c241c
                         push               ecx                                           // 0x004eb31e    51
                         mov.s              ecx, ebx                                      // 0x004eb31f    8bcb
                         call               _jmp_addr_0x00867b50                          // 0x004eb321    e82ac83700
                         {disp8} mov        edx, dword ptr [edi + -0x10]                  // 0x004eb326    8b57f0
                         push               0x4                                           // 0x004eb329    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb32b    8d442418
                         push               eax                                           // 0x004eb32f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb330    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x004eb334    8954241c
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb338    e8832c2d00
                         mov                ecx, dword ptr [edi]                          // 0x004eb33d    8b0f
                         push               0x4                                           // 0x004eb33f    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x004eb341    8d542414
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x004eb345    894c2414
                         push               edx                                           // 0x004eb349    52
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004eb34a    8d4c2424
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb34e    e86d2c2d00
                         add                edi, 0x04                                     // 0x004eb353    83c704
                         add                ebx, 0x28                                     // 0x004eb356    83c328
                         dec                ebp                                           // 0x004eb359    4d
                         {disp8} jne        _jmp_addr_0x004eb31a                          // 0x004eb35a    75be
                         {disp32} lea       edi, dword ptr [esi + 0x00005664]             // 0x004eb35c    8dbe64560000
                         mov                ebx, 0x00000003                               // 0x004eb362    bb03000000
                         pop                ebp                                           // 0x004eb367    5d
_jmp_addr_0x004eb368:    {disp8} mov        eax, dword ptr [edi + -0x0c]                  // 0x004eb368    8b47f4
                         push               0x4                                           // 0x004eb36b    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004eb36d    8d4c2414
                         push               ecx                                           // 0x004eb371    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb372    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x004eb376    89442418
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb37a    e8412c2d00
                         mov                edx, dword ptr [edi]                          // 0x004eb37f    8b17
                         push               0x4                                           // 0x004eb381    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x004eb383    8d442410
                         push               eax                                           // 0x004eb387    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb388    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x004eb38c    89542414
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb390    e82b2c2d00
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                   // 0x004eb395    8b4f0c
                         push               0x4                                           // 0x004eb398    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb39a    8d542418
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x004eb39e    894c2418
                         push               edx                                           // 0x004eb3a2    52
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb3a3    8d4c2420
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb3a7    e8142c2d00
                         add                edi, 0x04                                     // 0x004eb3ac    83c704
                         dec                ebx                                           // 0x004eb3af    4b
                         {disp8} jne        _jmp_addr_0x004eb368                          // 0x004eb3b0    75b6
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]             // 0x004eb3b2    8b8600480000
                         push               0x4                                           // 0x004eb3b8    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb3ba    8d4c2418
                         push               ecx                                           // 0x004eb3be    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x004eb3bf    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004eb3c3    8944241c
                         call               _jmp_addr_0x007bdfc0                          // 0x004eb3c7    e8f42b2d00
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]             // 0x004eb3cc    8b8600480000
                         xor.s              edi, edi                                      // 0x004eb3d2    33ff
                         test               eax, eax                                      // 0x004eb3d4    85c0
                         {disp8} jle        _jmp_addr_0x004eb3f8                          // 0x004eb3d6    7e20
                         {disp32} lea       ebx, dword ptr [esi + 0x00004804]             // 0x004eb3d8    8d9e04480000
_jmp_addr_0x004eb3de:    mov                ecx, dword ptr [ebx]                          // 0x004eb3de    8b0b
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb3e0    8d542418
                         push               edx                                           // 0x004eb3e4    52
                         call               _jmp_addr_0x00848040                          // 0x004eb3e5    e856cc3500
                         {disp32} mov       eax, dword ptr [esi + 0x00004800]             // 0x004eb3ea    8b8600480000
                         inc                edi                                           // 0x004eb3f0    47
                         add                ebx, 0x04                                     // 0x004eb3f1    83c304
                         cmp.s              edi, eax                                      // 0x004eb3f4    3bf8
                         {disp8} jl         _jmp_addr_0x004eb3de                          // 0x004eb3f6    7ce6
_jmp_addr_0x004eb3f8:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb3f8    8d4c2418
                         call               ?CloseSegment@LHFile@@QAEIXZ                  // 0x004eb3fc    e84f2b2d00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb401    8d4c2418
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb405    e8b6272d00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb40a    8d4c2418
                         call               _jmp_addr_0x007bda20                          // 0x004eb40e    e80d262d00
                         pop                ebx                                           // 0x004eb413    5b
                         pop                edi                                           // 0x004eb414    5f
                         mov                eax, 0x00000001                               // 0x004eb415    b801000000
                         pop                esi                                           // 0x004eb41a    5e
                         add                esp, 0x78                                     // 0x004eb41b    83c478
                         ret                0x0004                                        // 0x004eb41e    c20400
                         nop                                                              // 0x004eb421    90
                         nop                                                              // 0x004eb422    90
                         nop                                                              // 0x004eb423    90
                         nop                                                              // 0x004eb424    90
                         nop                                                              // 0x004eb425    90
                         nop                                                              // 0x004eb426    90
                         nop                                                              // 0x004eb427    90
                         nop                                                              // 0x004eb428    90
                         nop                                                              // 0x004eb429    90
                         nop                                                              // 0x004eb42a    90
                         nop                                                              // 0x004eb42b    90
                         nop                                                              // 0x004eb42c    90
                         nop                                                              // 0x004eb42d    90
                         nop                                                              // 0x004eb42e    90
                         nop                                                              // 0x004eb42f    90
_jmp_addr_0x004eb430:    sub                esp, 0x000001a4                               // 0x004eb430    81eca4010000
                         {disp32} mov       eax, dword ptr [esp + 0x000001a8]             // 0x004eb436    8b8424a8010000
                         push               ebx                                           // 0x004eb43d    53
                         push               ebp                                           // 0x004eb43e    55
                         push               esi                                           // 0x004eb43f    56
                         push               edi                                           // 0x004eb440    57
                         push               eax                                           // 0x004eb441    50
                         mov.s              ebp, ecx                                      // 0x004eb442    8be9
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x004eb444    8d4c2474
                         push               0x00be0164                                    // 0x004eb448    686401be00
                         push               ecx                                           // 0x004eb44d    51
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x004eb44e    c744242800000000
                         call               _sprintf                                      // 0x004eb456    e877a32d00
                         add                esp, 0x0c                                     // 0x004eb45b    83c40c
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x004eb45e    8d542470
                         {disp8} lea        ebx, dword ptr [ebp + 0x0c]                   // 0x004eb462    8d5d0c
                         push               edx                                           // 0x004eb465    52
                         mov.s              ecx, ebx                                      // 0x004eb466    8bcb
                         call               @SetName__6LHFileFPCc@12                      // 0x004eb468    e8231f2d00
                         mov                eax, dword ptr [ebx]                          // 0x004eb46d    8b03
                         push               0x2                                           // 0x004eb46f    6a02
                         mov.s              ecx, ebx                                      // 0x004eb471    8bcb
                         call               dword ptr [eax]                               // 0x004eb473    ff10
                         test               eax, eax                                      // 0x004eb475    85c0
                         {disp8} je         _jmp_addr_0x004eb49a                          // 0x004eb477    7421
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x004eb479    8d4c2470
                         push               ecx                                           // 0x004eb47d    51
                         push               0x00be014c                                    // 0x004eb47e    684c01be00
                         call               _jmp_addr_0x00617140                          // 0x004eb483    e8b8bc1200
                         add                esp, 0x08                                     // 0x004eb488    83c408
                         pop                edi                                           // 0x004eb48b    5f
                         pop                esi                                           // 0x004eb48c    5e
                         pop                ebp                                           // 0x004eb48d    5d
                         xor.s              eax, eax                                      // 0x004eb48e    33c0
                         pop                ebx                                           // 0x004eb490    5b
                         add                esp, 0x000001a4                               // 0x004eb491    81c4a4010000
                         ret                0x0008                                        // 0x004eb497    c20800
_jmp_addr_0x004eb49a:    push               0x009c8bb4                                    // 0x004eb49a    68b48b9c00
                         mov.s              ecx, ebx                                      // 0x004eb49f    8bcb
                         call               @OpenSegment__6LHFileFPc@12                   // 0x004eb4a1    e81a2a2d00
                         test               eax, eax                                      // 0x004eb4a6    85c0
                         {disp8} je         _jmp_addr_0x004eb4b6                          // 0x004eb4a8    740c
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x004eb4aa    8d542470
                         push               edx                                           // 0x004eb4ae    52
                         push               0x00be00bc                                    // 0x004eb4af    68bc00be00
                         {disp8} jmp        _jmp_addr_0x004eb4fc                          // 0x004eb4b4    eb46
_jmp_addr_0x004eb4b6:    push               -0x1                                          // 0x004eb4b6    6aff
                         push               0x4                                           // 0x004eb4b8    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x004eb4ba    8d442420
                         push               eax                                           // 0x004eb4be    50
                         mov.s              ecx, ebx                                      // 0x004eb4bf    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb4c1    e87a2b2d00
                         cmp                dword ptr [esp + 0x18], 0x15                  // 0x004eb4c6    837c241815
                         {disp8} jle        _jmp_addr_0x004eb4d9                          // 0x004eb4cb    7e0c
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x004eb4cd    8d4c2470
                         push               ecx                                           // 0x004eb4d1    51
                         push               0x00be0130                                    // 0x004eb4d2    683001be00
                         {disp8} jmp        _jmp_addr_0x004eb4fc                          // 0x004eb4d7    eb23
_jmp_addr_0x004eb4d9:    push               -0x1                                          // 0x004eb4d9    6aff
                         push               0x4                                           // 0x004eb4db    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x004eb4dd    8d542430
                         push               edx                                           // 0x004eb4e1    52
                         mov.s              ecx, ebx                                      // 0x004eb4e2    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb4e4    e8572b2d00
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004eb4e9    8b442428
                         cmp                eax, 0x1b                                     // 0x004eb4ed    83f81b
                         {disp8} jle        _jmp_addr_0x004eb51a                          // 0x004eb4f0    7e28
                         {disp8} lea        eax, dword ptr [esp + 0x70]                   // 0x004eb4f2    8d442470
                         push               eax                                           // 0x004eb4f6    50
                         push               0x009ced78                                    // 0x004eb4f7    6878ed9c00
_jmp_addr_0x004eb4fc:    call               _jmp_addr_0x00617140                          // 0x004eb4fc    e83fbc1200
                         add                esp, 0x08                                     // 0x004eb501    83c408
                         mov.s              ecx, ebx                                      // 0x004eb504    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb506    e8b5262d00
                         pop                edi                                           // 0x004eb50b    5f
                         pop                esi                                           // 0x004eb50c    5e
                         pop                ebp                                           // 0x004eb50d    5d
                         xor.s              eax, eax                                      // 0x004eb50e    33c0
                         pop                ebx                                           // 0x004eb510    5b
                         add                esp, 0x000001a4                               // 0x004eb511    81c4a4010000
                         ret                0x0008                                        // 0x004eb517    c20800
_jmp_addr_0x004eb51a:    {disp32} jge       _jmp_addr_0x004eb5d1                          // 0x004eb51a    0f8db1000000
                         push               eax                                           // 0x004eb520    50
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x004eb521    8d4c2434
                         push               0x00be011c                                    // 0x004eb525    681c01be00
                         push               ecx                                           // 0x004eb52a    51
                         call               _sprintf                                      // 0x004eb52b    e8a2a22d00
                         push               0x00000137                                    // 0x004eb530    6837010000
                         push               0x00be0080                                    // 0x004eb535    688000be00
                         push               0x00005468                                    // 0x004eb53a    6868540000
                         call               ___nw__FUl                                    // 0x004eb53f    e84c022f00
                         add                esp, 0x18                                     // 0x004eb544    83c418
                         test               eax, eax                                      // 0x004eb547    85c0
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004eb549    8944241c
                         {disp8} je         _jmp_addr_0x004eb58d                          // 0x004eb54d    743e
                         add                eax, 0x08                                     // 0x004eb54f    83c008
                         mov                ecx, 0x00000018                               // 0x004eb552    b918000000
_jmp_addr_0x004eb557:    mov                byte ptr [eax], 0x00                          // 0x004eb557    c60000
                         add                eax, 0x20                                     // 0x004eb55a    83c020
                         dec                ecx                                           // 0x004eb55d    49
                         {disp8} jne        _jmp_addr_0x004eb557                          // 0x004eb55e    75f7
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004eb560    8b54241c
                         {disp32} lea       esi, dword ptr [edx + 0x0000030c]             // 0x004eb564    8db20c030000
                         mov                edi, 0x00000018                               // 0x004eb56a    bf18000000
_jmp_addr_0x004eb56f:    push               0x0046d5e0                                    // 0x004eb56f    68e0d54600
                         push               0x18                                          // 0x004eb574    6a18
                         push               0x20                                          // 0x004eb576    6a20
                         push               esi                                           // 0x004eb578    56
                         call               _jmp_addr_0x00401140                          // 0x004eb579    e8c25bf1ff
                         add                esi, 0x00000364                               // 0x004eb57e    81c664030000
                         dec                edi                                           // 0x004eb584    4f
                         {disp8} jne        _jmp_addr_0x004eb56f                          // 0x004eb585    75e8
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x004eb587    8b74241c
                         {disp8} jmp        _jmp_addr_0x004eb58f                          // 0x004eb58b    eb02
_jmp_addr_0x004eb58d:    xor.s              esi, esi                                      // 0x004eb58d    33f6
_jmp_addr_0x004eb58f:    {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x004eb58f    8d442430
                         push               eax                                           // 0x004eb593    50
                         mov.s              ecx, esi                                      // 0x004eb594    8bce
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x004eb596    89742420
                         call               @Read__8AnimInfoFPc@12                        // 0x004eb59a    e81195fdff
                         test               eax, eax                                      // 0x004eb59f    85c0
                         {disp8} jne        _jmp_addr_0x004eb5d1                          // 0x004eb5a1    752e
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb5a3    8d4c2430
                         push               ecx                                           // 0x004eb5a7    51
                         push               0x009ced54                                    // 0x004eb5a8    6854ed9c00
                         call               _jmp_addr_0x00617140                          // 0x004eb5ad    e88ebb1200
                         push               esi                                           // 0x004eb5b2    56
                         call               ??3@YAXPAX@Z                                  // 0x004eb5b3    e8e0382c00
                         add                esp, 0x0c                                     // 0x004eb5b8    83c40c
                         mov.s              ecx, ebx                                      // 0x004eb5bb    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb5bd    e8fe252d00
                         pop                edi                                           // 0x004eb5c2    5f
                         pop                esi                                           // 0x004eb5c3    5e
                         pop                ebp                                           // 0x004eb5c4    5d
                         xor.s              eax, eax                                      // 0x004eb5c5    33c0
                         pop                ebx                                           // 0x004eb5c7    5b
                         add                esp, 0x000001a4                               // 0x004eb5c8    81c4a4010000
                         ret                0x0008                                        // 0x004eb5ce    c20800
_jmp_addr_0x004eb5d1:    push               0x1b                                          // 0x004eb5d1    6a1b
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x004eb5d3    8d542434
                         push               0x00be011c                                    // 0x004eb5d7    681c01be00
                         push               edx                                           // 0x004eb5dc    52
                         call               _sprintf                                      // 0x004eb5dd    e8f0a12d00
                         push               0x00000142                                    // 0x004eb5e2    6842010000
                         push               0x00be0080                                    // 0x004eb5e7    688000be00
                         push               0x00005468                                    // 0x004eb5ec    6868540000
                         call               ___nw__FUl                                    // 0x004eb5f1    e89a012f00
                         add                esp, 0x18                                     // 0x004eb5f6    83c418
                         test               eax, eax                                      // 0x004eb5f9    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004eb5fb    89442410
                         {disp8} je         _jmp_addr_0x004eb63f                          // 0x004eb5ff    743e
                         add                eax, 0x08                                     // 0x004eb601    83c008
                         mov                ecx, 0x00000018                               // 0x004eb604    b918000000
_jmp_addr_0x004eb609:    mov                byte ptr [eax], 0x00                          // 0x004eb609    c60000
                         add                eax, 0x20                                     // 0x004eb60c    83c020
                         dec                ecx                                           // 0x004eb60f    49
                         {disp8} jne        _jmp_addr_0x004eb609                          // 0x004eb610    75f7
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb612    8b442410
                         {disp32} lea       esi, dword ptr [eax + 0x0000030c]             // 0x004eb616    8db00c030000
                         mov                edi, 0x00000018                               // 0x004eb61c    bf18000000
_jmp_addr_0x004eb621:    push               0x0046d5e0                                    // 0x004eb621    68e0d54600
                         push               0x18                                          // 0x004eb626    6a18
                         push               0x20                                          // 0x004eb628    6a20
                         push               esi                                           // 0x004eb62a    56
                         call               _jmp_addr_0x00401140                          // 0x004eb62b    e8105bf1ff
                         add                esi, 0x00000364                               // 0x004eb630    81c664030000
                         dec                edi                                           // 0x004eb636    4f
                         {disp8} jne        _jmp_addr_0x004eb621                          // 0x004eb637    75e8
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004eb639    8b742410
                         {disp8} jmp        _jmp_addr_0x004eb641                          // 0x004eb63d    eb02
_jmp_addr_0x004eb63f:    xor.s              esi, esi                                      // 0x004eb63f    33f6
_jmp_addr_0x004eb641:    {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x004eb641    8d4c2430
                         push               ecx                                           // 0x004eb645    51
                         mov.s              ecx, esi                                      // 0x004eb646    8bce
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x004eb648    8974242c
                         call               @Read__8AnimInfoFPc@12                        // 0x004eb64c    e85f94fdff
                         test               eax, eax                                      // 0x004eb651    85c0
                         {disp8} jne        _jmp_addr_0x004eb68d                          // 0x004eb653    7538
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x004eb655    8d542430
                         push               edx                                           // 0x004eb659    52
                         push               0x009ced54                                    // 0x004eb65a    6854ed9c00
                         call               _jmp_addr_0x00617140                          // 0x004eb65f    e8dcba1200
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x004eb664    8b442424
                         push               eax                                           // 0x004eb668    50
                         call               ??3@YAXPAX@Z                                  // 0x004eb669    e82a382c00
                         push               esi                                           // 0x004eb66e    56
                         call               ??3@YAXPAX@Z                                  // 0x004eb66f    e824382c00
                         add                esp, 0x10                                     // 0x004eb674    83c410
                         mov.s              ecx, ebx                                      // 0x004eb677    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb679    e842252d00
                         pop                edi                                           // 0x004eb67e    5f
                         pop                esi                                           // 0x004eb67f    5e
                         pop                ebp                                           // 0x004eb680    5d
                         xor.s              eax, eax                                      // 0x004eb681    33c0
                         pop                ebx                                           // 0x004eb683    5b
                         add                esp, 0x000001a4                               // 0x004eb684    81c4a4010000
                         ret                0x0008                                        // 0x004eb68a    c20800
_jmp_addr_0x004eb68d:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x004eb68d    8b7c241c
                         test               edi, edi                                      // 0x004eb691    85ff
                         mov.s              eax, edi                                      // 0x004eb693    8bc7
                         {disp8} jne        _jmp_addr_0x004eb699                          // 0x004eb695    7502
                         mov.s              eax, esi                                      // 0x004eb697    8bc6
_jmp_addr_0x004eb699:    push               esi                                           // 0x004eb699    56
                         push               eax                                           // 0x004eb69a    50
                         push               ebx                                           // 0x004eb69b    53
                         mov.s              ecx, ebp                                      // 0x004eb69c    8bcd
                         call               @ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo@20                          // 0x004eb69e    e83dc41200
                         test               eax, eax                                      // 0x004eb6a3    85c0
                         {disp8} jne        _jmp_addr_0x004eb6cc                          // 0x004eb6a5    7525
                         push               edi                                           // 0x004eb6a7    57
                         call               ??3@YAXPAX@Z                                  // 0x004eb6a8    e8eb372c00
                         push               esi                                           // 0x004eb6ad    56
                         call               ??3@YAXPAX@Z                                  // 0x004eb6ae    e8e5372c00
                         add                esp, 0x08                                     // 0x004eb6b3    83c408
                         mov.s              ecx, ebx                                      // 0x004eb6b6    8bcb
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004eb6b8    e803252d00
                         pop                edi                                           // 0x004eb6bd    5f
                         pop                esi                                           // 0x004eb6be    5e
                         pop                ebp                                           // 0x004eb6bf    5d
                         xor.s              eax, eax                                      // 0x004eb6c0    33c0
                         pop                ebx                                           // 0x004eb6c2    5b
                         add                esp, 0x000001a4                               // 0x004eb6c3    81c4a4010000
                         ret                0x0008                                        // 0x004eb6c9    c20800
_jmp_addr_0x004eb6cc:    push               -0x1                                          // 0x004eb6cc    6aff
                         push               0x4                                           // 0x004eb6ce    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb6d0    8d4c2418
                         push               ecx                                           // 0x004eb6d4    51
                         mov.s              ecx, ebx                                      // 0x004eb6d5    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb6d7    e864292d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb6dc    8b542410
                         push               -0x1                                          // 0x004eb6e0    6aff
                         push               0x4                                           // 0x004eb6e2    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb6e4    8d442418
                         push               eax                                           // 0x004eb6e8    50
                         mov.s              ecx, ebx                                      // 0x004eb6e9    8bcb
                         {disp32} mov       dword ptr [ebp + 0x000051c8], edx             // 0x004eb6eb    8995c8510000
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb6f1    e84a292d00
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004eb6f6    8b742418
                         cmp                esi, 0x02                                     // 0x004eb6fa    83fe02
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb6fd    8b4c2410
                         {disp32} mov       dword ptr [ebp + 0x000051cc], ecx             // 0x004eb701    898dcc510000
                         {disp8} jle        _jmp_addr_0x004eb73d                          // 0x004eb707    7e34
                         push               -0x1                                          // 0x004eb709    6aff
                         push               0x4                                           // 0x004eb70b    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb70d    8d542418
                         push               edx                                           // 0x004eb711    52
                         mov.s              ecx, ebx                                      // 0x004eb712    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb714    e827292d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb719    8b442410
                         push               -0x1                                          // 0x004eb71d    6aff
                         push               0x4                                           // 0x004eb71f    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb721    8d4c2418
                         push               ecx                                           // 0x004eb725    51
                         mov.s              ecx, ebx                                      // 0x004eb726    8bcb
                         {disp32} mov       dword ptr [ebp + 0x000051c4], eax             // 0x004eb728    8985c4510000
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb72e    e80d292d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb733    8b542410
                         {disp32} mov       dword ptr [ebp + 0x000051c0], edx             // 0x004eb737    8995c0510000
_jmp_addr_0x004eb73d:    push               -0x1                                          // 0x004eb73d    6aff
                         push               0x4                                           // 0x004eb73f    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb741    8d442418
                         push               eax                                           // 0x004eb745    50
                         mov.s              ecx, ebx                                      // 0x004eb746    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb748    e8f3282d00
                         cmp                esi, 0x0b                                     // 0x004eb74d    83fe0b
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb750    8b4c2410
                         {disp32} mov       dword ptr [ebp + 0x000051b8], ecx             // 0x004eb754    898db8510000
                         {disp8} jle        _jmp_addr_0x004eb776                          // 0x004eb75a    7e1a
                         push               -0x1                                          // 0x004eb75c    6aff
                         push               0x4                                           // 0x004eb75e    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb760    8d542418
                         push               edx                                           // 0x004eb764    52
                         mov.s              ecx, ebx                                      // 0x004eb765    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb767    e8d4282d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb76c    8b442410
                         {disp32} mov       dword ptr [ebp + 0x000051bc], eax             // 0x004eb770    8985bc510000
_jmp_addr_0x004eb776:    push               -0x1                                          // 0x004eb776    6aff
                         push               0x4                                           // 0x004eb778    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb77a    8d4c2418
                         push               ecx                                           // 0x004eb77e    51
                         mov.s              ecx, ebx                                      // 0x004eb77f    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb781    e8ba282d00
                         cmp                esi, 0x04                                     // 0x004eb786    83fe04
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb789    8b542410
                         {disp32} mov       dword ptr [ebp + 0x000051d8], edx             // 0x004eb78d    8995d8510000
                         {disp8} jle        _jmp_addr_0x004eb7c9                          // 0x004eb793    7e34
                         push               -0x1                                          // 0x004eb795    6aff
                         push               0x4                                           // 0x004eb797    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb799    8d442418
                         push               eax                                           // 0x004eb79d    50
                         mov.s              ecx, ebx                                      // 0x004eb79e    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb7a0    e89b282d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb7a5    8b4c2410
                         push               -0x1                                          // 0x004eb7a9    6aff
                         push               0x4                                           // 0x004eb7ab    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb7ad    8d542418
                         {disp32} mov       dword ptr [ebp + 0x000051d4], ecx             // 0x004eb7b1    898dd4510000
                         push               edx                                           // 0x004eb7b7    52
                         mov.s              ecx, ebx                                      // 0x004eb7b8    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb7ba    e881282d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb7bf    8b442410
                         {disp32} mov       dword ptr [ebp + 0x000051d0], eax             // 0x004eb7c3    8985d0510000
_jmp_addr_0x004eb7c9:    push               -0x1                                          // 0x004eb7c9    6aff
                         push               0x4                                           // 0x004eb7cb    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb7cd    8d4c2418
                         push               ecx                                           // 0x004eb7d1    51
                         mov.s              ecx, ebx                                      // 0x004eb7d2    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb7d4    e867282d00
                         cmp                esi, 0x08                                     // 0x004eb7d9    83fe08
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb7dc    8b542410
                         {disp32} mov       dword ptr [ebp + 0x00004a34], edx             // 0x004eb7e0    8995344a0000
                         {disp8} jle        _jmp_addr_0x004eb81c                          // 0x004eb7e6    7e34
                         push               -0x1                                          // 0x004eb7e8    6aff
                         push               0x4                                           // 0x004eb7ea    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb7ec    8d442418
                         push               eax                                           // 0x004eb7f0    50
                         mov.s              ecx, ebx                                      // 0x004eb7f1    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb7f3    e848282d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb7f8    8b4c2410
                         push               -0x1                                          // 0x004eb7fc    6aff
                         push               0x4                                           // 0x004eb7fe    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb800    8d542418
                         {disp32} mov       dword ptr [ebp + 0x00004a38], ecx             // 0x004eb804    898d384a0000
                         push               edx                                           // 0x004eb80a    52
                         mov.s              ecx, ebx                                      // 0x004eb80b    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb80d    e82e282d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb812    8b442410
                         {disp32} mov       dword ptr [ebp + 0x00004a3c], eax             // 0x004eb816    89853c4a0000
_jmp_addr_0x004eb81c:    cmp                esi, 0x09                                     // 0x004eb81c    83fe09
                         {disp8} jle        _jmp_addr_0x004eb83b                          // 0x004eb81f    7e1a
                         push               -0x1                                          // 0x004eb821    6aff
                         push               0x4                                           // 0x004eb823    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb825    8d4c2418
                         push               ecx                                           // 0x004eb829    51
                         mov.s              ecx, ebx                                      // 0x004eb82a    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb82c    e80f282d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb831    8b542410
                         {disp32} mov       dword ptr [ebp + 0x00004a80], edx             // 0x004eb835    8995804a0000
_jmp_addr_0x004eb83b:    push               -0x1                                          // 0x004eb83b    6aff
                         push               0x4                                           // 0x004eb83d    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb83f    8d442418
                         push               eax                                           // 0x004eb843    50
                         mov.s              ecx, ebx                                      // 0x004eb844    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb846    e8f5272d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb84b    8b4c2410
                         push               -0x1                                          // 0x004eb84f    6aff
                         push               0x4                                           // 0x004eb851    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb853    8d542418
                         {disp32} mov       dword ptr [ebp + 0x00004a84], ecx             // 0x004eb857    898d844a0000
                         push               edx                                           // 0x004eb85d    52
                         mov.s              ecx, ebx                                      // 0x004eb85e    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb860    e8db272d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb865    8b442410
                         push               -0x1                                          // 0x004eb869    6aff
                         push               0x4                                           // 0x004eb86b    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb86d    8d4c2418
                         push               ecx                                           // 0x004eb871    51
                         mov.s              ecx, ebx                                      // 0x004eb872    8bcb
                         {disp32} mov       dword ptr [ebp + 0x00004908], eax             // 0x004eb874    898508490000
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb87a    e8c1272d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb87f    8b542410
                         push               -0x1                                          // 0x004eb883    6aff
                         push               0x4                                           // 0x004eb885    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb887    8d442418
                         push               eax                                           // 0x004eb88b    50
                         mov.s              ecx, ebx                                      // 0x004eb88c    8bcb
                         {disp32} mov       dword ptr [ebp + 0x00004960], edx             // 0x004eb88e    899560490000
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb894    e8a7272d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb899    8b4c2410
                         push               -0x1                                          // 0x004eb89d    6aff
                         push               0x4                                           // 0x004eb89f    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb8a1    8d542418
                         {disp32} mov       dword ptr [ebp + 0x00004964], ecx             // 0x004eb8a5    898d64490000
                         push               edx                                           // 0x004eb8ab    52
                         mov.s              ecx, ebx                                      // 0x004eb8ac    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb8ae    e88d272d00
                         cmp                esi, 0x0f                                     // 0x004eb8b3    83fe0f
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb8b6    8b442410
                         {disp32} mov       dword ptr [ebp + 0x00004a40], eax             // 0x004eb8ba    8985404a0000
                         {disp8} jle        _jmp_addr_0x004eb8dc                          // 0x004eb8c0    7e1a
                         push               -0x1                                          // 0x004eb8c2    6aff
                         push               0x4                                           // 0x004eb8c4    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb8c6    8d4c2418
                         push               ecx                                           // 0x004eb8ca    51
                         mov.s              ecx, ebx                                      // 0x004eb8cb    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb8cd    e86e272d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb8d2    8b542410
                         {disp32} mov       dword ptr [ebp + 0x00004a8c], edx             // 0x004eb8d6    89958c4a0000
_jmp_addr_0x004eb8dc:    cmp                esi, 0x07                                     // 0x004eb8dc    83fe07
                         {disp8} jle        _jmp_addr_0x004eb925                          // 0x004eb8df    7e44
                         push               -0x1                                          // 0x004eb8e1    6aff
                         push               0x4                                           // 0x004eb8e3    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb8e5    8d442418
                         push               eax                                           // 0x004eb8e9    50
                         mov.s              ecx, ebx                                      // 0x004eb8ea    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb8ec    e84f272d00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004eb8f1    8b4c2410
                         push               -0x1                                          // 0x004eb8f5    6aff
                         push               0x4                                           // 0x004eb8f7    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eb8f9    8d542418
                         {disp32} mov       dword ptr [ebp + 0x00004a88], ecx             // 0x004eb8fd    898d884a0000
                         push               edx                                           // 0x004eb903    52
                         mov.s              ecx, ebx                                      // 0x004eb904    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb906    e835272d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb90b    8b442410
                         test               eax, eax                                      // 0x004eb90f    85c0
                         {disp32} mov       dword ptr [ebp + 0x00005430], eax             // 0x004eb911    898530540000
                         {disp8} je         _jmp_addr_0x004eb925                          // 0x004eb917    740c
                         push               ebx                                           // 0x004eb919    53
                         {disp32} lea       ecx, dword ptr [ebp + 0x00005408]             // 0x004eb91a    8d8d08540000
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eb920    e8fbc23700
_jmp_addr_0x004eb925:    cmp                esi, 0x11                                     // 0x004eb925    83fe11
                         {disp8} jle        _jmp_addr_0x004eb954                          // 0x004eb928    7e2a
                         push               -0x1                                          // 0x004eb92a    6aff
                         push               0x4                                           // 0x004eb92c    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004eb92e    8d442418
                         push               eax                                           // 0x004eb932    50
                         mov.s              ecx, ebx                                      // 0x004eb933    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb935    e806272d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb93a    8b442410
                         test               eax, eax                                      // 0x004eb93e    85c0
                         {disp32} mov       dword ptr [ebp + 0x0000545c], eax             // 0x004eb940    89855c540000
                         {disp8} je         _jmp_addr_0x004eb954                          // 0x004eb946    740c
                         push               ebx                                           // 0x004eb948    53
                         {disp32} lea       ecx, dword ptr [ebp + 0x00005434]             // 0x004eb949    8d8d34540000
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eb94f    e8ccc23700
_jmp_addr_0x004eb954:    cmp                esi, 0x0d                                     // 0x004eb954    83fe0d
                         {disp32} jle       _jmp_addr_0x004eba26                          // 0x004eb957    0f8ec9000000
                         push               -0x1                                          // 0x004eb95d    6aff
                         push               0x4                                           // 0x004eb95f    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004eb961    8d4c2418
                         push               ecx                                           // 0x004eb965    51
                         mov.s              ecx, ebx                                      // 0x004eb966    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb968    e8d3262d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004eb96d    8b542410
                         {disp32} mov       dword ptr [ebp + 0x00005474], edx             // 0x004eb971    899574540000
                         {disp32} lea       edi, dword ptr [ebp + 0x00005528]             // 0x004eb977    8dbd28550000
                         {disp32} lea       esi, dword ptr [ebp + 0x00005478]             // 0x004eb97d    8db578540000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000004            // 0x004eb983    c744241004000000
_jmp_addr_0x004eb98b:    push               ebx                                           // 0x004eb98b    53
                         mov.s              ecx, esi                                      // 0x004eb98c    8bce
                         call               @ReadBinary__13MeshIntersectFP6LHFile@12      // 0x004eb98e    e88dc23700
                         push               -0x1                                          // 0x004eb993    6aff
                         push               0x4                                           // 0x004eb995    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x004eb997    8d442428
                         push               eax                                           // 0x004eb99b    50
                         mov.s              ecx, ebx                                      // 0x004eb99c    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb99e    e89d262d00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004eb9a3    8b4c2420
                         push               -0x1                                          // 0x004eb9a7    6aff
                         push               0x4                                           // 0x004eb9a9    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x004eb9ab    8d54241c
                         {disp8} mov        dword ptr [edi + -0x10], ecx                  // 0x004eb9af    894ff0
                         push               edx                                           // 0x004eb9b2    52
                         mov.s              ecx, ebx                                      // 0x004eb9b3    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb9b5    e886262d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004eb9ba    8b442414
                         mov                dword ptr [edi], eax                          // 0x004eb9be    8907
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eb9c0    8b442410
                         add                edi, 0x04                                     // 0x004eb9c4    83c704
                         add                esi, 0x28                                     // 0x004eb9c7    83c628
                         dec                eax                                           // 0x004eb9ca    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004eb9cb    89442410
                         {disp8} jne        _jmp_addr_0x004eb98b                          // 0x004eb9cf    75ba
                         {disp32} lea       edi, dword ptr [ebp + 0x00005664]             // 0x004eb9d1    8dbd64560000
                         mov                esi, 0x00000003                               // 0x004eb9d7    be03000000
_jmp_addr_0x004eb9dc:    push               -0x1                                          // 0x004eb9dc    6aff
                         push               0x4                                           // 0x004eb9de    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eb9e0    8d4c241c
                         push               ecx                                           // 0x004eb9e4    51
                         mov.s              ecx, ebx                                      // 0x004eb9e5    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb9e7    e854262d00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004eb9ec    8b542414
                         push               -0x1                                          // 0x004eb9f0    6aff
                         push               0x4                                           // 0x004eb9f2    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x004eb9f4    8d442428
                         push               eax                                           // 0x004eb9f8    50
                         mov.s              ecx, ebx                                      // 0x004eb9f9    8bcb
                         {disp8} mov        dword ptr [edi + -0x0c], edx                  // 0x004eb9fb    8957f4
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eb9fe    e83d262d00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004eba03    8b4c2420
                         push               -0x1                                          // 0x004eba07    6aff
                         push               0x4                                           // 0x004eba09    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004eba0b    8d542418
                         mov                dword ptr [edi], ecx                          // 0x004eba0f    890f
                         push               edx                                           // 0x004eba11    52
                         mov.s              ecx, ebx                                      // 0x004eba12    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eba14    e827262d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004eba19    8b442410
                         {disp8} mov        dword ptr [edi + 0x0c], eax                   // 0x004eba1d    89470c
                         add                edi, 0x04                                     // 0x004eba20    83c704
                         dec                esi                                           // 0x004eba23    4e
                         {disp8} jne        _jmp_addr_0x004eb9dc                          // 0x004eba24    75b6
_jmp_addr_0x004eba26:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004eba26    8b742418
                         cmp                esi, 0x12                                     // 0x004eba2a    83fe12
                         {disp8} jle        _jmp_addr_0x004eba43                          // 0x004eba2d    7e14
                         push               -0x1                                          // 0x004eba2f    6aff
                         {disp32} lea       eax, dword ptr [ebp + 0x00005774]             // 0x004eba31    8d8574570000
                         push               0x20                                          // 0x004eba37    6a20
                         push               eax                                           // 0x004eba39    50
                         mov.s              ecx, ebx                                      // 0x004eba3a    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eba3c    e8ff252d00
                         {disp8} jmp        _jmp_addr_0x004eba5b                          // 0x004eba41    eb18
_jmp_addr_0x004eba43:    {disp32} mov       esi, dword ptr [esp + 0x000001b8]             // 0x004eba43    8bb424b8010000
                         {disp32} lea       edi, dword ptr [ebp + 0x00005774]             // 0x004eba4a    8dbd74570000
                         mov                ecx, 0x00000008                               // 0x004eba50    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004eba55    f3a5
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004eba57    8b742418
_jmp_addr_0x004eba5b:    cmp                esi, 0x01                                     // 0x004eba5b    83fe01
                         {disp8} jle        _jmp_addr_0x004ebaaf                          // 0x004eba5e    7e4f
                         cmp                esi, 0x0b                                     // 0x004eba60    83fe0b
                         {disp8} jge        _jmp_addr_0x004eba88                          // 0x004eba63    7d23
                         push               -0x1                                          // 0x004eba65    6aff
                         push               0x4                                           // 0x004eba67    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004eba69    8d4c241c
                         push               ecx                                           // 0x004eba6d    51
                         mov.s              ecx, ebx                                      // 0x004eba6e    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eba70    e8cb252d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004eba75    8b442414
                         {disp32} lea       edi, dword ptr [ebp + 0x000051f8]             // 0x004eba79    8dbdf8510000
                         mov                ecx, 0x00000007                               // 0x004eba7f    b907000000
                         rep stosd                                                        // 0x004eba84    f3ab
                         {disp8} jmp        _jmp_addr_0x004ebaaf                          // 0x004eba86    eb27
_jmp_addr_0x004eba88:    {disp32} lea       edi, dword ptr [ebp + 0x000051f8]             // 0x004eba88    8dbdf8510000
                         mov                esi, 0x00000007                               // 0x004eba8e    be07000000
_jmp_addr_0x004eba93:    push               -0x1                                          // 0x004eba93    6aff
                         push               0x4                                           // 0x004eba95    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x004eba97    8d54241c
                         push               edx                                           // 0x004eba9b    52
                         mov.s              ecx, ebx                                      // 0x004eba9c    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004eba9e    e89d252d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ebaa3    8b442414
                         mov                dword ptr [edi], eax                          // 0x004ebaa7    8907
                         add                edi, 0x04                                     // 0x004ebaa9    83c704
                         dec                esi                                           // 0x004ebaac    4e
                         {disp8} jne        _jmp_addr_0x004eba93                          // 0x004ebaad    75e4
_jmp_addr_0x004ebaaf:    {disp32} lea       edi, dword ptr [ebp + 0x00005108]             // 0x004ebaaf    8dbd08510000
                         mov                esi, 0x0000000c                               // 0x004ebab5    be0c000000
_jmp_addr_0x004ebaba:    push               -0x1                                          // 0x004ebaba    6aff
                         push               0x4                                           // 0x004ebabc    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004ebabe    8d4c241c
                         push               ecx                                           // 0x004ebac2    51
                         mov.s              ecx, ebx                                      // 0x004ebac3    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebac5    e876252d00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004ebaca    8b542414
                         push               -0x1                                          // 0x004ebace    6aff
                         push               0x4                                           // 0x004ebad0    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x004ebad2    8d442428
                         push               eax                                           // 0x004ebad6    50
                         mov.s              ecx, ebx                                      // 0x004ebad7    8bcb
                         {disp8} mov        dword ptr [edi + -0x30], edx                  // 0x004ebad9    8957d0
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebadc    e85f252d00
                         cmp                dword ptr [esp + 0x18], 0x0c                  // 0x004ebae1    837c24180c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004ebae6    8b4c2420
                         mov                dword ptr [edi], ecx                          // 0x004ebaea    890f
                         {disp8} jle        _jmp_addr_0x004ebb05                          // 0x004ebaec    7e17
                         push               -0x1                                          // 0x004ebaee    6aff
                         push               0x4                                           // 0x004ebaf0    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x004ebaf2    8d542418
                         push               edx                                           // 0x004ebaf6    52
                         mov.s              ecx, ebx                                      // 0x004ebaf7    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebaf9    e842252d00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ebafe    8b442410
                         {disp8} mov        dword ptr [edi + 0x30], eax                   // 0x004ebb02    894730
_jmp_addr_0x004ebb05:    add                edi, 0x04                                     // 0x004ebb05    83c704
                         dec                esi                                           // 0x004ebb08    4e
                         {disp8} jne        _jmp_addr_0x004ebaba                          // 0x004ebb09    75af
                         cmp                dword ptr [esp + 0x18], 0x0e                  // 0x004ebb0b    837c24180e
                         {disp32} jle       _jmp_addr_0x004ebbab                          // 0x004ebb10    0f8e95000000
                         {disp32} lea       edi, dword ptr [ebp + 0x0000567c]             // 0x004ebb16    8dbd7c560000
                         mov                esi, 0x00000008                               // 0x004ebb1c    be08000000
_jmp_addr_0x004ebb21:    push               -0x1                                          // 0x004ebb21    6aff
                         push               0x4                                           // 0x004ebb23    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004ebb25    8d4c241c
                         push               ecx                                           // 0x004ebb29    51
                         mov.s              ecx, ebx                                      // 0x004ebb2a    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebb2c    e80f252d00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ebb31    8b442414
                         test               eax, eax                                      // 0x004ebb35    85c0
                         {disp8} mov        dword ptr [edi + 0x20], eax                   // 0x004ebb37    894720
                         {disp8} je         _jmp_addr_0x004ebba1                          // 0x004ebb3a    7465
                         push               -0x1                                          // 0x004ebb3c    6aff
                         push               0x4                                           // 0x004ebb3e    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x004ebb40    8d542428
                         push               edx                                           // 0x004ebb44    52
                         mov.s              ecx, ebx                                      // 0x004ebb45    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebb47    e8f4242d00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004ebb4c    8b442420
                         push               -0x1                                          // 0x004ebb50    6aff
                         push               0x4                                           // 0x004ebb52    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004ebb54    8d4c2418
                         push               ecx                                           // 0x004ebb58    51
                         mov.s              ecx, ebx                                      // 0x004ebb59    8bcb
                         mov                dword ptr [edi], eax                          // 0x004ebb5b    8907
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebb5d    e8de242d00
                         cmp                dword ptr [esp + 0x18], 0x10                  // 0x004ebb62    837c241810
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004ebb67    8b542410
                         {disp32} mov       dword ptr [edi + 0x00000080], edx             // 0x004ebb6b    899780000000
                         {disp8} jle        _jmp_addr_0x004ebba1                          // 0x004ebb71    7e2e
                         push               -0x1                                          // 0x004ebb73    6aff
                         push               0x4                                           // 0x004ebb75    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x004ebb77    8d442434
                         push               eax                                           // 0x004ebb7b    50
                         mov.s              ecx, ebx                                      // 0x004ebb7c    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebb7e    e8bd242d00
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x004ebb83    8b4c242c
                         push               -0x1                                          // 0x004ebb87    6aff
                         push               0x4                                           // 0x004ebb89    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x004ebb8b    8d54242c
                         {disp8} mov        dword ptr [edi + 0x40], ecx                   // 0x004ebb8f    894f40
                         push               edx                                           // 0x004ebb92    52
                         mov.s              ecx, ebx                                      // 0x004ebb93    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebb95    e8a6242d00
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x004ebb9a    8b442424
                         {disp8} mov        dword ptr [edi + 0x60], eax                   // 0x004ebb9e    894760
_jmp_addr_0x004ebba1:    add                edi, 0x04                                     // 0x004ebba1    83c704
                         dec                esi                                           // 0x004ebba4    4e
                         {disp32} jne       _jmp_addr_0x004ebb21                          // 0x004ebba5    0f8576ffffff
_jmp_addr_0x004ebbab:    cmp                dword ptr [esp + 0x18], 0x15                  // 0x004ebbab    837c241815
                         {disp32} jge       _jmp_addr_0x004ebc40                          // 0x004ebbb0    0f8d8a000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000001b8]             // 0x004ebbb6    8b8c24b8010000
                         mov                edi, 0x009cf844                               // 0x004ebbbd    bf44f89c00
                         mov.s              esi, ecx                                      // 0x004ebbc2    8bf1
_jmp_addr_0x004ebbc4:    mov                dl, byte ptr [esi]                            // 0x004ebbc4    8a16
                         mov.s              al, dl                                        // 0x004ebbc6    8ac2
                         cmp                dl, byte ptr [edi]                            // 0x004ebbc8    3a17
                         {disp8} jne        _jmp_addr_0x004ebbe8                          // 0x004ebbca    751c
                         test               al, al                                        // 0x004ebbcc    84c0
                         {disp8} je         _jmp_addr_0x004ebbe4                          // 0x004ebbce    7414
                         {disp8} mov        dl, byte ptr [esi + 0x01]                     // 0x004ebbd0    8a5601
                         mov.s              al, dl                                        // 0x004ebbd3    8ac2
                         cmp                dl, byte ptr [edi + 0x01]                     // 0x004ebbd5    3a5701
                         {disp8} jne        _jmp_addr_0x004ebbe8                          // 0x004ebbd8    750e
                         add                esi, 0x02                                     // 0x004ebbda    83c602
                         add                edi, 0x02                                     // 0x004ebbdd    83c702
                         test               al, al                                        // 0x004ebbe0    84c0
                         {disp8} jne        _jmp_addr_0x004ebbc4                          // 0x004ebbe2    75e0
_jmp_addr_0x004ebbe4:    xor.s              eax, eax                                      // 0x004ebbe4    33c0
                         {disp8} jmp        _jmp_addr_0x004ebbed                          // 0x004ebbe6    eb05
_jmp_addr_0x004ebbe8:    sbb.s              eax, eax                                      // 0x004ebbe8    1bc0
                         sbb                eax, -0x01                                    // 0x004ebbea    83d8ff
_jmp_addr_0x004ebbed:    test               eax, eax                                      // 0x004ebbed    85c0
                         {disp8} je         _jmp_addr_0x004ebc33                          // 0x004ebbef    7442
                         mov                esi, 0x009cf830                               // 0x004ebbf1    be30f89c00
                         mov.s              edi, ecx                                      // 0x004ebbf6    8bf9
_jmp_addr_0x004ebbf8:    mov                cl, byte ptr [edi]                            // 0x004ebbf8    8a0f
                         mov                dl, byte ptr [esi]                            // 0x004ebbfa    8a16
                         mov.s              al, cl                                        // 0x004ebbfc    8ac1
                         cmp.s              cl, dl                                        // 0x004ebbfe    3aca
                         {disp8} jne        _jmp_addr_0x004ebc20                          // 0x004ebc00    751e
                         test               al, al                                        // 0x004ebc02    84c0
                         {disp8} je         _jmp_addr_0x004ebc1c                          // 0x004ebc04    7416
                         {disp8} mov        dl, byte ptr [edi + 0x01]                     // 0x004ebc06    8a5701
                         {disp8} mov        cl, byte ptr [esi + 0x01]                     // 0x004ebc09    8a4e01
                         mov.s              al, dl                                        // 0x004ebc0c    8ac2
                         cmp.s              dl, cl                                        // 0x004ebc0e    3ad1
                         {disp8} jne        _jmp_addr_0x004ebc20                          // 0x004ebc10    750e
                         add                edi, 0x02                                     // 0x004ebc12    83c702
                         add                esi, 0x02                                     // 0x004ebc15    83c602
                         test               al, al                                        // 0x004ebc18    84c0
                         {disp8} jne        _jmp_addr_0x004ebbf8                          // 0x004ebc1a    75dc
_jmp_addr_0x004ebc1c:    xor.s              eax, eax                                      // 0x004ebc1c    33c0
                         {disp8} jmp        _jmp_addr_0x004ebc25                          // 0x004ebc1e    eb05
_jmp_addr_0x004ebc20:    sbb.s              eax, eax                                      // 0x004ebc20    1bc0
                         sbb                eax, -0x01                                    // 0x004ebc22    83d8ff
_jmp_addr_0x004ebc25:    test               eax, eax                                      // 0x004ebc25    85c0
                         {disp8} je         _jmp_addr_0x004ebc33                          // 0x004ebc27    740a
                         xor.s              eax, eax                                      // 0x004ebc29    33c0
                         {disp32} mov       dword ptr [ebp + 0x0000499c], eax             // 0x004ebc2b    89859c490000
                         {disp8} jmp        _jmp_addr_0x004ebc5a                          // 0x004ebc31    eb27
_jmp_addr_0x004ebc33:    mov                eax, 0x00000001                               // 0x004ebc33    b801000000
                         {disp32} mov       dword ptr [ebp + 0x0000499c], eax             // 0x004ebc38    89859c490000
                         {disp8} jmp        _jmp_addr_0x004ebc5a                          // 0x004ebc3e    eb1a
_jmp_addr_0x004ebc40:    push               -0x1                                          // 0x004ebc40    6aff
                         push               0x4                                           // 0x004ebc42    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x004ebc44    8d44242c
                         push               eax                                           // 0x004ebc48    50
                         mov.s              ecx, ebx                                      // 0x004ebc49    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebc4b    e8f0232d00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x004ebc50    8b4c2424
                         {disp32} mov       dword ptr [ebp + 0x0000499c], ecx             // 0x004ebc54    898d9c490000
_jmp_addr_0x004ebc5a:    {disp32} mov       eax, dword ptr [ebp + 0x000047b8]             // 0x004ebc5a    8b85b8470000
                         xor.s              edi, edi                                      // 0x004ebc60    33ff
                         test               eax, eax                                      // 0x004ebc62    85c0
                         {disp8} jle        _jmp_addr_0x004ebcb7                          // 0x004ebc64    7e51
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004ebc66    8b742418
_jmp_addr_0x004ebc6a:    push               -0x1                                          // 0x004ebc6a    6aff
                         push               0x4                                           // 0x004ebc6c    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x004ebc6e    8d54242c
                         push               edx                                           // 0x004ebc72    52
                         mov.s              ecx, ebx                                      // 0x004ebc73    8bcb
                         call               @GetSegmentData__6LHFileFPvUll@20             // 0x004ebc75    e8c6232d00
                         cmp                esi, 0x14                                     // 0x004ebc7a    83fe14
                         {disp32} mov       eax, dword ptr [ebp + 0x000051f0]             // 0x004ebc7d    8b85f0510000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x004ebc83    8b4c2424
                         mov                dword ptr [eax + edi * 0x4], ecx              // 0x004ebc87    890cb8
                         {disp8} jne        _jmp_addr_0x004ebcac                          // 0x004ebc8a    7520
                         test               edi, edi                                      // 0x004ebc8c    85ff
                         {disp8} jne        _jmp_addr_0x004ebcac                          // 0x004ebc8e    751c
                         {disp32} mov       eax, dword ptr [ebp + 0x000051f0]             // 0x004ebc90    8b85f0510000
                         mov                ecx, dword ptr [eax]                          // 0x004ebc96    8b08
                         test               ecx, ecx                                      // 0x004ebc98    85c9
                         {disp8} je         _jmp_addr_0x004ebcac                          // 0x004ebc9a    7410
                         mov                dword ptr [eax], edi                          // 0x004ebc9c    8938
                         {disp32} mov       edx, dword ptr [ebp + 0x000051f0]             // 0x004ebc9e    8b95f0510000
                         mov                edi, 0x00000001                               // 0x004ebca4    bf01000000
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x004ebca9    894a04
_jmp_addr_0x004ebcac:    {disp32} mov       eax, dword ptr [ebp + 0x000047b8]             // 0x004ebcac    8b85b8470000
                         inc                edi                                           // 0x004ebcb2    47
                         cmp.s              edi, eax                                      // 0x004ebcb3    3bf8
                         {disp8} jl         _jmp_addr_0x004ebc6a                          // 0x004ebcb5    7cb3
_jmp_addr_0x004ebcb7:    push               0x0                                           // 0x004ebcb7    6a00
                         mov.s              ecx, ebp                                      // 0x004ebcb9    8bcd
                         call               @SelectMesh__9MorphableFl@12                  // 0x004ebcbb    e860b91200
                         push               0x0                                           // 0x004ebcc0    6a00
                         push               0x1                                           // 0x004ebcc2    6a01
                         push               0x0                                           // 0x004ebcc4    6a00
                         mov.s              ecx, ebp                                      // 0x004ebcc6    8bcd
                         call               @GetSetAnim__9MorphableFlll@20                // 0x004ebcc8    e8c3d91200
                         push               0x0                                           // 0x004ebccd    6a00
                         push               0x2                                           // 0x004ebccf    6a02
                         push               0x0                                           // 0x004ebcd1    6a00
                         mov.s              ecx, ebp                                      // 0x004ebcd3    8bcd
                         call               @GetSetAnim__9MorphableFlll@20                // 0x004ebcd5    e8b6d91200
                         push               0x0                                           // 0x004ebcda    6a00
                         push               0x3                                           // 0x004ebcdc    6a03
                         push               0x0                                           // 0x004ebcde    6a00
                         mov.s              ecx, ebp                                      // 0x004ebce0    8bcd
                         call               @GetSetAnim__9MorphableFlll@20                // 0x004ebce2    e8a9d91200
                         push               0x0                                           // 0x004ebce7    6a00
                         push               0x4                                           // 0x004ebce9    6a04
                         push               0x0                                           // 0x004ebceb    6a00
                         mov.s              ecx, ebp                                      // 0x004ebced    8bcd
                         call               @GetSetAnim__9MorphableFlll@20                // 0x004ebcef    e89cd91200
                         push               0x0                                           // 0x004ebcf4    6a00
                         push               0x5                                           // 0x004ebcf6    6a05
                         push               0x0                                           // 0x004ebcf8    6a00
                         mov.s              ecx, ebp                                      // 0x004ebcfa    8bcd
                         call               @GetSetAnim__9MorphableFlll@20                // 0x004ebcfc    e88fd91200
                         mov                esi, 0x00000010                               // 0x004ebd01    be10000000
_jmp_addr_0x004ebd06:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x004ebd06    8b4500
                         push               0x000000fa                                    // 0x004ebd09    68fa000000
                         push               esi                                           // 0x004ebd0e    56
                         mov.s              ecx, ebp                                      // 0x004ebd0f    8bcd
                         call               dword ptr [eax]                               // 0x004ebd11    ff10
                         inc                esi                                           // 0x004ebd13    46
                         cmp                esi, 0x1c                                     // 0x004ebd14    83fe1c
                         {disp8} jl         _jmp_addr_0x004ebd06                          // 0x004ebd17    7ced
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004ebd19    8b4c241c
                         push               ecx                                           // 0x004ebd1d    51
                         call               ??3@YAXPAX@Z                                  // 0x004ebd1e    e875312c00
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x004ebd23    8b54242c
                         push               edx                                           // 0x004ebd27    52
                         call               ??3@YAXPAX@Z                                  // 0x004ebd28    e86b312c00
                         add                esp, 0x08                                     // 0x004ebd2d    83c408
                         mov.s              ecx, ebp                                      // 0x004ebd30    8bcd
                         call               _jmp_addr_0x0048f5b0                          // 0x004ebd32    e87938faff
                         {disp32} fstp      dword ptr [ebp + 0x00005224]                  // 0x004ebd37    d99d24520000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x004ebd3d    8b4500
                         push               0x3f800000                                    // 0x004ebd40    680000803f
                         mov.s              ecx, ebp                                      // 0x004ebd45    8bcd
                         call               dword ptr [eax + 8]                           // 0x004ebd47    ff5008
                         {disp32} mov       eax, dword ptr [esp + 0x000001bc]             // 0x004ebd4a    8b8424bc010000
                         test               eax, eax                                      // 0x004ebd51    85c0
                         {disp32} mov       dword ptr [ebp + 0x000047bc], 0x00000000      // 0x004ebd53    c785bc47000000000000
                         {disp8} je         _jmp_addr_0x004ebd73                          // 0x004ebd5d    7414
                         push               0x1                                           // 0x004ebd5f    6a01
                         push               0x6d                                          // 0x004ebd61    6a6d
                         mov.s              ecx, ebp                                      // 0x004ebd63    8bcd
                         call               @GetAnim__9MorphableFll@16                    // 0x004ebd65    e8e6d81200
                         push               0x25                                          // 0x004ebd6a    6a25
                         mov.s              ecx, ebp                                      // 0x004ebd6c    8bcd
                         call               _jmp_addr_0x00484ec0                          // 0x004ebd6e    e84d91f9ff
_jmp_addr_0x004ebd73:    {disp32} lea       eax, dword ptr [ebp + 0x00005774]             // 0x004ebd73    8d8574570000
                         push               eax                                           // 0x004ebd79    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x004ebd7a    8d8c24b4000000
                         push               0x00be0100                                    // 0x004ebd81    680001be00
                         push               ecx                                           // 0x004ebd86    51
                         call               _sprintf                                      // 0x004ebd87    e8469a2d00
                         {disp32} mov       edi, dword ptr [esp + 0x000001c4]             // 0x004ebd8c    8bbc24c4010000
                         or                 ecx, 0xffffffff                               // 0x004ebd93    83c9ff
                         add                esp, 0x0c                                     // 0x004ebd96    83c40c
                         xor.s              eax, eax                                      // 0x004ebd99    33c0
                         repne scasb                                                      // 0x004ebd9b    f2ae
                         not                ecx                                           // 0x004ebd9d    f7d1
                         sub.s              edi, ecx                                      // 0x004ebd9f    2bf9
                         mov.s              eax, ecx                                      // 0x004ebda1    8bc1
                         shr                ecx, 2                                        // 0x004ebda3    c1e902
                         {disp32} lea       edx, dword ptr [ebp + 0x00005754]             // 0x004ebda6    8d9554570000
                         mov.s              esi, edi                                      // 0x004ebdac    8bf7
                         mov.s              edi, edx                                      // 0x004ebdae    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004ebdb0    f3a5
                         mov.s              ecx, eax                                      // 0x004ebdb2    8bc8
                         and                ecx, 0x03                                     // 0x004ebdb4    83e103
                         rep movsb                                                        // 0x004ebdb7    f3a4
                         push               0x0                                           // 0x004ebdb9    6a00
                         {disp32} lea       ecx, dword ptr [esp + 0x000000b4]             // 0x004ebdbb    8d8c24b4000000
                         push               ecx                                           // 0x004ebdc2    51
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x004ebdc3    8b0d203bcd00
                         call               _jmp_addr_0x00428620                          // 0x004ebdc9    e852c8f3ff
                         {disp32} mov       edx, dword ptr [ebp + 0x00000098]             // 0x004ebdce    8b9598000000
                         {disp32} mov       dword ptr [ebp + 0x00005288], eax             // 0x004ebdd4    898588520000
                         {disp32} mov       eax, dword ptr [ebp + edx * 0x4 + 0x000000b4] // 0x004ebdda    8b8495b4000000
                         push               eax                                           // 0x004ebde1    50
                         call               _jmp_addr_0x00867d10                          // 0x004ebde2    e829bf3700
                         add                esp, 0x04                                     // 0x004ebde7    83c404
                         mov.s              ecx, ebp                                      // 0x004ebdea    8bcd
                         {disp32} mov       dword ptr [ebp + 0x000057a4], eax             // 0x004ebdec    8985a4570000
                         call               _jmp_addr_0x0048d7b0                          // 0x004ebdf2    e8b919faff
                         pop                edi                                           // 0x004ebdf7    5f
                         pop                esi                                           // 0x004ebdf8    5e
                         pop                ebp                                           // 0x004ebdf9    5d
                         mov                eax, 0x00000001                               // 0x004ebdfa    b801000000
                         pop                ebx                                           // 0x004ebdff    5b
                         add                esp, 0x000001a4                               // 0x004ebe00    81c4a4010000
                         ret                0x0008                                        // 0x004ebe06    c20800
                         nop                                                              // 0x004ebe09    90
                         nop                                                              // 0x004ebe0a    90
                         nop                                                              // 0x004ebe0b    90
                         nop                                                              // 0x004ebe0c    90
                         nop                                                              // 0x004ebe0d    90
                         nop                                                              // 0x004ebe0e    90
                         nop                                                              // 0x004ebe0f    90
_jmp_addr_0x004ebe10:    sub                esp, 0x6c                                     // 0x004ebe10    83ec6c
                         push               ebx                                           // 0x004ebe13    53
                         push               esi                                           // 0x004ebe14    56
                         push               edi                                           // 0x004ebe15    57
                         mov.s              edi, ecx                                      // 0x004ebe16    8bf9
                         {disp32} fld       dword ptr [edi + 0x00005228]                  // 0x004ebe18    d98728520000
                         {disp8} mov        eax, dword ptr [edi + 0x7c]                   // 0x004ebe1e    8b477c
                         {disp32} fld       dword ptr [edi + 0x00005228]                  // 0x004ebe21    d98728520000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000080]             // 0x004ebe27    8b8f80000000
                         {disp8} mov        edx, dword ptr [edi + 0x78]                   // 0x004ebe2d    8b5778
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004ebe30    d95c2420
                         {disp32} fld       dword ptr [edi + 0x00005228]                  // 0x004ebe34    d98728520000
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x004ebe3a    89442440
                         fchs                                                             // 0x004ebe3e    d9e0
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x004ebe40    894c2444
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x004ebe44    d9542424
                         mov.s              ecx, eax                                      // 0x004ebe48    8bc8
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x004ebe4a    d95c2438
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004ebe4e    8944241c
                         {disp8} mov        eax, dword ptr [edi + 0x78]                   // 0x004ebe52    8b4778
                         {disp8} fadd       dword ptr [edi + 0x78]                        // 0x004ebe55    d84778
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x004ebe58    89442430
                         {disp32} mov       eax, dword ptr [edi + 0x000051ec]             // 0x004ebe5c    8b87ec510000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004ebe62    89542418
                         {disp32} mov       edx, dword ptr [edi + 0x00000080]             // 0x004ebe66    8b9780000000
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x004ebe6c    d95c243c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x004ebe70    d9442420
                         xor.s              ebx, ebx                                      // 0x004ebe74    33db
                         cmp.s              eax, ebx                                      // 0x004ebe76    3bc3
                         {disp32} fadd      dword ptr [edi + 0x00000080]                  // 0x004ebe78    d88780000000
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x004ebe7e    894c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x004ebe82    8954242c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004ebe86    d95c2420
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x004ebe8a    894c2434
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x004ebe8e    d9442424
                         {disp8} fadd       dword ptr [edi + 0x78]                        // 0x004ebe92    d84778
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x004ebe95    d95c2424
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x004ebe99    d9442438
                         {disp32} fadd      dword ptr [edi + 0x00000080]                  // 0x004ebe9d    d88780000000
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x004ebea3    d95c2438
                         {disp8} je         _jmp_addr_0x004ebeba                          // 0x004ebea7    7411
                         {disp8} fld        dword ptr [edi + 0x7c]                        // 0x004ebea9    d9477c
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x004ebeac    d9542410
                         fld                st(0)                                         // 0x004ebeb0    d9c0
                         fld                st(1)                                         // 0x004ebeb2    d9c1
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004ebeb4    d95c240c
                         {disp8} jmp        _jmp_addr_0x004ebefa                          // 0x004ebeb8    eb40
_jmp_addr_0x004ebeba:    mov                edx, dword ptr [edi]                          // 0x004ebeba    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x004ebebc    8d44243c
                         push               eax                                           // 0x004ebec0    50
                         mov.s              ecx, edi                                      // 0x004ebec1    8bcf
                         call               dword ptr [edx + 0x28]                        // 0x004ebec3    ff5228
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004ebec6    d95c240c
                         mov                edx, dword ptr [edi]                          // 0x004ebeca    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004ebecc    8d442418
                         push               eax                                           // 0x004ebed0    50
                         mov.s              ecx, edi                                      // 0x004ebed1    8bcf
                         call               dword ptr [edx + 0x28]                        // 0x004ebed3    ff5228
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ebed6    d95c2414
                         mov                edx, dword ptr [edi]                          // 0x004ebeda    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x004ebedc    8d442424
                         push               eax                                           // 0x004ebee0    50
                         mov.s              ecx, edi                                      // 0x004ebee1    8bcf
                         call               dword ptr [edx + 0x28]                        // 0x004ebee3    ff5228
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004ebee6    d95c2410
                         mov                edx, dword ptr [edi]                          // 0x004ebeea    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x004ebeec    8d442430
                         push               eax                                           // 0x004ebef0    50
                         mov.s              ecx, edi                                      // 0x004ebef1    8bcf
                         call               dword ptr [edx + 0x28]                        // 0x004ebef3    ff5228
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ebef6    d9442414
_jmp_addr_0x004ebefa:    {disp32} fld       dword ptr [edi + 0x00000084]                  // 0x004ebefa    d98784000000
                         {disp8} mov        esi, dword ptr [esp + 0x7c]                   // 0x004ebf00    8b74247c
                         fld                st(0)                                         // 0x004ebf04    d9c0
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x004ebf06    895e2c
                         fcos                                                             // 0x004ebf09    d9ff
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x004ebf0b    895e28
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x004ebf0e    895e24
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x004ebf11    895e1c
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x004ebf14    895e14
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x004ebf17    895e0c
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x004ebf1a    895e04
                         {disp8} mov        dword ptr [esi + 0x10], 0x3f800000            // 0x004ebf1d    c746100000803f
                         {disp8} fst        dword ptr [esi + 0x20]                        // 0x004ebf24    d95620
                         fstp               dword ptr [esi]                               // 0x004ebf27    d91e
                         fsin                                                             // 0x004ebf29    d9fe
                         {disp8} fst        dword ptr [esi + 0x08]                        // 0x004ebf2b    d95608
                         fchs                                                             // 0x004ebf2e    d9e0
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x004ebf30    d95e18
                         {disp32} fld       dword ptr [edi + 0x00005228]                  // 0x004ebf33    d98728520000
                         fadd.s             st(0), st(0)                                  // 0x004ebf39    dcc0
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x004ebf3b    d944240c
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x004ebf3f    d8642410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x004ebf43    d80ddc7b8c00
                         fdiv               st, st(1)                                     // 0x004ebf49    d8f1
                         {disp8} fstp       dword ptr [esp + 0x7c]                        // 0x004ebf4b    d95c247c
                         fxch               st(1)                                         // 0x004ebf4f    d9c9
                         fsubrp             st(2), st                                     // 0x004ebf51    dee2
                         fxch               st(1)                                         // 0x004ebf53    d9c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x004ebf55    d80ddc7b8c00
                         fdiv               st, st(1)                                     // 0x004ebf5b    d8f1
                         fxch               st(1)                                         // 0x004ebf5d    d9c9
                         fstp               st(0)                                         // 0x004ebf5f    ddd8
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x004ebf61    d944247c
                         {disp32} fcomp     dword ptr [__real@3e999999]                   // 0x004ebf65    d81d3cb28a00
                         fnstsw             ax                                            // 0x004ebf6b    dfe0
                         test               ah, 0x01                                      // 0x004ebf6d    f6c401
                         {disp8} jne        _jmp_addr_0x004ebf7a                          // 0x004ebf70    7508
                         {disp8} mov        dword ptr [esp + 0x7c], 0x3e99999a            // 0x004ebf72    c744247c9a99993e
_jmp_addr_0x004ebf7a:    {disp32} fcom      dword ptr [__real@3e999999]                   // 0x004ebf7a    d8153cb28a00
                         fnstsw             ax                                            // 0x004ebf80    dfe0
                         test               ah, 0x01                                      // 0x004ebf82    f6c401
                         {disp8} jne        _jmp_addr_0x004ebf8f                          // 0x004ebf85    7508
                         fstp               st(0)                                         // 0x004ebf87    ddd8
                         {disp32} fld       dword ptr [__real@3e999999]                   // 0x004ebf89    d9053cb28a00
_jmp_addr_0x004ebf8f:    {disp8} fld        dword ptr [esp + 0x7c]                        // 0x004ebf8f    d944247c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x21284]             // 0x004ebf93    d81d84a28c00
                         fnstsw             ax                                            // 0x004ebf99    dfe0
                         test               ah, 0x41                                      // 0x004ebf9b    f6c441
                         {disp8} je         _jmp_addr_0x004ebfa8                          // 0x004ebf9e    7408
                         {disp8} mov        dword ptr [esp + 0x7c], 0xbe99999a            // 0x004ebfa0    c744247c9a9999be
_jmp_addr_0x004ebfa8:    {disp32} fcom      dword ptr [rdata_bytes + 0x21284]             // 0x004ebfa8    d81584a28c00
                         fnstsw             ax                                            // 0x004ebfae    dfe0
                         test               ah, 0x41                                      // 0x004ebfb0    f6c441
                         {disp8} je         _jmp_addr_0x004ebfbd                          // 0x004ebfb3    7408
                         fstp               st(0)                                         // 0x004ebfb5    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x21284]             // 0x004ebfb7    d90584a28c00
_jmp_addr_0x004ebfbd:    {disp8} mov        ecx, dword ptr [esp + 0x7c]                   // 0x004ebfbd    8b4c247c
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x004ebfc1    d95c2464
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x004ebfc5    894c244c
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x004ebfc9    8d542448
                         mov.s              ecx, esi                                      // 0x004ebfcd    8bce
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000            // 0x004ebfcf    c744247400000000
                         {disp8} mov        dword ptr [esp + 0x70], 0x00000000            // 0x004ebfd7    c744247000000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x004ebfdf    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000            // 0x004ebfe7    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x004ebfef    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x004ebff7    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x004ebfff    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x3f800000            // 0x004ec007    c74424680000803f
                         {disp8} mov        dword ptr [esp + 0x58], 0x3f800000            // 0x004ec00f    c74424580000803f
                         {disp8} mov        dword ptr [esp + 0x48], 0x3f800000            // 0x004ec017    c74424480000803f
                         call               _jmp_addr_0x007faff0                          // 0x004ec01f    e8ccef3000
                         {disp32} fld       dword ptr [edi + 0x00000094]                  // 0x004ec024    d98794000000
                         fld                st(0)                                         // 0x004ec02a    d9c0
                         fmul               dword ptr [esi]                               // 0x004ec02c    d80e
                         fstp               dword ptr [esi]                               // 0x004ec02e    d91e
                         fld                st(0)                                         // 0x004ec030    d9c0
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x004ec032    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x004ec035    d95e0c
                         fld                st(0)                                         // 0x004ec038    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x004ec03a    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x004ec03d    d95e18
                         fld                st(0)                                         // 0x004ec040    d9c0
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x004ec042    d84e24
                         {disp8} fst        dword ptr [esp + 0x7c]                        // 0x004ec045    d954247c
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x004ec049    d95e24
                         fld                st(0)                                         // 0x004ec04c    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x004ec04e    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x004ec051    d95e04
                         fld                st(0)                                         // 0x004ec054    d9c0
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x004ec056    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x004ec059    d95e10
                         fld                st(0)                                         // 0x004ec05c    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x004ec05e    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x004ec061    d95e1c
                         fld                st(0)                                         // 0x004ec064    d9c0
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x004ec066    d84e28
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x004ec069    d9542414
                         {disp8} fstp       dword ptr [esi + 0x28]                        // 0x004ec06d    d95e28
                         fld                st(0)                                         // 0x004ec070    d9c0
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x004ec072    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x004ec075    d95e08
                         fld                st(0)                                         // 0x004ec078    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x004ec07a    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x004ec07d    d95e14
                         fld                st(0)                                         // 0x004ec080    d9c0
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x004ec082    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x004ec085    d95e20
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x004ec088    d84e2c
                         {disp8} fst        dword ptr [esi + 0x2c]                        // 0x004ec08b    d9562c
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x004ec08e    d944247c
                         {disp8} fadd       dword ptr [edi + 0x78]                        // 0x004ec092    d84778
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x004ec095    d95e24
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec098    d9442414
                         {disp8} fadd       dword ptr [edi + 0x7c]                        // 0x004ec09c    d8477c
                         {disp8} fstp       dword ptr [esi + 0x28]                        // 0x004ec09f    d95e28
                         {disp32} fadd      dword ptr [edi + 0x00000080]                  // 0x004ec0a2    d88780000000
                         pop                edi                                           // 0x004ec0a8    5f
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x004ec0a9    d95e2c
                         pop                esi                                           // 0x004ec0ac    5e
                         pop                ebx                                           // 0x004ec0ad    5b
                         add                esp, 0x6c                                     // 0x004ec0ae    83c46c
                         ret                0x0004                                        // 0x004ec0b1    c20400
                         nop                                                              // 0x004ec0b4    90
                         nop                                                              // 0x004ec0b5    90
                         nop                                                              // 0x004ec0b6    90
                         nop                                                              // 0x004ec0b7    90
                         nop                                                              // 0x004ec0b8    90
                         nop                                                              // 0x004ec0b9    90
                         nop                                                              // 0x004ec0ba    90
                         nop                                                              // 0x004ec0bb    90
                         nop                                                              // 0x004ec0bc    90
                         nop                                                              // 0x004ec0bd    90
                         nop                                                              // 0x004ec0be    90
                         nop                                                              // 0x004ec0bf    90
_jmp_addr_0x004ec0c0:    {disp32} mov       eax, dword ptr [data_bytes + 0x21a07c]        // 0x004ec0c0    a17c00be00
                         test               eax, eax                                      // 0x004ec0c5    85c0
                         push               esi                                           // 0x004ec0c7    56
                         push               edi                                           // 0x004ec0c8    57
                         mov.s              esi, ecx                                      // 0x004ec0c9    8bf1
                         {disp32} je        _jmp_addr_0x004ec3e1                          // 0x004ec0cb    0f8410030000
                         {disp32} mov       eax, dword ptr [esi + 0x000051d4]             // 0x004ec0d1    8b86d4510000
                         cmp                eax, -0x01                                    // 0x004ec0d7    83f8ff
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004ec0da    8b7c240c
                         {disp8} je         _jmp_addr_0x004ec141                          // 0x004ec0de    7461
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec0e0    d9442410
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec0e4    8d0440
                         shl                eax, 4                                        // 0x004ec0e7    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec0ea    d80c38
                         add.s              eax, edi                                      // 0x004ec0ed    03c7
                         fstp               dword ptr [eax]                               // 0x004ec0ef    d918
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec0f1    d9442410
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec0f5    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec0f8    d95804
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec0fb    d9442410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec0ff    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec102    d95808
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec105    d9442410
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec109    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec10c    d9580c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec10f    d9442410
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec113    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec116    d95810
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec119    d9442410
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec11d    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec120    d95814
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec123    d9442410
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec127    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec12a    d95818
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec12d    d9442410
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec131    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec134    d9581c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec137    d9442410
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec13b    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec13e    d95820
_jmp_addr_0x004ec141:    {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x004ec141    8b86c8510000
                         cmp                eax, -0x01                                    // 0x004ec147    83f8ff
                         {disp8} je         _jmp_addr_0x004ec1ad                          // 0x004ec14a    7461
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec14c    d9442414
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec150    8d0440
                         shl                eax, 4                                        // 0x004ec153    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec156    d80c38
                         add.s              eax, edi                                      // 0x004ec159    03c7
                         fstp               dword ptr [eax]                               // 0x004ec15b    d918
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec15d    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec161    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec164    d95804
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec167    d9442414
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec16b    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec16e    d95808
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec171    d9442414
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec175    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec178    d9580c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec17b    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec17f    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec182    d95810
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec185    d9442414
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec189    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec18c    d95814
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec18f    d9442414
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec193    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec196    d95818
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec199    d9442414
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec19d    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec1a0    d9581c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1a3    d9442414
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec1a7    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec1aa    d95820
_jmp_addr_0x004ec1ad:    {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x004ec1ad    8b86c8510000
                         push               eax                                           // 0x004ec1b3    50
                         mov.s              ecx, esi                                      // 0x004ec1b4    8bce
                         call               _jmp_addr_0x00481390                          // 0x004ec1b6    e8d551f9ff
                         cmp                eax, -0x01                                    // 0x004ec1bb    83f8ff
                         {disp8} je         _jmp_addr_0x004ec221                          // 0x004ec1be    7461
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1c0    d9442414
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec1c4    8d0440
                         shl                eax, 4                                        // 0x004ec1c7    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec1ca    d80c38
                         add.s              eax, edi                                      // 0x004ec1cd    03c7
                         fstp               dword ptr [eax]                               // 0x004ec1cf    d918
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1d1    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec1d5    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec1d8    d95804
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1db    d9442414
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec1df    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec1e2    d95808
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1e5    d9442414
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec1e9    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec1ec    d9580c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1ef    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec1f3    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec1f6    d95810
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec1f9    d9442414
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec1fd    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec200    d95814
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec203    d9442414
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec207    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec20a    d95818
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec20d    d9442414
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec211    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec214    d9581c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec217    d9442414
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec21b    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec21e    d95820
_jmp_addr_0x004ec221:    {disp32} mov       eax, dword ptr [esi + 0x000051cc]             // 0x004ec221    8b86cc510000
                         cmp                eax, -0x01                                    // 0x004ec227    83f8ff
                         {disp8} je         _jmp_addr_0x004ec28d                          // 0x004ec22a    7461
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec22c    d9442414
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec230    8d0440
                         shl                eax, 4                                        // 0x004ec233    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec236    d80c38
                         add.s              eax, edi                                      // 0x004ec239    03c7
                         fstp               dword ptr [eax]                               // 0x004ec23b    d918
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec23d    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec241    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec244    d95804
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec247    d9442414
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec24b    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec24e    d95808
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec251    d9442414
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec255    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec258    d9580c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec25b    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec25f    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec262    d95810
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec265    d9442414
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec269    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec26c    d95814
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec26f    d9442414
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec273    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec276    d95818
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec279    d9442414
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec27d    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec280    d9581c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec283    d9442414
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec287    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec28a    d95820
_jmp_addr_0x004ec28d:    {disp32} mov       ecx, dword ptr [esi + 0x000051cc]             // 0x004ec28d    8b8ecc510000
                         push               ecx                                           // 0x004ec293    51
                         mov.s              ecx, esi                                      // 0x004ec294    8bce
                         call               _jmp_addr_0x00481390                          // 0x004ec296    e8f550f9ff
                         cmp                eax, -0x01                                    // 0x004ec29b    83f8ff
                         {disp8} je         _jmp_addr_0x004ec301                          // 0x004ec29e    7461
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2a0    d9442414
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec2a4    8d0440
                         shl                eax, 4                                        // 0x004ec2a7    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec2aa    d80c38
                         add.s              eax, edi                                      // 0x004ec2ad    03c7
                         fstp               dword ptr [eax]                               // 0x004ec2af    d918
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2b1    d9442414
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec2b5    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec2b8    d95804
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2bb    d9442414
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec2bf    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec2c2    d95808
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2c5    d9442414
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec2c9    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec2cc    d9580c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2cf    d9442414
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec2d3    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec2d6    d95810
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2d9    d9442414
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec2dd    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec2e0    d95814
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2e3    d9442414
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec2e7    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec2ea    d95818
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2ed    d9442414
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec2f1    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec2f4    d9581c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004ec2f7    d9442414
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec2fb    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec2fe    d95820
_jmp_addr_0x004ec301:    {disp32} mov       eax, dword ptr [esi + 0x000051d0]             // 0x004ec301    8b86d0510000
                         cmp                eax, -0x01                                    // 0x004ec307    83f8ff
                         {disp8} je         _jmp_addr_0x004ec36d                          // 0x004ec30a    7461
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec30c    d9442418
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec310    8d0440
                         shl                eax, 4                                        // 0x004ec313    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec316    d80c38
                         add.s              eax, edi                                      // 0x004ec319    03c7
                         fstp               dword ptr [eax]                               // 0x004ec31b    d918
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec31d    d9442418
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec321    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec324    d95804
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec327    d9442418
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec32b    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec32e    d95808
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec331    d9442418
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec335    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec338    d9580c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec33b    d9442418
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec33f    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec342    d95810
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec345    d9442418
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec349    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec34c    d95814
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec34f    d9442418
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec353    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec356    d95818
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec359    d9442418
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec35d    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec360    d9581c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec363    d9442418
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec367    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec36a    d95820
_jmp_addr_0x004ec36d:    {disp32} mov       edx, dword ptr [esi + 0x000051d0]             // 0x004ec36d    8b96d0510000
                         push               edx                                           // 0x004ec373    52
                         mov.s              ecx, esi                                      // 0x004ec374    8bce
                         call               _jmp_addr_0x00481390                          // 0x004ec376    e81550f9ff
                         cmp                eax, -0x01                                    // 0x004ec37b    83f8ff
                         {disp8} je         _jmp_addr_0x004ec3e1                          // 0x004ec37e    7461
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec380    d9442418
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec384    8d0440
                         shl                eax, 4                                        // 0x004ec387    c1e004
                         fmul               dword ptr [eax + edi * 0x1]                   // 0x004ec38a    d80c38
                         add.s              eax, edi                                      // 0x004ec38d    03c7
                         fstp               dword ptr [eax]                               // 0x004ec38f    d918
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec391    d9442418
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec395    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec398    d95804
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec39b    d9442418
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec39f    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec3a2    d95808
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3a5    d9442418
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec3a9    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec3ac    d9580c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3af    d9442418
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec3b3    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec3b6    d95810
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3b9    d9442418
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec3bd    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec3c0    d95814
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3c3    d9442418
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec3c7    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004ec3ca    d95818
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3cd    d9442418
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004ec3d1    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004ec3d4    d9581c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ec3d7    d9442418
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004ec3db    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004ec3de    d95820
_jmp_addr_0x004ec3e1:    pop                edi                                           // 0x004ec3e1    5f
                         pop                esi                                           // 0x004ec3e2    5e
                         ret                0x0010                                        // 0x004ec3e3    c21000
                         nop                                                              // 0x004ec3e6    90
                         nop                                                              // 0x004ec3e7    90
                         nop                                                              // 0x004ec3e8    90
                         nop                                                              // 0x004ec3e9    90
                         nop                                                              // 0x004ec3ea    90
                         nop                                                              // 0x004ec3eb    90
                         nop                                                              // 0x004ec3ec    90
                         nop                                                              // 0x004ec3ed    90
                         nop                                                              // 0x004ec3ee    90
                         nop                                                              // 0x004ec3ef    90
_jmp_addr_0x004ec3f0:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec3f0    d98190000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ec3f6    d81d98a38a00
                         fnstsw             ax                                            // 0x004ec3fc    dfe0
                         test               ah, 0x41                                      // 0x004ec3fe    f6c441
                         {disp8} jne        _jmp_addr_0x004ec426                          // 0x004ec401    7523
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec403    d98190000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x004ec409    d81d78b48a00
                         fnstsw             ax                                            // 0x004ec40f    dfe0
                         test               ah, 0x01                                      // 0x004ec411    f6c401
                         {disp8} je         _jmp_addr_0x004ec41e                          // 0x004ec414    7408
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec416    d98190000000
                         {disp8} jmp        _jmp_addr_0x004ec42c                          // 0x004ec41c    eb0e
_jmp_addr_0x004ec41e:    {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x004ec41e    d90578b48a00
                         {disp8} jmp        _jmp_addr_0x004ec42c                          // 0x004ec424    eb06
_jmp_addr_0x004ec426:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004ec426    d90598a38a00
_jmp_addr_0x004ec42c:    {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x004ec42c    d80d2cb28a00
                         {disp32} fsubr     dword ptr [__real@3f8ccccd]                   // 0x004ec432    d82d30b28a00
                         {disp32} fld       dword ptr [ecx + 0x0000009c]                  // 0x004ec438    d9819c000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x33f4]              // 0x004ec43e    d80df4c38a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x004ec444    d80590a38a00
                         fmulp              st(1), st                                     // 0x004ec44a    dec9
                         ret                                                              // 0x004ec44c    c3
                         nop                                                              // 0x004ec44d    90
                         nop                                                              // 0x004ec44e    90
                         nop                                                              // 0x004ec44f    90
_jmp_addr_0x004ec450:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec450    d98190000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ec456    d81d98a38a00
                         fnstsw             ax                                            // 0x004ec45c    dfe0
                         test               ah, 0x41                                      // 0x004ec45e    f6c441
                         {disp8} jne        _jmp_addr_0x004ec49c                          // 0x004ec461    7539
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec463    d98190000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x004ec469    d81d78b48a00
                         fnstsw             ax                                            // 0x004ec46f    dfe0
                         test               ah, 0x01                                      // 0x004ec471    f6c401
                         {disp8} je         _jmp_addr_0x004ec489                          // 0x004ec474    7413
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec476    d98190000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004ec47c    d80db4a38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26030]             // 0x004ec482    d82d30f08c00
                         ret                                                              // 0x004ec488    c3
_jmp_addr_0x004ec489:    {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x004ec489    d90578b48a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004ec48f    d80db4a38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26030]             // 0x004ec495    d82d30f08c00
                         ret                                                              // 0x004ec49b    c3
_jmp_addr_0x004ec49c:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004ec49c    d90598a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004ec4a2    d80db4a38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26030]             // 0x004ec4a8    d82d30f08c00
                         ret                                                              // 0x004ec4ae    c3
                         nop                                                              // 0x004ec4af    90
_jmp_addr_0x004ec4b0:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec4b0    d98190000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ec4b6    d81d98a38a00
                         fnstsw             ax                                            // 0x004ec4bc    dfe0
                         test               ah, 0x41                                      // 0x004ec4be    f6c441
                         {disp8} jne        _jmp_addr_0x004ec4fc                          // 0x004ec4c1    7539
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec4c3    d98190000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x004ec4c9    d81d78b48a00
                         fnstsw             ax                                            // 0x004ec4cf    dfe0
                         test               ah, 0x01                                      // 0x004ec4d1    f6c401
                         {disp8} je         _jmp_addr_0x004ec4e9                          // 0x004ec4d4    7413
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec4d6    d98190000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x004ec4dc    d80dd4b38a00
                         {disp32} fsubr     dword ptr [__real@3fc00000]                   // 0x004ec4e2    d82d4cb28a00
                         ret                                                              // 0x004ec4e8    c3
_jmp_addr_0x004ec4e9:    {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x004ec4e9    d90578b48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x004ec4ef    d80dd4b38a00
                         {disp32} fsubr     dword ptr [__real@3fc00000]                   // 0x004ec4f5    d82d4cb28a00
                         ret                                                              // 0x004ec4fb    c3
_jmp_addr_0x004ec4fc:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004ec4fc    d90598a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x004ec502    d80dd4b38a00
                         {disp32} fsubr     dword ptr [__real@3fc00000]                   // 0x004ec508    d82d4cb28a00
                         ret                                                              // 0x004ec50e    c3
                         nop                                                              // 0x004ec50f    90
_jmp_addr_0x004ec510:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec510    d98190000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ec516    d81d98a38a00
                         fnstsw             ax                                            // 0x004ec51c    dfe0
                         test               ah, 0x41                                      // 0x004ec51e    f6c441
                         {disp8} jne        _jmp_addr_0x004ec55c                          // 0x004ec521    7539
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec523    d98190000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x004ec529    d81d78b48a00
                         fnstsw             ax                                            // 0x004ec52f    dfe0
                         test               ah, 0x01                                      // 0x004ec531    f6c401
                         {disp8} je         _jmp_addr_0x004ec549                          // 0x004ec534    7413
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004ec536    d98190000000
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x004ec53c    d80daca38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1ee18]             // 0x004ec542    d82d187e8c00
                         ret                                                              // 0x004ec548    c3
_jmp_addr_0x004ec549:    {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x004ec549    d90578b48a00
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x004ec54f    d80daca38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1ee18]             // 0x004ec555    d82d187e8c00
                         ret                                                              // 0x004ec55b    c3
_jmp_addr_0x004ec55c:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004ec55c    d90598a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x004ec562    d80daca38a00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1ee18]             // 0x004ec568    d82d187e8c00
                         ret                                                              // 0x004ec56e    c3
                         nop                                                              // 0x004ec56f    90
                         ret                                                              // 0x004ec570    c3
                         nop                                                              // 0x004ec571    90
                         nop                                                              // 0x004ec572    90
                         nop                                                              // 0x004ec573    90
                         nop                                                              // 0x004ec574    90
                         nop                                                              // 0x004ec575    90
                         nop                                                              // 0x004ec576    90
                         nop                                                              // 0x004ec577    90
                         nop                                                              // 0x004ec578    90
                         nop                                                              // 0x004ec579    90
                         nop                                                              // 0x004ec57a    90
                         nop                                                              // 0x004ec57b    90
                         nop                                                              // 0x004ec57c    90
                         nop                                                              // 0x004ec57d    90
                         nop                                                              // 0x004ec57e    90
                         nop                                                              // 0x004ec57f    90
_jmp_addr_0x004ec580:    ret                                                              // 0x004ec580    c3
                         nop                                                              // 0x004ec581    90
                         nop                                                              // 0x004ec582    90
                         nop                                                              // 0x004ec583    90
                         nop                                                              // 0x004ec584    90
                         nop                                                              // 0x004ec585    90
                         nop                                                              // 0x004ec586    90
                         nop                                                              // 0x004ec587    90
                         nop                                                              // 0x004ec588    90
                         nop                                                              // 0x004ec589    90
                         nop                                                              // 0x004ec58a    90
                         nop                                                              // 0x004ec58b    90
                         nop                                                              // 0x004ec58c    90
                         nop                                                              // 0x004ec58d    90
                         nop                                                              // 0x004ec58e    90
                         nop                                                              // 0x004ec58f    90
_jmp_addr_0x004ec590:    sub                esp, 0x00000084                               // 0x004ec590    81ec84000000
                         push               ebx                                           // 0x004ec596    53
                         push               esi                                           // 0x004ec597    56
                         push               edi                                           // 0x004ec598    57
                         mov.s              edi, ecx                                      // 0x004ec599    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x0000499c]             // 0x004ec59b    8b879c490000
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x004ec5a1    8d4c2460
                         push               ecx                                           // 0x004ec5a5    51
                         mov.s              ecx, edi                                      // 0x004ec5a6    8bcf
                         {disp32} mov       dword ptr [data_bytes + 0x53f620], eax        // 0x004ec5a8    a32056f000
                         call               _jmp_addr_0x004ebe10                          // 0x004ec5ad    e85ef8ffff
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004ec5b2    8b87b8470000
                         {disp32} mov       edx, dword ptr [edi + 0x00005178]             // 0x004ec5b8    8b9778510000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec5be    8d0440
                         shl                eax, 4                                        // 0x004ec5c1    c1e004
                         xor.s              ebx, ebx                                      // 0x004ec5c4    33db
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x004ec5c6    89442428
                         {disp32} mov       eax, dword ptr [edi + 0x00005174]             // 0x004ec5ca    8b8774510000
                         push               ebx                                           // 0x004ec5d0    53
                         {disp32} mov       dword ptr [edi + 0x00005174], edx             // 0x004ec5d1    899774510000
                         push               ebx                                           // 0x004ec5d7    53
                         mov.s              ecx, edi                                      // 0x004ec5d8    8bcf
                         {disp32} mov       dword ptr [edi + 0x00005178], eax             // 0x004ec5da    898778510000
                         call               @GetAnim__9MorphableFll@16                    // 0x004ec5e0    e86bd01200
                         test               eax, eax                                      // 0x004ec5e5    85c0
                         {disp32} je        _jmp_addr_0x004ed0c7                          // 0x004ec5e7    0f84da0a0000
                         cmp                dword ptr [edi + 0x000047bc], ebx             // 0x004ec5ed    399fbc470000
                         {disp8} je         _jmp_addr_0x004ec601                          // 0x004ec5f3    740c
                         cmp                dword ptr [edi + 0x000047c0], ebx             // 0x004ec5f5    399fc0470000
                         {disp32} je        _jmp_addr_0x004ed0c7                          // 0x004ec5fb    0f84c60a0000
_jmp_addr_0x004ec601:    mov.s              ecx, edi                                      // 0x004ec601    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x004ec603    895c2410
                         call               _jmp_addr_0x004ec450                          // 0x004ec607    e844feffff
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ec60c    d95c2414
                         mov.s              ecx, edi                                      // 0x004ec610    8bcf
                         call               _jmp_addr_0x004ec4b0                          // 0x004ec612    e899feffff
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x004ec617    d95c240c
                         mov.s              ecx, edi                                      // 0x004ec61b    8bcf
                         call               _jmp_addr_0x004ec510                          // 0x004ec61d    e8eefeffff
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x004ec622    d95c242c
                         cmp                dword ptr [edi + 0x0000522c], ebx             // 0x004ec626    399f2c520000
                         {disp8} je         _jmp_addr_0x004ec636                          // 0x004ec62c    7408
                         {disp32} mov       esi, dword ptr [edi + 0x000051f0]             // 0x004ec62e    8bb7f0510000
                         {disp8} jmp        _jmp_addr_0x004ec638                          // 0x004ec634    eb02
_jmp_addr_0x004ec636:    xor.s              esi, esi                                      // 0x004ec636    33f6
_jmp_addr_0x004ec638:    cmp                dword ptr [edi + 0x000047c0], ebx             // 0x004ec638    399fc0470000
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x004ec63e    89742418
                         push               ebp                                           // 0x004ec642    55
                         {disp32} je        _jmp_addr_0x004eca40                          // 0x004ec643    0f84f7030000
                         cmp                dword ptr [edi + 0x000047c4], ebx             // 0x004ec649    399fc4470000
                         {disp32} je        _jmp_addr_0x004ec778                          // 0x004ec64f    0f8423010000
                         cmp                dword ptr [edi + 0x00005270], ebx             // 0x004ec655    399f70520000
                         {disp32} jne       _jmp_addr_0x004ec778                          // 0x004ec65b    0f8517010000
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x004ec661    8b5c2418
                         mov                ebp, 0x00000001                               // 0x004ec665    bd01000000
                         {disp32} lea       esi, dword ptr [edi + 0x000047e0]             // 0x004ec66a    8db7e0470000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000004            // 0x004ec670    c744241404000000
_jmp_addr_0x004ec678:    fld                dword ptr [esi]                               // 0x004ec678    d906
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x004ec67a    d81d98a38a00
                         fnstsw             ax                                            // 0x004ec680    dfe0
                         test               ah, 0x40                                      // 0x004ec682    f6c440
                         {disp32} jne       _jmp_addr_0x004ec757                          // 0x004ec685    0f85cc000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004ec68b    8b44241c
                         {disp32} mov       ecx, dword ptr [edi + 0x000047fc]             // 0x004ec68f    8b8ffc470000
                         {disp8} mov        edx, dword ptr [esi + -0x10]                  // 0x004ec695    8b56f0
                         push               0x1                                           // 0x004ec698    6a01
                         push               eax                                           // 0x004ec69a    50
                         {disp32} mov       eax, dword ptr [edi + 0x000047f8]             // 0x004ec69b    8b87f8470000
                         push               ecx                                           // 0x004ec6a1    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f4]             // 0x004ec6a2    8b8ff4470000
                         push               edx                                           // 0x004ec6a8    52
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ec6a9    8b9798000000
                         push               eax                                           // 0x004ec6af    50
                         {disp32} mov       eax, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ec6b0    8b8497b4000000
                         push               ecx                                           // 0x004ec6b7    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00005180]             // 0x004ec6b8    8b8f80510000
                         push               eax                                           // 0x004ec6be    50
                         push               ecx                                           // 0x004ec6bf    51
                         {disp8} mov        ecx, dword ptr [esi + -0x20]                  // 0x004ec6c0    8b4ee0
                         call               _jmp_addr_0x00860e00                          // 0x004ec6c3    e838473700
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x004ec6c8    8b542430
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ec6cc    8b442410
                         {disp32} mov       ecx, dword ptr [edi + 0x00005180]             // 0x004ec6d0    8b8f80510000
                         push               edx                                           // 0x004ec6d6    52
                         push               eax                                           // 0x004ec6d7    50
                         push               ebx                                           // 0x004ec6d8    53
                         push               ecx                                           // 0x004ec6d9    51
                         mov.s              ecx, edi                                      // 0x004ec6da    8bcf
                         call               _jmp_addr_0x004ec0c0                          // 0x004ec6dc    e8dff9ffff
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x004ec6e1    8b8798000000
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x004ec6e7    8b8c87b4000000
                         {disp8} lea        edx, dword ptr [esp + 0x64]                   // 0x004ec6ee    8d542464
                         push               edx                                           // 0x004ec6f2    52
                         {disp32} mov       edx, dword ptr [edi + 0x00005180]             // 0x004ec6f3    8b9780510000
                         push               ecx                                           // 0x004ec6f9    51
                         push               edx                                           // 0x004ec6fa    52
                         call               _jmp_addr_0x00839f10                          // 0x004ec6fb    e810d83400
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x004ec700    8b442438
                         {disp32} mov       ecx, dword ptr [edi + 0x00005180]             // 0x004ec704    8b8f80510000
                         cdq                                                              // 0x004ec70a    99
                         and                edx, 0x03                                     // 0x004ec70b    83e203
                         add.s              eax, edx                                      // 0x004ec70e    03c2
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec710    8b977c510000
                         push               ebp                                           // 0x004ec716    55
                         sar                eax, 2                                        // 0x004ec717    c1f802
                         push               eax                                           // 0x004ec71a    50
                         mov                eax, dword ptr [esi]                          // 0x004ec71b    8b06
                         push               eax                                           // 0x004ec71d    50
                         push               ecx                                           // 0x004ec71e    51
                         push               edx                                           // 0x004ec71f    52
                         call               _jmp_addr_0x004eecd0                          // 0x004ec720    e8ab250000
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec725    8b8734480000
                         add                esp, 0x20                                     // 0x004ec72b    83c420
                         xor.s              ebp, ebp                                      // 0x004ec72e    33ed
                         test               eax, eax                                      // 0x004ec730    85c0
                         {disp8} je         _jmp_addr_0x004ec73a                          // 0x004ec732    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec734    f6402410
                         {disp8} jne        _jmp_addr_0x004ec757                          // 0x004ec738    751d
_jmp_addr_0x004ec73a:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec73a    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ec740    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec746    8b977c510000
                         push               eax                                           // 0x004ec74c    50
                         push               ecx                                           // 0x004ec74d    51
                         push               edx                                           // 0x004ec74e    52
                         call               _jmp_addr_0x004867f0                          // 0x004ec74f    e89ca0f9ff
                         add                esp, 0x0c                                     // 0x004ec754    83c40c
_jmp_addr_0x004ec757:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ec757    8b442414
                         add                esi, 0x04                                     // 0x004ec75b    83c604
                         dec                eax                                           // 0x004ec75e    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004ec75f    89442414
                         {disp32} jne       _jmp_addr_0x004ec678                          // 0x004ec763    0f850fffffff
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001            // 0x004ec769    c744241401000000
                         xor.s              ebx, ebx                                      // 0x004ec771    33db
                         {disp32} jmp       _jmp_addr_0x004ec881                          // 0x004ec773    e909010000
_jmp_addr_0x004ec778:    {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec778    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004ec77e    3bc3
                         {disp8} je         _jmp_addr_0x004ec788                          // 0x004ec780    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec782    f6402410
                         {disp8} jne        _jmp_addr_0x004ec7cb                          // 0x004ec786    7543
_jmp_addr_0x004ec788:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec788    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ec78e    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004ec794    8b97f4470000
                         push               eax                                           // 0x004ec79a    50
                         push               ecx                                           // 0x004ec79b    51
                         push               edx                                           // 0x004ec79c    52
                         call               _jmp_addr_0x004867f0                          // 0x004ec79d    e84ea0f9ff
                         {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec7a2    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ec7a8    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004ec7ae    8b97f4470000
                         push               eax                                           // 0x004ec7b4    50
                         push               ecx                                           // 0x004ec7b5    51
                         push               edx                                           // 0x004ec7b6    52
                         call               _jmp_addr_0x004867f0                          // 0x004ec7b7    e834a0f9ff
                         {disp32} mov       eax, dword ptr [edi + 0x000047c0]             // 0x004ec7bc    8b87c0470000
                         push               eax                                           // 0x004ec7c2    50
                         call               _jmp_addr_0x004ec580                          // 0x004ec7c3    e8b8fdffff
                         add                esp, 0x1c                                     // 0x004ec7c8    83c41c
_jmp_addr_0x004ec7cb:    {disp32} mov       ecx, dword ptr [edi + 0x000047fc]             // 0x004ec7cb    8b8ffc470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047d0]             // 0x004ec7d1    8b97d0470000
                         {disp32} mov       eax, dword ptr [edi + 0x000047f8]             // 0x004ec7d7    8b87f8470000
                         push               0x1                                           // 0x004ec7dd    6a01
                         push               esi                                           // 0x004ec7df    56
                         push               ecx                                           // 0x004ec7e0    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f4]             // 0x004ec7e1    8b8ff4470000
                         push               edx                                           // 0x004ec7e7    52
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ec7e8    8b9798000000
                         push               eax                                           // 0x004ec7ee    50
                         {disp32} mov       eax, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ec7ef    8b8497b4000000
                         push               ecx                                           // 0x004ec7f6    51
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ec7f7    8b8f7c510000
                         push               eax                                           // 0x004ec7fd    50
                         push               ecx                                           // 0x004ec7fe    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047c0]             // 0x004ec7ff    8b8fc0470000
                         call               _jmp_addr_0x00860e00                          // 0x004ec805    e8f6453700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec80a    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004ec810    3bc3
                         {disp8} je         _jmp_addr_0x004ec81a                          // 0x004ec812    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec814    f6402410
                         {disp8} jne        _jmp_addr_0x004ec837                          // 0x004ec818    751d
_jmp_addr_0x004ec81a:    {disp32} mov       edx, dword ptr [edi + 0x00004994]             // 0x004ec81a    8b9794490000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004ec820    8b87b8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ec826    8b8f7c510000
                         push               edx                                           // 0x004ec82c    52
                         push               eax                                           // 0x004ec82d    50
                         push               ecx                                           // 0x004ec82e    51
                         call               _jmp_addr_0x004867f0                          // 0x004ec82f    e8bc9ff9ff
                         add                esp, 0x0c                                     // 0x004ec834    83c40c
_jmp_addr_0x004ec837:    {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x004ec837    8b542430
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ec83b    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x004ec83f    8b4c2418
                         push               edx                                           // 0x004ec843    52
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec844    8b977c510000
                         push               eax                                           // 0x004ec84a    50
                         push               ecx                                           // 0x004ec84b    51
                         push               edx                                           // 0x004ec84c    52
                         mov.s              ecx, edi                                      // 0x004ec84d    8bcf
                         call               _jmp_addr_0x004ec0c0                          // 0x004ec84f    e86cf8ffff
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec854    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004ec85a    3bc3
                         {disp8} je         _jmp_addr_0x004ec864                          // 0x004ec85c    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec85e    f6402410
                         {disp8} jne        _jmp_addr_0x004ec881                          // 0x004ec862    751d
_jmp_addr_0x004ec864:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec864    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ec86a    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec870    8b977c510000
                         push               eax                                           // 0x004ec876    50
                         push               ecx                                           // 0x004ec877    51
                         push               edx                                           // 0x004ec878    52
                         call               _jmp_addr_0x004867f0                          // 0x004ec879    e8729ff9ff
                         add                esp, 0x0c                                     // 0x004ec87e    83c40c
_jmp_addr_0x004ec881:    cmp                dword ptr [edi + 0x000048d0], ebx             // 0x004ec881    399fd0480000
                         {disp32} je        _jmp_addr_0x004ecaa5                          // 0x004ec887    0f8418020000
                         {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec88d    8b8794490000
                         add                eax, -0x0b                                    // 0x004ec893    83c0f5
                         cmp                eax, 0x0a                                     // 0x004ec896    83f80a
                         {disp8} ja         _jmp_addr_0x004ec8b6                          // 0x004ec899    771b
                         xor.s              ecx, ecx                                      // 0x004ec89b    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x004ed16c]               // 0x004ec89d    8a886cd14e00
                         jmp                dword ptr [ecx*4 + 0x4ed160]                  // 0x004ec8a3    ff248d60d14e00
                         cmp                dword ptr [edi + 0x0000518c], ebx             // 0x004ec8aa    399f8c510000
                         {disp32} jne       _jmp_addr_0x004ecaa5                          // 0x004ec8b0    0f85ef010000
_jmp_addr_0x004ec8b6:    cmp                dword ptr [esp + 0x14], ebx                   // 0x004ec8b6    395c2414
                         {disp8} je         _jmp_addr_0x004ec90f                          // 0x004ec8ba    7453
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x004ec8bc    8b8798000000
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x004ec8c2    8b8c87b4000000
                         {disp8} lea        edx, dword ptr [esp + 0x64]                   // 0x004ec8c9    8d542464
                         push               edx                                           // 0x004ec8cd    52
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec8ce    8b977c510000
                         push               ecx                                           // 0x004ec8d4    51
                         push               edx                                           // 0x004ec8d5    52
                         call               _jmp_addr_0x0083a020                          // 0x004ec8d6    e845d73400
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec8db    8b8734480000
                         add                esp, 0x0c                                     // 0x004ec8e1    83c40c
                         cmp.s              eax, ebx                                      // 0x004ec8e4    3bc3
                         {disp8} je         _jmp_addr_0x004ec8ee                          // 0x004ec8e6    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec8e8    f6402410
                         {disp8} jne        _jmp_addr_0x004ec90b                          // 0x004ec8ec    751d
_jmp_addr_0x004ec8ee:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ec8ee    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ec8f4    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ec8fa    8b977c510000
                         push               eax                                           // 0x004ec900    50
                         push               ecx                                           // 0x004ec901    51
                         push               edx                                           // 0x004ec902    52
                         call               _jmp_addr_0x004867f0                          // 0x004ec903    e8e89ef9ff
                         add                esp, 0x0c                                     // 0x004ec908    83c40c
_jmp_addr_0x004ec90b:    {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x004ec90b    895c2414
_jmp_addr_0x004ec90f:    push               ebx                                           // 0x004ec90f    53
                         push               0x55                                          // 0x004ec910    6a55
                         mov.s              ecx, edi                                      // 0x004ec912    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004ec914    e837cd1200
                         cmp                dword ptr [edi + 0x00005230], ebx             // 0x004ec919    399f30520000
                         {disp8} je         _jmp_addr_0x004ec929                          // 0x004ec91f    7408
                         {disp32} mov       ecx, dword ptr [edi + 0x000051f0]             // 0x004ec921    8b8ff0510000
                         {disp8} jmp        _jmp_addr_0x004ec92b                          // 0x004ec927    eb02
_jmp_addr_0x004ec929:    xor.s              ecx, ecx                                      // 0x004ec929    33c9
_jmp_addr_0x004ec92b:    mov                edx, dword ptr [eax]                          // 0x004ec92b    8b10
                         push               ebx                                           // 0x004ec92d    53
                         push               ecx                                           // 0x004ec92e    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047fc]             // 0x004ec92f    8b8ffc470000
                         push               ecx                                           // 0x004ec935    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f8]             // 0x004ec936    8b8ff8470000
                         dec                edx                                           // 0x004ec93c    4a
                         push               edx                                           // 0x004ec93d    52
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004ec93e    8b97f4470000
                         push               ecx                                           // 0x004ec944    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00000098]             // 0x004ec945    8b8f98000000
                         push               edx                                           // 0x004ec94b    52
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x4 + 0x000000b4] // 0x004ec94c    8b948fb4000000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ec953    8b8f7c510000
                         push               edx                                           // 0x004ec959    52
                         push               ecx                                           // 0x004ec95a    51
                         mov.s              ecx, eax                                      // 0x004ec95b    8bc8
                         call               _jmp_addr_0x00860e00                          // 0x004ec95d    e89e443700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ec962    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004ec968    3bc3
                         {disp8} je         _jmp_addr_0x004ec972                          // 0x004ec96a    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ec96c    f6402410
                         {disp8} jne        _jmp_addr_0x004ec98f                          // 0x004ec970    751d
_jmp_addr_0x004ec972:    {disp32} mov       edx, dword ptr [edi + 0x00004994]             // 0x004ec972    8b9794490000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004ec978    8b87b8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ec97e    8b8f7c510000
                         push               edx                                           // 0x004ec984    52
                         push               eax                                           // 0x004ec985    50
                         push               ecx                                           // 0x004ec986    51
                         call               _jmp_addr_0x004867f0                          // 0x004ec987    e8649ef9ff
                         add                esp, 0x0c                                     // 0x004ec98c    83c40c
_jmp_addr_0x004ec98f:    cmp                dword ptr [edi + 0x00005230], ebx             // 0x004ec98f    399f30520000
                         {disp8} je         _jmp_addr_0x004ec9a7                          // 0x004ec995    7410
                         {disp32} mov       edx, dword ptr [edi + 0x000051c8]             // 0x004ec997    8b97c8510000
                         push               edx                                           // 0x004ec99d    52
                         mov.s              ecx, edi                                      // 0x004ec99e    8bcf
                         call               _jmp_addr_0x00481390                          // 0x004ec9a0    e8eb49f9ff
                         {disp8} jmp        _jmp_addr_0x004ec9ad                          // 0x004ec9a5    eb06
_jmp_addr_0x004ec9a7:    {disp32} mov       eax, dword ptr [edi + 0x000051c8]             // 0x004ec9a7    8b87c8510000
_jmp_addr_0x004ec9ad:    cmp                eax, -0x01                                    // 0x004ec9ad    83f8ff
                         {disp8} je         _jmp_addr_0x004eca19                          // 0x004ec9b0    7467
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ec9b2    8b8f7c510000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9b8    d9442410
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004ec9bc    8d0440
                         shl                eax, 4                                        // 0x004ec9bf    c1e004
                         fmul               dword ptr [eax + ecx * 0x1]                   // 0x004ec9c2    d80c08
                         add.s              eax, ecx                                      // 0x004ec9c5    03c1
                         fstp               dword ptr [eax]                               // 0x004ec9c7    d918
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9c9    d9442410
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x004ec9cd    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x004ec9d0    d95804
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9d3    d9442410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x004ec9d7    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x004ec9da    d95808
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9dd    d9442410
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x004ec9e1    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x004ec9e4    d9580c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9e7    d9442410
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x004ec9eb    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x004ec9ee    d95810
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9f1    d9442410
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x004ec9f5    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x004ec9f8    d95814
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004ec9fb    d9442410
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x004ec9ff    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x004eca02    d95818
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004eca05    d9442410
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x004eca09    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x004eca0c    d9581c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004eca0f    d9442410
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x004eca13    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x004eca16    d95820
_jmp_addr_0x004eca19:    {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004eca19    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004eca1f    3bc3
                         {disp8} je         _jmp_addr_0x004eca29                          // 0x004eca21    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004eca23    f6402410
                         {disp8} jne        _jmp_addr_0x004ecaa5                          // 0x004eca27    757c
_jmp_addr_0x004eca29:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004eca29    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004eca2f    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004eca35    8b977c510000
                         push               eax                                           // 0x004eca3b    50
                         push               ecx                                           // 0x004eca3c    51
                         push               edx                                           // 0x004eca3d    52
                         {disp8} jmp        _jmp_addr_0x004eca9d                          // 0x004eca3e    eb5d
_jmp_addr_0x004eca40:    {disp32} mov       ecx, dword ptr [edi + 0x000047f8]             // 0x004eca40    8b8ff8470000
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x004eca46    8b8798000000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004eca4c    8b97f4470000
                         {disp32} mov       eax, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x004eca52    8b8487b4000000
                         push               0x1                                           // 0x004eca59    6a01
                         push               ebx                                           // 0x004eca5b    53
                         push               ebx                                           // 0x004eca5c    53
                         push               ebx                                           // 0x004eca5d    53
                         push               ecx                                           // 0x004eca5e    51
                         push               edx                                           // 0x004eca5f    52
                         push               eax                                           // 0x004eca60    50
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004eca61    8b877c510000
                         push               eax                                           // 0x004eca67    50
                         push               ebx                                           // 0x004eca68    53
                         push               ebx                                           // 0x004eca69    53
                         mov.s              ecx, edi                                      // 0x004eca6a    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004eca6c    e8dfcb1200
                         mov.s              ecx, eax                                      // 0x004eca71    8bc8
                         call               _jmp_addr_0x00860e00                          // 0x004eca73    e888433700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004eca78    8b8734480000
                         cmp.s              eax, ebx                                      // 0x004eca7e    3bc3
                         {disp8} je         _jmp_addr_0x004eca88                          // 0x004eca80    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004eca82    f6402410
                         {disp8} jne        _jmp_addr_0x004ecaa5                          // 0x004eca86    751d
_jmp_addr_0x004eca88:    {disp32} mov       ecx, dword ptr [edi + 0x00004994]             // 0x004eca88    8b8f94490000
                         {disp32} mov       edx, dword ptr [edi + 0x000047b8]             // 0x004eca8e    8b97b8470000
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004eca94    8b877c510000
                         push               ecx                                           // 0x004eca9a    51
                         push               edx                                           // 0x004eca9b    52
                         push               eax                                           // 0x004eca9c    50
_jmp_addr_0x004eca9d:    call               _jmp_addr_0x004867f0                          // 0x004eca9d    e84e9df9ff
                         add                esp, 0x0c                                     // 0x004ecaa2    83c40c
_jmp_addr_0x004ecaa5:    cmp                dword ptr [edi + 0x000047bc], ebx             // 0x004ecaa5    399fbc470000
                         {disp32} jne       _jmp_addr_0x004ed06c                          // 0x004ecaab    0f85bb050000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ecab1    8b442414
                         test               eax, eax                                      // 0x004ecab5    85c0
                         {disp8} je         _jmp_addr_0x004ecb10                          // 0x004ecab7    7457
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ecab9    8b9798000000
                         {disp32} mov       eax, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ecabf    8b8497b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                   // 0x004ecac6    8d4c2464
                         push               ecx                                           // 0x004ecaca    51
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecacb    8b8f7c510000
                         push               eax                                           // 0x004ecad1    50
                         push               ecx                                           // 0x004ecad2    51
                         call               _jmp_addr_0x0083a020                          // 0x004ecad3    e848d53400
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ecad8    8b8734480000
                         add                esp, 0x0c                                     // 0x004ecade    83c40c
                         test               eax, eax                                      // 0x004ecae1    85c0
                         {disp8} je         _jmp_addr_0x004ecaeb                          // 0x004ecae3    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ecae5    f6402410
                         {disp8} jne        _jmp_addr_0x004ecb08                          // 0x004ecae9    751d
_jmp_addr_0x004ecaeb:    {disp32} mov       edx, dword ptr [edi + 0x00004994]             // 0x004ecaeb    8b9794490000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004ecaf1    8b87b8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecaf7    8b8f7c510000
                         push               edx                                           // 0x004ecafd    52
                         push               eax                                           // 0x004ecafe    50
                         push               ecx                                           // 0x004ecaff    51
                         call               _jmp_addr_0x004867f0                          // 0x004ecb00    e8eb9cf9ff
                         add                esp, 0x0c                                     // 0x004ecb05    83c40c
_jmp_addr_0x004ecb08:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x004ecb08    c744241400000000
_jmp_addr_0x004ecb10:    {disp32} mov       ecx, dword ptr [edi + 0x000049a0]             // 0x004ecb10    8b8fa0490000
                         xor.s              edx, edx                                      // 0x004ecb16    33d2
                         mov                ebp, 0x00000026                               // 0x004ecb18    bd26000000
                         cmp.s              ecx, ebp                                      // 0x004ecb1d    3bcd
                         setne              dl                                            // 0x004ecb1f    0f95c2
                         push               0x0                                           // 0x004ecb22    6a00
                         mov.s              ecx, edi                                      // 0x004ecb24    8bcf
                         dec                edx                                           // 0x004ecb26    4a
                         and                edx, 0x02                                     // 0x004ecb27    83e202
                         add                edx, 0x4c                                     // 0x004ecb2a    83c24c
                         push               edx                                           // 0x004ecb2d    52
                         call               @GetAnim__9MorphableFll@16                    // 0x004ecb2e    e81dcb1200
                         mov.s              esi, eax                                      // 0x004ecb33    8bf0
                         test               esi, esi                                      // 0x004ecb35    85f6
                         {disp32} je        _jmp_addr_0x004ecbf0                          // 0x004ecb37    0f84b3000000
                         {disp32} fld       dword ptr [edi + 0x0000486c]                  // 0x004ecb3d    d9876c480000
                         fabs                                                             // 0x004ecb43    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x004ecb45    dc1dd8798c00
                         fnstsw             ax                                            // 0x004ecb4b    dfe0
                         test               ah, 0x41                                      // 0x004ecb4d    f6c441
                         {disp8} je         _jmp_addr_0x004ecb61                          // 0x004ecb50    740f
                         mov.s              ecx, edi                                      // 0x004ecb52    8bcf
                         call               _jmp_addr_0x00482d40                          // 0x004ecb54    e8e761f9ff
                         test               eax, eax                                      // 0x004ecb59    85c0
                         {disp32} je        _jmp_addr_0x004ecbf0                          // 0x004ecb5b    0f848f000000
_jmp_addr_0x004ecb61:    {disp32} fld       dword ptr [edi + 0x0000486c]                  // 0x004ecb61    d9876c480000
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x004ecb67    8b5c241c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e8d8]             // 0x004ecb6b    d805d8788c00
                         {disp32} mov       eax, dword ptr [edi + 0x000047fc]             // 0x004ecb71    8b87fc470000
                         push               ebx                                           // 0x004ecb77    53
                         push               eax                                           // 0x004ecb78    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x27620]             // 0x004ecb79    d80d20068d00
                         fimul              dword ptr [esi]                               // 0x004ecb7f    da0e
                         call               _jmp_addr_0x007a1400                          // 0x004ecb81    e87a482b00
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f8]             // 0x004ecb86    8b8ff8470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004ecb8c    8b97f4470000
                         push               eax                                           // 0x004ecb92    50
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x004ecb93    8b8798000000
                         push               ecx                                           // 0x004ecb99    51
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x004ecb9a    8b8c87b4000000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x004ecba1    8b461c
                         push               edx                                           // 0x004ecba4    52
                         dec                eax                                           // 0x004ecba5    48
                         cdq                                                              // 0x004ecba6    99
                         sub.s              eax, edx                                      // 0x004ecba7    2bc2
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x004ecba9    8b5634
                         push               ecx                                           // 0x004ecbac    51
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecbad    8b8f7c510000
                         sar                eax, 1                                        // 0x004ecbb3    d1f8
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x004ecbb5    8b0482
                         push               eax                                           // 0x004ecbb8    50
                         push               ecx                                           // 0x004ecbb9    51
                         mov.s              ecx, esi                                      // 0x004ecbba    8bce
                         call               _jmp_addr_0x00861ee0                          // 0x004ecbbc    e81f533700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ecbc1    8b8734480000
                         test               eax, eax                                      // 0x004ecbc7    85c0
                         {disp8} je         _jmp_addr_0x004ecbd1                          // 0x004ecbc9    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ecbcb    f6402410
                         {disp8} jne        _jmp_addr_0x004ecbf4                          // 0x004ecbcf    7523
_jmp_addr_0x004ecbd1:    {disp32} mov       edx, dword ptr [edi + 0x00004994]             // 0x004ecbd1    8b9794490000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004ecbd7    8b87b8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecbdd    8b8f7c510000
                         push               edx                                           // 0x004ecbe3    52
                         push               eax                                           // 0x004ecbe4    50
                         push               ecx                                           // 0x004ecbe5    51
                         call               _jmp_addr_0x004867f0                          // 0x004ecbe6    e8059cf9ff
                         add                esp, 0x0c                                     // 0x004ecbeb    83c40c
                         {disp8} jmp        _jmp_addr_0x004ecbf4                          // 0x004ecbee    eb04
_jmp_addr_0x004ecbf0:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x004ecbf0    8b5c241c
_jmp_addr_0x004ecbf4:    cmp                dword ptr [edi + 0x000049a0], ebp             // 0x004ecbf4    39afa0490000
                         push               0x0                                           // 0x004ecbfa    6a00
                         {disp8} jne        _jmp_addr_0x004ecc02                          // 0x004ecbfc    7504
                         push               0x4d                                          // 0x004ecbfe    6a4d
                         {disp8} jmp        _jmp_addr_0x004ecc04                          // 0x004ecc00    eb02
_jmp_addr_0x004ecc02:    push               0x4b                                          // 0x004ecc02    6a4b
_jmp_addr_0x004ecc04:    mov.s              ecx, edi                                      // 0x004ecc04    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004ecc06    e845ca1200
                         test               ebx, ebx                                      // 0x004ecc0b    85db
                         mov.s              esi, eax                                      // 0x004ecc0d    8bf0
                         {disp8} je         _jmp_addr_0x004ecc1f                          // 0x004ecc0f    740e
                         {disp32} fld       dword ptr [edi + 0x00004864]                  // 0x004ecc11    d98764480000
                         fchs                                                             // 0x004ecc17    d9e0
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x004ecc19    d95c2418
                         {disp8} jmp        _jmp_addr_0x004ecc29                          // 0x004ecc1d    eb0a
_jmp_addr_0x004ecc1f:    {disp32} mov       edx, dword ptr [edi + 0x00004864]             // 0x004ecc1f    8b9764480000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004ecc25    89542418
_jmp_addr_0x004ecc29:    test               esi, esi                                      // 0x004ecc29    85f6
                         {disp32} je        _jmp_addr_0x004eccdc                          // 0x004ecc2b    0f84ab000000
                         {disp32} fld       dword ptr [edi + 0x00004864]                  // 0x004ecc31    d98764480000
                         fabs                                                             // 0x004ecc37    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x004ecc39    dc1dd8798c00
                         fnstsw             ax                                            // 0x004ecc3f    dfe0
                         test               ah, 0x41                                      // 0x004ecc41    f6c441
                         {disp8} je         _jmp_addr_0x004ecc55                          // 0x004ecc44    740f
                         mov.s              ecx, edi                                      // 0x004ecc46    8bcf
                         call               _jmp_addr_0x00482d40                          // 0x004ecc48    e8f360f9ff
                         test               eax, eax                                      // 0x004ecc4d    85c0
                         {disp32} je        _jmp_addr_0x004eccdc                          // 0x004ecc4f    0f8487000000
_jmp_addr_0x004ecc55:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x004ecc55    d9442418
                         {disp32} mov       eax, dword ptr [edi + 0x000047fc]             // 0x004ecc59    8b87fc470000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x004ecc5f    d805a0368c00
                         push               ebx                                           // 0x004ecc65    53
                         push               eax                                           // 0x004ecc66    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dcac]             // 0x004ecc67    d80dac6c8c00
                         fimul              dword ptr [esi]                               // 0x004ecc6d    da0e
                         call               _jmp_addr_0x007a1400                          // 0x004ecc6f    e88c472b00
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f8]             // 0x004ecc74    8b8ff8470000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f4]             // 0x004ecc7a    8b97f4470000
                         push               eax                                           // 0x004ecc80    50
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x004ecc81    8b8798000000
                         push               ecx                                           // 0x004ecc87    51
                         {disp32} mov       ecx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x004ecc88    8b8c87b4000000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x004ecc8f    8b461c
                         push               edx                                           // 0x004ecc92    52
                         dec                eax                                           // 0x004ecc93    48
                         cdq                                                              // 0x004ecc94    99
                         sub.s              eax, edx                                      // 0x004ecc95    2bc2
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x004ecc97    8b5634
                         push               ecx                                           // 0x004ecc9a    51
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecc9b    8b8f7c510000
                         sar                eax, 1                                        // 0x004ecca1    d1f8
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x004ecca3    8b0482
                         push               eax                                           // 0x004ecca6    50
                         push               ecx                                           // 0x004ecca7    51
                         mov.s              ecx, esi                                      // 0x004ecca8    8bce
                         call               _jmp_addr_0x00861ee0                          // 0x004eccaa    e831523700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004eccaf    8b8734480000
                         test               eax, eax                                      // 0x004eccb5    85c0
                         {disp8} je         _jmp_addr_0x004eccbf                          // 0x004eccb7    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004eccb9    f6402410
                         {disp8} jne        _jmp_addr_0x004eccdc                          // 0x004eccbd    751d
_jmp_addr_0x004eccbf:    {disp32} mov       edx, dword ptr [edi + 0x00004994]             // 0x004eccbf    8b9794490000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b8]             // 0x004eccc5    8b87b8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ecccb    8b8f7c510000
                         push               edx                                           // 0x004eccd1    52
                         push               eax                                           // 0x004eccd2    50
                         push               ecx                                           // 0x004eccd3    51
                         call               _jmp_addr_0x004867f0                          // 0x004eccd4    e8179bf9ff
                         add                esp, 0x0c                                     // 0x004eccd9    83c40c
_jmp_addr_0x004eccdc:    {disp32} mov       al, byte ptr [edi + 0x000048ac]               // 0x004eccdc    8a87ac480000
                         test               al, al                                        // 0x004ecce2    84c0
                         {disp32} je        _jmp_addr_0x004ecf70                          // 0x004ecce4    0f8486020000
                         {disp32} mov       eax, dword ptr [edi + 0x00005220]             // 0x004eccea    8b8720520000
                         {disp32} fld       dword ptr [edi + 0x00000084]                  // 0x004eccf0    d98784000000
                         test               eax, eax                                      // 0x004eccf6    85c0
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x004eccf8    d9542418
                         {disp8} je         _jmp_addr_0x004ecd2a                          // 0x004eccfc    742c
                         fstp               st(0)                                         // 0x004eccfe    ddd8
                         push               ecx                                           // 0x004ecd00    51
                         {disp32} fld       dword ptr [edi + 0x00004840]                  // 0x004ecd01    d98740480000
                         {disp32} fsub      dword ptr [edi + 0x00000084]                  // 0x004ecd07    d8a784000000
                         fstp               dword ptr [esp]                               // 0x004ecd0d    d91c24
                         call               _jmp_addr_0x007faaf0                          // 0x004ecd10    e8dbdd3000
                         {disp32} fimul     dword ptr [edi + 0x000047d0]                  // 0x004ecd15    da8fd0470000
                         {disp32} mov       edx, dword ptr [edi + 0x00005220]             // 0x004ecd1b    8b9720520000
                         add                esp, 0x04                                     // 0x004ecd21    83c404
                         fidiv              dword ptr [edx]                               // 0x004ecd24    da32
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x004ecd26    d8442418
_jmp_addr_0x004ecd2a:    fchs                                                             // 0x004ecd2a    d9e0
                         xor.s              ebx, ebx                                      // 0x004ecd2c    33db
                         fld                st(0)                                         // 0x004ecd2e    d9c0
                         {disp32} lea       ebp, dword ptr [edi + 0x0000488c]             // 0x004ecd30    8daf8c480000
                         fcos                                                             // 0x004ecd36    d9ff
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x004ecd38    d95c2454
                         fsin                                                             // 0x004ecd3c    d9fe
                         {disp8} fst        dword ptr [esp + 0x3c]                        // 0x004ecd3e    d954243c
                         fchs                                                             // 0x004ecd42    d9e0
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x004ecd44    d95c244c
_jmp_addr_0x004ecd48:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004ecd48    d90598a38a00
                         mov.s              eax, ebx                                      // 0x004ecd4e    8bc3
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x004ecd50    d9442454
                         neg                eax                                           // 0x004ecd54    f7d8
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x004ecd56    d84dfc
                         sbb.s              eax, eax                                      // 0x004ecd59    1bc0
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x004ecd5b    d944244c
                         and                eax, 0xfffffffe                               // 0x004ecd5f    83e0fe
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x004ecd62    d84d04
                         push               0x0                                           // 0x004ecd65    6a00
                         add                eax, 0x000000c4                               // 0x004ecd67    05c4000000
                         push               eax                                           // 0x004ecd6c    50
                         faddp              st(1), st                                     // 0x004ecd6d    dec1
                         mov.s              ecx, edi                                      // 0x004ecd6f    8bcf
                         fadd               st, st(1)                                     // 0x004ecd71    d8c1
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x004ecd73    d95c2428
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x004ecd77    d944245c
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x004ecd7b    d84d04
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x004ecd7e    d9442444
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x004ecd82    d84dfc
                         faddp              st(1), st                                     // 0x004ecd85    dec1
                         fadd               st, st(1)                                     // 0x004ecd87    d8c1
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x004ecd89    d95c2430
                         fstp               st(0)                                         // 0x004ecd8d    ddd8
                         call               @GetAnim__9MorphableFll@16                    // 0x004ecd8f    e8bcc81200
                         mov.s              esi, eax                                      // 0x004ecd94    8bf0
                         test               esi, esi                                      // 0x004ecd96    85f6
                         {disp32} je        _jmp_addr_0x004ece6f                          // 0x004ecd98    0f84d1000000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x004ecd9e    d9442420
                         fabs                                                             // 0x004ecda2    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x004ecda4    dc1dd8798c00
                         fnstsw             ax                                            // 0x004ecdaa    dfe0
                         test               ah, 0x41                                      // 0x004ecdac    f6c441
                         {disp32} jne       _jmp_addr_0x004ece6f                          // 0x004ecdaf    0f85ba000000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x004ecdb5    d9442420
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x004ecdb9    d81d78b68a00
                         fnstsw             ax                                            // 0x004ecdbf    dfe0
                         test               ah, 0x41                                      // 0x004ecdc1    f6c441
                         {disp8} jne        _jmp_addr_0x004ecde5                          // 0x004ecdc4    751f
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x004ecdc6    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004ecdca    d81d90a38a00
                         fnstsw             ax                                            // 0x004ecdd0    dfe0
                         test               ah, 0x01                                      // 0x004ecdd2    f6c401
                         {disp8} je         _jmp_addr_0x004ecddd                          // 0x004ecdd5    7406
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x004ecdd7    d9442420
                         {disp8} jmp        _jmp_addr_0x004ecdeb                          // 0x004ecddb    eb0e
_jmp_addr_0x004ecddd:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004ecddd    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x004ecdeb                          // 0x004ecde3    eb06
_jmp_addr_0x004ecde5:    {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x004ecde5    d90578b68a00
_jmp_addr_0x004ecdeb:    {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x004ecdeb    d80590a38a00
                         {disp32} mov       ecx, dword ptr [edi + 0x000047fc]             // 0x004ecdf1    8b8ffc470000
                         push               0x0                                           // 0x004ecdf7    6a00
                         push               ecx                                           // 0x004ecdf9    51
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004ecdfa    d80db4a38a00
                         fimul              dword ptr [esi]                               // 0x004ece00    da0e
                         call               _jmp_addr_0x007a1400                          // 0x004ece02    e8f9452b00
                         {disp32} mov       edx, dword ptr [edi + 0x000047f8]             // 0x004ece07    8b97f8470000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000098]             // 0x004ece0d    8b8f98000000
                         push               eax                                           // 0x004ece13    50
                         {disp32} mov       eax, dword ptr [edi + 0x000047f4]             // 0x004ece14    8b87f4470000
                         push               edx                                           // 0x004ece1a    52
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x4 + 0x000000b4] // 0x004ece1b    8b948fb4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004ece22    8b4e34
                         push               eax                                           // 0x004ece25    50
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x004ece26    8b461c
                         dec                eax                                           // 0x004ece29    48
                         push               edx                                           // 0x004ece2a    52
                         cdq                                                              // 0x004ece2b    99
                         sub.s              eax, edx                                      // 0x004ece2c    2bc2
                         sar                eax, 1                                        // 0x004ece2e    d1f8
                         mov                edx, dword ptr [ecx + eax * 0x4]              // 0x004ece30    8b1481
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ece33    8b877c510000
                         push               edx                                           // 0x004ece39    52
                         push               eax                                           // 0x004ece3a    50
                         mov.s              ecx, esi                                      // 0x004ece3b    8bce
                         call               _jmp_addr_0x00861ee0                          // 0x004ece3d    e89e503700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ece42    8b8734480000
                         test               eax, eax                                      // 0x004ece48    85c0
                         {disp8} je         _jmp_addr_0x004ece52                          // 0x004ece4a    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ece4c    f6402410
                         {disp8} jne        _jmp_addr_0x004ece6f                          // 0x004ece50    751d
_jmp_addr_0x004ece52:    {disp32} mov       ecx, dword ptr [edi + 0x00004994]             // 0x004ece52    8b8f94490000
                         {disp32} mov       edx, dword ptr [edi + 0x000047b8]             // 0x004ece58    8b97b8470000
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ece5e    8b877c510000
                         push               ecx                                           // 0x004ece64    51
                         push               edx                                           // 0x004ece65    52
                         push               eax                                           // 0x004ece66    50
                         call               _jmp_addr_0x004867f0                          // 0x004ece67    e88499f9ff
                         add                esp, 0x0c                                     // 0x004ece6c    83c40c
_jmp_addr_0x004ece6f:    mov.s              ecx, ebx                                      // 0x004ece6f    8bcb
                         neg                ecx                                           // 0x004ece71    f7d9
                         sbb.s              ecx, ecx                                      // 0x004ece73    1bc9
                         and                ecx, 0xfffffffe                               // 0x004ece75    83e1fe
                         add                ecx, 0x000000c5                               // 0x004ece78    81c1c5000000
                         push               0x0                                           // 0x004ece7e    6a00
                         push               ecx                                           // 0x004ece80    51
                         mov.s              ecx, edi                                      // 0x004ece81    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004ece83    e8c8c71200
                         mov.s              esi, eax                                      // 0x004ece88    8bf0
                         test               esi, esi                                      // 0x004ece8a    85f6
                         {disp32} je        _jmp_addr_0x004ecf63                          // 0x004ece8c    0f84d1000000
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x004ece92    d9442428
                         fabs                                                             // 0x004ece96    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x004ece98    dc1dd8798c00
                         fnstsw             ax                                            // 0x004ece9e    dfe0
                         test               ah, 0x41                                      // 0x004ecea0    f6c441
                         {disp32} jne       _jmp_addr_0x004ecf63                          // 0x004ecea3    0f85ba000000
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x004ecea9    d9442428
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x004ecead    d81d78b68a00
                         fnstsw             ax                                            // 0x004eceb3    dfe0
                         test               ah, 0x41                                      // 0x004eceb5    f6c441
                         {disp8} jne        _jmp_addr_0x004eced9                          // 0x004eceb8    751f
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x004eceba    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x004ecebe    d81d90a38a00
                         fnstsw             ax                                            // 0x004ecec4    dfe0
                         test               ah, 0x01                                      // 0x004ecec6    f6c401
                         {disp8} je         _jmp_addr_0x004eced1                          // 0x004ecec9    7406
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x004ececb    d9442428
                         {disp8} jmp        _jmp_addr_0x004ecedf                          // 0x004ececf    eb0e
_jmp_addr_0x004eced1:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004eced1    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x004ecedf                          // 0x004eced7    eb06
_jmp_addr_0x004eced9:    {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x004eced9    d90578b68a00
_jmp_addr_0x004ecedf:    {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x004ecedf    d80590a38a00
                         {disp32} mov       edx, dword ptr [edi + 0x000047fc]             // 0x004ecee5    8b97fc470000
                         push               0x0                                           // 0x004eceeb    6a00
                         push               edx                                           // 0x004eceed    52
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004eceee    d80db4a38a00
                         fimul              dword ptr [esi]                               // 0x004ecef4    da0e
                         call               _jmp_addr_0x007a1400                          // 0x004ecef6    e805452b00
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f4]             // 0x004ecefb    8b8ff4470000
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ecf01    8b9798000000
                         push               eax                                           // 0x004ecf07    50
                         {disp32} mov       eax, dword ptr [edi + 0x000047f8]             // 0x004ecf08    8b87f8470000
                         push               eax                                           // 0x004ecf0e    50
                         {disp32} mov       eax, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ecf0f    8b8497b4000000
                         push               ecx                                           // 0x004ecf16    51
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004ecf17    8b4e34
                         push               eax                                           // 0x004ecf1a    50
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x004ecf1b    8b461c
                         dec                eax                                           // 0x004ecf1e    48
                         cdq                                                              // 0x004ecf1f    99
                         sub.s              eax, edx                                      // 0x004ecf20    2bc2
                         sar                eax, 1                                        // 0x004ecf22    d1f8
                         mov                edx, dword ptr [ecx + eax * 0x4]              // 0x004ecf24    8b1481
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ecf27    8b877c510000
                         push               edx                                           // 0x004ecf2d    52
                         push               eax                                           // 0x004ecf2e    50
                         mov.s              ecx, esi                                      // 0x004ecf2f    8bce
                         call               _jmp_addr_0x00861ee0                          // 0x004ecf31    e8aa4f3700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ecf36    8b8734480000
                         test               eax, eax                                      // 0x004ecf3c    85c0
                         {disp8} je         _jmp_addr_0x004ecf46                          // 0x004ecf3e    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ecf40    f6402410
                         {disp8} jne        _jmp_addr_0x004ecf63                          // 0x004ecf44    751d
_jmp_addr_0x004ecf46:    {disp32} mov       ecx, dword ptr [edi + 0x00004994]             // 0x004ecf46    8b8f94490000
                         {disp32} mov       edx, dword ptr [edi + 0x000047b8]             // 0x004ecf4c    8b97b8470000
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ecf52    8b877c510000
                         push               ecx                                           // 0x004ecf58    51
                         push               edx                                           // 0x004ecf59    52
                         push               eax                                           // 0x004ecf5a    50
                         call               _jmp_addr_0x004867f0                          // 0x004ecf5b    e89098f9ff
                         add                esp, 0x0c                                     // 0x004ecf60    83c40c
_jmp_addr_0x004ecf63:    inc                ebx                                           // 0x004ecf63    43
                         add                ebp, 0x0c                                     // 0x004ecf64    83c50c
                         cmp                ebx, 0x02                                     // 0x004ecf67    83fb02
                         {disp32} jl        _jmp_addr_0x004ecd48                          // 0x004ecf6a    0f8cd8fdffff
_jmp_addr_0x004ecf70:    {disp32} mov       eax, dword ptr [edi + 0x000049ac]             // 0x004ecf70    8b87ac490000
                         test               eax, eax                                      // 0x004ecf76    85c0
                         {disp8} je         _jmp_addr_0x004ecff0                          // 0x004ecf78    7476
                         push               0x0                                           // 0x004ecf7a    6a00
                         push               eax                                           // 0x004ecf7c    50
                         mov.s              ecx, edi                                      // 0x004ecf7d    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004ecf7f    e8ccc61200
                         test               eax, eax                                      // 0x004ecf84    85c0
                         {disp8} je         _jmp_addr_0x004ecff0                          // 0x004ecf86    7468
                         {disp32} mov       ecx, dword ptr [edi + 0x000049b8]             // 0x004ecf88    8b8fb8490000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f8]             // 0x004ecf8e    8b97f8470000
                         push               0x0                                           // 0x004ecf94    6a00
                         push               0x0                                           // 0x004ecf96    6a00
                         push               ecx                                           // 0x004ecf98    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f4]             // 0x004ecf99    8b8ff4470000
                         push               edx                                           // 0x004ecf9f    52
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ecfa0    8b9798000000
                         push               ecx                                           // 0x004ecfa6    51
                         {disp32} mov       ecx, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ecfa7    8b8c97b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x34]                   // 0x004ecfae    8b5034
                         push               ecx                                           // 0x004ecfb1    51
                         mov                ecx, dword ptr [edx]                          // 0x004ecfb2    8b0a
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ecfb4    8b977c510000
                         push               ecx                                           // 0x004ecfba    51
                         push               edx                                           // 0x004ecfbb    52
                         mov.s              ecx, eax                                      // 0x004ecfbc    8bc8
                         call               _jmp_addr_0x00861ee0                          // 0x004ecfbe    e81d4f3700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ecfc3    8b8734480000
                         test               eax, eax                                      // 0x004ecfc9    85c0
                         {disp8} je         _jmp_addr_0x004ecfd3                          // 0x004ecfcb    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ecfcd    f6402410
                         {disp8} jne        _jmp_addr_0x004ecff0                          // 0x004ecfd1    751d
_jmp_addr_0x004ecfd3:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ecfd3    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ecfd9    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ecfdf    8b977c510000
                         push               eax                                           // 0x004ecfe5    50
                         push               ecx                                           // 0x004ecfe6    51
                         push               edx                                           // 0x004ecfe7    52
                         call               _jmp_addr_0x004867f0                          // 0x004ecfe8    e80398f9ff
                         add                esp, 0x0c                                     // 0x004ecfed    83c40c
_jmp_addr_0x004ecff0:    {disp32} mov       eax, dword ptr [edi + 0x00005738]             // 0x004ecff0    8b8738570000
                         test               eax, eax                                      // 0x004ecff6    85c0
                         {disp8} je         _jmp_addr_0x004ed06c                          // 0x004ecff8    7472
                         push               0x0                                           // 0x004ecffa    6a00
                         push               eax                                           // 0x004ecffc    50
                         mov.s              ecx, edi                                      // 0x004ecffd    8bcf
                         call               @GetAnim__9MorphableFll@16                    // 0x004ecfff    e84cc61200
                         {disp32} mov       ecx, dword ptr [edi + 0x00005734]             // 0x004ed004    8b8f34570000
                         {disp32} mov       edx, dword ptr [edi + 0x000047f8]             // 0x004ed00a    8b97f8470000
                         push               0x0                                           // 0x004ed010    6a00
                         push               0x0                                           // 0x004ed012    6a00
                         push               ecx                                           // 0x004ed014    51
                         {disp32} mov       ecx, dword ptr [edi + 0x000047f4]             // 0x004ed015    8b8ff4470000
                         push               edx                                           // 0x004ed01b    52
                         {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ed01c    8b9798000000
                         push               ecx                                           // 0x004ed022    51
                         {disp32} mov       ecx, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ed023    8b8c97b4000000
                         {disp8} mov        edx, dword ptr [eax + 0x34]                   // 0x004ed02a    8b5034
                         push               ecx                                           // 0x004ed02d    51
                         mov                ecx, dword ptr [edx]                          // 0x004ed02e    8b0a
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ed030    8b977c510000
                         push               ecx                                           // 0x004ed036    51
                         push               edx                                           // 0x004ed037    52
                         mov.s              ecx, eax                                      // 0x004ed038    8bc8
                         call               _jmp_addr_0x00861ee0                          // 0x004ed03a    e8a14e3700
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ed03f    8b8734480000
                         test               eax, eax                                      // 0x004ed045    85c0
                         {disp8} je         _jmp_addr_0x004ed04f                          // 0x004ed047    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ed049    f6402410
                         {disp8} jne        _jmp_addr_0x004ed06c                          // 0x004ed04d    751d
_jmp_addr_0x004ed04f:    {disp32} mov       eax, dword ptr [edi + 0x00004994]             // 0x004ed04f    8b8794490000
                         {disp32} mov       ecx, dword ptr [edi + 0x000047b8]             // 0x004ed055    8b8fb8470000
                         {disp32} mov       edx, dword ptr [edi + 0x0000517c]             // 0x004ed05b    8b977c510000
                         push               eax                                           // 0x004ed061    50
                         push               ecx                                           // 0x004ed062    51
                         push               edx                                           // 0x004ed063    52
                         call               _jmp_addr_0x004867f0                          // 0x004ed064    e88797f9ff
                         add                esp, 0x0c                                     // 0x004ed069    83c40c
_jmp_addr_0x004ed06c:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ed06c    8b442414
                         test               eax, eax                                      // 0x004ed070    85c0
                         pop                ebp                                           // 0x004ed072    5d
                         {disp32} jne       _jmp_addr_0x004ed0fa                          // 0x004ed073    0f8581000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000098]             // 0x004ed079    8b8f98000000
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x4 + 0x000000b4] // 0x004ed07f    8b948fb4000000
                         {disp8} lea        eax, dword ptr [esp + 0x60]                   // 0x004ed086    8d442460
                         push               eax                                           // 0x004ed08a    50
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ed08b    8b877c510000
                         push               edx                                           // 0x004ed091    52
                         push               eax                                           // 0x004ed092    50
                         call               _jmp_addr_0x00839f10                          // 0x004ed093    e878ce3400
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x004ed098    8b8734480000
                         add                esp, 0x0c                                     // 0x004ed09e    83c40c
                         test               eax, eax                                      // 0x004ed0a1    85c0
                         {disp8} je         _jmp_addr_0x004ed0ab                          // 0x004ed0a3    7406
                         test               byte ptr [eax + 0x24], 0x10                   // 0x004ed0a5    f6402410
                         {disp8} jne        _jmp_addr_0x004ed0fa                          // 0x004ed0a9    754f
_jmp_addr_0x004ed0ab:    {disp32} mov       ecx, dword ptr [edi + 0x00004994]             // 0x004ed0ab    8b8f94490000
                         {disp32} mov       edx, dword ptr [edi + 0x000047b8]             // 0x004ed0b1    8b97b8470000
                         {disp32} mov       eax, dword ptr [edi + 0x0000517c]             // 0x004ed0b7    8b877c510000
                         push               ecx                                           // 0x004ed0bd    51
                         push               edx                                           // 0x004ed0be    52
                         push               eax                                           // 0x004ed0bf    50
                         call               _jmp_addr_0x004867f0                          // 0x004ed0c0    e82b97f9ff
                         {disp8} jmp        _jmp_addr_0x004ed0f7                          // 0x004ed0c5    eb30
_jmp_addr_0x004ed0c7:    cmp                dword ptr [edi + 0x00000098], -0x01           // 0x004ed0c7    83bf98000000ff
                         {disp8} jne        _jmp_addr_0x004ed0d6                          // 0x004ed0ce    7506
                         {disp32} mov       dword ptr [edi + 0x00000098], ebx             // 0x004ed0d0    899f98000000
_jmp_addr_0x004ed0d6:    {disp32} mov       edx, dword ptr [edi + 0x00000098]             // 0x004ed0d6    8b9798000000
                         {disp32} mov       eax, dword ptr [edi + edx * 0x4 + 0x000000b4] // 0x004ed0dc    8b8497b4000000
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x004ed0e3    8d4c2460
                         push               ecx                                           // 0x004ed0e7    51
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ed0e8    8b8f7c510000
                         push               eax                                           // 0x004ed0ee    50
                         push               ecx                                           // 0x004ed0ef    51
                         call               ?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z                     // 0x004ed0f0    e8dbd03400
                         fstp               st(0)                                         // 0x004ed0f5    ddd8
_jmp_addr_0x004ed0f7:    add                esp, 0x0c                                     // 0x004ed0f7    83c40c
_jmp_addr_0x004ed0fa:    {disp32} mov       eax, dword ptr [edi + 0x00005218]             // 0x004ed0fa    8b8718520000
                         xor.s              edx, edx                                      // 0x004ed100    33d2
                         cmp.s              eax, edx                                      // 0x004ed102    3bc2
                         {disp8} jne        _jmp_addr_0x004ed11e                          // 0x004ed104    7518
                         {disp32} mov       eax, dword ptr [edi + 0x00005178]             // 0x004ed106    8b8778510000
                         {disp32} mov       ecx, dword ptr [edi + 0x0000517c]             // 0x004ed10c    8b8f7c510000
                         {disp32} mov       dword ptr [edi + 0x00005178], ecx             // 0x004ed112    898f78510000
                         {disp32} mov       dword ptr [edi + 0x0000517c], eax             // 0x004ed118    89877c510000
_jmp_addr_0x004ed11e:    cmp                dword ptr [edi + 0x000051dc], edx             // 0x004ed11e    3997dc510000
                         {disp8} jne        _jmp_addr_0x004ed14e                          // 0x004ed124    7528
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x004ed126    8b4c2428
                         {disp32} mov       esi, dword ptr [edi + 0x00005178]             // 0x004ed12a    8bb778510000
                         mov.s              eax, ecx                                      // 0x004ed130    8bc1
                         {disp32} mov       dword ptr [edi + 0x000051dc], 0x00000001      // 0x004ed132    c787dc51000001000000
                         {disp32} mov       edi, dword ptr [edi + 0x00005174]             // 0x004ed13c    8bbf74510000
                         shr                ecx, 2                                        // 0x004ed142    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004ed145    f3a5
                         mov.s              ecx, eax                                      // 0x004ed147    8bc8
                         and                ecx, 0x03                                     // 0x004ed149    83e103
                         rep movsb                                                        // 0x004ed14c    f3a4
_jmp_addr_0x004ed14e:    pop                edi                                           // 0x004ed14e    5f
                         pop                esi                                           // 0x004ed14f    5e
                         {disp32} mov       dword ptr [data_bytes + 0x53f620], edx        // 0x004ed150    89152056f000
                         pop                ebx                                           // 0x004ed156    5b
                         add                esp, 0x00000084                               // 0x004ed157    81c484000000
                         ret                                                              // 0x004ed15d    c3

// Snippet: db, [0x004ed15e, 0x004ed160)
.byte 0x8b, 0xff                  // 0x004ed15e

// Snippet: jmptbl, [0x004ed160, 0x004ed16c)
.byte 0xa5, 0xca, 0x4e, 0x00      // 0x004ed160
.byte 0xaa, 0xc8, 0x4e, 0x00      // 0x004ed164
.byte 0xb6, 0xc8, 0x4e, 0x00      // 0x004ed168

// Snippet: ijmptbl, [0x004ed16c, 0x004ed177)
.byte 0x00, 0x00, 0x01, 0x00      // 0x004ed16c
.byte 0x00, 0x02, 0x02, 0x02      // 0x004ed170
.byte 0x02, 0x02, 0x00            // 0x004ed174

// Snippet: db, [0x004ed177, 0x004ed180)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004ed177
.byte 0x90, 0x90, 0x90, 0x90      // 0x004ed17b
.byte 0x90                        // 0x004ed17f

