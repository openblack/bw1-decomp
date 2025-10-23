.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0043dbb0
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047d740
.extern _jmp_addr_0x00480c60
.extern _jmp_addr_0x00483850
.extern _jmp_addr_0x004839d0
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x004842e0
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x00484ce0
.extern _jmp_addr_0x00484e10
.extern @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17
.extern ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern ?SetSpeed@Villager@@QAEXJH@Z
.extern ?IsAvailableToBeSummonedByCreature@Villager@@QAE_NXZ
.extern ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z
.extern ?StartWorshippingCreature@Villager@@QAE_NPAVCreature@@@Z
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z

.globl ?SubStatePerformAddVillagersToDance@Creature@@QAE_NXZ


start_0x00501bc0_0x00502660:
// Snippet: asm, [0x00501bc0, 0x00502630)
                         sub                esp, 0x10                                     // 0x00501bc0    83ec10
                         push               edi                                           // 0x00501bc3    57
                         mov.s              edi, ecx                                      // 0x00501bc4    8bf9
                         mov                eax, dword ptr [edi]                          // 0x00501bc6    8b07
                         call               dword ptr [eax + 0x1c]                        // 0x00501bc8    ff501c
                         test               eax, eax                                      // 0x00501bcb    85c0
                         {disp8} jne        _jmp_addr_0x00501bd9                          // 0x00501bcd    750a
                         mov                eax, 0x00000002                               // 0x00501bcf    b802000000
                         pop                edi                                           // 0x00501bd4    5f
                         add                esp, 0x10                                     // 0x00501bd5    83c410
                         ret                                                              // 0x00501bd8    c3
_jmp_addr_0x00501bd9:    {disp32} mov       ecx, dword ptr [edi + 0x00000160]             // 0x00501bd9    8b8f60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00501bdf    8b4958
                         call               _jmp_addr_0x004842e0                          // 0x00501be2    e8f926f8ff
                         test               eax, eax                                      // 0x00501be7    85c0
                         {disp32} je        _jmp_addr_0x00501c80                          // 0x00501be9    0f8491000000
                         {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x00501bef    8b5728
                         {disp32} mov       eax, dword ptr [edx + 0x000002e8]             // 0x00501bf2    8b82e8020000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00501bf8    89442404
                         xor.s              eax, eax                                      // 0x00501bfc    33c0
                         push               esi                                           // 0x00501bfe    56
                         mov.s              ecx, edi                                      // 0x00501bff    8bcf
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00501c01    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00501c05    89442410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00501c09    89442414
                         call               _jmp_addr_0x0047d740                          // 0x00501c0d    e82ebbf7ff
                         mov.s              esi, eax                                      // 0x00501c12    8bf0
                         {disp32} fld       dword ptr [esi + 0x000000c8]                  // 0x00501c14    d986c8000000
                         add                esi, 0x000000c8                               // 0x00501c1a    81c6c8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00501c20    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00501c26    e8d5f72900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00501c2b    8944240c
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00501c2f    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00501c32    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00501c38    e8c3f72900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00501c3d    8d4c240c
                         push               ecx                                           // 0x00501c41    51
                         {disp8} lea        edx, dword ptr [edi + 0x14]                   // 0x00501c42    8d5714
                         push               edx                                           // 0x00501c45    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00501c46    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00501c4a    c744241c00000000
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00501c52    e819b12400
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00501c57    d85c2410
                         add                esp, 0x08                                     // 0x00501c5b    83c408
                         pop                esi                                           // 0x00501c5e    5e
                         fnstsw             ax                                            // 0x00501c5f    dfe0
                         test               ah, 0x41                                      // 0x00501c61    f6c441
                         {disp8} jne        _jmp_addr_0x00501c76                          // 0x00501c64    7510
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00501c66    8b8764010000
                         {disp32} mov       dword ptr [eax + 0x00000658], 0x00000001      // 0x00501c6c    c7805806000001000000
_jmp_addr_0x00501c76:    mov                eax, 0x00000002                               // 0x00501c76    b802000000
                         pop                edi                                           // 0x00501c7b    5f
                         add                esp, 0x10                                     // 0x00501c7c    83c410
                         ret                                                              // 0x00501c7f    c3
_jmp_addr_0x00501c80:    xor.s              eax, eax                                      // 0x00501c80    33c0
                         pop                edi                                           // 0x00501c82    5f
                         add                esp, 0x10                                     // 0x00501c83    83c410
                         ret                                                              // 0x00501c86    c3
                         nop                                                              // 0x00501c87    90
                         nop                                                              // 0x00501c88    90
                         nop                                                              // 0x00501c89    90
                         nop                                                              // 0x00501c8a    90
                         nop                                                              // 0x00501c8b    90
                         nop                                                              // 0x00501c8c    90
                         nop                                                              // 0x00501c8d    90
                         nop                                                              // 0x00501c8e    90
                         nop                                                              // 0x00501c8f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00501c90    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x00501c96    8b90b40f0000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]             // 0x00501c9c    8b8960010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00501ca2    8b4958
                         add                eax, 0x00000fa8                               // 0x00501ca5    05a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x00501caa    8d1452
                         shl                edx, 5                                        // 0x00501cad    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x38]       // 0x00501cb0    8b440238
                         push               eax                                           // 0x00501cb4    50
                         call               _jmp_addr_0x00484b00                          // 0x00501cb5    e8462ef8ff
                         neg                eax                                           // 0x00501cba    f7d8
                         sbb.s              eax, eax                                      // 0x00501cbc    1bc0
                         and                eax, 0x02                                     // 0x00501cbe    83e002
                         ret                                                              // 0x00501cc1    c3
                         nop                                                              // 0x00501cc2    90
                         nop                                                              // 0x00501cc3    90
                         nop                                                              // 0x00501cc4    90
                         nop                                                              // 0x00501cc5    90
                         nop                                                              // 0x00501cc6    90
                         nop                                                              // 0x00501cc7    90
                         nop                                                              // 0x00501cc8    90
                         nop                                                              // 0x00501cc9    90
                         nop                                                              // 0x00501cca    90
                         nop                                                              // 0x00501ccb    90
                         nop                                                              // 0x00501ccc    90
                         nop                                                              // 0x00501ccd    90
                         nop                                                              // 0x00501cce    90
                         nop                                                              // 0x00501ccf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00501cd0    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00501cd6    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00501cd9    e8f225f8ff
                         neg                eax                                           // 0x00501cde    f7d8
                         sbb.s              eax, eax                                      // 0x00501ce0    1bc0
                         and                eax, 0xfffffffe                               // 0x00501ce2    83e0fe
                         add                eax, 0x02                                     // 0x00501ce5    83c002
                         ret                                                              // 0x00501ce8    c3
                         nop                                                              // 0x00501ce9    90
                         nop                                                              // 0x00501cea    90
                         nop                                                              // 0x00501ceb    90
                         nop                                                              // 0x00501cec    90
                         nop                                                              // 0x00501ced    90
                         nop                                                              // 0x00501cee    90
                         nop                                                              // 0x00501cef    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00501cf0    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000f5c]             // 0x00501cf6    8b905c0f0000
                         xor.s              ecx, ecx                                      // 0x00501cfc    33c9
                         test               edx, edx                                      // 0x00501cfe    85d2
                         setne              cl                                            // 0x00501d00    0f95c1
                         inc                ecx                                           // 0x00501d03    41
                         mov.s              eax, ecx                                      // 0x00501d04    8bc1
                         ret                                                              // 0x00501d06    c3
                         nop                                                              // 0x00501d07    90
                         nop                                                              // 0x00501d08    90
                         nop                                                              // 0x00501d09    90
                         nop                                                              // 0x00501d0a    90
                         nop                                                              // 0x00501d0b    90
                         nop                                                              // 0x00501d0c    90
                         nop                                                              // 0x00501d0d    90
                         nop                                                              // 0x00501d0e    90
                         nop                                                              // 0x00501d0f    90
?SubStatePerformAddVillagersToDance@Creature@@QAE_NXZ:
                         sub                esp, 0x10                                     // 0x00501d10    83ec10
                         push               ebp                                           // 0x00501d13    55
                         mov.s              ebp, ecx                                      // 0x00501d14    8be9
                         {disp32} mov       eax, dword ptr [ebp + 0x00000164]             // 0x00501d16    8b8564010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00501d1c    8b88b40f0000
                         push               esi                                           // 0x00501d22    56
                         push               edi                                           // 0x00501d23    57
                         add                eax, 0x00000fa8                               // 0x00501d24    05a80f0000
                         push               0x0                                           // 0x00501d29    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00501d2b    8d0c49
                         push               0x009c7f50                                    // 0x00501d2e    68507f9c00
                         shl                ecx, 5                                        // 0x00501d33    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00501d36    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00501d3a    8b5030
                         push               0x009c7f30                                    // 0x00501d3d    68307f9c00
                         push               0x0                                           // 0x00501d42    6a00
                         push               edx                                           // 0x00501d44    52
                         call               ___RTDynamicCast                              // 0x00501d45    e8cf3c2c00
                         push               0x0                                           // 0x00501d4a    6a00
                         push               0x009cafc8                                    // 0x00501d4c    68c8af9c00
                         push               0x009c7f50                                    // 0x00501d51    68507f9c00
                         push               0x0                                           // 0x00501d56    6a00
                         push               eax                                           // 0x00501d58    50
                         call               ___RTDynamicCast                              // 0x00501d59    e8bb3c2c00
                         add                esp, 0x28                                     // 0x00501d5e    83c428
                         test               eax, eax                                      // 0x00501d61    85c0
                         {disp32} je        _jmp_addr_0x00501eff                          // 0x00501d63    0f8496010000
                         mov                edx, dword ptr [eax]                          // 0x00501d69    8b10
                         mov.s              ecx, eax                                      // 0x00501d6b    8bc8
                         call               dword ptr [edx + 0x48]                        // 0x00501d6d    ff5248
                         mov.s              ecx, eax                                      // 0x00501d70    8bc8
                         test               ecx, ecx                                      // 0x00501d72    85c9
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00501d74    894c2410
                         {disp32} je        _jmp_addr_0x00501eff                          // 0x00501d78    0f8481010000
                         {disp32} mov       edi, dword ptr [ecx + 0x00000754]             // 0x00501d7e    8bb954070000
                         xor.s              esi, esi                                      // 0x00501d84    33f6
                         xor.s              eax, eax                                      // 0x00501d86    33c0
                         test               edi, edi                                      // 0x00501d88    85ff
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x00501d8a    89742418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00501d8e    89442414
                         {disp8} je         _jmp_addr_0x00501def                          // 0x00501d92    745b
_jmp_addr_0x00501d94:    {disp32} mov       esi, dword ptr [edi + 0x000000a0]             // 0x00501d94    8bb7a0000000
                         test               esi, esi                                      // 0x00501d9a    85f6
                         {disp8} je         _jmp_addr_0x00501de1                          // 0x00501d9c    7443
_jmp_addr_0x00501d9e:    mov.s              ecx, esi                                      // 0x00501d9e    8bce
                         call               ?IsAvailableToBeSummonedByCreature@Villager@@QAE_NXZ                          // 0x00501da0    e81b052500
                         test               eax, eax                                      // 0x00501da5    85c0
                         {disp8} je         _jmp_addr_0x00501dd3                          // 0x00501da7    742a
                         test               esi, esi                                      // 0x00501da9    85f6
                         {disp8} je         _jmp_addr_0x00501dd3                          // 0x00501dab    7426
                         push               0x8                                           // 0x00501dad    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00501daf    e83a472c00
                         add                esp, 0x04                                     // 0x00501db4    83c404
                         test               eax, eax                                      // 0x00501db7    85c0
                         {disp8} je         _jmp_addr_0x00501dd3                          // 0x00501db9    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00501dbb    8b4c2414
                         mov                dword ptr [eax], ecx                          // 0x00501dbf    8908
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00501dc1    897004
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00501dc4    8b4c2418
                         inc                ecx                                           // 0x00501dc8    41
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00501dc9    89442414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00501dcd    894c2418
                         {disp8} jmp        _jmp_addr_0x00501dd7                          // 0x00501dd1    eb04
_jmp_addr_0x00501dd3:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00501dd3    8b442414
_jmp_addr_0x00501dd7:    {disp32} mov       esi, dword ptr [esi + 0x000000e4]             // 0x00501dd7    8bb6e4000000
                         test               esi, esi                                      // 0x00501ddd    85f6
                         {disp8} jne        _jmp_addr_0x00501d9e                          // 0x00501ddf    75bd
_jmp_addr_0x00501de1:    {disp32} mov       edi, dword ptr [edi + 0x0000009c]             // 0x00501de1    8bbf9c000000
                         test               edi, edi                                      // 0x00501de7    85ff
                         {disp8} jne        _jmp_addr_0x00501d94                          // 0x00501de9    75a9
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00501deb    8b742418
_jmp_addr_0x00501def:    {disp32} mov       ecx, dword ptr [ebp + 0x00000164]             // 0x00501def    8b8d64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]             // 0x00501df5    8b91b40f0000
                         add                ecx, 0x00000fa8                               // 0x00501dfb    81c1a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x00501e01    8d1452
                         shl                edx, 5                                        // 0x00501e04    c1e205
                         cmp                esi, dword ptr [edx + ecx * 0x1 + 0x38]       // 0x00501e07    3b740a38
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x00501e0b    8974240c
                         {disp32} jb        _jmp_addr_0x00501ed4                          // 0x00501e0f    0f82bf000000
                         xor.s              edi, edi                                      // 0x00501e15    33ff
                         test               eax, eax                                      // 0x00501e17    85c0
                         push               ebx                                           // 0x00501e19    53
                         mov.s              ebx, eax                                      // 0x00501e1a    8bd8
                         {disp32} je        _jmp_addr_0x00501eac                          // 0x00501e1c    0f848a000000
_jmp_addr_0x00501e22:    {disp8} mov        esi, dword ptr [ebx + 0x04]                   // 0x00501e22    8b7304
                         push               ebp                                           // 0x00501e25    55
                         mov.s              ecx, esi                                      // 0x00501e26    8bce
                         call               ?StartWorshippingCreature@Villager@@QAE_NPAVCreature@@@Z                          // 0x00501e28    e8b3a82600
                         cmp                eax, 0x01                                     // 0x00501e2d    83f801
                         {disp8} jne        _jmp_addr_0x00501e9e                          // 0x00501e30    756c
                         test               esi, esi                                      // 0x00501e32    85f6
                         {disp8} je         _jmp_addr_0x00501e5b                          // 0x00501e34    7425
                         push               0x8                                           // 0x00501e36    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00501e38    e8b1462c00
                         add                esp, 0x04                                     // 0x00501e3d    83c404
                         test               eax, eax                                      // 0x00501e40    85c0
                         {disp8} je         _jmp_addr_0x00501e5b                          // 0x00501e42    7417
                         {disp32} mov       ecx, dword ptr [ebp + 0x00001090]             // 0x00501e44    8b8d90100000
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00501e4a    897004
                         mov                dword ptr [eax], ecx                          // 0x00501e4d    8908
                         {disp32} mov       dword ptr [ebp + 0x00001090], eax             // 0x00501e4f    898590100000
                         {disp32} inc       dword ptr [ebp + 0x00001094]                  // 0x00501e55    ff8594100000
_jmp_addr_0x00501e5b:    inc                edi                                           // 0x00501e5b    47
                         cmp                edi, 0x0b                                     // 0x00501e5c    83ff0b
                         {disp8} jg         _jmp_addr_0x00501e8d                          // 0x00501e5f    7f2c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00501e61    8b442410
                         mov.s              ecx, eax                                      // 0x00501e65    8bc8
                         and                ecx, 0x01                                     // 0x00501e67    83e101
                         cmp                cl, 0x01                                      // 0x00501e6a    80f901
                         {disp8} jne        _jmp_addr_0x00501e74                          // 0x00501e6d    7505
                         dec                eax                                           // 0x00501e6f    48
                         cmp.s              edi, eax                                      // 0x00501e70    3bf8
                         {disp8} jae        _jmp_addr_0x00501e8d                          // 0x00501e72    7319
_jmp_addr_0x00501e74:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00501e74    8b542414
                         {disp32} mov       ecx, dword ptr [edx + 0x00000618]             // 0x00501e78    8b8a18060000
                         shl                ecx, 1                                        // 0x00501e7e    d1e1
                         mov                eax, 0xaaaaaaab                               // 0x00501e80    b8abaaaaaa
                         mul                ecx                                           // 0x00501e85    f7e1
                         shr                edx, 1                                        // 0x00501e87    d1ea
                         cmp.s              edi, edx                                      // 0x00501e89    3bfa
                         {disp8} jbe        _jmp_addr_0x00501e9e                          // 0x00501e8b    7611
_jmp_addr_0x00501e8d:    mov.s              edx, edi                                      // 0x00501e8d    8bd7
                         and                edx, 0x80000001                               // 0x00501e8f    81e201000080
                         {disp8} jns        _jmp_addr_0x00501e9c                          // 0x00501e95    7905
                         dec                edx                                           // 0x00501e97    4a
                         or                 edx, 0xfffffffe                               // 0x00501e98    83cafe
                         inc                edx                                           // 0x00501e9b    42
_jmp_addr_0x00501e9c:    {disp8} je         _jmp_addr_0x00501ea8                          // 0x00501e9c    740a
_jmp_addr_0x00501e9e:    mov                ebx, dword ptr [ebx]                          // 0x00501e9e    8b1b
                         test               ebx, ebx                                      // 0x00501ea0    85db
                         {disp32} jne       _jmp_addr_0x00501e22                          // 0x00501ea2    0f857affffff
_jmp_addr_0x00501ea8:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00501ea8    8b442418
_jmp_addr_0x00501eac:    test               eax, eax                                      // 0x00501eac    85c0
                         pop                ebx                                           // 0x00501eae    5b
                         {disp8} je         _jmp_addr_0x00501ec8                          // 0x00501eaf    7417
_jmp_addr_0x00501eb1:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00501eb1    8b4004
                         push               0x0                                           // 0x00501eb4    6a00
                         push               eax                                           // 0x00501eb6    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00501eb7    8d4c241c
                         call               _jmp_addr_0x0043dbb0                          // 0x00501ebb    e8f0bcf3ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00501ec0    8b442414
                         test               eax, eax                                      // 0x00501ec4    85c0
                         {disp8} jne        _jmp_addr_0x00501eb1                          // 0x00501ec6    75e9
_jmp_addr_0x00501ec8:    pop                edi                                           // 0x00501ec8    5f
                         pop                esi                                           // 0x00501ec9    5e
                         mov                eax, 0x00000002                               // 0x00501eca    b802000000
                         pop                ebp                                           // 0x00501ecf    5d
                         add                esp, 0x10                                     // 0x00501ed0    83c410
                         ret                                                              // 0x00501ed3    c3
_jmp_addr_0x00501ed4:    test               eax, eax                                      // 0x00501ed4    85c0
                         {disp8} je         _jmp_addr_0x00501eef                          // 0x00501ed6    7417
_jmp_addr_0x00501ed8:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00501ed8    8b4804
                         push               0x0                                           // 0x00501edb    6a00
                         push               ecx                                           // 0x00501edd    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00501ede    8d4c241c
                         call               _jmp_addr_0x0043dbb0                          // 0x00501ee2    e8c9bcf3ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00501ee7    8b442414
                         test               eax, eax                                      // 0x00501eeb    85c0
                         {disp8} jne        _jmp_addr_0x00501ed8                          // 0x00501eed    75e9
_jmp_addr_0x00501eef:    push               0x1                                           // 0x00501eef    6a01
                         push               0x1                                           // 0x00501ef1    6a01
                         push               0x00be6610                                    // 0x00501ef3    681066be00
                         mov.s              ecx, ebp                                      // 0x00501ef8    8bcd
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x00501efa    e83138f7ff
_jmp_addr_0x00501eff:    pop                edi                                           // 0x00501eff    5f
                         pop                esi                                           // 0x00501f00    5e
                         mov                eax, 0x00000001                               // 0x00501f01    b801000000
                         pop                ebp                                           // 0x00501f06    5d
                         add                esp, 0x10                                     // 0x00501f07    83c410
                         ret                                                              // 0x00501f0a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00501f0b    e869f9efff
                         sub                esp, 0x10                                     // 0x00501f10    83ec10
                         push               ebx                                           // 0x00501f13    53
                         push               ebp                                           // 0x00501f14    55
                         mov.s              ebp, ecx                                      // 0x00501f15    8be9
                         xor.s              ebx, ebx                                      // 0x00501f17    33db
                         push               esi                                           // 0x00501f19    56
                         {disp32} mov       esi, dword ptr [ebp + 0x00000164]             // 0x00501f1a    8bb564010000
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00501f20    895c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00501f24    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00501f28    895c2418
                         {disp32} mov       eax, dword ptr [esi + 0x00000fb4]             // 0x00501f2c    8b86b40f0000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00501f32    8d0440
                         shl                eax, 5                                        // 0x00501f35    c1e005
                         {disp32} fld       dword ptr [eax + esi * 0x1 + 0x00000fe4]      // 0x00501f38    d98430e40f0000
                         push               edi                                           // 0x00501f3f    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00501f40    d80d00c48a00
                         {disp32} lea       edi, dword ptr [eax + esi * 0x1 + 0x00000fe4] // 0x00501f46    8dbc30e40f0000
                         call               _jmp_addr_0x007a1400                          // 0x00501f4d    e8aef42900
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00501f52    89442414
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x00501f56    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00501f59    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00501f5f    e89cf42900
                         push               ebx                                           // 0x00501f64    53
                         push               0x009c7f50                                    // 0x00501f65    68507f9c00
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00501f6a    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x00501f6e    895c2424
                         {disp32} mov       esi, dword ptr [esi + 0x00000f58]             // 0x00501f72    8bb6580f0000
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00501f78    8b4e30
                         push               0x009c7f30                                    // 0x00501f7b    68307f9c00
                         push               ebx                                           // 0x00501f80    53
                         push               ecx                                           // 0x00501f81    51
                         call               ___RTDynamicCast                              // 0x00501f82    e8923a2c00
                         push               ebx                                           // 0x00501f87    53
                         push               0x009cafc8                                    // 0x00501f88    68c8af9c00
                         push               0x009c7f50                                    // 0x00501f8d    68507f9c00
                         push               ebx                                           // 0x00501f92    53
                         push               eax                                           // 0x00501f93    50
                         call               ___RTDynamicCast                              // 0x00501f94    e8803a2c00
                         add                esp, 0x28                                     // 0x00501f99    83c428
                         test               eax, eax                                      // 0x00501f9c    85c0
                         {disp32} je        _jmp_addr_0x00502091                          // 0x00501f9e    0f84ed000000
                         {disp32} mov       edi, dword ptr [ebp + 0x00001090]             // 0x00501fa4    8bbd90100000
                         test               edi, edi                                      // 0x00501faa    85ff
                         {disp32} je        _jmp_addr_0x00502091                          // 0x00501fac    0f84df000000
_jmp_addr_0x00501fb2:    {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00501fb2    8b7704
                         push               0x000005c9                                    // 0x00501fb5    68c9050000
                         push               0x00be6588                                    // 0x00501fba    688865be00
                         push               0x41200000                                    // 0x00501fbf    6800002041
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x00501fc4    e867c51d00
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00501fc9    db442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00501fcd    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00501fd3    d80d1cc48a00
                         faddp              st(1), st                                     // 0x00501fd9    dec1
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26e4]              // 0x00501fdb    d825e4b68a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00501fe1    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x00501fe7    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00501fed    e80ef42900
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00501ff2    8b542424
                         push               0x000005ca                                    // 0x00501ff6    68ca050000
                         push               0x00be6588                                    // 0x00501ffb    688865be00
                         push               0x41200000                                    // 0x00502000    6800002041
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00502005    8944242c
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00502009    89542428
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x0050200d    e81ec51d00
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00502012    db442428
                         add                esp, 0x18                                     // 0x00502016    83c418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00502019    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050201f    d80d1cc48a00
                         faddp              st(1), st                                     // 0x00502025    dec1
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26e4]              // 0x00502027    d825e4b68a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0050202d    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x00502033    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00502039    e8c2f32900
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0050203e    89442418
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00502042    8b4628
                         {disp32} mov       ecx, dword ptr [eax + 0x00000108]             // 0x00502045    8b8808010000
                         shl                ecx, 1                                        // 0x0050204b    d1e1
                         push               0x1                                           // 0x0050204d    6a01
                         push               ecx                                           // 0x0050204f    51
                         mov.s              ecx, esi                                      // 0x00502050    8bce
                         call               ?SetSpeed@Villager@@QAEXJH@Z                  // 0x00502052    e879ee2400
                         push               0x000000cc                                    // 0x00502057    68cc000000
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0050205c    8d542418
                         push               edx                                           // 0x00502060    52
                         mov.s              ecx, esi                                      // 0x00502061    8bce
                         call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z                          // 0x00502063    e898172600
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00502068    8b4628
                         {disp32} mov       ecx, dword ptr [eax + 0x00000108]             // 0x0050206b    8b8808010000
                         shl                ecx, 1                                        // 0x00502071    d1e1
                         push               0x1                                           // 0x00502073    6a01
                         push               ecx                                           // 0x00502075    51
                         mov.s              ecx, esi                                      // 0x00502076    8bce
                         call               ?SetSpeed@Villager@@QAEXJH@Z                  // 0x00502078    e853ee2400
                         mov                edi, dword ptr [edi]                          // 0x0050207d    8b3f
                         inc                ebx                                           // 0x0050207f    43
                         test               edi, edi                                      // 0x00502080    85ff
                         {disp32} jne       _jmp_addr_0x00501fb2                          // 0x00502082    0f852affffff
                         test               ebx, ebx                                      // 0x00502088    85db
                         mov                eax, 0x00000002                               // 0x0050208a    b802000000
                         {disp8} ja         _jmp_addr_0x00502096                          // 0x0050208f    7705
_jmp_addr_0x00502091:    mov                eax, 0x00000001                               // 0x00502091    b801000000
_jmp_addr_0x00502096:    pop                edi                                           // 0x00502096    5f
                         pop                esi                                           // 0x00502097    5e
                         pop                ebp                                           // 0x00502098    5d
                         pop                ebx                                           // 0x00502099    5b
                         add                esp, 0x10                                     // 0x0050209a    83c410
                         ret                                                              // 0x0050209d    c3
                         nop                                                              // 0x0050209e    90
                         nop                                                              // 0x0050209f    90
                         sub                esp, 0x10                                     // 0x005020a0    83ec10
                         push               ebx                                           // 0x005020a3    53
                         push               ebp                                           // 0x005020a4    55
                         mov.s              ebx, ecx                                      // 0x005020a5    8bd9
                         push               edi                                           // 0x005020a7    57
                         {disp32} mov       edi, dword ptr [ebx + 0x00001090]             // 0x005020a8    8bbb90100000
                         xor.s              ebp, ebp                                      // 0x005020ae    33ed
                         cmp.s              edi, ebp                                      // 0x005020b0    3bfd
                         {disp8} mov        dword ptr [esp + 0x0c], ebp                   // 0x005020b2    896c240c
                         {disp32} je        _jmp_addr_0x0050217b                          // 0x005020b6    0f84bf000000
                         push               esi                                           // 0x005020bc    56
_jmp_addr_0x005020bd:    {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x005020bd    8b7704
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x005020c0    8b86d8000000
                         cmp.s              eax, ebp                                      // 0x005020c6    3bc5
                         {disp32} je        _jmp_addr_0x00502165                          // 0x005020c8    0f8497000000
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x005020ce    896c2414
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x005020d2    896c2418
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x005020d6    c744241c00000000
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x005020de    8b5014
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x005020e1    8d4c2414
                         push               ecx                                           // 0x005020e5    51
                         add                edx, 0x14                                     // 0x005020e6    83c214
                         push               edx                                           // 0x005020e9    52
                         mov.s              ecx, esi                                      // 0x005020ea    8bce
                         call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z                          // 0x005020ec    e8cfd80e00
                         {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x005020f1    8b86d8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x005020f7    8b4814
                         add                ecx, 0x14                                     // 0x005020fa    83c114
                         push               ecx                                           // 0x005020fd    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x005020fe    8d542418
                         push               edx                                           // 0x00502102    52
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00502103    e868ac2400
                         fstp               st(0)                                         // 0x00502108    ddd8
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0050210a    8b4628
                         {disp32} mov       ecx, dword ptr [eax + 0x00000108]             // 0x0050210d    8b8808010000
                         add                esp, 0x08                                     // 0x00502113    83c408
                         shl                ecx, 1                                        // 0x00502116    d1e1
                         push               0x1                                           // 0x00502118    6a01
                         push               ecx                                           // 0x0050211a    51
                         mov.s              ecx, esi                                      // 0x0050211b    8bce
                         call               ?SetSpeed@Villager@@QAEXJH@Z                  // 0x0050211d    e8aeed2400
                         {disp32} mov       eax, dword ptr [ebx + 0x00001074]             // 0x00502122    8b8374100000
                         cmp.s              eax, ebp                                      // 0x00502128    3bc5
                         push               0x000000cc                                    // 0x0050212a    68cc000000
                         {disp8} jne        _jmp_addr_0x0050213f                          // 0x0050212f    750e
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00502131    8d542418
                         push               edx                                           // 0x00502135    52
                         mov.s              ecx, esi                                      // 0x00502136    8bce
                         call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z                          // 0x00502138    e8c3162600
                         {disp8} jmp        _jmp_addr_0x0050214c                          // 0x0050213d    eb0d
_jmp_addr_0x0050213f:    {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0050213f    8d4c2418
                         push               ecx                                           // 0x00502143    51
                         push               eax                                           // 0x00502144    50
                         mov.s              ecx, esi                                      // 0x00502145    8bce
                         call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17                          // 0x00502147    e8d4bb0e00
_jmp_addr_0x0050214c:    {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x0050214c    8b5628
                         {disp32} mov       eax, dword ptr [edx + 0x00000108]             // 0x0050214f    8b8208010000
                         push               0x1                                           // 0x00502155    6a01
                         shl                eax, 1                                        // 0x00502157    d1e0
                         push               eax                                           // 0x00502159    50
                         mov.s              ecx, esi                                      // 0x0050215a    8bce
                         call               ?SetSpeed@Villager@@QAEXJH@Z                  // 0x0050215c    e86fed2400
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x00502161    ff442410
_jmp_addr_0x00502165:    mov                edi, dword ptr [edi]                          // 0x00502165    8b3f
                         cmp.s              edi, ebp                                      // 0x00502167    3bfd
                         {disp32} jne       _jmp_addr_0x005020bd                          // 0x00502169    0f854effffff
                         cmp                dword ptr [esp + 0x10], ebp                   // 0x0050216f    396c2410
                         pop                esi                                           // 0x00502173    5e
                         mov                eax, 0x00000002                               // 0x00502174    b802000000
                         {disp8} ja         _jmp_addr_0x00502180                          // 0x00502179    7705
_jmp_addr_0x0050217b:    mov                eax, 0x00000001                               // 0x0050217b    b801000000
_jmp_addr_0x00502180:    pop                edi                                           // 0x00502180    5f
                         pop                ebp                                           // 0x00502181    5d
                         pop                ebx                                           // 0x00502182    5b
                         add                esp, 0x10                                     // 0x00502183    83c410
                         ret                                                              // 0x00502186    c3
                         nop                                                              // 0x00502187    90
                         nop                                                              // 0x00502188    90
                         nop                                                              // 0x00502189    90
                         nop                                                              // 0x0050218a    90
                         nop                                                              // 0x0050218b    90
                         nop                                                              // 0x0050218c    90
                         nop                                                              // 0x0050218d    90
                         nop                                                              // 0x0050218e    90
                         nop                                                              // 0x0050218f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00502190    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x00502196    8b90b40f0000
                         add                eax, 0x00000fa8                               // 0x0050219c    05a80f0000
                         push               ebx                                           // 0x005021a1    53
                         push               edi                                           // 0x005021a2    57
                         {disp32} mov       edi, dword ptr [ecx + 0x00001090]             // 0x005021a3    8bb990100000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x005021a9    8d1452
                         shl                edx, 5                                        // 0x005021ac    c1e205
                         test               edi, edi                                      // 0x005021af    85ff
                         {disp8} mov        ebx, dword ptr [edx + eax * 0x1 + 0x38]       // 0x005021b1    8b5c0238
                         {disp8} je         _jmp_addr_0x005021f9                          // 0x005021b5    7442
                         push               esi                                           // 0x005021b7    56
_jmp_addr_0x005021b8:    {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x005021b8    8b7704
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]             // 0x005021bb    8b8694000000
                         .byte              0x66, 0x81, 0xa6, 0xb4, 0x0, 0x0, 0x0, 0xfb, 0xff// and word ptr [esi + 0x000000b4], -0x0005 // 0x005021c1    6681a6b4000000fbff
                         test               eax, eax                                      // 0x005021ca    85c0
                         {disp8} je         _jmp_addr_0x005021d8                          // 0x005021cc    740a
                         mov                eax, dword ptr [esi]                          // 0x005021ce    8b06
                         mov.s              ecx, esi                                      // 0x005021d0    8bce
                         call               dword ptr [eax + 0x998]                       // 0x005021d2    ff9098090000
_jmp_addr_0x005021d8:    mov                edx, dword ptr [esi]                          // 0x005021d8    8b16
                         push               ebx                                           // 0x005021da    53
                         mov.s              ecx, esi                                      // 0x005021db    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x005021dd    ff92e8080000
                         or                 byte ptr [esi + 0xb4], 4                      // 0x005021e3    808eb400000004
                         mov                edi, dword ptr [edi]                          // 0x005021ea    8b3f
                         test               edi, edi                                      // 0x005021ec    85ff
                         {disp8} jne        _jmp_addr_0x005021b8                          // 0x005021ee    75c8
                         pop                esi                                           // 0x005021f0    5e
                         pop                edi                                           // 0x005021f1    5f
                         mov                eax, 0x00000002                               // 0x005021f2    b802000000
                         pop                ebx                                           // 0x005021f7    5b
                         ret                                                              // 0x005021f8    c3
_jmp_addr_0x005021f9:    pop                edi                                           // 0x005021f9    5f
                         mov                eax, 0x00000002                               // 0x005021fa    b802000000
                         pop                ebx                                           // 0x005021ff    5b
                         ret                                                              // 0x00502200    c3
                         nop                                                              // 0x00502201    90
                         nop                                                              // 0x00502202    90
                         nop                                                              // 0x00502203    90
                         nop                                                              // 0x00502204    90
                         nop                                                              // 0x00502205    90
                         nop                                                              // 0x00502206    90
                         nop                                                              // 0x00502207    90
                         nop                                                              // 0x00502208    90
                         nop                                                              // 0x00502209    90
                         nop                                                              // 0x0050220a    90
                         nop                                                              // 0x0050220b    90
                         nop                                                              // 0x0050220c    90
                         nop                                                              // 0x0050220d    90
                         nop                                                              // 0x0050220e    90
                         nop                                                              // 0x0050220f    90
                         push               esi                                           // 0x00502210    56
                         push               0x0                                           // 0x00502211    6a00
                         mov.s              esi, ecx                                      // 0x00502213    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00502215    8b8664010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f58]             // 0x0050221b    8b80580f0000
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00502221    8b4830
                         push               0x009c7f50                                    // 0x00502224    68507f9c00
                         push               0x009c7f30                                    // 0x00502229    68307f9c00
                         push               0x0                                           // 0x0050222e    6a00
                         push               ecx                                           // 0x00502230    51
                         call               ___RTDynamicCast                              // 0x00502231    e8e3372c00
                         push               0x0                                           // 0x00502236    6a00
                         push               0x009cafc8                                    // 0x00502238    68c8af9c00
                         push               0x009c7f50                                    // 0x0050223d    68507f9c00
                         push               0x0                                           // 0x00502242    6a00
                         push               eax                                           // 0x00502244    50
                         call               ___RTDynamicCast                              // 0x00502245    e8cf372c00
                         add                esp, 0x28                                     // 0x0050224a    83c428
                         test               eax, eax                                      // 0x0050224d    85c0
                         {disp8} je         _jmp_addr_0x0050227f                          // 0x0050224f    742e
                         {disp32} mov       esi, dword ptr [esi + 0x00001090]             // 0x00502251    8bb690100000
                         test               esi, esi                                      // 0x00502257    85f6
                         {disp8} je         _jmp_addr_0x00502278                          // 0x00502259    741d
_jmp_addr_0x0050225b:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0050225b    8b4e04
                         {disp32} mov       eax, dword ptr [ecx + 0x000000d8]             // 0x0050225e    8b81d8000000
                         test               eax, eax                                      // 0x00502264    85c0
                         {disp8} je         _jmp_addr_0x00502272                          // 0x00502266    740a
                         mov                edx, dword ptr [ecx]                          // 0x00502268    8b11
                         push               0x5a                                          // 0x0050226a    6a5a
                         call               dword ptr [edx + 0x8e8]                       // 0x0050226c    ff92e8080000
_jmp_addr_0x00502272:    mov                esi, dword ptr [esi]                          // 0x00502272    8b36
                         test               esi, esi                                      // 0x00502274    85f6
                         {disp8} jne        _jmp_addr_0x0050225b                          // 0x00502276    75e3
_jmp_addr_0x00502278:    mov                eax, 0x00000002                               // 0x00502278    b802000000
                         pop                esi                                           // 0x0050227d    5e
                         ret                                                              // 0x0050227e    c3
_jmp_addr_0x0050227f:    mov                eax, 0x00000001                               // 0x0050227f    b801000000
                         pop                esi                                           // 0x00502284    5e
                         ret                                                              // 0x00502285    c3
                         nop                                                              // 0x00502286    90
                         nop                                                              // 0x00502287    90
                         nop                                                              // 0x00502288    90
                         nop                                                              // 0x00502289    90
                         nop                                                              // 0x0050228a    90
                         nop                                                              // 0x0050228b    90
                         nop                                                              // 0x0050228c    90
                         nop                                                              // 0x0050228d    90
                         nop                                                              // 0x0050228e    90
                         nop                                                              // 0x0050228f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00502290    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x00502296    8b90b40f0000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]             // 0x0050229c    8b8960010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005022a2    8b4958
                         add                eax, 0x00000fa8                               // 0x005022a5    05a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x005022aa    8d1452
                         shl                edx, 5                                        // 0x005022ad    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x38]       // 0x005022b0    8b440238
                         push               0x00001388                                    // 0x005022b4    6888130000
                         push               eax                                           // 0x005022b9    50
                         call               _jmp_addr_0x00480c60                          // 0x005022ba    e8a1e9f7ff
                         mov                eax, 0x00000002                               // 0x005022bf    b802000000
                         ret                                                              // 0x005022c4    c3
                         nop                                                              // 0x005022c5    90
                         nop                                                              // 0x005022c6    90
                         nop                                                              // 0x005022c7    90
                         nop                                                              // 0x005022c8    90
                         nop                                                              // 0x005022c9    90
                         nop                                                              // 0x005022ca    90
                         nop                                                              // 0x005022cb    90
                         nop                                                              // 0x005022cc    90
                         nop                                                              // 0x005022cd    90
                         nop                                                              // 0x005022ce    90
                         nop                                                              // 0x005022cf    90
                         push               esi                                           // 0x005022d0    56
                         mov.s              esi, ecx                                      // 0x005022d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x005022d3    8b8664010000
                         add                eax, 0x00000fa8                               // 0x005022d9    05a80f0000
                         {disp32} mov       dword ptr [esi + 0x00000384], 0x00000001      // 0x005022de    c7868403000001000000
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x005022e8    8b480c
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005022eb    8d0c49
                         shl                ecx, 5                                        // 0x005022ee    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x38]       // 0x005022f1    8b540138
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x005022f5    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005022fb    8b4858
                         push               edx                                           // 0x005022fe    52
                         call               _jmp_addr_0x00484ce0                          // 0x005022ff    e8dc29f8ff
                         push               0x0                                           // 0x00502304    6a00
                         push               0x0                                           // 0x00502306    6a00
                         push               0x17                                          // 0x00502308    6a17
                         push               esi                                           // 0x0050230a    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0050230b    e8601a1e00
                         add                esp, 0x10                                     // 0x00502310    83c410
                         mov                eax, 0x00000002                               // 0x00502313    b802000000
                         pop                esi                                           // 0x00502318    5e
                         ret                                                              // 0x00502319    c3
                         call               dword ptr [rdata_bytes + 0x6e4]               // 0x0050231a    ff15e4968a00
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00502320    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00502326    8b4858
                         call               _jmp_addr_0x00484e10                          // 0x00502329    e8e22af8ff
                         neg                eax                                           // 0x0050232e    f7d8
                         sbb.s              eax, eax                                      // 0x00502330    1bc0
                         and                eax, 0x02                                     // 0x00502332    83e002
                         ret                                                              // 0x00502335    c3
                         nop                                                              // 0x00502336    90
                         nop                                                              // 0x00502337    90
                         nop                                                              // 0x00502338    90
                         nop                                                              // 0x00502339    90
                         nop                                                              // 0x0050233a    90
                         nop                                                              // 0x0050233b    90
                         nop                                                              // 0x0050233c    90
                         nop                                                              // 0x0050233d    90
                         nop                                                              // 0x0050233e    90
                         nop                                                              // 0x0050233f    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]             // 0x00502340    8b8960010000
                         {disp8} fld        dword ptr [ecx + 0x2c]                        // 0x00502346    d9412c
                         {disp8} fsubr      dword ptr [ecx + 0x2c]                        // 0x00502349    d8692c
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0050234c    d81598a38a00
                         {disp8} fst        dword ptr [ecx + 0x2c]                        // 0x00502352    d9512c
                         fnstsw             ax                                            // 0x00502355    dfe0
                         test               ah, 0x01                                      // 0x00502357    f6c401
                         {disp8} je         _jmp_addr_0x0050236b                          // 0x0050235a    740f
                         fstp               st(0)                                         // 0x0050235c    ddd8
                         {disp8} mov        dword ptr [ecx + 0x2c], 0x00000000            // 0x0050235e    c7412c00000000
                         mov                eax, 0x00000002                               // 0x00502365    b802000000
                         ret                                                              // 0x0050236a    c3
_jmp_addr_0x0050236b:    {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0050236b    d81d90a38a00
                         fnstsw             ax                                            // 0x00502371    dfe0
                         test               ah, 0x41                                      // 0x00502373    f6c441
                         {disp8} jne        _jmp_addr_0x0050237f                          // 0x00502376    7507
                         {disp8} mov        dword ptr [ecx + 0x2c], 0x3f800000            // 0x00502378    c7412c0000803f
_jmp_addr_0x0050237f:    mov                eax, 0x00000002                               // 0x0050237f    b802000000
                         ret                                                              // 0x00502384    c3
                         nop                                                              // 0x00502385    90
                         nop                                                              // 0x00502386    90
                         nop                                                              // 0x00502387    90
                         nop                                                              // 0x00502388    90
                         nop                                                              // 0x00502389    90
                         nop                                                              // 0x0050238a    90
                         nop                                                              // 0x0050238b    90
                         nop                                                              // 0x0050238c    90
                         nop                                                              // 0x0050238d    90
                         nop                                                              // 0x0050238e    90
                         nop                                                              // 0x0050238f    90
                         sub                esp, 0x30                                     // 0x00502390    83ec30
                         push               ebx                                           // 0x00502393    53
                         push               esi                                           // 0x00502394    56
                         mov.s              esi, ecx                                      // 0x00502395    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00502397    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x0050239d    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x005023a3    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005023a8    8d0c49
                         push               edi                                           // 0x005023ab    57
                         shl                ecx, 5                                        // 0x005023ac    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x005023af    8b540134
                         {disp8} mov        edi, dword ptr [edx + 0x30]                   // 0x005023b3    8b7a30
                         {disp8} fild       dword ptr [edi + 0x14]                        // 0x005023b6    db4714
                         push               0x0                                           // 0x005023b9    6a00
                         push               0x009c7f50                                    // 0x005023bb    68507f9c00
                         push               0x009c7f30                                    // 0x005023c0    68307f9c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005023c5    d80d4c168d00
                         push               0x0                                           // 0x005023cb    6a00
                         push               edi                                           // 0x005023cd    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005023ce    d80d1cc48a00
                         {disp8} fild       dword ptr [esi + 0x14]                        // 0x005023d4    db4614
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005023d7    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005023dd    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005023e3    dee9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005023e5    d95c2428
                         {disp8} fild       dword ptr [edi + 0x18]                        // 0x005023e9    db4718
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005023ec    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005023f2    d80d1cc48a00
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x005023f8    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005023fb    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00502401    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x00502407    dee9
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x00502409    d954242c
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x0050240d    d84c242c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00502411    d9442428
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00502415    d84c2428
                         faddp              st(1), st                                     // 0x00502419    dec1
                         fsqrt                                                            // 0x0050241b    d9fa
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0050241d    d95c2420
                         call               ___RTDynamicCast                              // 0x00502421    e8f3352c00
                         mov.s              ebx, eax                                      // 0x00502426    8bd8
                         mov                eax, dword ptr [esi]                          // 0x00502428    8b06
                         add                esp, 0x14                                     // 0x0050242a    83c414
                         mov.s              ecx, esi                                      // 0x0050242d    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x0050242f    ff902c040000
                         fadd.s             st(0), st(0)                                  // 0x00502435    dcc0
                         test               ebx, ebx                                      // 0x00502437    85db
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00502439    d95c241c
                         {disp8} jne        _jmp_addr_0x00502447                          // 0x0050243d    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x0050243f    d90578b48a00
                         {disp8} jmp        _jmp_addr_0x0050244e                          // 0x00502445    eb07
_jmp_addr_0x00502447:    mov                edx, dword ptr [ebx]                          // 0x00502447    8b13
                         mov.s              ecx, ebx                                      // 0x00502449    8bcb
                         call               dword ptr [edx + 0x64]                        // 0x0050244b    ff5264
_jmp_addr_0x0050244e:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0050244e    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00502454    8b88b40f0000
                         mov                edx, dword ptr [esi]                          // 0x0050245a    8b16
                         add                eax, 0x00000fa8                               // 0x0050245c    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00502461    8d0c49
                         shl                ecx, 5                                        // 0x00502464    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x48]            // 0x00502467    d9440148
                         mov.s              ecx, esi                                      // 0x0050246b    8bce
                         fadd               st, st(1)                                     // 0x0050246d    d8c1
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0050246f    d844241c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00502473    d95c2410
                         fstp               st(0)                                         // 0x00502477    ddd8
                         call               dword ptr [edx + 0x42c]                       // 0x00502479    ff922c040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26304]             // 0x0050247f    d80d04f38c00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00502485    d95c2420
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00502489    d944240c
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0050248d    d85c2410
                         fnstsw             ax                                            // 0x00502491    dfe0
                         test               ah, 0x01                                      // 0x00502493    f6c401
                         {disp32} je        _jmp_addr_0x005025cb                          // 0x00502496    0f842f010000
                         {disp8} fild       dword ptr [edi + 0x14]                        // 0x0050249c    db4714
                         mov.s              ecx, esi                                      // 0x0050249f    8bce
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x005024a1    c744242800000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005024a9    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005024af    d80d1cc48a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005024b5    d9442410
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005024b9    d84c2414
                         {disp8} fdiv       dword ptr [esp + 0x0c]                        // 0x005024bd    d874240c
                         fsubp              st(1), st                                     // 0x005024c1    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005024c3    d95c2424
                         {disp8} fild       dword ptr [edi + 0x18]                        // 0x005024c7    db4718
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005024ca    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005024d0    d80d1cc48a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005024d6    d9442410
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005024da    d84c2418
                         {disp8} fdiv       dword ptr [esp + 0x0c]                        // 0x005024de    d874240c
                         fsubp              st(1), st                                     // 0x005024e2    dee9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005024e4    d95c242c
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x005024e8    e86353f7ff
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x005024ed    8d442424
                         push               eax                                           // 0x005024f1    50
                         call               _jmp_addr_0x00483850                          // 0x005024f2    e85913f8ff
                         add                esp, 0x04                                     // 0x005024f7    83c404
                         test               eax, eax                                      // 0x005024fa    85c0
                         {disp32} jne       _jmp_addr_0x00502585                          // 0x005024fc    0f8583000000
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00502502    8d4c2430
                         push               ecx                                           // 0x00502506    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00502507    8d542428
                         push               edx                                           // 0x0050250b    52
                         call               _jmp_addr_0x004839d0                          // 0x0050250c    e8bf14f8ff
                         add                esp, 0x08                                     // 0x00502511    83c408
                         mov.s              ecx, esi                                      // 0x00502514    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00502516    e83553f7ff
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0050251b    8d442430
                         push               eax                                           // 0x0050251f    50
                         call               _jmp_addr_0x00483850                          // 0x00502520    e82b13f8ff
                         add                esp, 0x04                                     // 0x00502525    83c404
                         test               eax, eax                                      // 0x00502528    85c0
                         {disp32} je        _jmp_addr_0x005025b6                          // 0x0050252a    0f8486000000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00502530    d9442424
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00502534    d8642430
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00502538    d9442428
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0050253c    d8642434
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00502540    d944242c
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x00502544    d8642438
                         fld                st(0)                                         // 0x00502548    d9c0
                         fmul               st, st(1)                                     // 0x0050254a    d8c9
                         fld                st(2)                                         // 0x0050254c    d9c2
                         fmul               st, st(3)                                     // 0x0050254e    d8cb
                         faddp              st(1), st                                     // 0x00502550    dec1
                         fld                st(3)                                         // 0x00502552    d9c3
                         fmul               st, st(4)                                     // 0x00502554    d8cc
                         faddp              st(1), st                                     // 0x00502556    dec1
                         fsqrt                                                            // 0x00502558    d9fa
                         fstp               st(3)                                         // 0x0050255a    dddb
                         fstp               st(0)                                         // 0x0050255c    ddd8
                         fstp               st(0)                                         // 0x0050255e    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1651c]             // 0x00502560    d81d1cf58b00
                         fnstsw             ax                                            // 0x00502566    dfe0
                         test               ah, 0x01                                      // 0x00502568    f6c401
                         {disp8} je         _jmp_addr_0x005025b6                          // 0x0050256b    7449
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0050256d    8b4c2430
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00502571    8b542434
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00502575    8b442438
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00502579    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0050257d    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00502581    8944242c
_jmp_addr_0x00502585:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00502585    8b4c241c
                         push               0x0                                           // 0x00502589    6a00
                         push               ecx                                           // 0x0050258b    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0050258c    8d54242c
                         push               edx                                           // 0x00502590    52
                         push               0x0                                           // 0x00502591    6a00
                         mov.s              ecx, esi                                      // 0x00502593    8bce
                         call               _jmp_addr_0x0047a880                          // 0x00502595    e8e682f7ff
                         cmp                eax, 0x04                                     // 0x0050259a    83f804
                         {disp8} ja         _jmp_addr_0x005025b6                          // 0x0050259d    7717
                         jmp                dword ptr [eax*4 + 0x502630]                  // 0x0050259f    ff248530265000
                         push               0x1                                           // 0x005025a6    6a01
                         push               0x1                                           // 0x005025a8    6a01
                         push               0x00be6540                                    // 0x005025aa    684065be00
                         mov.s              ecx, esi                                      // 0x005025af    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x005025b1    e87a31f7ff
_jmp_addr_0x005025b6:    pop                edi                                           // 0x005025b6    5f
                         pop                esi                                           // 0x005025b7    5e
                         mov                eax, 0x00000001                               // 0x005025b8    b801000000
                         pop                ebx                                           // 0x005025bd    5b
                         add                esp, 0x30                                     // 0x005025be    83c430
                         ret                                                              // 0x005025c1    c3
                         pop                edi                                           // 0x005025c2    5f
                         pop                esi                                           // 0x005025c3    5e
                         xor.s              eax, eax                                      // 0x005025c4    33c0
                         pop                ebx                                           // 0x005025c6    5b
                         add                esp, 0x30                                     // 0x005025c7    83c430
                         ret                                                              // 0x005025ca    c3
_jmp_addr_0x005025cb:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005025cb    d944240c
                         {disp8} fcomp      dword ptr [esp + 0x20]                        // 0x005025cf    d85c2420
                         fnstsw             ax                                            // 0x005025d3    dfe0
                         test               ah, 0x41                                      // 0x005025d5    f6c441
                         {disp8} jne        _jmp_addr_0x00502624                          // 0x005025d8    754a
                         {disp8} fild       dword ptr [edi + 0x14]                        // 0x005025da    db4714
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005025dd    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005025e1    8b4c2420
                         push               eax                                           // 0x005025e5    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005025e6    d80d4c168d00
                         push               ecx                                           // 0x005025ec    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x005025ed    8d542438
                         push               edx                                           // 0x005025f1    52
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005025f2    d80d1cc48a00
                         push               0x0                                           // 0x005025f8    6a00
                         mov.s              ecx, esi                                      // 0x005025fa    8bce
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005025fc    d95c2440
                         {disp8} fild       dword ptr [edi + 0x18]                        // 0x00502600    db4718
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00502603    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00502609    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0050260f    d95c2448
                         call               _jmp_addr_0x0047a880                          // 0x00502613    e86882f7ff
                         cmp                eax, 0x04                                     // 0x00502618    83f804
                         {disp8} ja         _jmp_addr_0x005025b6                          // 0x0050261b    7799
                         jmp                dword ptr [eax*4 + 0x502644]                  // 0x0050261d    ff248544265000
_jmp_addr_0x00502624:    pop                edi                                           // 0x00502624    5f
                         pop                esi                                           // 0x00502625    5e
                         mov                eax, 0x00000002                               // 0x00502626    b802000000
                         pop                ebx                                           // 0x0050262b    5b
                         add                esp, 0x30                                     // 0x0050262c    83c430
                         ret                                                              // 0x0050262f    c3

// Snippet: jmptbl, [0x00502630, 0x00502658)
.byte 0xa6, 0x25, 0x50, 0x00      // 0x00502630
.byte 0xc2, 0x25, 0x50, 0x00      // 0x00502634
.byte 0xa6, 0x25, 0x50, 0x00      // 0x00502638
.byte 0x24, 0x26, 0x50, 0x00      // 0x0050263c
.byte 0x24, 0x26, 0x50, 0x00      // 0x00502640
.byte 0xa6, 0x25, 0x50, 0x00      // 0x00502644
.byte 0xc2, 0x25, 0x50, 0x00      // 0x00502648
.byte 0xa6, 0x25, 0x50, 0x00      // 0x0050264c
.byte 0x24, 0x26, 0x50, 0x00      // 0x00502650
.byte 0x24, 0x26, 0x50, 0x00      // 0x00502654

// Snippet: db, [0x00502658, 0x00502660)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00502658
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050265c

