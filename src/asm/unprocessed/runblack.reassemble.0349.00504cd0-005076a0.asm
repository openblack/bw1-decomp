.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00424ab0
.extern _jmp_addr_0x00424e70
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x004758d0
.extern _jmp_addr_0x00475d30
.extern _jmp_addr_0x004774f0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x00479eb0
.extern _jmp_addr_0x0047a3b0
.extern _jmp_addr_0x0047a7a0
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047aa50
.extern _jmp_addr_0x0047ab90
.extern _jmp_addr_0x0047acd0
.extern _jmp_addr_0x0047ad80
.extern _jmp_addr_0x0047d740
.extern _jmp_addr_0x0047fa20
.extern _jmp_addr_0x00480fc0
.extern _jmp_addr_0x00481930
.extern _jmp_addr_0x00484260
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x004842e0
.extern _jmp_addr_0x00484310
.extern _jmp_addr_0x00484540
.extern _jmp_addr_0x00484590
.extern _jmp_addr_0x00484830
.extern _jmp_addr_0x004848c0
.extern _jmp_addr_0x00484920
.extern _jmp_addr_0x00484ac0
.extern _jmp_addr_0x00484ae0
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x00487c70
.extern _jmp_addr_0x0048cc80
.extern _jmp_addr_0x004c43a0
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004d8df0
.extern _jmp_addr_0x004dc260
.extern _jmp_addr_0x004dce20
.extern _jmp_addr_0x004e2380
.extern _jmp_addr_0x004f00e0
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f1600
.extern _jmp_addr_0x004f4b90
.extern _jmp_addr_0x004f4c30
.extern _jmp_addr_0x004f60b0
.extern ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern _jmp_addr_0x004ff5c0
.extern _jmp_addr_0x004ff9c0
.extern _jmp_addr_0x004ff9f0
.extern ?SubStatePerformPickUpParameter@Creature@@QAEIPAVCreatureBelief@@@Z
.extern ?StartDance@Dance@@QAEXXZ
.extern ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z
.extern ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ
.extern _jmp_addr_0x005e3260
.extern _jmp_addr_0x005fc790
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?InBounds@MapCoords@@QBEIXZ
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x00639410
.extern _jmp_addr_0x00639a60
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x0068c110
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x0071eb60
.extern _jmp_addr_0x0072a5f0
.extern _jmp_addr_0x0072b230
.extern ?GetWorshipSpeed@TotemStatue@@QAEMXZ
.extern @SetWorshipPercentage__11TotemStatueFf@12
.extern _jmp_addr_0x00738470
.extern ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern ___nw__FUl
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0081e9e0

.globl _jmp_addr_0x00506d70
.globl _jmp_addr_0x00506e10
.globl _jmp_addr_0x00507000

start_0x00504cd0_0x005076a0:
// Snippet: asm, [0x00504cd0, 0x0050768c)
                         sub                esp, 0x08                                            // 0x00504cd0    83ec08
                         push               esi                                                  // 0x00504cd3    56
                         mov.s              esi, ecx                                             // 0x00504cd4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00504cd6    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00504cdc    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00504cdf    e8ecf5f7ff
                         test               eax, eax                                             // 0x00504ce4    85c0
                         {disp8} je         _jmp_addr_0x00504cef                                 // 0x00504ce6    7407
                         xor.s              eax, eax                                             // 0x00504ce8    33c0
                         pop                esi                                                  // 0x00504cea    5e
                         add                esp, 0x08                                            // 0x00504ceb    83c408
                         ret                                                                     // 0x00504cee    c3
_jmp_addr_0x00504cef:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00504cef    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00504cf5    8b4958
                         push               0x000003e8                                           // 0x00504cf8    68e8030000
                         call               _jmp_addr_0x00484830                                 // 0x00504cfd    e82efbf7ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00504d02    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00504d08    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00504d0e    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00504d13    8d1449
                         shl                edx, 5                                               // 0x00504d16    c1e205
                         {disp8} fld        dword ptr [edx + eax * 0x1 + 0x48]                   // 0x00504d19    d9440248
                         xor.s              edx, edx                                             // 0x00504d1d    33d2
                         mov                eax, 0x000003e8                                      // 0x00504d1f    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00504d24    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x00504d2a    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x00504d32    89442404
                         {disp8} fimul      dword ptr [esp + 0x04]                               // 0x00504d36    da4c2404
                         call               _jmp_addr_0x007a1400                                 // 0x00504d3a    e8c1c62900
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00504d3f    66894658
                         mov                eax, 0x00000002                                      // 0x00504d43    b802000000
                         pop                esi                                                  // 0x00504d48    5e
                         add                esp, 0x08                                            // 0x00504d49    83c408
                         ret                                                                     // 0x00504d4c    c3
                         nop                                                                     // 0x00504d4d    90
                         nop                                                                     // 0x00504d4e    90
                         nop                                                                     // 0x00504d4f    90
                         dec                word ptr [ecx + 0x58]                                // 0x00504d50    66ff4958
                         {disp8} mov        cx, word ptr [ecx + 0x58]                            // 0x00504d54    668b4958
                         xor.s              eax, eax                                             // 0x00504d58    33c0
                         test               cx, cx                                               // 0x00504d5a    6685c9
                         setne              al                                                   // 0x00504d5d    0f95c0
                         dec                eax                                                  // 0x00504d60    48
                         and                eax, 0x02                                            // 0x00504d61    83e002
                         ret                                                                     // 0x00504d64    c3
                         nop                                                                     // 0x00504d65    90
                         nop                                                                     // 0x00504d66    90
                         nop                                                                     // 0x00504d67    90
                         nop                                                                     // 0x00504d68    90
                         nop                                                                     // 0x00504d69    90
                         nop                                                                     // 0x00504d6a    90
                         nop                                                                     // 0x00504d6b    90
                         nop                                                                     // 0x00504d6c    90
                         nop                                                                     // 0x00504d6d    90
                         nop                                                                     // 0x00504d6e    90
                         nop                                                                     // 0x00504d6f    90
                         push               esi                                                  // 0x00504d70    56
                         mov.s              esi, ecx                                             // 0x00504d71    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00504d73    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00504d79    8b4858
                         push               0x2c                                                 // 0x00504d7c    6a2c
                         call               _jmp_addr_0x00484310                                 // 0x00504d7e    e88df5f7ff
                         test               eax, eax                                             // 0x00504d83    85c0
                         {disp8} je         _jmp_addr_0x00504d94                                 // 0x00504d85    740d
                         {disp8} mov        word ptr [esi + 0x58], 0x0000                        // 0x00504d87    66c746580000
                         mov                eax, 0x00000002                                      // 0x00504d8d    b802000000
                         pop                esi                                                  // 0x00504d92    5e
                         ret                                                                     // 0x00504d93    c3
_jmp_addr_0x00504d94:    xor.s              eax, eax                                             // 0x00504d94    33c0
                         pop                esi                                                  // 0x00504d96    5e
                         ret                                                                     // 0x00504d97    c3
                         nop                                                                     // 0x00504d98    90
                         nop                                                                     // 0x00504d99    90
                         nop                                                                     // 0x00504d9a    90
                         nop                                                                     // 0x00504d9b    90
                         nop                                                                     // 0x00504d9c    90
                         nop                                                                     // 0x00504d9d    90
                         nop                                                                     // 0x00504d9e    90
                         nop                                                                     // 0x00504d9f    90
                         sub                esp, 0x20                                            // 0x00504da0    83ec20
                         push               edi                                                  // 0x00504da3    57
                         mov.s              edi, ecx                                             // 0x00504da4    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]                    // 0x00504da6    8b8760010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00504dac    8b4858
                         cmp                dword ptr [ecx + 0x00004994], 0x03                   // 0x00504daf    83b99449000003
                         {disp32} jne       _jmp_addr_0x00504e70                                 // 0x00504db6    0f85b4000000
                         push               esi                                                  // 0x00504dbc    56
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x00504dbd    8d54241c
                         push               edx                                                  // 0x00504dc1    52
                         call               _jmp_addr_0x0048cc80                                 // 0x00504dc2    e8b97ef8ff
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00504dc7    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x00504dcb    d80d00c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x00504dd1    e82ac62900
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00504dd6    d9442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x00504dda    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00504de0    89442410
                         call               _jmp_addr_0x007a1400                                 // 0x00504de4    e817c62900
                         {disp32} mov       esi, dword ptr [edi + 0x00000164]                    // 0x00504de9    8bb764010000
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00504def    89442414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x00504df3    c744241800000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000fb4]                    // 0x00504dfb    8b86b40f0000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x00504e01    8d0440
                         shl                eax, 5                                               // 0x00504e04    c1e005
                         {disp32} fld       dword ptr [eax + esi * 0x1 + 0x00000ff0]             // 0x00504e07    d98430f00f0000
                         xor.s              edx, edx                                             // 0x00504e0e    33d2
                         mov                eax, 0x000003e8                                      // 0x00504e10    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00504e15    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00504e1b    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00504e23    89442408
                         {disp8} fimul      dword ptr [esp + 0x08]                               // 0x00504e27    da4c2408
                         call               _jmp_addr_0x007a1400                                 // 0x00504e2b    e8d0c52900
                         {disp8} mov        word ptr [edi + 0x58], ax                            // 0x00504e30    66894758
                         {disp32} mov       ecx, dword ptr [esi + 0x00000fb4]                    // 0x00504e34    8b8eb40f0000
                         movsx              edx, ax                                              // 0x00504e3a    0fbfd0
                         push               edi                                                  // 0x00504e3d    57
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00504e3e    8d0c49
                         push               edx                                                  // 0x00504e41    52
                         shl                ecx, 5                                               // 0x00504e42    c1e105
                         {disp32} mov       esi, dword ptr [ecx + esi * 0x1 + 0x00000fe0]        // 0x00504e45    8bb431e00f0000
                         push               0x3f800000                                           // 0x00504e4c    680000803f
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00504e51    8d44241c
                         push               esi                                                  // 0x00504e55    56
                         push               eax                                                  // 0x00504e56    50
                         call               _jmp_addr_0x0063e580                                 // 0x00504e57    e824971300
                         add                esp, 0x14                                            // 0x00504e5c    83c414
                         {disp32} mov       dword ptr [edi + 0x00001084], eax                    // 0x00504e5f    898784100000
                         pop                esi                                                  // 0x00504e65    5e
                         mov                eax, 0x00000002                                      // 0x00504e66    b802000000
                         pop                edi                                                  // 0x00504e6b    5f
                         add                esp, 0x20                                            // 0x00504e6c    83c420
                         ret                                                                     // 0x00504e6f    c3
_jmp_addr_0x00504e70:    xor.s              eax, eax                                             // 0x00504e70    33c0
                         pop                edi                                                  // 0x00504e72    5f
                         add                esp, 0x20                                            // 0x00504e73    83c420
                         ret                                                                     // 0x00504e76    c3
                         nop                                                                     // 0x00504e77    90
                         nop                                                                     // 0x00504e78    90
                         nop                                                                     // 0x00504e79    90
                         nop                                                                     // 0x00504e7a    90
                         nop                                                                     // 0x00504e7b    90
                         nop                                                                     // 0x00504e7c    90
                         nop                                                                     // 0x00504e7d    90
                         nop                                                                     // 0x00504e7e    90
                         nop                                                                     // 0x00504e7f    90
                         push               esi                                                  // 0x00504e80    56
                         mov.s              esi, ecx                                             // 0x00504e81    8bf1
                         {disp8} mov        ax, word ptr [esi + 0x58]                            // 0x00504e83    668b4658
                         test               ax, ax                                               // 0x00504e87    6685c0
                         {disp8} jne        _jmp_addr_0x00504eb4                                 // 0x00504e8a    7528
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00504e8c    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00504e92    8b4858
                         call               _jmp_addr_0x004848c0                                 // 0x00504e95    e826faf7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00504e9a    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00504ea0    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00504ea3    e828f4f7ff
                         neg                eax                                                  // 0x00504ea8    f7d8
                         sbb.s              eax, eax                                             // 0x00504eaa    1bc0
                         and                eax, 0xfffffffe                                      // 0x00504eac    83e0fe
                         add                eax, 0x02                                            // 0x00504eaf    83c002
                         pop                esi                                                  // 0x00504eb2    5e
                         ret                                                                     // 0x00504eb3    c3
_jmp_addr_0x00504eb4:    dec                eax                                                  // 0x00504eb4    48
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00504eb5    66894658
                         xor.s              eax, eax                                             // 0x00504eb9    33c0
                         pop                esi                                                  // 0x00504ebb    5e
                         ret                                                                     // 0x00504ebc    c3
                         nop                                                                     // 0x00504ebd    90
                         nop                                                                     // 0x00504ebe    90
                         nop                                                                     // 0x00504ebf    90
                         push               esi                                                  // 0x00504ec0    56
                         mov.s              esi, ecx                                             // 0x00504ec1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00001074]                    // 0x00504ec3    8b8e74100000
                         test               ecx, ecx                                             // 0x00504ec9    85c9
                         {disp8} je         _jmp_addr_0x00504edf                                 // 0x00504ecb    7412
                         call               ?StartDance@Dance@@QAEXXZ                            // 0x00504ecd    e86e6c0000
                         {disp32} mov       eax, dword ptr [esi + 0x00001074]                    // 0x00504ed2    8b8674100000
                         {disp8} mov        dword ptr [eax + 0x28], 0x00000000                   // 0x00504ed8    c7402800000000
_jmp_addr_0x00504edf:    mov                eax, 0x00000002                                      // 0x00504edf    b802000000
                         pop                esi                                                  // 0x00504ee4    5e
                         ret                                                                     // 0x00504ee5    c3
                         nop                                                                     // 0x00504ee6    90
                         nop                                                                     // 0x00504ee7    90
                         nop                                                                     // 0x00504ee8    90
                         nop                                                                     // 0x00504ee9    90
                         nop                                                                     // 0x00504eea    90
                         nop                                                                     // 0x00504eeb    90
                         nop                                                                     // 0x00504eec    90
                         nop                                                                     // 0x00504eed    90
                         nop                                                                     // 0x00504eee    90
                         nop                                                                     // 0x00504eef    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00504ef0    8b8164010000
                         {disp32} mov       dword ptr [eax + 0x00020cec], 0x00000001             // 0x00504ef6    c780ec0c020001000000
                         mov                eax, 0x00000002                                      // 0x00504f00    b802000000
                         ret                                                                     // 0x00504f05    c3
                         nop                                                                     // 0x00504f06    90
                         nop                                                                     // 0x00504f07    90
                         nop                                                                     // 0x00504f08    90
                         nop                                                                     // 0x00504f09    90
                         nop                                                                     // 0x00504f0a    90
                         nop                                                                     // 0x00504f0b    90
                         nop                                                                     // 0x00504f0c    90
                         nop                                                                     // 0x00504f0d    90
                         nop                                                                     // 0x00504f0e    90
                         nop                                                                     // 0x00504f0f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00504f10    8b8164010000
                         {disp32} mov       dword ptr [eax + 0x00020cec], 0x00000000             // 0x00504f16    c780ec0c020000000000
                         mov                eax, 0x00000002                                      // 0x00504f20    b802000000
                         ret                                                                     // 0x00504f25    c3
                         nop                                                                     // 0x00504f26    90
                         nop                                                                     // 0x00504f27    90
                         nop                                                                     // 0x00504f28    90
                         nop                                                                     // 0x00504f29    90
                         nop                                                                     // 0x00504f2a    90
                         nop                                                                     // 0x00504f2b    90
                         nop                                                                     // 0x00504f2c    90
                         nop                                                                     // 0x00504f2d    90
                         nop                                                                     // 0x00504f2e    90
                         nop                                                                     // 0x00504f2f    90
                         push               esi                                                  // 0x00504f30    56
                         mov.s              esi, ecx                                             // 0x00504f31    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00001074]                    // 0x00504f33    8b8e74100000
                         test               ecx, ecx                                             // 0x00504f39    85c9
                         {disp8} je         _jmp_addr_0x00504f69                                 // 0x00504f3b    742c
                         push               esi                                                  // 0x00504f3d    56
                         call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z   // 0x00504f3e    e8bd240900
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00504f43    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00504f49    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00504f4f    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00504f54    8d0c49
                         shl                ecx, 5                                               // 0x00504f57    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x38]              // 0x00504f5a    8b540138
                         {disp8} mov        word ptr [esi + 0x58], dx                            // 0x00504f5e    66895658
                         mov                eax, 0x00000002                                      // 0x00504f62    b802000000
                         pop                esi                                                  // 0x00504f67    5e
                         ret                                                                     // 0x00504f68    c3
_jmp_addr_0x00504f69:    mov                eax, 0x00000001                                      // 0x00504f69    b801000000
                         pop                esi                                                  // 0x00504f6e    5e
                         ret                                                                     // 0x00504f6f    c3
                         push               esi                                                  // 0x00504f70    56
                         mov.s              esi, ecx                                             // 0x00504f71    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00504f73    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00504f79    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00504f7f    05a80f0000
                         push               0x0                                                  // 0x00504f84    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00504f86    8d0c49
                         push               0x009c7f50                                           // 0x00504f89    68507f9c00
                         shl                ecx, 5                                               // 0x00504f8e    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00504f91    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00504f95    8b5030
                         push               0x009c7f30                                           // 0x00504f98    68307f9c00
                         push               0x0                                                  // 0x00504f9d    6a00
                         push               edx                                                  // 0x00504f9f    52
                         call               ___RTDynamicCast                                     // 0x00504fa0    e8740a2c00
                         add                esp, 0x14                                            // 0x00504fa5    83c414
                         {disp32} mov       dword ptr [esi + 0x000010d4], eax                    // 0x00504fa8    8986d4100000
                         mov                eax, 0x00000002                                      // 0x00504fae    b802000000
                         pop                esi                                                  // 0x00504fb3    5e
                         ret                                                                     // 0x00504fb4    c3
                         nop                                                                     // 0x00504fb5    90
                         nop                                                                     // 0x00504fb6    90
                         nop                                                                     // 0x00504fb7    90
                         nop                                                                     // 0x00504fb8    90
                         nop                                                                     // 0x00504fb9    90
                         nop                                                                     // 0x00504fba    90
                         nop                                                                     // 0x00504fbb    90
                         nop                                                                     // 0x00504fbc    90
                         nop                                                                     // 0x00504fbd    90
                         nop                                                                     // 0x00504fbe    90
                         nop                                                                     // 0x00504fbf    90
                         push               esi                                                  // 0x00504fc0    56
                         mov.s              esi, ecx                                             // 0x00504fc1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00504fc3    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00504fc9    8b88b40f0000
                         push               edi                                                  // 0x00504fcf    57
                         add                eax, 0x00000fa8                                      // 0x00504fd0    05a80f0000
                         push               0x0                                                  // 0x00504fd5    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00504fd7    8d0c49
                         push               0x009c7f50                                           // 0x00504fda    68507f9c00
                         shl                ecx, 5                                               // 0x00504fdf    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00504fe2    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00504fe6    8b5030
                         push               0x009c7f30                                           // 0x00504fe9    68307f9c00
                         push               0x0                                                  // 0x00504fee    6a00
                         push               edx                                                  // 0x00504ff0    52
                         call               ___RTDynamicCast                                     // 0x00504ff1    e8230a2c00
                         push               0x0                                                  // 0x00504ff6    6a00
                         push               0x009dd560                                           // 0x00504ff8    6860d59d00
                         push               0x009c7f50                                           // 0x00504ffd    68507f9c00
                         push               0x0                                                  // 0x00505002    6a00
                         push               eax                                                  // 0x00505004    50
                         call               ___RTDynamicCast                                     // 0x00505005    e80f0a2c00
                         mov.s              edi, eax                                             // 0x0050500a    8bf8
                         add                esp, 0x28                                            // 0x0050500c    83c428
                         test               edi, edi                                             // 0x0050500f    85ff
                         {disp8} je         _jmp_addr_0x00505082                                 // 0x00505011    746f
                         mov.s              ecx, edi                                             // 0x00505013    8bcf
                         call               _jmp_addr_0x00738470                                 // 0x00505015    e856342300
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x0050501a    d82d90a38a00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26178]                    // 0x00505020    d81d78f18c00
                         fnstsw             ax                                                   // 0x00505026    dfe0
                         test               ah, 0x01                                             // 0x00505028    f6c401
                         {disp8} je         _jmp_addr_0x00505058                                 // 0x0050502b    742b
                         push               0x3f800000                                           // 0x0050502d    680000803f
                         mov.s              ecx, edi                                             // 0x00505032    8bcf
                         call               @SetWorshipPercentage__11TotemStatueFf@12            // 0x00505034    e837322300
                         mov.s              ecx, edi                                             // 0x00505039    8bcf
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ                 // 0x0050503b    e820322300
                         {disp32} fstp      dword ptr [edi + 0x00000088]                         // 0x00505040    d99f88000000
                         pop                edi                                                  // 0x00505046    5f
                         {disp32} mov       dword ptr [esi + 0x000010d4], 0x00000000             // 0x00505047    c786d410000000000000
                         mov                eax, 0x00000002                                      // 0x00505051    b802000000
                         pop                esi                                                  // 0x00505056    5e
                         ret                                                                     // 0x00505057    c3
_jmp_addr_0x00505058:    mov.s              ecx, edi                                             // 0x00505058    8bcf
                         call               _jmp_addr_0x00738470                                 // 0x0050505a    e811342300
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26178]                    // 0x0050505f    d80578f18c00
                         push               ecx                                                  // 0x00505065    51
                         mov.s              ecx, edi                                             // 0x00505066    8bcf
                         fstp               dword ptr [esp]                                      // 0x00505068    d91c24
                         call               @SetWorshipPercentage__11TotemStatueFf@12            // 0x0050506b    e800322300
                         mov.s              ecx, edi                                             // 0x00505070    8bcf
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ                 // 0x00505072    e8e9312300
                         {disp32} fstp      dword ptr [edi + 0x00000088]                         // 0x00505077    d99f88000000
                         pop                edi                                                  // 0x0050507d    5f
                         xor.s              eax, eax                                             // 0x0050507e    33c0
                         pop                esi                                                  // 0x00505080    5e
                         ret                                                                     // 0x00505081    c3
_jmp_addr_0x00505082:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505082    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505088    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050508e    05a80f0000
                         push               0x0                                                  // 0x00505093    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505095    8d0c49
                         push               0x009c7f50                                           // 0x00505098    68507f9c00
                         shl                ecx, 5                                               // 0x0050509d    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005050a0    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x005050a4    8b5030
                         push               0x009c7f30                                           // 0x005050a7    68307f9c00
                         push               0x0                                                  // 0x005050ac    6a00
                         push               edx                                                  // 0x005050ae    52
                         call               ___RTDynamicCast                                     // 0x005050af    e865092c00
                         push               0x0                                                  // 0x005050b4    6a00
                         push               0x00be6758                                           // 0x005050b6    685867be00
                         push               0x009c7f50                                           // 0x005050bb    68507f9c00
                         push               0x0                                                  // 0x005050c0    6a00
                         push               eax                                                  // 0x005050c2    50
                         call               ___RTDynamicCast                                     // 0x005050c3    e851092c00
                         mov.s              edi, eax                                             // 0x005050c8    8bf8
                         add                esp, 0x28                                            // 0x005050ca    83c428
                         test               edi, edi                                             // 0x005050cd    85ff
                         {disp8} je         _jmp_addr_0x00505130                                 // 0x005050cf    745f
                         mov                eax, dword ptr [edi]                                 // 0x005050d1    8b07
                         mov.s              ecx, edi                                             // 0x005050d3    8bcf
                         call               dword ptr [eax + 0x92c]                              // 0x005050d5    ff902c090000
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x005050db    d82d90a38a00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26178]                    // 0x005050e1    d81d78f18c00
                         fnstsw             ax                                                   // 0x005050e7    dfe0
                         test               ah, 0x01                                             // 0x005050e9    f6c401
                         {disp8} je         _jmp_addr_0x0050510f                                 // 0x005050ec    7421
                         mov                edx, dword ptr [edi]                                 // 0x005050ee    8b17
                         push               0x3f800000                                           // 0x005050f0    680000803f
                         mov.s              ecx, edi                                             // 0x005050f5    8bcf
                         call               dword ptr [edx + 0x930]                              // 0x005050f7    ff9230090000
                         pop                edi                                                  // 0x005050fd    5f
                         {disp32} mov       dword ptr [esi + 0x000010d4], 0x00000000             // 0x005050fe    c786d410000000000000
                         mov                eax, 0x00000002                                      // 0x00505108    b802000000
                         pop                esi                                                  // 0x0050510d    5e
                         ret                                                                     // 0x0050510e    c3
_jmp_addr_0x0050510f:    mov                esi, dword ptr [edi]                                 // 0x0050510f    8b37
                         mov.s              ecx, edi                                             // 0x00505111    8bcf
                         call               dword ptr [esi + 0x92c]                              // 0x00505113    ff962c090000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26178]                    // 0x00505119    d80578f18c00
                         push               ecx                                                  // 0x0050511f    51
                         mov.s              ecx, edi                                             // 0x00505120    8bcf
                         fstp               dword ptr [esp]                                      // 0x00505122    d91c24
                         call               dword ptr [esi + 0x930]                              // 0x00505125    ff9630090000
                         pop                edi                                                  // 0x0050512b    5f
                         xor.s              eax, eax                                             // 0x0050512c    33c0
                         pop                esi                                                  // 0x0050512e    5e
                         ret                                                                     // 0x0050512f    c3
_jmp_addr_0x00505130:    pop                edi                                                  // 0x00505130    5f
                         mov                eax, 0x00000001                                      // 0x00505131    b801000000
                         pop                esi                                                  // 0x00505136    5e
                         ret                                                                     // 0x00505137    c3
                         nop                                                                     // 0x00505138    90
                         nop                                                                     // 0x00505139    90
                         nop                                                                     // 0x0050513a    90
                         nop                                                                     // 0x0050513b    90
                         nop                                                                     // 0x0050513c    90
                         nop                                                                     // 0x0050513d    90
                         nop                                                                     // 0x0050513e    90
                         nop                                                                     // 0x0050513f    90
                         push               esi                                                  // 0x00505140    56
                         mov.s              esi, ecx                                             // 0x00505141    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505143    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505149    8b88b40f0000
                         push               edi                                                  // 0x0050514f    57
                         add                eax, 0x00000fa8                                      // 0x00505150    05a80f0000
                         push               0x0                                                  // 0x00505155    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505157    8d0c49
                         push               0x009c7f50                                           // 0x0050515a    68507f9c00
                         shl                ecx, 5                                               // 0x0050515f    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505162    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00505166    8b5030
                         push               0x009c7f30                                           // 0x00505169    68307f9c00
                         push               0x0                                                  // 0x0050516e    6a00
                         push               edx                                                  // 0x00505170    52
                         call               ___RTDynamicCast                                     // 0x00505171    e8a3082c00
                         push               0x0                                                  // 0x00505176    6a00
                         push               0x009dd560                                           // 0x00505178    6860d59d00
                         push               0x009c7f50                                           // 0x0050517d    68507f9c00
                         push               0x0                                                  // 0x00505182    6a00
                         push               eax                                                  // 0x00505184    50
                         call               ___RTDynamicCast                                     // 0x00505185    e88f082c00
                         mov.s              edi, eax                                             // 0x0050518a    8bf8
                         add                esp, 0x28                                            // 0x0050518c    83c428
                         test               edi, edi                                             // 0x0050518f    85ff
                         {disp8} je         _jmp_addr_0x005051f9                                 // 0x00505191    7466
                         mov.s              ecx, edi                                             // 0x00505193    8bcf
                         call               _jmp_addr_0x00738470                                 // 0x00505195    e8d6322300
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26178]                    // 0x0050519a    d81d78f18c00
                         fnstsw             ax                                                   // 0x005051a0    dfe0
                         test               ah, 0x01                                             // 0x005051a2    f6c401
                         {disp8} je         _jmp_addr_0x005051cf                                 // 0x005051a5    7428
                         push               0x0                                                  // 0x005051a7    6a00
                         mov.s              ecx, edi                                             // 0x005051a9    8bcf
                         call               @SetWorshipPercentage__11TotemStatueFf@12            // 0x005051ab    e8c0302300
                         mov.s              ecx, edi                                             // 0x005051b0    8bcf
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ                 // 0x005051b2    e8a9302300
                         {disp32} fstp      dword ptr [edi + 0x00000088]                         // 0x005051b7    d99f88000000
                         pop                edi                                                  // 0x005051bd    5f
                         {disp32} mov       dword ptr [esi + 0x000010d4], 0x00000000             // 0x005051be    c786d410000000000000
                         mov                eax, 0x00000002                                      // 0x005051c8    b802000000
                         pop                esi                                                  // 0x005051cd    5e
                         ret                                                                     // 0x005051ce    c3
_jmp_addr_0x005051cf:    mov.s              ecx, edi                                             // 0x005051cf    8bcf
                         call               _jmp_addr_0x00738470                                 // 0x005051d1    e89a322300
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26178]                    // 0x005051d6    d82578f18c00
                         push               ecx                                                  // 0x005051dc    51
                         mov.s              ecx, edi                                             // 0x005051dd    8bcf
                         fstp               dword ptr [esp]                                      // 0x005051df    d91c24
                         call               @SetWorshipPercentage__11TotemStatueFf@12            // 0x005051e2    e889302300
                         mov.s              ecx, edi                                             // 0x005051e7    8bcf
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ                 // 0x005051e9    e872302300
                         {disp32} fstp      dword ptr [edi + 0x00000088]                         // 0x005051ee    d99f88000000
                         pop                edi                                                  // 0x005051f4    5f
                         xor.s              eax, eax                                             // 0x005051f5    33c0
                         pop                esi                                                  // 0x005051f7    5e
                         ret                                                                     // 0x005051f8    c3
_jmp_addr_0x005051f9:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005051f9    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005051ff    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505205    05a80f0000
                         push               0x0                                                  // 0x0050520a    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050520c    8d0c49
                         push               0x009c7f50                                           // 0x0050520f    68507f9c00
                         shl                ecx, 5                                               // 0x00505214    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505217    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x0050521b    8b5030
                         push               0x009c7f30                                           // 0x0050521e    68307f9c00
                         push               0x0                                                  // 0x00505223    6a00
                         push               edx                                                  // 0x00505225    52
                         call               ___RTDynamicCast                                     // 0x00505226    e8ee072c00
                         push               0x0                                                  // 0x0050522b    6a00
                         push               0x00be6758                                           // 0x0050522d    685867be00
                         push               0x009c7f50                                           // 0x00505232    68507f9c00
                         push               0x0                                                  // 0x00505237    6a00
                         push               eax                                                  // 0x00505239    50
                         call               ___RTDynamicCast                                     // 0x0050523a    e8da072c00
                         mov.s              edi, eax                                             // 0x0050523f    8bf8
                         add                esp, 0x28                                            // 0x00505241    83c428
                         test               edi, edi                                             // 0x00505244    85ff
                         {disp8} je         _jmp_addr_0x0050529e                                 // 0x00505246    7456
                         mov                eax, dword ptr [edi]                                 // 0x00505248    8b07
                         mov.s              ecx, edi                                             // 0x0050524a    8bcf
                         call               dword ptr [eax + 0x92c]                              // 0x0050524c    ff902c090000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26178]                    // 0x00505252    d81d78f18c00
                         fnstsw             ax                                                   // 0x00505258    dfe0
                         test               ah, 0x01                                             // 0x0050525a    f6c401
                         {disp8} je         _jmp_addr_0x0050527d                                 // 0x0050525d    741e
                         mov                edx, dword ptr [edi]                                 // 0x0050525f    8b17
                         push               0x0                                                  // 0x00505261    6a00
                         mov.s              ecx, edi                                             // 0x00505263    8bcf
                         call               dword ptr [edx + 0x930]                              // 0x00505265    ff9230090000
                         pop                edi                                                  // 0x0050526b    5f
                         {disp32} mov       dword ptr [esi + 0x000010d4], 0x00000000             // 0x0050526c    c786d410000000000000
                         mov                eax, 0x00000002                                      // 0x00505276    b802000000
                         pop                esi                                                  // 0x0050527b    5e
                         ret                                                                     // 0x0050527c    c3
_jmp_addr_0x0050527d:    mov                esi, dword ptr [edi]                                 // 0x0050527d    8b37
                         mov.s              ecx, edi                                             // 0x0050527f    8bcf
                         call               dword ptr [esi + 0x92c]                              // 0x00505281    ff962c090000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26178]                    // 0x00505287    d82578f18c00
                         push               ecx                                                  // 0x0050528d    51
                         mov.s              ecx, edi                                             // 0x0050528e    8bcf
                         fstp               dword ptr [esp]                                      // 0x00505290    d91c24
                         call               dword ptr [esi + 0x930]                              // 0x00505293    ff9630090000
                         pop                edi                                                  // 0x00505299    5f
                         xor.s              eax, eax                                             // 0x0050529a    33c0
                         pop                esi                                                  // 0x0050529c    5e
                         ret                                                                     // 0x0050529d    c3
_jmp_addr_0x0050529e:    pop                edi                                                  // 0x0050529e    5f
                         mov                eax, 0x00000001                                      // 0x0050529f    b801000000
                         pop                esi                                                  // 0x005052a4    5e
                         ret                                                                     // 0x005052a5    c3
                         nop                                                                     // 0x005052a6    90
                         nop                                                                     // 0x005052a7    90
                         nop                                                                     // 0x005052a8    90
                         nop                                                                     // 0x005052a9    90
                         nop                                                                     // 0x005052aa    90
                         nop                                                                     // 0x005052ab    90
                         nop                                                                     // 0x005052ac    90
                         nop                                                                     // 0x005052ad    90
                         nop                                                                     // 0x005052ae    90
                         nop                                                                     // 0x005052af    90
                         push               esi                                                  // 0x005052b0    56
                         mov.s              esi, ecx                                             // 0x005052b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005052b3    8b8660010000
                         {disp8} mov        dword ptr [eax + 0x34], 0x00000000                   // 0x005052b9    c7403400000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x005052c0    8b8e64010000
                         push               0x41a00000                                           // 0x005052c6    680000a041
                         push               0xe                                                  // 0x005052cb    6a0e
                         add                ecx, 0x8                                             // 0x005052cd    83c108
                         call               _jmp_addr_0x004dc260                                 // 0x005052d0    e88b6ffdff
                         push               0x0                                                  // 0x005052d5    6a00
                         push               0x0                                                  // 0x005052d7    6a00
                         mov.s              ecx, esi                                             // 0x005052d9    8bce
                         call               _jmp_addr_0x00639a60                                 // 0x005052db    e880471300
                         mov                eax, 0x00000002                                      // 0x005052e0    b802000000
                         pop                esi                                                  // 0x005052e5    5e
                         ret                                                                     // 0x005052e6    c3
                         nop                                                                     // 0x005052e7    90
                         nop                                                                     // 0x005052e8    90
                         nop                                                                     // 0x005052e9    90
                         nop                                                                     // 0x005052ea    90
                         nop                                                                     // 0x005052eb    90
                         nop                                                                     // 0x005052ec    90
                         nop                                                                     // 0x005052ed    90
                         nop                                                                     // 0x005052ee    90
                         nop                                                                     // 0x005052ef    90
                         push               esi                                                  // 0x005052f0    56
                         mov.s              esi, ecx                                             // 0x005052f1    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x005052f3    8b06
                         push               0x3f800000                                           // 0x005052f5    680000803f
                         call               dword ptr [eax + 0x5b0]                              // 0x005052fa    ff90b0050000
                         push               0x00002580                                           // 0x00505300    6880250000
                         mov.s              ecx, esi                                             // 0x00505305    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x00505307    e84425f7ff
                         mov.s              ecx, eax                                             // 0x0050530c    8bc8
                         call               _jmp_addr_0x00481930                                 // 0x0050530e    e81dc6f7ff
                         mov                eax, 0x00000002                                      // 0x00505313    b802000000
                         pop                esi                                                  // 0x00505318    5e
                         ret                                                                     // 0x00505319    c3
                         call               dword ptr [__imp__GetOpenFileNameA@4]                // 0x0050531a    ff1570998a00
                         sub                esp, 0x08                                            // 0x00505320    83ec08
                         push               esi                                                  // 0x00505323    56
                         push               0x00000d13                                           // 0x00505324    68130d0000
                         push               0x00be6588                                           // 0x00505329    688865be00
                         push               0x41200000                                           // 0x0050532e    6800002041
                         mov.s              esi, ecx                                             // 0x00505333    8bf1
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x00505335    e8f6911d00
                         xor.s              edx, edx                                             // 0x0050533a    33d2
                         mov                eax, 0x000003e8                                      // 0x0050533c    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00505341    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x00505347    c744241400000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26e4]                     // 0x0050534f    d805e4b68a00
                         add                esp, 0x0c                                            // 0x00505355    83c40c
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x00505358    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x0050535c    df6c2404
                         fmul               st, st(1)                                            // 0x00505360    d8c9
                         call               _jmp_addr_0x007a1400                                 // 0x00505362    e899c02900
                         fstp               st(0)                                                // 0x00505367    ddd8
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00505369    66894658
                         mov                eax, 0x00000002                                      // 0x0050536d    b802000000
                         pop                esi                                                  // 0x00505372    5e
                         add                esp, 0x08                                            // 0x00505373    83c408
                         ret                                                                     // 0x00505376    c3
                         nop                                                                     // 0x00505377    90
                         nop                                                                     // 0x00505378    90
                         nop                                                                     // 0x00505379    90
                         nop                                                                     // 0x0050537a    90
                         nop                                                                     // 0x0050537b    90
                         nop                                                                     // 0x0050537c    90
                         nop                                                                     // 0x0050537d    90
                         nop                                                                     // 0x0050537e    90
                         nop                                                                     // 0x0050537f    90
                         push               esi                                                  // 0x00505380    56
                         mov.s              esi, ecx                                             // 0x00505381    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505383    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505389    8b88b40f0000
                         push               edi                                                  // 0x0050538f    57
                         add                eax, 0x00000fa8                                      // 0x00505390    05a80f0000
                         push               0x0                                                  // 0x00505395    6a00
                         push               0x00bdf160                                           // 0x00505397    6860f1bd00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050539c    8d0c49
                         shl                ecx, 5                                               // 0x0050539f    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005053a2    8b440134
                         push               0x00bdf1e8                                           // 0x005053a6    68e8f1bd00
                         push               0x0                                                  // 0x005053ab    6a00
                         push               eax                                                  // 0x005053ad    50
                         call               ___RTDynamicCast                                     // 0x005053ae    e866062c00
                         add                esp, 0x14                                            // 0x005053b3    83c414
                         mov.s              edi, eax                                             // 0x005053b6    8bf8
                         push               edi                                                  // 0x005053b8    57
                         mov.s              ecx, esi                                             // 0x005053b9    8bce
                         call               _jmp_addr_0x004f60b0                                 // 0x005053bb    e8f00cffff
                         test               eax, eax                                             // 0x005053c0    85c0
                         {disp8} je         _jmp_addr_0x005053d8                                 // 0x005053c2    7414
                         {disp32} mov       edx, dword ptr [_game]                               // 0x005053c4    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205a40]                    // 0x005053ca    8b82405a2000
                         {disp8} mov        dword ptr [edi + 0x78], eax                          // 0x005053d0    894778
_jmp_addr_0x005053d3:    pop                edi                                                  // 0x005053d3    5f
                         xor.s              eax, eax                                             // 0x005053d4    33c0
                         pop                esi                                                  // 0x005053d6    5e
                         ret                                                                     // 0x005053d7    c3
_jmp_addr_0x005053d8:    dec                word ptr [esi + 0x58]                                // 0x005053d8    66ff4e58
                         cmp                word ptr [esi + 0x58], 0x00                          // 0x005053dc    66837e5800
                         {disp8} jne        _jmp_addr_0x005053d3                                 // 0x005053e1    75f0
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x005053e3    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]                    // 0x005053e9    8b91405a2000
                         {disp8} mov        dword ptr [edi + 0x78], edx                          // 0x005053ef    895778
                         pop                edi                                                  // 0x005053f2    5f
                         mov                eax, 0x00000002                                      // 0x005053f3    b802000000
                         pop                esi                                                  // 0x005053f8    5e
                         ret                                                                     // 0x005053f9    c3
                         call               dword ptr [__imp__DirectDrawCreate@4]                // 0x005053fa    ff152c908a00
                         sub                esp, 0x14                                            // 0x00505400    83ec14
                         push               ebx                                                  // 0x00505403    53
                         push               ebp                                                  // 0x00505404    55
                         push               esi                                                  // 0x00505405    56
                         mov.s              esi, ecx                                             // 0x00505406    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00505408    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x0050540e    8b4858
                         {disp32} mov       edx, dword ptr [ecx + 0x00000090]                    // 0x00505411    8b9190000000
                         xor.s              eax, eax                                             // 0x00505417    33c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00505419    89442414
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x0050541d    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x00505421    8944241c
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505425    8b8664010000
                         push               edi                                                  // 0x0050542b    57
                         add                eax, 0x00000fa8                                      // 0x0050542c    05a80f0000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x00505431    8d4c2418
                         push               ecx                                                  // 0x00505435    51
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                          // 0x00505436    8b480c
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x00505439    89542418
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x0050543d    8d1449
                         shl                edx, 5                                               // 0x00505440    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00505443    8b440234
                         add                eax, 0x24                                            // 0x00505447    83c024
                         push               eax                                                  // 0x0050544a    50
                         mov.s              ecx, esi                                             // 0x0050544b    8bce
                         call               _jmp_addr_0x0047ad80                                 // 0x0050544d    e82e59f7ff
                         {disp32} fld       dword ptr [rdata_bytes + 0x28660]                    // 0x00505452    d90560168d00
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505458    8b8664010000
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0050545e    d84c2414
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505462    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505468    8d0c49
                         shl                ecx, 5                                               // 0x0050546b    c1e105
                         {disp32} mov       ebx, dword ptr [ecx + eax * 0x1 + 0x00000fe0]        // 0x0050546e    8b9c01e00f0000
                         lea                ecx, dword ptr [ebx + ebx * 0x8]                     // 0x00505475    8d0cdb
                         lea                edx, dword ptr [ecx + ecx * 0x8]                     // 0x00505478    8d14c9
                         {disp32} lea       ecx, dword ptr [edx * 0x4 + 0x00d4c660]              // 0x0050547b    8d0c9560c6d400
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x00505482    894c2410
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505486    8b88b40f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x0050548c    8d1449
                         shl                edx, 5                                               // 0x0050548f    c1e205
                         {disp32} mov       eax, dword ptr [edx + eax * 0x1 + 0x00000fdc]        // 0x00505492    8b8402dc0f0000
                         {disp8} mov        edi, dword ptr [eax + 0x30]                          // 0x00505499    8b7830
                         call               _jmp_addr_0x007a1400                                 // 0x0050549c    e85fbf2900
                         test               edi, edi                                             // 0x005054a1    85ff
                         mov.s              ebp, eax                                             // 0x005054a3    8be8
                         {disp8} je         _jmp_addr_0x005054d7                                 // 0x005054a5    7430
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x005054a7    8b442410
                         {disp32} mov       ecx, dword ptr [eax + 0x00000118]                    // 0x005054ab    8b8818010000
                         mov                edx, dword ptr [edi]                                 // 0x005054b1    8b17
                         push               ecx                                                  // 0x005054b3    51
                         mov.s              ecx, edi                                             // 0x005054b4    8bcf
                         call               dword ptr [edx + 0x98]                               // 0x005054b6    ff9298000000
                         cmp.s              ebp, eax                                             // 0x005054bc    3be8
                         .byte              0x72, 0x17// {disp8} jb _jmp_addr_0x005054d7         // 0x005054be    7217
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x005054c0    8b442410
                         {disp32} mov       ecx, dword ptr [eax + 0x00000118]                    // 0x005054c4    8b8818010000
                         mov                edx, dword ptr [edi]                                 // 0x005054ca    8b17
                         push               ecx                                                  // 0x005054cc    51
                         mov.s              ecx, edi                                             // 0x005054cd    8bcf
                         call               dword ptr [edx + 0x98]                               // 0x005054cf    ff9298000000
                         mov.s              ebp, eax                                             // 0x005054d5    8be8
_jmp_addr_0x005054d7:    push               ebp                                                  // 0x005054d7    55
                         push               ebx                                                  // 0x005054d8    53
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x005054d9    8d542420
                         push               edx                                                  // 0x005054dd    52
                         push               edi                                                  // 0x005054de    57
                         mov.s              ecx, esi                                             // 0x005054df    8bce
                         call               _jmp_addr_0x0047acd0                                 // 0x005054e1    e8ea57f7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x005054e6    8b8e64010000
                         pop                edi                                                  // 0x005054ec    5f
                         pop                esi                                                  // 0x005054ed    5e
                         pop                ebp                                                  // 0x005054ee    5d
                         {disp32} mov       dword ptr [ecx + 0x00001c6c], eax                    // 0x005054ef    89816c1c0000
                         mov                eax, 0x00000002                                      // 0x005054f5    b802000000
                         pop                ebx                                                  // 0x005054fa    5b
                         add                esp, 0x14                                            // 0x005054fb    83c414
                         ret                                                                     // 0x005054fe    c3
                         nop                                                                     // 0x005054ff    90
                         push               esi                                                  // 0x00505500    56
                         mov.s              esi, ecx                                             // 0x00505501    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00505503    8b8e64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00001c6c]                    // 0x00505509    8b816c1c0000
                         push               eax                                                  // 0x0050550f    50
                         push               esi                                                  // 0x00505510    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                                 // 0x00505511    e8ba26fdff
                         push               eax                                                  // 0x00505516    50
                         mov.s              ecx, esi                                             // 0x00505517    8bce
                         call               _jmp_addr_0x004ff9f0                                 // 0x00505519    e8d2a4ffff
                         pop                esi                                                  // 0x0050551e    5e
                         ret                                                                     // 0x0050551f    c3
                         push               esi                                                  // 0x00505520    56
                         mov.s              esi, ecx                                             // 0x00505521    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00505523    8b8e64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00001c6c]                    // 0x00505529    8b816c1c0000
                         push               eax                                                  // 0x0050552f    50
                         push               esi                                                  // 0x00505530    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                                 // 0x00505531    e89a26fdff
                         push               eax                                                  // 0x00505536    50
                         mov.s              ecx, esi                                             // 0x00505537    8bce
                         call               ?SubStatePerformPickUpParameter@Creature@@QAEIPAVCreatureBelief@@@Z                                 // 0x00505539    e892a8ffff
                         pop                esi                                                  // 0x0050553e    5e
                         ret                                                                     // 0x0050553f    c3
                         push               esi                                                  // 0x00505540    56
                         mov.s              esi, ecx                                             // 0x00505541    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505543    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505549    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050554f    8d0c49
                         shl                ecx, 5                                               // 0x00505552    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fdc]        // 0x00505555    8b9401dc0f0000
                         test               edx, edx                                             // 0x0050555c    85d2
                         {disp8} je         _jmp_addr_0x005055bd                                 // 0x0050555e    745d
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505560    8b88b40f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00505566    8d1449
                         shl                edx, 5                                               // 0x00505569    c1e205
                         {disp32} mov       eax, dword ptr [edx + eax * 0x1 + 0x00000fdc]        // 0x0050556c    8b8402dc0f0000
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                          // 0x00505573    8b4830
                         mov                edx, dword ptr [ecx]                                 // 0x00505576    8b11
                         call               dword ptr [edx + 0xa4]                               // 0x00505578    ff92a4000000
                         test               eax, eax                                             // 0x0050557e    85c0
                         {disp8} je         _jmp_addr_0x005055bd                                 // 0x00505580    743b
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x00505582    8b8064010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c6c]                    // 0x00505588    8b886c1c0000
                         push               ecx                                                  // 0x0050558e    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x0050558f    8b8e64010000
                         push               esi                                                  // 0x00505595    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                                 // 0x00505596    e83526fdff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x0050559b    8b8e64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x005055a1    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005055a7    8d1452
                         shl                edx, 5                                               // 0x005055aa    c1e205
                         {disp32} mov       dword ptr [edx + ecx * 0x1 + 0x00000fdc], eax        // 0x005055ad    89840adc0f0000
                         mov.s              ecx, esi                                             // 0x005055b4    8bce
                         call               _jmp_addr_0x004ff9c0                                 // 0x005055b6    e805a4ffff
                         pop                esi                                                  // 0x005055bb    5e
                         ret                                                                     // 0x005055bc    c3
_jmp_addr_0x005055bd:    mov                eax, 0x00000003                                      // 0x005055bd    b803000000
                         pop                esi                                                  // 0x005055c2    5e
                         ret                                                                     // 0x005055c3    c3
                         nop                                                                     // 0x005055c4    90
                         nop                                                                     // 0x005055c5    90
                         nop                                                                     // 0x005055c6    90
                         nop                                                                     // 0x005055c7    90
                         nop                                                                     // 0x005055c8    90
                         nop                                                                     // 0x005055c9    90
                         nop                                                                     // 0x005055ca    90
                         nop                                                                     // 0x005055cb    90
                         nop                                                                     // 0x005055cc    90
                         nop                                                                     // 0x005055cd    90
                         nop                                                                     // 0x005055ce    90
                         nop                                                                     // 0x005055cf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x005055d0    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]                    // 0x005055d6    8b90b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005055dc    8d1452
                         shl                edx, 5                                               // 0x005055df    c1e205
                         {disp32} mov       edx, dword ptr [edx + eax * 0x1 + 0x00000fdc]        // 0x005055e2    8b9402dc0f0000
                         push               esi                                                  // 0x005055e9    56
                         {disp8} mov        esi, dword ptr [edx + 0x30]                          // 0x005055ea    8b7230
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]                    // 0x005055ed    8b90b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005055f3    8d1452
                         push               edi                                                  // 0x005055f6    57
                         shl                edx, 5                                               // 0x005055f7    c1e205
                         {disp32} mov       edi, dword ptr [edx + eax * 0x1 + 0x00000fe0]        // 0x005055fa    8bbc02e00f0000
                         mov                eax, dword ptr [ecx]                                 // 0x00505601    8b01
                         push               0x0                                                  // 0x00505603    6a00
                         call               dword ptr [eax + 0x1c]                               // 0x00505605    ff501c
                         push               eax                                                  // 0x00505608    50
                         push               edi                                                  // 0x00505609    57
                         push               esi                                                  // 0x0050560a    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z                     // 0x0050560b    e860e71d00
                         add                esp, 0x10                                            // 0x00505610    83c410
                         pop                edi                                                  // 0x00505613    5f
                         mov                eax, 0x00000002                                      // 0x00505614    b802000000
                         pop                esi                                                  // 0x00505619    5e
                         ret                                                                     // 0x0050561a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050561b    e859c2efff
                         push               esi                                                  // 0x00505620    56
                         push               edi                                                  // 0x00505621    57
                         push               0x0                                                  // 0x00505622    6a00
                         mov.s              esi, ecx                                             // 0x00505624    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505626    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000f58]                    // 0x0050562c    8b88580f0000
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                          // 0x00505632    8b4130
                         push               0x009c8060                                           // 0x00505635    6860809c00
                         push               0x009c7f30                                           // 0x0050563a    68307f9c00
                         push               0x0                                                  // 0x0050563f    6a00
                         push               eax                                                  // 0x00505641    50
                         call               ___RTDynamicCast                                     // 0x00505642    e8d2032c00
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x00505647    8b9664010000
                         push               0x0                                                  // 0x0050564d    6a00
                         push               0x009c7f50                                           // 0x0050564f    68507f9c00
                         mov.s              edi, eax                                             // 0x00505654    8bf8
                         {disp32} mov       eax, dword ptr [edx + 0x00000f5c]                    // 0x00505656    8b825c0f0000
                         {disp8} mov        eax, dword ptr [eax + 0x30]                          // 0x0050565c    8b4030
                         push               0x009c7f30                                           // 0x0050565f    68307f9c00
                         push               0x0                                                  // 0x00505664    6a00
                         push               eax                                                  // 0x00505666    50
                         call               ___RTDynamicCast                                     // 0x00505667    e8ad032c00
                         mov                edx, dword ptr [edi]                                 // 0x0050566c    8b17
                         add                esp, 0x28                                            // 0x0050566e    83c428
                         push               0x0                                                  // 0x00505671    6a00
                         push               eax                                                  // 0x00505673    50
                         push               0x0                                                  // 0x00505674    6a00
                         mov.s              ecx, edi                                             // 0x00505676    8bcf
                         call               dword ptr [edx + 0x720]                              // 0x00505678    ff9220070000
                         pop                edi                                                  // 0x0050567e    5f
                         mov                eax, 0x00000002                                      // 0x0050567f    b802000000
                         pop                esi                                                  // 0x00505684    5e
                         ret                                                                     // 0x00505685    c3
                         nop                                                                     // 0x00505686    90
                         nop                                                                     // 0x00505687    90
                         nop                                                                     // 0x00505688    90
                         nop                                                                     // 0x00505689    90
                         nop                                                                     // 0x0050568a    90
                         nop                                                                     // 0x0050568b    90
                         nop                                                                     // 0x0050568c    90
                         nop                                                                     // 0x0050568d    90
                         nop                                                                     // 0x0050568e    90
                         nop                                                                     // 0x0050568f    90
                         push               esi                                                  // 0x00505690    56
                         mov.s              esi, ecx                                             // 0x00505691    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505693    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505699    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050569f    05a80f0000
                         push               0x0                                                  // 0x005056a4    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005056a6    8d0c49
                         push               0x009c7f50                                           // 0x005056a9    68507f9c00
                         shl                ecx, 5                                               // 0x005056ae    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005056b1    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x005056b5    8b5030
                         push               0x009c7f30                                           // 0x005056b8    68307f9c00
                         push               0x0                                                  // 0x005056bd    6a00
                         push               edx                                                  // 0x005056bf    52
                         call               ___RTDynamicCast                                     // 0x005056c0    e854032c00
                         mov                edx, dword ptr [eax]                                 // 0x005056c5    8b10
                         add                esp, 0x14                                            // 0x005056c7    83c414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x005056ca    8d4e14
                         push               ecx                                                  // 0x005056cd    51
                         push               esi                                                  // 0x005056ce    56
                         push               0x3f800000                                           // 0x005056cf    680000803f
                         push               0x2                                                  // 0x005056d4    6a02
                         mov.s              ecx, eax                                             // 0x005056d6    8bc8
                         call               dword ptr [edx + 0x604]                              // 0x005056d8    ff9204060000
                         mov                eax, 0x00000002                                      // 0x005056de    b802000000
                         pop                esi                                                  // 0x005056e3    5e
                         ret                                                                     // 0x005056e4    c3
                         nop                                                                     // 0x005056e5    90
                         nop                                                                     // 0x005056e6    90
                         nop                                                                     // 0x005056e7    90
                         nop                                                                     // 0x005056e8    90
                         nop                                                                     // 0x005056e9    90
                         nop                                                                     // 0x005056ea    90
                         nop                                                                     // 0x005056eb    90
                         nop                                                                     // 0x005056ec    90
                         nop                                                                     // 0x005056ed    90
                         nop                                                                     // 0x005056ee    90
                         nop                                                                     // 0x005056ef    90
                         push               ecx                                                  // 0x005056f0    51
                         push               esi                                                  // 0x005056f1    56
                         mov.s              esi, ecx                                             // 0x005056f2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005056f4    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005056fa    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505700    8d0c49
                         push               edi                                                  // 0x00505703    57
                         shl                ecx, 5                                               // 0x00505704    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fdc]        // 0x00505707    8b9401dc0f0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050570e    8b88b40f0000
                         {disp8} mov        edx, dword ptr [edx + 0x30]                          // 0x00505714    8b5230
                         push               0x0                                                  // 0x00505717    6a00
                         push               0x009c7f50                                           // 0x00505719    68507f9c00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050571e    8d0c49
                         push               0x009c7f30                                           // 0x00505721    68307f9c00
                         shl                ecx, 5                                               // 0x00505726    c1e105
                         {disp32} fld       dword ptr [ecx + eax * 0x1 + 0x00000ff0]             // 0x00505729    d98401f00f0000
                         push               0x0                                                  // 0x00505730    6a00
                         push               edx                                                  // 0x00505732    52
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00505733    d95c241c
                         call               ___RTDynamicCast                                     // 0x00505737    e8dd022c00
                         mov.s              edi, eax                                             // 0x0050573c    8bf8
                         add                esp, 0x14                                            // 0x0050573e    83c414
                         test               edi, edi                                             // 0x00505741    85ff
                         {disp8} je         _jmp_addr_0x00505784                                 // 0x00505743    743f
                         test               byte ptr [edi + 0x24], 0x02                          // 0x00505745    f6472402
                         {disp8} jne        _jmp_addr_0x00505759                                 // 0x00505749    750e
                         mov                edx, dword ptr [edi]                                 // 0x0050574b    8b17
                         mov.s              ecx, edi                                             // 0x0050574d    8bcf
                         call               dword ptr [edx + 0x338]                              // 0x0050574f    ff9238030000
                         test               eax, eax                                             // 0x00505755    85c0
                         {disp8} je         _jmp_addr_0x00505784                                 // 0x00505757    742b
_jmp_addr_0x00505759:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505759    8b8664010000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x0050575f    8b4c2408
                         push               0x0                                                  // 0x00505763    6a00
                         push               ecx                                                  // 0x00505765    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505766    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050576c    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00505771    8d1449
                         shl                edx, 5                                               // 0x00505774    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00505777    8b440234
                         push               edi                                                  // 0x0050577b    57
                         push               eax                                                  // 0x0050577c    50
                         mov.s              ecx, esi                                             // 0x0050577d    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x0050577f    e81c50f7ff
_jmp_addr_0x00505784:    {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x00505784    8d4e14
                         mov                edx, dword ptr [ecx]                                 // 0x00505787    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                          // 0x00505789    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0050578c    8b4908
                         add                esi, 0x00001164                                      // 0x0050578f    81c664110000
                         mov                dword ptr [esi], edx                                 // 0x00505795    8916
                         {disp8} mov        dword ptr [esi + 0x04], eax                          // 0x00505797    894604
                         pop                edi                                                  // 0x0050579a    5f
                         {disp8} mov        dword ptr [esi + 0x08], ecx                          // 0x0050579b    894e08
                         mov                eax, 0x00000002                                      // 0x0050579e    b802000000
                         pop                esi                                                  // 0x005057a3    5e
                         pop                ecx                                                  // 0x005057a4    59
                         ret                                                                     // 0x005057a5    c3
                         nop                                                                     // 0x005057a6    90
                         nop                                                                     // 0x005057a7    90
                         nop                                                                     // 0x005057a8    90
                         nop                                                                     // 0x005057a9    90
                         nop                                                                     // 0x005057aa    90
                         nop                                                                     // 0x005057ab    90
                         nop                                                                     // 0x005057ac    90
                         nop                                                                     // 0x005057ad    90
                         nop                                                                     // 0x005057ae    90
                         nop                                                                     // 0x005057af    90
                         sub                esp, 0x14                                            // 0x005057b0    83ec14
                         push               ebx                                                  // 0x005057b3    53
                         push               ebp                                                  // 0x005057b4    55
                         push               esi                                                  // 0x005057b5    56
                         mov.s              esi, ecx                                             // 0x005057b6    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005057b8    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005057be    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005057c4    8d0c49
                         push               edi                                                  // 0x005057c7    57
                         shl                ecx, 5                                               // 0x005057c8    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fdc]        // 0x005057cb    8b9401dc0f0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005057d2    8b88b40f0000
                         {disp8} mov        edi, dword ptr [edx + 0x30]                          // 0x005057d8    8b7a30
                         push               0x0                                                  // 0x005057db    6a00
                         push               0x009c7f50                                           // 0x005057dd    68507f9c00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005057e2    8d0c49
                         push               0x009c7f30                                           // 0x005057e5    68307f9c00
                         shl                ecx, 5                                               // 0x005057ea    c1e105
                         {disp32} fld       dword ptr [ecx + eax * 0x1 + 0x00000ff0]             // 0x005057ed    d98401f00f0000
                         push               0x0                                                  // 0x005057f4    6a00
                         push               edi                                                  // 0x005057f6    57
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005057f7    d95c2424
                         call               ___RTDynamicCast                                     // 0x005057fb    e819022c00
                         mov.s              ebx, eax                                             // 0x00505800    8bd8
                         add                esp, 0x14                                            // 0x00505802    83c414
                         test               ebx, ebx                                             // 0x00505805    85db
                         {disp8} je         _jmp_addr_0x00505859                                 // 0x00505807    7450
                         mov                edx, dword ptr [ebx]                                 // 0x00505809    8b13
                         push               esi                                                  // 0x0050580b    56
                         mov.s              ecx, ebx                                             // 0x0050580c    8bcb
                         call               dword ptr [edx + 0x7c4]                              // 0x0050580e    ff92c4070000
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00505814    d95c2414
                         test               byte ptr [ebx + 0x24], 0x02                          // 0x00505818    f6432402
                         {disp8} jne        _jmp_addr_0x0050582c                                 // 0x0050581c    750e
                         mov                edx, dword ptr [ebx]                                 // 0x0050581e    8b13
                         mov.s              ecx, ebx                                             // 0x00505820    8bcb
                         call               dword ptr [edx + 0x338]                              // 0x00505822    ff9238030000
                         test               eax, eax                                             // 0x00505828    85c0
                         {disp8} je         _jmp_addr_0x00505864                                 // 0x0050582a    7438
_jmp_addr_0x0050582c:    mov                eax, dword ptr [ebx]                                 // 0x0050582c    8b03
                         mov.s              ecx, ebx                                             // 0x0050582e    8bcb
                         call               dword ptr [eax + 0x178]                              // 0x00505830    ff9078010000
                         test               eax, eax                                             // 0x00505836    85c0
                         {disp8} je         _jmp_addr_0x00505864                                 // 0x00505838    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x0050583a    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00505840    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00505843    e888eaf7ff
                         test               eax, eax                                             // 0x00505848    85c0
                         {disp8} jne        _jmp_addr_0x00505864                                 // 0x0050584a    7518
                         pop                edi                                                  // 0x0050584c    5f
                         pop                esi                                                  // 0x0050584d    5e
                         pop                ebp                                                  // 0x0050584e    5d
                         mov                eax, 0x00000002                                      // 0x0050584f    b802000000
                         pop                ebx                                                  // 0x00505854    5b
                         add                esp, 0x14                                            // 0x00505855    83c414
                         ret                                                                     // 0x00505858    c3
_jmp_addr_0x00505859:    mov                eax, dword ptr [esi]                                 // 0x00505859    8b06
                         mov.s              ecx, esi                                             // 0x0050585b    8bce
                         call               dword ptr [eax + 0x64]                               // 0x0050585d    ff5064
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00505860    d95c2414
_jmp_addr_0x00505864:    mov                edx, dword ptr [esi]                                 // 0x00505864    8b16
                         mov.s              ecx, esi                                             // 0x00505866    8bce
                         call               dword ptr [edx + 0x64]                               // 0x00505868    ff5264
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x0050586b    d8442414
                         add                edi, 0x14                                            // 0x0050586f    83c714
                         {disp8} lea        ebp, dword ptr [esi + 0x14]                          // 0x00505872    8d6e14
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x00505875    d8442410
                         push               edi                                                  // 0x00505879    57
                         push               ebp                                                  // 0x0050587a    55
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0050587b    d95c241c
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                                      // 0x0050587f    e8ec742400
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00505884    d944241c
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                          // 0x00505888    d80d30b28a00
                         add                esp, 0x08                                            // 0x0050588e    83c408
                         fcompp                                                                  // 0x00505891    ded9
                         fnstsw             ax                                                   // 0x00505893    dfe0
                         test               ah, 0x41                                             // 0x00505895    f6c441
                         {disp8} jne        _jmp_addr_0x005058b5                                 // 0x00505898    751b
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x0050589a    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005058a0    8b4858
                         call               _jmp_addr_0x00484260                                 // 0x005058a3    e8b8e9f7ff
                         pop                edi                                                  // 0x005058a8    5f
                         pop                esi                                                  // 0x005058a9    5e
                         pop                ebp                                                  // 0x005058aa    5d
                         mov                eax, 0x00000002                                      // 0x005058ab    b802000000
                         pop                ebx                                                  // 0x005058b0    5b
                         add                esp, 0x14                                            // 0x005058b1    83c414
                         ret                                                                     // 0x005058b4    c3
_jmp_addr_0x005058b5:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x005058b5    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x005058bb    8b4958
                         call               _jmp_addr_0x004842e0                                 // 0x005058be    e81deaf7ff
                         test               eax, eax                                             // 0x005058c3    85c0
                         {disp32} je        _jmp_addr_0x00505a02                                 // 0x005058c5    0f8437010000
                         test               ebx, ebx                                             // 0x005058cb    85db
                         {disp8} je         _jmp_addr_0x005058fc                                 // 0x005058cd    742d
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005058cf    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005058d5    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005058db    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x005058e0    8d1449
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x005058e3    8b4c2410
                         push               0x0                                                  // 0x005058e7    6a00
                         push               ecx                                                  // 0x005058e9    51
                         shl                edx, 5                                               // 0x005058ea    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x005058ed    8b440234
                         push               ebx                                                  // 0x005058f1    53
                         push               eax                                                  // 0x005058f2    50
                         mov.s              ecx, esi                                             // 0x005058f3    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x005058f5    e8a64ef7ff
                         {disp8} jmp        _jmp_addr_0x00505944                                 // 0x005058fa    eb48
_jmp_addr_0x005058fc:    {disp8} mov        edx, dword ptr [edi + 0x08]                          // 0x005058fc    8b5708
                         mov.s              ecx, edi                                             // 0x005058ff    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00505901    89542410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00505905    e886d72f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x0050590a    d8442410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0050590e    8b442414
                         push               0x0                                                  // 0x00505912    6a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00505914    d95c2420
                         push               eax                                                  // 0x00505918    50
                         fild               dword ptr [edi]                                      // 0x00505919    db07
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                          // 0x0050591b    8d4c2420
                         push               ecx                                                  // 0x0050591f    51
                         push               0x0                                                  // 0x00505920    6a00
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505922    d80da4a38a00
                         mov.s              ecx, esi                                             // 0x00505928    8bce
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0050592a    d95c2428
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x0050592e    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505931    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00505937    d95c2430
                         call               _jmp_addr_0x0047a880                                 // 0x0050593b    e8404ff7ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x00505940    8b442414
_jmp_addr_0x00505944:    sub                eax, 0x00                                            // 0x00505944    83e800
                         {disp8} je         _jmp_addr_0x00505962                                 // 0x00505947    7419
                         sub                eax, 0x02                                            // 0x00505949    83e802
                         {disp8} je         _jmp_addr_0x00505962                                 // 0x0050594c    7414
                         dec                eax                                                  // 0x0050594e    48
                         {disp32} jne       _jmp_addr_0x00505b83                                 // 0x0050594f    0f852e020000
                         pop                edi                                                  // 0x00505955    5f
                         pop                esi                                                  // 0x00505956    5e
                         pop                ebp                                                  // 0x00505957    5d
                         mov                eax, 0x00000002                                      // 0x00505958    b802000000
                         pop                ebx                                                  // 0x0050595d    5b
                         add                esp, 0x14                                            // 0x0050595e    83c414
                         ret                                                                     // 0x00505961    c3
_jmp_addr_0x00505962:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505962    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505968    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050596e    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00505973    8d1449
                         shl                edx, 5                                               // 0x00505976    c1e205
                         {disp8} mov        ecx, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00505979    8b4c0234
                         call               _jmp_addr_0x004d8df0                                 // 0x0050597d    e86e34fdff
                         {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x00505982    8b4708
                         mov.s              ecx, edi                                             // 0x00505985    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00505987    89442414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0050598b    e800d72f00
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x00505990    d8442414
                         push               0x00000dd2                                           // 0x00505994    68d20d0000
                         push               0x00be6588                                           // 0x00505999    688865be00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0050599e    d95c2424
                         push               0xc                                                  // 0x005059a2    6a0c
                         fild               dword ptr [edi]                                      // 0x005059a4    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x005059a6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005059ac    d95c2424
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x005059b0    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x005059b3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x005059b9    d95c242c
                         call               ___nw__FUl                                           // 0x005059bd    e8ce5d2d00
                         add                esp, 0x0c                                            // 0x005059c2    83c40c
                         test               eax, eax                                             // 0x005059c5    85c0
                         {disp8} je         _jmp_addr_0x005059e1                                 // 0x005059c7    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x005059c9    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x005059cd    8b54241c
                         mov                dword ptr [eax], ecx                                 // 0x005059d1    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                          // 0x005059d3    8b4c2420
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x005059d7    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x005059da    894808
                         mov.s              edi, eax                                             // 0x005059dd    8bf8
                         {disp8} jmp        _jmp_addr_0x005059e3                                 // 0x005059df    eb02
_jmp_addr_0x005059e1:    xor.s              edi, edi                                             // 0x005059e1    33ff
_jmp_addr_0x005059e3:    test               edi, edi                                             // 0x005059e3    85ff
                         {disp32} je        _jmp_addr_0x00505b66                                 // 0x005059e5    0f847b010000
                         push               0x8                                                  // 0x005059eb    6a08
                         call               ??2@YAPAXI@Z                                         // 0x005059ed    e8fc0a2c00
                         add                esp, 0x04                                            // 0x005059f2    83c404
                         test               eax, eax                                             // 0x005059f5    85c0
                         {disp32} je        _jmp_addr_0x00505b66                                 // 0x005059f7    0f8469010000
                         {disp32} jmp       _jmp_addr_0x00505b4f                                 // 0x005059fd    e94d010000
_jmp_addr_0x00505a02:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505a02    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505a08    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505a0e    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00505a13    8d1449
                         shl                edx, 5                                               // 0x00505a16    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00505a19    8b440234
                         push               0x6                                                  // 0x00505a1d    6a06
                         add                eax, 0x24                                            // 0x00505a1f    83c024
                         push               eax                                                  // 0x00505a22    50
                         mov.s              ecx, esi                                             // 0x00505a23    8bce
                         call               _jmp_addr_0x004774f0                                 // 0x00505a25    e8c61af7ff
                         test               eax, eax                                             // 0x00505a2a    85c0
                         {disp32} jne       _jmp_addr_0x00505b83                                 // 0x00505a2c    0f8551010000
                         test               ebx, ebx                                             // 0x00505a32    85db
                         {disp8} je         _jmp_addr_0x00505a63                                 // 0x00505a34    742d
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505a36    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505a3c    8b88b40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00505a42    8b542410
                         add                eax, 0x00000fa8                                      // 0x00505a46    05a80f0000
                         push               0x0                                                  // 0x00505a4b    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505a4d    8d0c49
                         shl                ecx, 5                                               // 0x00505a50    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505a53    8b440134
                         push               edx                                                  // 0x00505a57    52
                         push               ebx                                                  // 0x00505a58    53
                         push               eax                                                  // 0x00505a59    50
                         mov.s              ecx, esi                                             // 0x00505a5a    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x00505a5c    e83f4df7ff
                         {disp8} jmp        _jmp_addr_0x00505aab                                 // 0x00505a61    eb48
_jmp_addr_0x00505a63:    {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x00505a63    8b4708
                         mov.s              ecx, edi                                             // 0x00505a66    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00505a68    89442410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00505a6c    e81fd62f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x00505a71    d8442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x00505a75    8b4c2414
                         push               0x0                                                  // 0x00505a79    6a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00505a7b    d95c2420
                         push               ecx                                                  // 0x00505a7f    51
                         fild               dword ptr [edi]                                      // 0x00505a80    db07
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x00505a82    8d542420
                         push               edx                                                  // 0x00505a86    52
                         push               0x0                                                  // 0x00505a87    6a00
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505a89    d80da4a38a00
                         mov.s              ecx, esi                                             // 0x00505a8f    8bce
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00505a91    d95c2428
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00505a95    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505a98    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00505a9e    d95c2430
                         call               _jmp_addr_0x0047a880                                 // 0x00505aa2    e8d94df7ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x00505aa7    8b442414
_jmp_addr_0x00505aab:    sub                eax, 0x00                                            // 0x00505aab    83e800
                         {disp8} je         _jmp_addr_0x00505ab9                                 // 0x00505aae    7409
                         sub                eax, 0x02                                            // 0x00505ab0    83e802
                         {disp32} jne       _jmp_addr_0x00505b83                                 // 0x00505ab3    0f85ca000000
_jmp_addr_0x00505ab9:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505ab9    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505abf    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505ac5    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505aca    8d0c49
                         shl                ecx, 5                                               // 0x00505acd    c1e105
                         {disp8} mov        ecx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505ad0    8b4c0134
                         call               _jmp_addr_0x004d8df0                                 // 0x00505ad4    e81733fdff
                         {disp8} mov        edx, dword ptr [ebx + 0x1c]                          // 0x00505ad9    8b531c
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                          // 0x00505adc    8d7b14
                         mov.s              ecx, edi                                             // 0x00505adf    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x00505ae1    89542414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00505ae5    e8a6d52f00
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x00505aea    d8442414
                         push               0x00000df6                                           // 0x00505aee    68f60d0000
                         push               0x00be6588                                           // 0x00505af3    688865be00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00505af8    d95c2424
                         push               0xc                                                  // 0x00505afc    6a0c
                         fild               dword ptr [edi]                                      // 0x00505afe    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505b00    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00505b06    d95c2424
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00505b0a    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505b0d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00505b13    d95c242c
                         call               ___nw__FUl                                           // 0x00505b17    e8745c2d00
                         add                esp, 0x0c                                            // 0x00505b1c    83c40c
                         test               eax, eax                                             // 0x00505b1f    85c0
                         {disp8} je         _jmp_addr_0x00505b3b                                 // 0x00505b21    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x00505b23    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x00505b27    8b54241c
                         mov                dword ptr [eax], ecx                                 // 0x00505b2b    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                          // 0x00505b2d    8b4c2420
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x00505b31    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x00505b34    894808
                         mov.s              edi, eax                                             // 0x00505b37    8bf8
                         {disp8} jmp        _jmp_addr_0x00505b3d                                 // 0x00505b39    eb02
_jmp_addr_0x00505b3b:    xor.s              edi, edi                                             // 0x00505b3b    33ff
_jmp_addr_0x00505b3d:    test               edi, edi                                             // 0x00505b3d    85ff
                         {disp8} je         _jmp_addr_0x00505b66                                 // 0x00505b3f    7425
                         push               0x8                                                  // 0x00505b41    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00505b43    e8a6092c00
                         add                esp, 0x04                                            // 0x00505b48    83c404
                         test               eax, eax                                             // 0x00505b4b    85c0
                         {disp8} je         _jmp_addr_0x00505b66                                 // 0x00505b4d    7417
_jmp_addr_0x00505b4f:    {disp32} mov       ecx, dword ptr [esi + 0x00001220]                    // 0x00505b4f    8b8e20120000
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x00505b55    897804
                         mov                dword ptr [eax], ecx                                 // 0x00505b58    8908
                         {disp32} mov       dword ptr [esi + 0x00001220], eax                    // 0x00505b5a    898620120000
                         {disp32} inc       dword ptr [esi + 0x00001224]                         // 0x00505b60    ff8624120000
_jmp_addr_0x00505b66:    push               0x1                                                  // 0x00505b66    6a01
                         push               0x1                                                  // 0x00505b68    6a01
                         push               0x00be66c8                                           // 0x00505b6a    68c866be00
                         mov.s              ecx, esi                                             // 0x00505b6f    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00505b71    e8bafbf6ff
                         pop                edi                                                  // 0x00505b76    5f
                         pop                esi                                                  // 0x00505b77    5e
                         pop                ebp                                                  // 0x00505b78    5d
                         mov                eax, 0x00000001                                      // 0x00505b79    b801000000
                         pop                ebx                                                  // 0x00505b7e    5b
                         add                esp, 0x14                                            // 0x00505b7f    83c414
                         ret                                                                     // 0x00505b82    c3
_jmp_addr_0x00505b83:    {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x00505b83    8b9664010000
                         {disp32} mov       eax, dword ptr [edx + 0x00001bdc]                    // 0x00505b89    8b82dc1b0000
                         cdq                                                                     // 0x00505b8f    99
                         mov                ecx, 0x00000032                                      // 0x00505b90    b932000000
                         idiv               ecx                                                  // 0x00505b95    f7f9
                         test               edx, edx                                             // 0x00505b97    85d2
                         {disp8} jne        _jmp_addr_0x00505bb3                                 // 0x00505b99    7518
                         mov.s              eax, ebp                                             // 0x00505b9b    8bc5
                         mov                ecx, dword ptr [eax]                                 // 0x00505b9d    8b08
                         {disp32} lea       edx, dword ptr [esi + 0x00001164]                    // 0x00505b9f    8d9664110000
                         mov                dword ptr [edx], ecx                                 // 0x00505ba5    890a
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x00505ba7    8b4804
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x00505baa    8b4008
                         {disp8} mov        dword ptr [edx + 0x04], ecx                          // 0x00505bad    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                          // 0x00505bb0    894208
_jmp_addr_0x00505bb3:    {disp32} lea       ecx, dword ptr [esi + 0x00001164]                    // 0x00505bb3    8d8e64110000
                         push               ecx                                                  // 0x00505bb9    51
                         push               ebp                                                  // 0x00505bba    55
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                                      // 0x00505bbb    e8b0712400
                         add                esp, 0x08                                            // 0x00505bc0    83c408
                         test               byte ptr [esi + 0x25], 0x04                          // 0x00505bc3    f6462504
                         {disp8} jne        _jmp_addr_0x00505c15                                 // 0x00505bc7    754c
                         {disp32} mov       esi, dword ptr [esi + 0x00000164]                    // 0x00505bc9    8bb664010000
                         {disp32} mov       eax, dword ptr [esi + 0x00001bdc]                    // 0x00505bcf    8b86dc1b0000
                         cdq                                                                     // 0x00505bd5    99
                         mov                ecx, 0x00000032                                      // 0x00505bd6    b932000000
                         idiv               ecx                                                  // 0x00505bdb    f7f9
                         cmp                edx, 0x31                                            // 0x00505bdd    83fa31
                         {disp8} jne        _jmp_addr_0x00505c15                                 // 0x00505be0    7533
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]                    // 0x00505be2    d81d40588c00
                         fnstsw             ax                                                   // 0x00505be8    dfe0
                         test               ah, 0x01                                             // 0x00505bea    f6c401
                         {disp8} je         _jmp_addr_0x00505c17                                 // 0x00505bed    7428
                         {disp32} mov       eax, dword ptr [esi + 0x00000f50]                    // 0x00505bef    8b86500f0000
                         cmp                eax, 0x28                                            // 0x00505bf5    83f828
                         {disp8} jge        _jmp_addr_0x00505c08                                 // 0x00505bf8    7d0e
                         push               0x41200000                                           // 0x00505bfa    6800002041
                         push               eax                                                  // 0x00505bff    50
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                          // 0x00505c00    8d4e08
                         call               _jmp_addr_0x004dc260                                 // 0x00505c03    e85866fdff
_jmp_addr_0x00505c08:    pop                edi                                                  // 0x00505c08    5f
                         pop                esi                                                  // 0x00505c09    5e
                         pop                ebp                                                  // 0x00505c0a    5d
                         mov                eax, 0x00000001                                      // 0x00505c0b    b801000000
                         pop                ebx                                                  // 0x00505c10    5b
                         add                esp, 0x14                                            // 0x00505c11    83c414
                         ret                                                                     // 0x00505c14    c3
_jmp_addr_0x00505c15:    fstp               st(0)                                                // 0x00505c15    ddd8
_jmp_addr_0x00505c17:    pop                edi                                                  // 0x00505c17    5f
                         pop                esi                                                  // 0x00505c18    5e
                         pop                ebp                                                  // 0x00505c19    5d
                         xor.s              eax, eax                                             // 0x00505c1a    33c0
                         pop                ebx                                                  // 0x00505c1c    5b
                         add                esp, 0x14                                            // 0x00505c1d    83c414
                         ret                                                                     // 0x00505c20    c3
                         nop                                                                     // 0x00505c21    90
                         nop                                                                     // 0x00505c22    90
                         nop                                                                     // 0x00505c23    90
                         nop                                                                     // 0x00505c24    90
                         nop                                                                     // 0x00505c25    90
                         nop                                                                     // 0x00505c26    90
                         nop                                                                     // 0x00505c27    90
                         nop                                                                     // 0x00505c28    90
                         nop                                                                     // 0x00505c29    90
                         nop                                                                     // 0x00505c2a    90
                         nop                                                                     // 0x00505c2b    90
                         nop                                                                     // 0x00505c2c    90
                         nop                                                                     // 0x00505c2d    90
                         nop                                                                     // 0x00505c2e    90
                         nop                                                                     // 0x00505c2f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00505c30    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505c36    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505c3c    8d0c49
                         shl                ecx, 5                                               // 0x00505c3f    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fe0]        // 0x00505c42    8b9401e00f0000
                         {disp32} mov       dword ptr [eax + edx * 0x4 + 0x0001d420], 0x00000001 // 0x00505c49    c7849020d4010001000000
                         mov                eax, 0x00000002                                      // 0x00505c54    b802000000
                         ret                                                                     // 0x00505c59    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]              // 0x00505c5a    ff1534908a00
                         sub                esp, 0x0c                                            // 0x00505c60    83ec0c
                         push               ebx                                                  // 0x00505c63    53
                         push               esi                                                  // 0x00505c64    56
                         mov.s              esi, ecx                                             // 0x00505c65    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505c67    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505c6d    8b88b40f0000
                         push               edi                                                  // 0x00505c73    57
                         add                eax, 0x00000fa8                                      // 0x00505c74    05a80f0000
                         push               0x0                                                  // 0x00505c79    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505c7b    8d0c49
                         push               0x009c7f50                                           // 0x00505c7e    68507f9c00
                         shl                ecx, 5                                               // 0x00505c83    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505c86    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00505c8a    8b5030
                         push               0x009c7f30                                           // 0x00505c8d    68307f9c00
                         push               0x0                                                  // 0x00505c92    6a00
                         push               edx                                                  // 0x00505c94    52
                         call               ___RTDynamicCast                                     // 0x00505c95    e87ffd2b00
                         mov.s              edi, eax                                             // 0x00505c9a    8bf8
                         mov                eax, dword ptr [edi]                                 // 0x00505c9c    8b07
                         add                esp, 0x14                                            // 0x00505c9e    83c414
                         push               esi                                                  // 0x00505ca1    56
                         mov.s              ecx, edi                                             // 0x00505ca2    8bcf
                         call               dword ptr [eax + 0x350]                              // 0x00505ca4    ff9050030000
                         test               eax, eax                                             // 0x00505caa    85c0
                         {disp32} je        _jmp_addr_0x00505e19                                 // 0x00505cac    0f8467010000
                         xor.s              edx, edx                                             // 0x00505cb2    33d2
                         mov                eax, 0x000003e8                                      // 0x00505cb4    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00505cb9    f735381ad000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00505cbf    8b8e64010000
                         xor.s              edx, edx                                             // 0x00505cc5    33d2
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x00505cc7    c744241000000000
                         mov.s              ebx, eax                                             // 0x00505ccf    8bd8
                         {disp32} mov       eax, dword ptr [ecx + 0x00001bdc]                    // 0x00505cd1    8b81dc1b0000
                         div                ebx                                                  // 0x00505cd7    f7f3
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00505cd9    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                               // 0x00505cdd    df6c240c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1a6a8]                    // 0x00505ce1    d81da8368c00
                         fnstsw             ax                                                   // 0x00505ce7    dfe0
                         test               ah, 0x41                                             // 0x00505ce9    f6c441
                         {disp32} je        _jmp_addr_0x00505e19                                 // 0x00505cec    0f8427010000
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                          // 0x00505cf2    8d5f14
                         {disp8} lea        edx, dword ptr [esi + 0x14]                          // 0x00505cf5    8d5614
                         push               ebx                                                  // 0x00505cf8    53
                         push               edx                                                  // 0x00505cf9    52
                         call               ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z            // 0x00505cfa    e8b16f2400
                         push               eax                                                  // 0x00505cff    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z         // 0x00505d00    e8bb7f2400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c40]                    // 0x00505d05    d81d402c8c00
                         add                esp, 0x0c                                            // 0x00505d0b    83c40c
                         fnstsw             ax                                                   // 0x00505d0e    dfe0
                         test               ah, 0x41                                             // 0x00505d10    f6c441
                         {disp8} jne        _jmp_addr_0x00505d4a                                 // 0x00505d13    7535
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505d15    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505d1b    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505d21    05a80f0000
                         push               0x0                                                  // 0x00505d26    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505d28    8d0c49
                         shl                ecx, 5                                               // 0x00505d2b    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505d2e    8b440134
                         push               0x41700000                                           // 0x00505d32    6800007041
                         push               edi                                                  // 0x00505d37    57
                         push               eax                                                  // 0x00505d38    50
                         mov.s              ecx, esi                                             // 0x00505d39    8bce
                         call               _jmp_addr_0x0047a7a0                                 // 0x00505d3b    e8604af7ff
                         sub                eax, 0x00                                            // 0x00505d40    83e800
                         {disp8} je         _jmp_addr_0x00505d53                                 // 0x00505d43    740e
                         sub                eax, 0x02                                            // 0x00505d45    83e802
                         {disp8} je         _jmp_addr_0x00505d53                                 // 0x00505d48    7409
_jmp_addr_0x00505d4a:    pop                edi                                                  // 0x00505d4a    5f
                         pop                esi                                                  // 0x00505d4b    5e
                         xor.s              eax, eax                                             // 0x00505d4c    33c0
                         pop                ebx                                                  // 0x00505d4e    5b
                         add                esp, 0x0c                                            // 0x00505d4f    83c40c
                         ret                                                                     // 0x00505d52    c3
_jmp_addr_0x00505d53:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00505d53    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505d59    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505d5f    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x00505d64    8d1449
                         shl                edx, 5                                               // 0x00505d67    c1e205
                         {disp8} mov        ecx, dword ptr [edx + eax * 0x1 + 0x34]              // 0x00505d6a    8b4c0234
                         call               _jmp_addr_0x004d8df0                                 // 0x00505d6e    e87d30fdff
                         {disp8} mov        eax, dword ptr [ebx + 0x08]                          // 0x00505d73    8b4308
                         mov.s              ecx, ebx                                             // 0x00505d76    8bcb
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00505d78    8944240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00505d7c    e80fd32f00
                         {disp8} fadd       dword ptr [esp + 0x0c]                               // 0x00505d81    d844240c
                         push               0x00000e2f                                           // 0x00505d85    682f0e0000
                         push               0x00be6588                                           // 0x00505d8a    688865be00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00505d8f    d95c2418
                         push               0xc                                                  // 0x00505d93    6a0c
                         fild               dword ptr [ebx]                                      // 0x00505d95    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505d97    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00505d9d    d95c2418
                         {disp8} fild       dword ptr [ebx + 0x04]                               // 0x00505da1    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00505da4    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00505daa    d95c2420
                         call               ___nw__FUl                                           // 0x00505dae    e8dd592d00
                         add                esp, 0x0c                                            // 0x00505db3    83c40c
                         test               eax, eax                                             // 0x00505db6    85c0
                         {disp8} je         _jmp_addr_0x00505dd2                                 // 0x00505db8    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x00505dba    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00505dbe    8b542410
                         mov                dword ptr [eax], ecx                                 // 0x00505dc2    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x00505dc4    8b4c2414
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x00505dc8    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x00505dcb    894808
                         mov.s              edi, eax                                             // 0x00505dce    8bf8
                         {disp8} jmp        _jmp_addr_0x00505dd4                                 // 0x00505dd0    eb02
_jmp_addr_0x00505dd2:    xor.s              edi, edi                                             // 0x00505dd2    33ff
_jmp_addr_0x00505dd4:    test               edi, edi                                             // 0x00505dd4    85ff
                         {disp8} je         _jmp_addr_0x00505dfd                                 // 0x00505dd6    7425
                         push               0x8                                                  // 0x00505dd8    6a08
                         call               ??2@YAPAXI@Z                                         // 0x00505dda    e80f072c00
                         add                esp, 0x04                                            // 0x00505ddf    83c404
                         test               eax, eax                                             // 0x00505de2    85c0
                         {disp8} je         _jmp_addr_0x00505dfd                                 // 0x00505de4    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00001220]                    // 0x00505de6    8b8e20120000
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x00505dec    897804
                         mov                dword ptr [eax], ecx                                 // 0x00505def    8908
                         {disp32} mov       dword ptr [esi + 0x00001220], eax                    // 0x00505df1    898620120000
                         {disp32} inc       dword ptr [esi + 0x00001224]                         // 0x00505df7    ff8624120000
_jmp_addr_0x00505dfd:    push               0x1                                                  // 0x00505dfd    6a01
                         push               0x1                                                  // 0x00505dff    6a01
                         push               0x00be66c8                                           // 0x00505e01    68c866be00
                         mov.s              ecx, esi                                             // 0x00505e06    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00505e08    e823f9f6ff
                         pop                edi                                                  // 0x00505e0d    5f
                         pop                esi                                                  // 0x00505e0e    5e
                         mov                eax, 0x00000001                                      // 0x00505e0f    b801000000
                         pop                ebx                                                  // 0x00505e14    5b
                         add                esp, 0x0c                                            // 0x00505e15    83c40c
                         ret                                                                     // 0x00505e18    c3
_jmp_addr_0x00505e19:    push               0x00000e1f                                           // 0x00505e19    681f0e0000
                         push               0x00be6588                                           // 0x00505e1e    688865be00
                         push               0x40400000                                           // 0x00505e23    6800004040
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x00505e28    e803871d00
                         xor.s              edx, edx                                             // 0x00505e2d    33d2
                         mov                eax, 0x000003e8                                      // 0x00505e2f    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00505e34    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x00505e3a    c744241c00000000
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x00505e42    d80590a38a00
                         add                esp, 0x0c                                            // 0x00505e48    83c40c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00505e4b    8944240c
                         {disp8} fimul      dword ptr [esp + 0x0c]                               // 0x00505e4f    da4c240c
                         call               _jmp_addr_0x007a1400                                 // 0x00505e53    e8a8b52900
                         pop                edi                                                  // 0x00505e58    5f
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00505e59    66894658
                         pop                esi                                                  // 0x00505e5d    5e
                         mov                eax, 0x00000002                                      // 0x00505e5e    b802000000
                         pop                ebx                                                  // 0x00505e63    5b
                         add                esp, 0x0c                                            // 0x00505e64    83c40c
                         ret                                                                     // 0x00505e67    c3
                         nop                                                                     // 0x00505e68    90
                         nop                                                                     // 0x00505e69    90
                         nop                                                                     // 0x00505e6a    90
                         nop                                                                     // 0x00505e6b    90
                         nop                                                                     // 0x00505e6c    90
                         nop                                                                     // 0x00505e6d    90
                         nop                                                                     // 0x00505e6e    90
                         nop                                                                     // 0x00505e6f    90
                         dec                word ptr [ecx + 0x58]                                // 0x00505e70    66ff4958
                         {disp8} mov        cx, word ptr [ecx + 0x58]                            // 0x00505e74    668b4958
                         xor.s              eax, eax                                             // 0x00505e78    33c0
                         test               cx, cx                                               // 0x00505e7a    6685c9
                         setne              al                                                   // 0x00505e7d    0f95c0
                         dec                eax                                                  // 0x00505e80    48
                         and                eax, 0x02                                            // 0x00505e81    83e002
                         ret                                                                     // 0x00505e84    c3
                         nop                                                                     // 0x00505e85    90
                         nop                                                                     // 0x00505e86    90
                         nop                                                                     // 0x00505e87    90
                         nop                                                                     // 0x00505e88    90
                         nop                                                                     // 0x00505e89    90
                         nop                                                                     // 0x00505e8a    90
                         nop                                                                     // 0x00505e8b    90
                         nop                                                                     // 0x00505e8c    90
                         nop                                                                     // 0x00505e8d    90
                         nop                                                                     // 0x00505e8e    90
                         nop                                                                     // 0x00505e8f    90
                         xor.s              eax, eax                                             // 0x00505e90    33c0
                         ret                                                                     // 0x00505e92    c3
                         nop                                                                     // 0x00505e93    90
                         nop                                                                     // 0x00505e94    90
                         nop                                                                     // 0x00505e95    90
                         nop                                                                     // 0x00505e96    90
                         nop                                                                     // 0x00505e97    90
                         nop                                                                     // 0x00505e98    90
                         nop                                                                     // 0x00505e99    90
                         nop                                                                     // 0x00505e9a    90
                         nop                                                                     // 0x00505e9b    90
                         nop                                                                     // 0x00505e9c    90
                         nop                                                                     // 0x00505e9d    90
                         nop                                                                     // 0x00505e9e    90
                         nop                                                                     // 0x00505e9f    90
                         sub                esp, 0x0c                                            // 0x00505ea0    83ec0c
                         push               esi                                                  // 0x00505ea3    56
                         push               edi                                                  // 0x00505ea4    57
                         push               0x00000e52                                           // 0x00505ea5    68520e0000
                         push               0x00be6588                                           // 0x00505eaa    688865be00
                         push               0x40000000                                           // 0x00505eaf    6800000040
                         mov.s              edi, ecx                                             // 0x00505eb4    8bf9
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x00505eb6    e875861d00
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x00505ebb    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00505ec1    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00505ec7    05a80f0000
                         push               0x0                                                  // 0x00505ecc    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00505ece    8d0c49
                         push               0x009c7f50                                           // 0x00505ed1    68507f9c00
                         shl                ecx, 5                                               // 0x00505ed6    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00505ed9    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00505edd    8b5030
                         push               0x009c7f30                                           // 0x00505ee0    68307f9c00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]                     // 0x00505ee5    d80578b48a00
                         push               0x0                                                  // 0x00505eeb    6a00
                         push               edx                                                  // 0x00505eed    52
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00505eee    d95c2428
                         call               ___RTDynamicCast                                     // 0x00505ef2    e822fb2b00
                         mov.s              esi, eax                                             // 0x00505ef7    8bf0
                         add                esp, 0x20                                            // 0x00505ef9    83c420
                         mov.s              ecx, esi                                             // 0x00505efc    8bce
                         call               _jmp_addr_0x00639410                                 // 0x00505efe    e80d351300
                         test               byte ptr [esi + 0x24], 0x40                          // 0x00505f03    f6462440
                         {disp8} je         _jmp_addr_0x00505f4f                                 // 0x00505f07    7446
                         test               eax, eax                                             // 0x00505f09    85c0
                         {disp8} je         _jmp_addr_0x00505f4f                                 // 0x00505f0b    7442
                         xor.s              edx, edx                                             // 0x00505f0d    33d2
                         mov                eax, 0x000003e8                                      // 0x00505f0f    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00505f14    f735381ad000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x00505f1a    8b8f64010000
                         xor.s              edx, edx                                             // 0x00505f20    33d2
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x00505f22    c744241000000000
                         mov.s              esi, eax                                             // 0x00505f2a    8bf0
                         {disp32} mov       eax, dword ptr [ecx + 0x00001bdc]                    // 0x00505f2c    8b81dc1b0000
                         div                esi                                                  // 0x00505f32    f7f6
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x00505f34    8944240c
                         {disp8} fild       qword ptr [esp + 0x0c]                               // 0x00505f38    df6c240c
                         {disp8} fcomp      dword ptr [esp + 0x08]                               // 0x00505f3c    d85c2408
                         fnstsw             ax                                                   // 0x00505f40    dfe0
                         test               ah, 0x01                                             // 0x00505f42    f6c401
                         {disp8} je         _jmp_addr_0x00505f4f                                 // 0x00505f45    7408
                         pop                edi                                                  // 0x00505f47    5f
                         xor.s              eax, eax                                             // 0x00505f48    33c0
                         pop                esi                                                  // 0x00505f4a    5e
                         add                esp, 0x0c                                            // 0x00505f4b    83c40c
                         ret                                                                     // 0x00505f4e    c3
_jmp_addr_0x00505f4f:    pop                edi                                                  // 0x00505f4f    5f
                         mov                eax, 0x00000002                                      // 0x00505f50    b802000000
                         pop                esi                                                  // 0x00505f55    5e
                         add                esp, 0x0c                                            // 0x00505f56    83c40c
                         ret                                                                     // 0x00505f59    c3
                         call               dword ptr [__imp___ChangeParameters_CImmPeriodic__QAEHKKKJJJKPAUFEELIT_ENVELOPE___Z@4]                       // 0x00505f5a    ff15d8908a00
                         sub                esp, 0x08                                            // 0x00505f60    83ec08
                         xor.s              edx, edx                                             // 0x00505f63    33d2
                         mov                eax, 0x000003e8                                      // 0x00505f65    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00505f6a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x00505f70    c744240400000000
                         push               esi                                                  // 0x00505f78    56
                         mov.s              esi, ecx                                             // 0x00505f79    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x00505f7b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x00505f7f    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1651c]                    // 0x00505f83    d80d1cf58b00
                         call               _jmp_addr_0x007a1400                                 // 0x00505f89    e872b42900
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00505f8e    66894658
                         mov                eax, 0x00000002                                      // 0x00505f92    b802000000
                         pop                esi                                                  // 0x00505f97    5e
                         add                esp, 0x08                                            // 0x00505f98    83c408
                         ret                                                                     // 0x00505f9b    c3
                         nop                                                                     // 0x00505f9c    90
                         nop                                                                     // 0x00505f9d    90
                         nop                                                                     // 0x00505f9e    90
                         nop                                                                     // 0x00505f9f    90
                         sub                esp, 0x1c                                            // 0x00505fa0    83ec1c
                         push               esi                                                  // 0x00505fa3    56
                         mov.s              esi, ecx                                             // 0x00505fa4    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00505fa6    8b06
                         call               dword ptr [eax + 0x1c]                               // 0x00505fa8    ff501c
                         test               eax, eax                                             // 0x00505fab    85c0
                         {disp8} jne        _jmp_addr_0x00505fb9                                 // 0x00505fad    750a
                         mov                eax, 0x00000002                                      // 0x00505faf    b802000000
                         pop                esi                                                  // 0x00505fb4    5e
                         add                esp, 0x1c                                            // 0x00505fb5    83c41c
                         ret                                                                     // 0x00505fb8    c3
_jmp_addr_0x00505fb9:    xor.s              eax, eax                                             // 0x00505fb9    33c0
                         {disp8} mov        ax, word ptr [esi + 0x58]                            // 0x00505fbb    668b4658
                         test               ax, ax                                               // 0x00505fbf    6685c0
                         {disp8} jne        _jmp_addr_0x00505fce                                 // 0x00505fc2    750a
                         mov                eax, 0x00000002                                      // 0x00505fc4    b802000000
                         pop                esi                                                  // 0x00505fc9    5e
                         add                esp, 0x1c                                            // 0x00505fca    83c41c
                         ret                                                                     // 0x00505fcd    c3
_jmp_addr_0x00505fce:    dec                eax                                                  // 0x00505fce    48
                         mov.s              ecx, esi                                             // 0x00505fcf    8bce
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00505fd1    66894658
                         call               _jmp_addr_0x0047d740                                 // 0x00505fd5    e86677f7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000000c8]                    // 0x00505fda    8b88c8000000
                         add                eax, 0x000000c8                                      // 0x00505fe0    05c8000000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x00505fe5    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x00505fe9    8b5004
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x00505fec    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x00505ff0    89542418
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x00505ff4    8b4008
                         push               ecx                                                  // 0x00505ff7    51
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x00505ff8    8d4c240c
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x00505ffc    89442420
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x00506000    e85bd10f00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x00506005    8d4c2408
                         call               ?InBounds@MapCoords@@QBEIXZ                          // 0x00506009    e8b2e20f00
                         test               eax, eax                                             // 0x0050600e    85c0
                         {disp32} je        _jmp_addr_0x005060bd                                 // 0x00506010    0f84a7000000
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x00506016    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x0050601c    8b4a58
                         {disp32} fld       dword ptr [ecx + 0x00005228]                         // 0x0050601f    d98128520000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2418]                     // 0x00506025    d80518b48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x0050602b    d95c2404
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050602f    e89ce2f7ff
                         test               eax, eax                                             // 0x00506034    85c0
                         {disp8} jne        _jmp_addr_0x0050608f                                 // 0x00506036    7557
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00506038    8d442408
                         push               eax                                                  // 0x0050603c    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                          // 0x0050603d    8d4e14
                         push               ecx                                                  // 0x00506040    51
                         call               ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z            // 0x00506041    e86a6c2400
                         push               eax                                                  // 0x00506046    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z         // 0x00506047    e8747c2400
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x0050604c    d85c2410
                         add                esp, 0x0c                                            // 0x00506050    83c40c
                         fnstsw             ax                                                   // 0x00506053    dfe0
                         test               ah, 0x01                                             // 0x00506055    f6c401
                         {disp8} je         _jmp_addr_0x00506064                                 // 0x00506058    740a
                         mov                eax, 0x00000002                                      // 0x0050605a    b802000000
                         pop                esi                                                  // 0x0050605f    5e
                         add                esp, 0x1c                                            // 0x00506060    83c41c
                         ret                                                                     // 0x00506063    c3
_jmp_addr_0x00506064:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x00506064    8b442408
                         test               eax, eax                                             // 0x00506068    85c0
                         {disp8} jne        _jmp_addr_0x005060a1                                 // 0x0050606a    7535
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x0050606c    8b44240c
                         test               eax, eax                                             // 0x00506070    85c0
                         {disp8} jne        _jmp_addr_0x005060a1                                 // 0x00506072    752d
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00506074    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00506078    d81d98a38a00
                         fnstsw             ax                                                   // 0x0050607e    dfe0
                         test               ah, 0x40                                             // 0x00506080    f6c440
                         {disp8} je         _jmp_addr_0x005060a1                                 // 0x00506083    741c
                         mov                eax, 0x00000002                                      // 0x00506085    b802000000
                         pop                esi                                                  // 0x0050608a    5e
                         add                esp, 0x1c                                            // 0x0050608b    83c41c
                         ret                                                                     // 0x0050608e    c3
_jmp_addr_0x0050608f:    push               0x6                                                  // 0x0050608f    6a06
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x00506091    8d4c240c
                         push               ecx                                                  // 0x00506095    51
                         mov.s              ecx, esi                                             // 0x00506096    8bce
                         call               _jmp_addr_0x004774f0                                 // 0x00506098    e85314f7ff
                         test               eax, eax                                             // 0x0050609d    85c0
                         {disp8} jne        _jmp_addr_0x005060b6                                 // 0x0050609f    7515
_jmp_addr_0x005060a1:    {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x005060a1    8b542404
                         push               0x0                                                  // 0x005060a5    6a00
                         push               edx                                                  // 0x005060a7    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x005060a8    8d44241c
                         push               eax                                                  // 0x005060ac    50
                         push               0x0                                                  // 0x005060ad    6a00
                         mov.s              ecx, esi                                             // 0x005060af    8bce
                         call               _jmp_addr_0x0047a880                                 // 0x005060b1    e8ca47f7ff
_jmp_addr_0x005060b6:    xor.s              eax, eax                                             // 0x005060b6    33c0
                         pop                esi                                                  // 0x005060b8    5e
                         add                esp, 0x1c                                            // 0x005060b9    83c41c
                         ret                                                                     // 0x005060bc    c3
_jmp_addr_0x005060bd:    mov                eax, 0x00000001                                      // 0x005060bd    b801000000
                         pop                esi                                                  // 0x005060c2    5e
                         add                esp, 0x1c                                            // 0x005060c3    83c41c
                         ret                                                                     // 0x005060c6    c3
                         nop                                                                     // 0x005060c7    90
                         nop                                                                     // 0x005060c8    90
                         nop                                                                     // 0x005060c9    90
                         nop                                                                     // 0x005060ca    90
                         nop                                                                     // 0x005060cb    90
                         nop                                                                     // 0x005060cc    90
                         nop                                                                     // 0x005060cd    90
                         nop                                                                     // 0x005060ce    90
                         nop                                                                     // 0x005060cf    90
                         push               esi                                                  // 0x005060d0    56
                         mov.s              esi, ecx                                             // 0x005060d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005060d3    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005060d9    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005060df    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005060e4    8d0c49
                         shl                ecx, 5                                               // 0x005060e7    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005060ea    8b540134
                         push               edi                                                  // 0x005060ee    57
                         {disp8} mov        edi, dword ptr [edx + 0x30]                          // 0x005060ef    8b7a30
                         test               edi, edi                                             // 0x005060f2    85ff
                         {disp8} je         _jmp_addr_0x00506133                                 // 0x005060f4    743d
                         push               0x8                                                  // 0x005060f6    6a08
                         call               ??2@YAPAXI@Z                                         // 0x005060f8    e8f1032c00
                         add                esp, 0x04                                            // 0x005060fd    83c404
                         test               eax, eax                                             // 0x00506100    85c0
                         {disp8} je         _jmp_addr_0x00506133                                 // 0x00506102    742f
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x00506104    897804
                         mov                dword ptr [eax], 0x00000000                          // 0x00506107    c70000000000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000120c]                    // 0x0050610d    8b8e0c120000
                         test               ecx, ecx                                             // 0x00506113    85c9
                         {disp8} je         _jmp_addr_0x00506127                                 // 0x00506115    7410
_jmp_addr_0x00506117:    mov.s              edx, ecx                                             // 0x00506117    8bd1
                         mov                ecx, dword ptr [ecx]                                 // 0x00506119    8b09
                         test               ecx, ecx                                             // 0x0050611b    85c9
                         {disp8} jne        _jmp_addr_0x00506117                                 // 0x0050611d    75f8
                         test               edx, edx                                             // 0x0050611f    85d2
                         {disp8} je         _jmp_addr_0x00506127                                 // 0x00506121    7404
                         mov                dword ptr [edx], eax                                 // 0x00506123    8902
                         {disp8} jmp        _jmp_addr_0x0050612d                                 // 0x00506125    eb06
_jmp_addr_0x00506127:    {disp32} mov       dword ptr [esi + 0x0000120c], eax                    // 0x00506127    89860c120000
_jmp_addr_0x0050612d:    {disp32} inc       dword ptr [esi + 0x00001210]                         // 0x0050612d    ff8610120000
_jmp_addr_0x00506133:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506133    8b8e64010000
                         push               0x0                                                  // 0x00506139    6a00
                         push               0x0                                                  // 0x0050613b    6a00
                         call               _jmp_addr_0x004e2380                                 // 0x0050613d    e83ec2fdff
                         pop                edi                                                  // 0x00506142    5f
                         mov                eax, 0x00000002                                      // 0x00506143    b802000000
                         pop                esi                                                  // 0x00506148    5e
                         ret                                                                     // 0x00506149    c3
                         call               dword ptr [__imp__DirectXSetupGetVersion]            // 0x0050614a    ff153c908a00
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00506150    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506156    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050615c    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506161    8d0c49
                         shl                ecx, 5                                               // 0x00506164    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00506167    8b540134
                         {disp8} mov        ecx, dword ptr [edx + 0x30]                          // 0x0050616b    8b4a30
                         mov                eax, dword ptr [ecx]                                 // 0x0050616e    8b01
                         call               dword ptr [eax + 0x174]                              // 0x00506170    ff9074010000
                         neg                eax                                                  // 0x00506176    f7d8
                         sbb.s              eax, eax                                             // 0x00506178    1bc0
                         and                eax, 0xfffffffe                                      // 0x0050617a    83e0fe
                         add                eax, 0x02                                            // 0x0050617d    83c002
                         ret                                                                     // 0x00506180    c3
                         nop                                                                     // 0x00506181    90
                         nop                                                                     // 0x00506182    90
                         nop                                                                     // 0x00506183    90
                         nop                                                                     // 0x00506184    90
                         nop                                                                     // 0x00506185    90
                         nop                                                                     // 0x00506186    90
                         nop                                                                     // 0x00506187    90
                         nop                                                                     // 0x00506188    90
                         nop                                                                     // 0x00506189    90
                         nop                                                                     // 0x0050618a    90
                         nop                                                                     // 0x0050618b    90
                         nop                                                                     // 0x0050618c    90
                         nop                                                                     // 0x0050618d    90
                         nop                                                                     // 0x0050618e    90
                         nop                                                                     // 0x0050618f    90
                         mov                eax, 0x00000002                                      // 0x00506190    b802000000
                         ret                                                                     // 0x00506195    c3
                         nop                                                                     // 0x00506196    90
                         nop                                                                     // 0x00506197    90
                         nop                                                                     // 0x00506198    90
                         nop                                                                     // 0x00506199    90
                         nop                                                                     // 0x0050619a    90
                         nop                                                                     // 0x0050619b    90
                         nop                                                                     // 0x0050619c    90
                         nop                                                                     // 0x0050619d    90
                         nop                                                                     // 0x0050619e    90
                         nop                                                                     // 0x0050619f    90
                         mov                eax, 0x00000002                                      // 0x005061a0    b802000000
                         ret                                                                     // 0x005061a5    c3
                         nop                                                                     // 0x005061a6    90
                         nop                                                                     // 0x005061a7    90
                         nop                                                                     // 0x005061a8    90
                         nop                                                                     // 0x005061a9    90
                         nop                                                                     // 0x005061aa    90
                         nop                                                                     // 0x005061ab    90
                         nop                                                                     // 0x005061ac    90
                         nop                                                                     // 0x005061ad    90
                         nop                                                                     // 0x005061ae    90
                         nop                                                                     // 0x005061af    90
                         push               ecx                                                  // 0x005061b0    51
                         push               esi                                                  // 0x005061b1    56
                         mov.s              esi, ecx                                             // 0x005061b2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005061b4    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005061ba    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x005061bd    e80ee1f7ff
                         test               eax, eax                                             // 0x005061c2    85c0
                         {disp8} je         _jmp_addr_0x005061cb                                 // 0x005061c4    7405
                         xor.s              eax, eax                                             // 0x005061c6    33c0
                         pop                esi                                                  // 0x005061c8    5e
                         pop                ecx                                                  // 0x005061c9    59
                         ret                                                                     // 0x005061ca    c3
_jmp_addr_0x005061cb:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005061cb    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005061d1    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005061d7    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005061dc    8d0c49
                         shl                ecx, 5                                               // 0x005061df    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005061e2    8b540134
                         mov                eax, dword ptr [esi]                                 // 0x005061e6    8b06
                         push               edi                                                  // 0x005061e8    57
                         {disp8} mov        edi, dword ptr [edx + 0x30]                          // 0x005061e9    8b7a30
                         mov.s              ecx, esi                                             // 0x005061ec    8bce
                         call               dword ptr [eax + 0x11c]                              // 0x005061ee    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x005061f4    d95c2408
                         mov                edx, dword ptr [edi]                                 // 0x005061f8    8b17
                         mov.s              ecx, edi                                             // 0x005061fa    8bcf
                         call               dword ptr [edx + 0x11c]                              // 0x005061fc    ff921c010000
                         {disp8} fcomp      dword ptr [esp + 0x08]                               // 0x00506202    d85c2408
                         pop                edi                                                  // 0x00506206    5f
                         fnstsw             ax                                                   // 0x00506207    dfe0
                         test               ah, 0x01                                             // 0x00506209    f6c401
                         {disp8} je         _jmp_addr_0x00506215                                 // 0x0050620c    7407
                         mov                eax, 0x00000001                                      // 0x0050620e    b801000000
                         {disp8} jmp        _jmp_addr_0x00506217                                 // 0x00506213    eb02
_jmp_addr_0x00506215:    xor.s              eax, eax                                             // 0x00506215    33c0
_jmp_addr_0x00506217:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506217    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x0050621d    8b4958
                         neg                eax                                                  // 0x00506220    f7d8
                         sbb.s              eax, eax                                             // 0x00506222    1bc0
                         add                eax, 0x38                                            // 0x00506224    83c038
                         push               eax                                                  // 0x00506227    50
                         call               _jmp_addr_0x00484b00                                 // 0x00506228    e8d3e8f7ff
                         neg                eax                                                  // 0x0050622d    f7d8
                         sbb.s              eax, eax                                             // 0x0050622f    1bc0
                         and                eax, 0x02                                            // 0x00506231    83e002
                         pop                esi                                                  // 0x00506234    5e
                         pop                ecx                                                  // 0x00506235    59
                         ret                                                                     // 0x00506236    c3
                         nop                                                                     // 0x00506237    90
                         nop                                                                     // 0x00506238    90
                         nop                                                                     // 0x00506239    90
                         nop                                                                     // 0x0050623a    90
                         nop                                                                     // 0x0050623b    90
                         nop                                                                     // 0x0050623c    90
                         nop                                                                     // 0x0050623d    90
                         nop                                                                     // 0x0050623e    90
                         nop                                                                     // 0x0050623f    90
                         push               ecx                                                  // 0x00506240    51
                         push               esi                                                  // 0x00506241    56
                         mov.s              esi, ecx                                             // 0x00506242    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506244    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x0050624a    8b4858
                         push               edi                                                  // 0x0050624d    57
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050624e    e87de0f7ff
                         test               eax, eax                                             // 0x00506253    85c0
                         {disp8} jne        _jmp_addr_0x005062af                                 // 0x00506255    7558
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506257    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050625d    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506263    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506268    8d0c49
                         shl                ecx, 5                                               // 0x0050626b    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050626e    8b540134
                         mov                eax, dword ptr [esi]                                 // 0x00506272    8b06
                         {disp8} mov        edi, dword ptr [edx + 0x30]                          // 0x00506274    8b7a30
                         mov.s              ecx, esi                                             // 0x00506277    8bce
                         call               dword ptr [eax + 0x11c]                              // 0x00506279    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x0050627f    d95c2408
                         mov                edx, dword ptr [edi]                                 // 0x00506283    8b17
                         mov.s              ecx, edi                                             // 0x00506285    8bcf
                         call               dword ptr [edx + 0x11c]                              // 0x00506287    ff921c010000
                         {disp8} fcomp      dword ptr [esp + 0x08]                               // 0x0050628d    d85c2408
                         fnstsw             ax                                                   // 0x00506291    dfe0
                         test               ah, 0x01                                             // 0x00506293    f6c401
                         {disp8} jne        _jmp_addr_0x005062b5                                 // 0x00506296    751d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506298    8b8e64010000
                         push               edi                                                  // 0x0050629e    57
                         push               esi                                                  // 0x0050629f    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                                 // 0x005062a0    e82b19fdff
                         push               eax                                                  // 0x005062a5    50
                         push               0x5                                                  // 0x005062a6    6a05
                         mov.s              ecx, esi                                             // 0x005062a8    8bce
                         call               _jmp_addr_0x004c43a0                                 // 0x005062aa    e8f1e0fbff
_jmp_addr_0x005062af:    pop                edi                                                  // 0x005062af    5f
                         xor.s              eax, eax                                             // 0x005062b0    33c0
                         pop                esi                                                  // 0x005062b2    5e
                         pop                ecx                                                  // 0x005062b3    59
                         ret                                                                     // 0x005062b4    c3
_jmp_addr_0x005062b5:    pop                edi                                                  // 0x005062b5    5f
                         mov                eax, 0x00000002                                      // 0x005062b6    b802000000
                         pop                esi                                                  // 0x005062bb    5e
                         pop                ecx                                                  // 0x005062bc    59
                         ret                                                                     // 0x005062bd    c3
                         nop                                                                     // 0x005062be    90
                         nop                                                                     // 0x005062bf    90
                         push               esi                                                  // 0x005062c0    56
                         mov.s              esi, ecx                                             // 0x005062c1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000011f4]                    // 0x005062c3    8b86f4110000
                         push               eax                                                  // 0x005062c9    50
                         call               _jmp_addr_0x0081e9e0                                 // 0x005062ca    e811873100
                         {disp32} mov       ecx, dword ptr [esi + 0x000011f4]                    // 0x005062cf    8b8ef4110000
                         push               ecx                                                  // 0x005062d5    51
                         {disp32} mov       dword ptr [esi + 0x000011fc], eax                    // 0x005062d6    8986fc110000
                         call               _jmp_addr_0x005e3260                                 // 0x005062dc    e87fcf0d00
                         add                esp, 0x08                                            // 0x005062e1    83c408
                         mov                eax, 0x00000002                                      // 0x005062e4    b802000000
                         pop                esi                                                  // 0x005062e9    5e
                         ret                                                                     // 0x005062ea    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x005062eb    e889b5efff
                         sub                esp, 0x38                                            // 0x005062f0    83ec38
                         push               ebx                                                  // 0x005062f3    53
                         push               ebp                                                  // 0x005062f4    55
                         push               esi                                                  // 0x005062f5    56
                         push               edi                                                  // 0x005062f6    57
                         mov.s              edi, ecx                                             // 0x005062f7    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x005062f9    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005062ff    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506305    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050630a    8d0c49
                         shl                ecx, 5                                               // 0x0050630d    c1e105
                         {disp8} mov        esi, dword ptr [ecx + eax * 0x1 + 0x54]              // 0x00506310    8b740154
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506314    8b8e64010000
                         push               edi                                                  // 0x0050631a    57
                         push               esi                                                  // 0x0050631b    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                                 // 0x0050631c    e8af18fdff
                         push               0x1                                                  // 0x00506321    6a01
                         push               0x1                                                  // 0x00506323    6a01
                         mov.s              ecx, esi                                             // 0x00506325    8bce
                         mov.s              ebx, eax                                             // 0x00506327    8bd8
                         call               _jmp_addr_0x004758d0                                 // 0x00506329    e8a2f5f6ff
                         push               0x3f800000                                           // 0x0050632e    680000803f
                         push               0x0                                                  // 0x00506333    6a00
                         push               ebx                                                  // 0x00506335    53
                         push               ebx                                                  // 0x00506336    53
                         push               0x7c                                                 // 0x00506337    6a7c
                         push               0x1a                                                 // 0x00506339    6a1a
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x0050633b    8d4c2430
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                                 // 0x0050633f    e8ecaefeff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506344    8b8664010000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x0050634a    8b54241c
                         add                eax, 0x00000f48                                      // 0x0050634e    05480f0000
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x00506353    895004
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                          // 0x00506356    8b4c2420
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x0050635a    894808
                         {disp8} mov        edx, dword ptr [esp + 0x24]                          // 0x0050635d    8b542424
                         {disp8} mov        dword ptr [eax + 0x0c], edx                          // 0x00506361    89500c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x00506364    8b4c2428
                         {disp8} mov        dword ptr [eax + 0x10], ecx                          // 0x00506368    894810
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                          // 0x0050636b    8b54242c
                         {disp8} mov        dword ptr [eax + 0x14], edx                          // 0x0050636f    895014
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x00506372    8b4c2430
                         {disp8} mov        dword ptr [eax + 0x18], ecx                          // 0x00506376    894818
                         {disp8} mov        edx, dword ptr [esp + 0x34]                          // 0x00506379    8b542434
                         {disp8} mov        dword ptr [eax + 0x1c], edx                          // 0x0050637d    89501c
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                          // 0x00506380    8b4c2438
                         {disp8} mov        dword ptr [eax + 0x20], ecx                          // 0x00506384    894820
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                          // 0x00506387    8b54243c
                         {disp8} mov        dword ptr [eax + 0x24], edx                          // 0x0050638b    895024
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                          // 0x0050638e    8b4c2440
                         {disp8} mov        dword ptr [eax + 0x28], ecx                          // 0x00506392    894828
                         {disp8} mov        edx, dword ptr [esp + 0x44]                          // 0x00506395    8b542444
                         {disp8} mov        dword ptr [eax + 0x2c], edx                          // 0x00506399    89502c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x0050639c    8b8e64010000
                         add                ecx, 0x00000fa8                                      // 0x005063a2    81c1a80f0000
                         call               _jmp_addr_0x004ff5c0                                 // 0x005063a8    e81392ffff
                         push               0x00000f05                                           // 0x005063ad    68050f0000
                         push               0x00be6588                                           // 0x005063b2    688865be00
                         push               0x20                                                 // 0x005063b7    6a20
                         call               ___nw__FUl                                           // 0x005063b9    e8d2532d00
                         add                esp, 0x0c                                            // 0x005063be    83c40c
                         test               eax, eax                                             // 0x005063c1    85c0
                         {disp32} je        _jmp_addr_0x00506465                                 // 0x005063c3    0f849c000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x005063c9    8b8f64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x005063cf    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005063d5    8d1452
                         shl                edx, 5                                               // 0x005063d8    c1e205
                         {disp32} mov       edx, dword ptr [edx + ecx * 0x1 + 0x00000ff4]        // 0x005063db    8b940af40f0000
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x005063e2    89542414
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x005063e6    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005063ec    8d1452
                         shl                edx, 5                                               // 0x005063ef    c1e205
                         {disp32} fld       dword ptr [edx + ecx * 0x1 + 0x00000ff0]             // 0x005063f2    d9840af00f0000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x005063f9    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x005063ff    8d1452
                         shl                edx, 5                                               // 0x00506402    c1e205
                         {disp32} mov       ebp, dword ptr [edx + ecx * 0x1 + 0x00000fe0]        // 0x00506405    8bac0ae00f0000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x0050640c    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x00506412    8d1452
                         shl                edx, 5                                               // 0x00506415    c1e205
                         {disp32} mov       edx, dword ptr [edx + ecx * 0x1 + 0x00000fdc]        // 0x00506418    8b940adc0f0000
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x0050641f    89542410
                         {disp32} mov       edx, dword ptr [ecx + 0x00000fb4]                    // 0x00506423    8b91b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x00506429    8d1452
                         shl                edx, 5                                               // 0x0050642c    c1e205
                         {disp32} lea       ecx, dword ptr [edx + ecx * 0x1 + 0x00000fe4]        // 0x0050642f    8d8c0ae40f0000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00506436    8b542410
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x0050643a    895004
                         mov                dword ptr [eax], 0x008d1684                          // 0x0050643d    c70084168d00
                         {disp8} mov        dword ptr [eax + 0x08], ebp                          // 0x00506443    896808
                         mov                ebp, dword ptr [ecx]                                 // 0x00506446    8b29
                         {disp8} lea        edx, dword ptr [eax + 0x0c]                          // 0x00506448    8d500c
                         mov                dword ptr [edx], ebp                                 // 0x0050644b    892a
                         {disp8} mov        ebp, dword ptr [ecx + 0x04]                          // 0x0050644d    8b6904
                         {disp8} mov        dword ptr [edx + 0x04], ebp                          // 0x00506450    896a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x00506453    8b4908
                         {disp8} fstp       dword ptr [eax + 0x18]                               // 0x00506456    d95818
                         {disp8} mov        dword ptr [edx + 0x08], ecx                          // 0x00506459    894a08
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x0050645c    8b542414
                         {disp8} mov        dword ptr [eax + 0x1c], edx                          // 0x00506460    89501c
                         {disp8} jmp        _jmp_addr_0x00506467                                 // 0x00506463    eb02
_jmp_addr_0x00506465:    xor.s              eax, eax                                             // 0x00506465    33c0
_jmp_addr_0x00506467:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x00506467    8b8f64010000
                         sub                esp, 0x10                                            // 0x0050646d    83ec10
                         xor.s              edx, edx                                             // 0x00506470    33d2
                         mov.s              edi, esp                                             // 0x00506472    8bfc
                         mov                dword ptr [edi], edx                                 // 0x00506474    8917
                         {disp8} mov        dword ptr [edi + 0x04], edx                          // 0x00506476    895704
                         {disp8} mov        dword ptr [edi + 0x08], edx                          // 0x00506479    895708
                         or                 edx, 0xffffffff                                      // 0x0050647c    83caff
                         {disp8} mov        dword ptr [edi + 0x0c], edx                          // 0x0050647f    89570c
                         sub                esp, 0x10                                            // 0x00506482    83ec10
                         add                ecx, 0x00000fa8                                      // 0x00506485    81c1a80f0000
                         mov.s              edi, esp                                             // 0x0050648b    8bfc
                         push               eax                                                  // 0x0050648d    50
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                          // 0x0050648e    8b410c
                         xor.s              edx, edx                                             // 0x00506491    33d2
                         mov                dword ptr [edi], edx                                 // 0x00506493    8917
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x00506495    8d0440
                         shl                eax, 5                                               // 0x00506498    c1e005
                         {disp8} mov        ecx, dword ptr [eax + ecx * 0x1 + 0x58]              // 0x0050649b    8b4c0858
                         {disp8} mov        dword ptr [edi + 0x04], edx                          // 0x0050649f    895704
                         push               ecx                                                  // 0x005064a2    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x005064a3    8b8e64010000
                         {disp8} mov        dword ptr [edi + 0x08], edx                          // 0x005064a9    895708
                         or                 edx, 0xffffffff                                      // 0x005064ac    83caff
                         add                ecx, 0x00000fa8                                      // 0x005064af    81c1a80f0000
                         {disp8} mov        dword ptr [edi + 0x0c], edx                          // 0x005064b5    89570c
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                                 // 0x005064b8    e8838dffff
                         push               0x00000f06                                           // 0x005064bd    68060f0000
                         push               0x00be6588                                           // 0x005064c2    688865be00
                         push               0x8                                                  // 0x005064c7    6a08
                         xor.s              edi, edi                                             // 0x005064c9    33ff
                         xor.s              ebp, ebp                                             // 0x005064cb    33ed
                         call               ___nw__FUl                                           // 0x005064cd    e8be522d00
                         add                esp, 0x0c                                            // 0x005064d2    83c40c
                         test               eax, eax                                             // 0x005064d5    85c0
                         {disp8} je         _jmp_addr_0x005064e4                                 // 0x005064d7    740b
                         mov                dword ptr [eax], 0x008cf014                          // 0x005064d9    c70014f08c00
                         {disp8} mov        dword ptr [eax + 0x04], ebx                          // 0x005064df    895804
                         {disp8} jmp        _jmp_addr_0x005064e6                                 // 0x005064e2    eb02
_jmp_addr_0x005064e4:    xor.s              eax, eax                                             // 0x005064e4    33c0
_jmp_addr_0x005064e6:    sub                esp, 0x10                                            // 0x005064e6    83ec10
                         mov.s              edx, esp                                             // 0x005064e9    8bd4
                         mov                dword ptr [edx], edi                                 // 0x005064eb    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                          // 0x005064ed    896a04
                         xor.s              ecx, ecx                                             // 0x005064f0    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ecx                          // 0x005064f2    894a08
                         or                 ecx, 0xffffffff                                      // 0x005064f5    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                          // 0x005064f8    894a0c
                         sub                esp, 0x10                                            // 0x005064fb    83ec10
                         mov.s              edx, esp                                             // 0x005064fe    8bd4
                         mov                ecx, 0x004d16d0                                      // 0x00506500    b9d0164d00
                         mov                dword ptr [edx], ecx                                 // 0x00506505    890a
                         xor.s              ecx, ecx                                             // 0x00506507    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                          // 0x00506509    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                          // 0x0050650c    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                          // 0x0050650f    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506512    8b8e64010000
                         push               eax                                                  // 0x00506518    50
                         push               0x4e                                                 // 0x00506519    6a4e
                         add                ecx, 0x00000fa8                                      // 0x0050651b    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                                 // 0x00506521    e81a8dffff
                         push               0x1                                                  // 0x00506526    6a01
                         mov.s              ecx, esi                                             // 0x00506528    8bce
                         call               _jmp_addr_0x004f1600                                 // 0x0050652a    e8d1b0feff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0050652f    8d4c2418
                         call               _jmp_addr_0x004f12d0                                 // 0x00506533    e898adfeff
                         pop                edi                                                  // 0x00506538    5f
                         pop                esi                                                  // 0x00506539    5e
                         pop                ebp                                                  // 0x0050653a    5d
                         mov                eax, 0x00000002                                      // 0x0050653b    b802000000
                         pop                ebx                                                  // 0x00506540    5b
                         add                esp, 0x38                                            // 0x00506541    83c438
                         ret                                                                     // 0x00506544    c3
                         nop                                                                     // 0x00506545    90
                         nop                                                                     // 0x00506546    90
                         nop                                                                     // 0x00506547    90
                         nop                                                                     // 0x00506548    90
                         nop                                                                     // 0x00506549    90
                         nop                                                                     // 0x0050654a    90
                         nop                                                                     // 0x0050654b    90
                         nop                                                                     // 0x0050654c    90
                         nop                                                                     // 0x0050654d    90
                         nop                                                                     // 0x0050654e    90
                         nop                                                                     // 0x0050654f    90
                         mov                eax, 0x00000001                                      // 0x00506550    b801000000
                         ret                                                                     // 0x00506555    c3
                         nop                                                                     // 0x00506556    90
                         nop                                                                     // 0x00506557    90
                         nop                                                                     // 0x00506558    90
                         nop                                                                     // 0x00506559    90
                         nop                                                                     // 0x0050655a    90
                         nop                                                                     // 0x0050655b    90
                         nop                                                                     // 0x0050655c    90
                         nop                                                                     // 0x0050655d    90
                         nop                                                                     // 0x0050655e    90
                         nop                                                                     // 0x0050655f    90
                         {disp8} lea        eax, dword ptr [ecx + 0x0c]                          // 0x00506560    8d410c
                         ret                                                                     // 0x00506563    c3
                         nop                                                                     // 0x00506564    90
                         nop                                                                     // 0x00506565    90
                         nop                                                                     // 0x00506566    90
                         nop                                                                     // 0x00506567    90
                         nop                                                                     // 0x00506568    90
                         nop                                                                     // 0x00506569    90
                         nop                                                                     // 0x0050656a    90
                         nop                                                                     // 0x0050656b    90
                         nop                                                                     // 0x0050656c    90
                         nop                                                                     // 0x0050656d    90
                         nop                                                                     // 0x0050656e    90
                         nop                                                                     // 0x0050656f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                          // 0x00506570    8b4104
                         ret                                                                     // 0x00506573    c3
                         nop                                                                     // 0x00506574    90
                         nop                                                                     // 0x00506575    90
                         nop                                                                     // 0x00506576    90
                         nop                                                                     // 0x00506577    90
                         nop                                                                     // 0x00506578    90
                         nop                                                                     // 0x00506579    90
                         nop                                                                     // 0x0050657a    90
                         nop                                                                     // 0x0050657b    90
                         nop                                                                     // 0x0050657c    90
                         nop                                                                     // 0x0050657d    90
                         nop                                                                     // 0x0050657e    90
                         nop                                                                     // 0x0050657f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00506580    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506586    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050658c    05a80f0000
                         push               0x0                                                  // 0x00506591    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506593    8d0c49
                         push               0x009c8060                                           // 0x00506596    6860809c00
                         shl                ecx, 5                                               // 0x0050659b    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050659e    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                          // 0x005065a2    8b4230
                         push               0x009c7f30                                           // 0x005065a5    68307f9c00
                         push               0x0                                                  // 0x005065aa    6a00
                         push               eax                                                  // 0x005065ac    50
                         call               ___RTDynamicCast                                     // 0x005065ad    e867f42b00
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]                    // 0x005065b2    8b8060010000
                         {disp8} mov        eax, dword ptr [eax + 0x28]                          // 0x005065b8    8b4028
                         add                esp, 0x14                                            // 0x005065bb    83c414
                         neg                eax                                                  // 0x005065be    f7d8
                         sbb.s              eax, eax                                             // 0x005065c0    1bc0
                         and                eax, 0x02                                            // 0x005065c2    83e002
                         ret                                                                     // 0x005065c5    c3
                         nop                                                                     // 0x005065c6    90
                         nop                                                                     // 0x005065c7    90
                         nop                                                                     // 0x005065c8    90
                         nop                                                                     // 0x005065c9    90
                         nop                                                                     // 0x005065ca    90
                         nop                                                                     // 0x005065cb    90
                         nop                                                                     // 0x005065cc    90
                         nop                                                                     // 0x005065cd    90
                         nop                                                                     // 0x005065ce    90
                         nop                                                                     // 0x005065cf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x005065d0    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005065d6    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005065dc    05a80f0000
                         push               0x0                                                  // 0x005065e1    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005065e3    8d0c49
                         push               0x009c8060                                           // 0x005065e6    6860809c00
                         shl                ecx, 5                                               // 0x005065eb    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005065ee    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                          // 0x005065f2    8b4230
                         push               0x009c7f30                                           // 0x005065f5    68307f9c00
                         push               0x0                                                  // 0x005065fa    6a00
                         push               eax                                                  // 0x005065fc    50
                         call               ___RTDynamicCast                                     // 0x005065fd    e817f42b00
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x00506602    8b8064010000
                         {disp32} mov       dword ptr [eax + 0x00020d30], 0x00000001             // 0x00506608    c780300d020001000000
                         add                esp, 0x14                                            // 0x00506612    83c414
                         mov                eax, 0x00000002                                      // 0x00506615    b802000000
                         ret                                                                     // 0x0050661a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050661b    e859b2efff
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00506620    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506626    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050662c    05a80f0000
                         push               0x0                                                  // 0x00506631    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506633    8d0c49
                         push               0x009c8060                                           // 0x00506636    6860809c00
                         shl                ecx, 5                                               // 0x0050663b    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x0050663e    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                          // 0x00506642    8b4230
                         push               0x009c7f30                                           // 0x00506645    68307f9c00
                         push               0x0                                                  // 0x0050664a    6a00
                         push               eax                                                  // 0x0050664c    50
                         call               ___RTDynamicCast                                     // 0x0050664d    e8c7f32b00
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x00506652    8b8064010000
                         {disp32} mov       dword ptr [eax + 0x00020d30], 0x00000000             // 0x00506658    c780300d020000000000
                         add                esp, 0x14                                            // 0x00506662    83c414
                         mov                eax, 0x00000002                                      // 0x00506665    b802000000
                         ret                                                                     // 0x0050666a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050666b    e809b2efff
                         xor.s              eax, eax                                             // 0x00506670    33c0
                         ret                                                                     // 0x00506672    c3
                         nop                                                                     // 0x00506673    90
                         nop                                                                     // 0x00506674    90
                         nop                                                                     // 0x00506675    90
                         nop                                                                     // 0x00506676    90
                         nop                                                                     // 0x00506677    90
                         nop                                                                     // 0x00506678    90
                         nop                                                                     // 0x00506679    90
                         nop                                                                     // 0x0050667a    90
                         nop                                                                     // 0x0050667b    90
                         nop                                                                     // 0x0050667c    90
                         nop                                                                     // 0x0050667d    90
                         nop                                                                     // 0x0050667e    90
                         nop                                                                     // 0x0050667f    90
                         push               esi                                                  // 0x00506680    56
                         mov.s              esi, ecx                                             // 0x00506681    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506683    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506689    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050668c    e83fdcf7ff
                         test               eax, eax                                             // 0x00506691    85c0
                         {disp8} jne        _jmp_addr_0x005066aa                                 // 0x00506693    7515
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506695    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x0050669b    8b4958
                         call               _jmp_addr_0x00484540                                 // 0x0050669e    e89ddef7ff
                         mov                eax, 0x00000002                                      // 0x005066a3    b802000000
                         pop                esi                                                  // 0x005066a8    5e
                         ret                                                                     // 0x005066a9    c3
_jmp_addr_0x005066aa:    xor.s              eax, eax                                             // 0x005066aa    33c0
                         pop                esi                                                  // 0x005066ac    5e
                         ret                                                                     // 0x005066ad    c3
                         nop                                                                     // 0x005066ae    90
                         nop                                                                     // 0x005066af    90
                         push               esi                                                  // 0x005066b0    56
                         mov.s              esi, ecx                                             // 0x005066b1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005066b3    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005066b9    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x005066bc    e80fdcf7ff
                         test               eax, eax                                             // 0x005066c1    85c0
                         {disp8} jne        _jmp_addr_0x00506719                                 // 0x005066c3    7554
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005066c5    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005066cb    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005066d1    05a80f0000
                         push               0x0                                                  // 0x005066d6    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005066d8    8d0c49
                         push               0x009c8060                                           // 0x005066db    6860809c00
                         shl                ecx, 5                                               // 0x005066e0    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005066e3    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                          // 0x005066e7    8b4230
                         push               0x009c7f30                                           // 0x005066ea    68307f9c00
                         push               0x0                                                  // 0x005066ef    6a00
                         push               eax                                                  // 0x005066f1    50
                         call               ___RTDynamicCast                                     // 0x005066f2    e822f32b00
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]                    // 0x005066f7    8b8060010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005066fd    8b4858
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x00506700    8b9660010000
                         add                esp, 0x14                                            // 0x00506706    83c414
                         push               ecx                                                  // 0x00506709    51
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x0050670a    8b4a58
                         call               _jmp_addr_0x00484590                                 // 0x0050670d    e87edef7ff
                         mov                eax, 0x00000002                                      // 0x00506712    b802000000
                         pop                esi                                                  // 0x00506717    5e
                         ret                                                                     // 0x00506718    c3
_jmp_addr_0x00506719:    xor.s              eax, eax                                             // 0x00506719    33c0
                         pop                esi                                                  // 0x0050671b    5e
                         ret                                                                     // 0x0050671c    c3
                         nop                                                                     // 0x0050671d    90
                         nop                                                                     // 0x0050671e    90
                         nop                                                                     // 0x0050671f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00506720    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506726    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506729    e8a2dbf7ff
                         neg                eax                                                  // 0x0050672e    f7d8
                         sbb.s              eax, eax                                             // 0x00506730    1bc0
                         and                eax, 0xfffffffe                                      // 0x00506732    83e0fe
                         add                eax, 0x02                                            // 0x00506735    83c002
                         ret                                                                     // 0x00506738    c3
                         nop                                                                     // 0x00506739    90
                         nop                                                                     // 0x0050673a    90
                         nop                                                                     // 0x0050673b    90
                         nop                                                                     // 0x0050673c    90
                         nop                                                                     // 0x0050673d    90
                         nop                                                                     // 0x0050673e    90
                         nop                                                                     // 0x0050673f    90
                         sub                esp, 0x0c                                            // 0x00506740    83ec0c
                         push               esi                                                  // 0x00506743    56
                         mov.s              esi, ecx                                             // 0x00506744    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506746    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x0050674c    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x0050674f    e87cdbf7ff
                         test               eax, eax                                             // 0x00506754    85c0
                         {disp32} jne       _jmp_addr_0x0050680d                                 // 0x00506756    0f85b1000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x0050675c    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506762    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506768    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x0050676d    8d0c49
                         shl                ecx, 5                                               // 0x00506770    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x3c]              // 0x00506773    8b54013c
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x1 + 0x3c]              // 0x00506777    8d44013c
                         {disp8} mov        dword ptr [esp + 0x04], edx                          // 0x0050677b    89542404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x0050677f    8b4804
                         {disp8} mov        dword ptr [esp + 0x08], ecx                          // 0x00506782    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x00506786    8b5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506789    8b8e60010000
                         push               0x0                                                  // 0x0050678f    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00506791    8d442408
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00506795    89542410
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00506799    8b4958
                         push               eax                                                  // 0x0050679c    50
                         call               _jmp_addr_0x00484920                                 // 0x0050679d    e87ee1f7ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005067a2    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005067a8    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005067ae    05a80f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]                     // 0x005067b3    8d1449
                         shl                edx, 5                                               // 0x005067b6    c1e205
                         {disp8} fld        dword ptr [edx + eax * 0x1 + 0x48]                   // 0x005067b9    d9440248
                         xor.s              edx, edx                                             // 0x005067bd    33d2
                         mov                eax, 0x000003e8                                      // 0x005067bf    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x005067c4    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x005067ca    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x005067d2    89442404
                         {disp8} fimul      dword ptr [esp + 0x04]                               // 0x005067d6    da4c2404
                         call               _jmp_addr_0x007a1400                                 // 0x005067da    e821ac2900
                         cmp                ax, 0x000a                                           // 0x005067df    663d0a00
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x005067e3    66894658
                         {disp8} jge        _jmp_addr_0x005067fc                                 // 0x005067e7    7d13
                         mov                eax, 0x0000000a                                      // 0x005067e9    b80a000000
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x005067ee    66894658
                         mov                eax, 0x00000002                                      // 0x005067f2    b802000000
                         pop                esi                                                  // 0x005067f7    5e
                         add                esp, 0x0c                                            // 0x005067f8    83c40c
                         ret                                                                     // 0x005067fb    c3
_jmp_addr_0x005067fc:    movsx              eax, ax                                              // 0x005067fc    0fbfc0
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x005067ff    66894658
                         mov                eax, 0x00000002                                      // 0x00506803    b802000000
                         pop                esi                                                  // 0x00506808    5e
                         add                esp, 0x0c                                            // 0x00506809    83c40c
                         ret                                                                     // 0x0050680c    c3
_jmp_addr_0x0050680d:    xor.s              eax, eax                                             // 0x0050680d    33c0
                         pop                esi                                                  // 0x0050680f    5e
                         add                esp, 0x0c                                            // 0x00506810    83c40c
                         ret                                                                     // 0x00506813    c3
                         nop                                                                     // 0x00506814    90
                         nop                                                                     // 0x00506815    90
                         nop                                                                     // 0x00506816    90
                         nop                                                                     // 0x00506817    90
                         nop                                                                     // 0x00506818    90
                         nop                                                                     // 0x00506819    90
                         nop                                                                     // 0x0050681a    90
                         nop                                                                     // 0x0050681b    90
                         nop                                                                     // 0x0050681c    90
                         nop                                                                     // 0x0050681d    90
                         nop                                                                     // 0x0050681e    90
                         nop                                                                     // 0x0050681f    90
                         sub                esp, 0x0c                                            // 0x00506820    83ec0c
                         push               esi                                                  // 0x00506823    56
                         mov.s              esi, ecx                                             // 0x00506824    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000010a0]                    // 0x00506826    8b86a0100000
                         test               eax, eax                                             // 0x0050682c    85c0
                         {disp8} je         _jmp_addr_0x00506870                                 // 0x0050682e    7440
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506830    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506836    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506839    e892daf7ff
                         test               eax, eax                                             // 0x0050683e    85c0
                         {disp8} jne        _jmp_addr_0x0050687a                                 // 0x00506840    7538
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x00506842    8d4c2404
                         push               ecx                                                  // 0x00506846    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000010a0]                    // 0x00506847    8b8ea0100000
                         add                ecx, 0x14                                            // 0x0050684d    83c114
                         call               @GetLHPoint__9MapCoordsCFv@12                        // 0x00506850    e8ebf30f00
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506855    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x0050685b    8b4858
                         push               0x0                                                  // 0x0050685e    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x00506860    8d542408
                         push               edx                                                  // 0x00506864    52
                         call               _jmp_addr_0x00484920                                 // 0x00506865    e8b6e0f7ff
                         {disp8} mov        word ptr [esi + 0x58], 0x0014                        // 0x0050686a    66c746581400
_jmp_addr_0x00506870:    mov                eax, 0x00000002                                      // 0x00506870    b802000000
                         pop                esi                                                  // 0x00506875    5e
                         add                esp, 0x0c                                            // 0x00506876    83c40c
                         ret                                                                     // 0x00506879    c3
_jmp_addr_0x0050687a:    xor.s              eax, eax                                             // 0x0050687a    33c0
                         pop                esi                                                  // 0x0050687c    5e
                         add                esp, 0x0c                                            // 0x0050687d    83c40c
                         ret                                                                     // 0x00506880    c3
                         nop                                                                     // 0x00506881    90
                         nop                                                                     // 0x00506882    90
                         nop                                                                     // 0x00506883    90
                         nop                                                                     // 0x00506884    90
                         nop                                                                     // 0x00506885    90
                         nop                                                                     // 0x00506886    90
                         nop                                                                     // 0x00506887    90
                         nop                                                                     // 0x00506888    90
                         nop                                                                     // 0x00506889    90
                         nop                                                                     // 0x0050688a    90
                         nop                                                                     // 0x0050688b    90
                         nop                                                                     // 0x0050688c    90
                         nop                                                                     // 0x0050688d    90
                         nop                                                                     // 0x0050688e    90
                         nop                                                                     // 0x0050688f    90
                         dec                word ptr [ecx + 0x58]                                // 0x00506890    66ff4958
                         cmp                word ptr [ecx + 0x58], 0x00                          // 0x00506894    6683795800
                         {disp8} jne        _jmp_addr_0x005068af                                 // 0x00506899    7514
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x0050689b    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005068a1    8b4858
                         call               _jmp_addr_0x00484ae0                                 // 0x005068a4    e837e2f7ff
                         mov                eax, 0x00000002                                      // 0x005068a9    b802000000
                         ret                                                                     // 0x005068ae    c3
_jmp_addr_0x005068af:    xor.s              eax, eax                                             // 0x005068af    33c0
                         ret                                                                     // 0x005068b1    c3
                         nop                                                                     // 0x005068b2    90
                         nop                                                                     // 0x005068b3    90
                         nop                                                                     // 0x005068b4    90
                         nop                                                                     // 0x005068b5    90
                         nop                                                                     // 0x005068b6    90
                         nop                                                                     // 0x005068b7    90
                         nop                                                                     // 0x005068b8    90
                         nop                                                                     // 0x005068b9    90
                         nop                                                                     // 0x005068ba    90
                         nop                                                                     // 0x005068bb    90
                         nop                                                                     // 0x005068bc    90
                         nop                                                                     // 0x005068bd    90
                         nop                                                                     // 0x005068be    90
                         nop                                                                     // 0x005068bf    90
                         sub                esp, 0x14                                            // 0x005068c0    83ec14
                         push               edi                                                  // 0x005068c3    57
                         mov.s              edi, ecx                                             // 0x005068c4    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]                    // 0x005068c6    8b8760010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005068cc    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x005068cf    e8fcd9f7ff
                         test               eax, eax                                             // 0x005068d4    85c0
                         {disp32} jne       _jmp_addr_0x0050698e                                 // 0x005068d6    0f85b2000000
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x005068dc    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005068e2    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005068e8    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005068ed    8d0c49
                         shl                ecx, 5                                               // 0x005068f0    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005068f3    8b540134
                         push               esi                                                  // 0x005068f7    56
                         {disp8} mov        esi, dword ptr [edx + 0x30]                          // 0x005068f8    8b7230
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                          // 0x005068fb    8b461c
                         add                esi, 0x14                                            // 0x005068fe    83c614
                         mov.s              ecx, esi                                             // 0x00506901    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00506903    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00506907    e884c72f00
                         {disp8} fadd       dword ptr [esp + 0x08]                               // 0x0050690c    d8442408
                         {disp32} mov       edx, dword ptr [edi + 0x00000160]                    // 0x00506910    8b9760010000
                         push               0x0                                                  // 0x00506916    6a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00506918    d95c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x0050691c    8d4c2414
                         fild               dword ptr [esi]                                      // 0x00506920    db06
                         push               ecx                                                  // 0x00506922    51
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00506923    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00506929    d95c2418
                         {disp8} fild       dword ptr [esi + 0x04]                               // 0x0050692d    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00506930    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00506936    d95c2420
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x0050693a    8b4a58
                         call               _jmp_addr_0x00484920                                 // 0x0050693d    e8dedff7ff
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x00506942    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506948    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050694e    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506953    8d0c49
                         shl                ecx, 5                                               // 0x00506956    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x48]                   // 0x00506959    d9440148
                         xor.s              edx, edx                                             // 0x0050695d    33d2
                         mov                eax, 0x000003e8                                      // 0x0050695f    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x00506964    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x0050696a    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00506972    89442408
                         {disp8} fimul      dword ptr [esp + 0x08]                               // 0x00506976    da4c2408
                         call               _jmp_addr_0x007a1400                                 // 0x0050697a    e881aa2900
                         {disp8} mov        word ptr [edi + 0x58], ax                            // 0x0050697f    66894758
                         pop                esi                                                  // 0x00506983    5e
                         mov                eax, 0x00000002                                      // 0x00506984    b802000000
                         pop                edi                                                  // 0x00506989    5f
                         add                esp, 0x14                                            // 0x0050698a    83c414
                         ret                                                                     // 0x0050698d    c3
_jmp_addr_0x0050698e:    xor.s              eax, eax                                             // 0x0050698e    33c0
                         pop                edi                                                  // 0x00506990    5f
                         add                esp, 0x14                                            // 0x00506991    83c414
                         ret                                                                     // 0x00506994    c3
                         nop                                                                     // 0x00506995    90
                         nop                                                                     // 0x00506996    90
                         nop                                                                     // 0x00506997    90
                         nop                                                                     // 0x00506998    90
                         nop                                                                     // 0x00506999    90
                         nop                                                                     // 0x0050699a    90
                         nop                                                                     // 0x0050699b    90
                         nop                                                                     // 0x0050699c    90
                         nop                                                                     // 0x0050699d    90
                         nop                                                                     // 0x0050699e    90
                         nop                                                                     // 0x0050699f    90
                         sub                esp, 0x10                                            // 0x005069a0    83ec10
                         push               edi                                                  // 0x005069a3    57
                         mov.s              edi, ecx                                             // 0x005069a4    8bf9
                         dec                word ptr [edi + 0x58]                                // 0x005069a6    66ff4f58
                         cmp                word ptr [edi + 0x58], 0x00                          // 0x005069aa    66837f5800
                         {disp8} jne        _jmp_addr_0x005069c9                                 // 0x005069af    7518
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]                    // 0x005069b1    8b8760010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005069b7    8b4858
                         call               _jmp_addr_0x00484ae0                                 // 0x005069ba    e821e1f7ff
                         mov                eax, 0x00000002                                      // 0x005069bf    b802000000
                         pop                edi                                                  // 0x005069c4    5f
                         add                esp, 0x10                                            // 0x005069c5    83c410
                         ret                                                                     // 0x005069c8    c3
_jmp_addr_0x005069c9:    {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x005069c9    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005069cf    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005069d5    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005069da    8d0c49
                         shl                ecx, 5                                               // 0x005069dd    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x005069e0    8b540134
                         push               esi                                                  // 0x005069e4    56
                         {disp8} mov        esi, dword ptr [edx + 0x30]                          // 0x005069e5    8b7230
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                          // 0x005069e8    8b461c
                         add                esi, 0x14                                            // 0x005069eb    83c614
                         mov.s              ecx, esi                                             // 0x005069ee    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x005069f0    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005069f4    e897c62f00
                         {disp8} fadd       dword ptr [esp + 0x08]                               // 0x005069f9    d8442408
                         {disp32} mov       edx, dword ptr [edi + 0x00000160]                    // 0x005069fd    8b9760010000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x00506a03    8d4c240c
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00506a07    d95c2410
                         push               ecx                                                  // 0x00506a0b    51
                         fild               dword ptr [esi]                                      // 0x00506a0c    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00506a0e    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00506a14    d95c2410
                         {disp8} fild       dword ptr [esi + 0x04]                               // 0x00506a18    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00506a1b    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00506a21    d95c2418
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x00506a25    8b4a58
                         call               _jmp_addr_0x00484ac0                                 // 0x00506a28    e893e0f7ff
                         pop                esi                                                  // 0x00506a2d    5e
                         xor.s              eax, eax                                             // 0x00506a2e    33c0
                         pop                edi                                                  // 0x00506a30    5f
                         add                esp, 0x10                                            // 0x00506a31    83c410
                         ret                                                                     // 0x00506a34    c3
                         nop                                                                     // 0x00506a35    90
                         nop                                                                     // 0x00506a36    90
                         nop                                                                     // 0x00506a37    90
                         nop                                                                     // 0x00506a38    90
                         nop                                                                     // 0x00506a39    90
                         nop                                                                     // 0x00506a3a    90
                         nop                                                                     // 0x00506a3b    90
                         nop                                                                     // 0x00506a3c    90
                         nop                                                                     // 0x00506a3d    90
                         nop                                                                     // 0x00506a3e    90
                         nop                                                                     // 0x00506a3f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00506a40    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506a46    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506a49    e882d8f7ff
                         neg                eax                                                  // 0x00506a4e    f7d8
                         sbb.s              eax, eax                                             // 0x00506a50    1bc0
                         and                eax, 0xfffffffe                                      // 0x00506a52    83e0fe
                         add                eax, 0x02                                            // 0x00506a55    83c002
                         ret                                                                     // 0x00506a58    c3
                         nop                                                                     // 0x00506a59    90
                         nop                                                                     // 0x00506a5a    90
                         nop                                                                     // 0x00506a5b    90
                         nop                                                                     // 0x00506a5c    90
                         nop                                                                     // 0x00506a5d    90
                         nop                                                                     // 0x00506a5e    90
                         nop                                                                     // 0x00506a5f    90
                         push               esi                                                  // 0x00506a60    56
                         mov.s              esi, ecx                                             // 0x00506a61    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506a63    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506a69    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506a6f    05a80f0000
                         push               0x0                                                  // 0x00506a74    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506a76    8d0c49
                         push               0x009c7f50                                           // 0x00506a79    68507f9c00
                         shl                ecx, 5                                               // 0x00506a7e    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00506a81    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                          // 0x00506a85    8b5030
                         push               0x009c7f30                                           // 0x00506a88    68307f9c00
                         push               0x0                                                  // 0x00506a8d    6a00
                         push               edx                                                  // 0x00506a8f    52
                         call               ___RTDynamicCast                                     // 0x00506a90    e884ef2b00
                         push               0x0                                                  // 0x00506a95    6a00
                         push               0x00be0360                                           // 0x00506a97    686003be00
                         push               0x009c7f50                                           // 0x00506a9c    68507f9c00
                         push               0x0                                                  // 0x00506aa1    6a00
                         push               eax                                                  // 0x00506aa3    50
                         call               ___RTDynamicCast                                     // 0x00506aa4    e870ef2b00
                         add                esp, 0x28                                            // 0x00506aa9    83c428
                         push               0x0                                                  // 0x00506aac    6a00
                         push               esi                                                  // 0x00506aae    56
                         mov.s              ecx, eax                                             // 0x00506aaf    8bc8
                         call               _jmp_addr_0x005fc790                                 // 0x00506ab1    e8da5c0f00
                         dec                eax                                                  // 0x00506ab6    48
                         neg                eax                                                  // 0x00506ab7    f7d8
                         sbb.s              eax, eax                                             // 0x00506ab9    1bc0
                         and                eax, 0x03                                            // 0x00506abb    83e003
                         pop                esi                                                  // 0x00506abe    5e
                         ret                                                                     // 0x00506abf    c3
                         mov                eax, dword ptr [ecx]                                 // 0x00506ac0    8b01
                         call               dword ptr [eax + 0x998]                              // 0x00506ac2    ff9098090000
                         mov                eax, 0x00000002                                      // 0x00506ac8    b802000000
                         ret                                                                     // 0x00506acd    c3
                         nop                                                                     // 0x00506ace    90
                         nop                                                                     // 0x00506acf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00506ad0    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]                    // 0x00506ad6    8b90b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506adc    05a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x00506ae1    8d1452
                         shl                edx, 5                                               // 0x00506ae4    c1e205
                         {disp8} fld        dword ptr [edx + eax * 0x1 + 0x48]                   // 0x00506ae7    d9440248
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00506aeb    8b8160010000
                         push               ecx                                                  // 0x00506af1    51
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506af2    8b4858
                         fstp               dword ptr [esp]                                      // 0x00506af5    d91c24
                         call               _jmp_addr_0x0047fa20                                 // 0x00506af8    e8238ff7ff
                         mov                eax, 0x00000002                                      // 0x00506afd    b802000000
                         ret                                                                     // 0x00506b02    c3
                         nop                                                                     // 0x00506b03    90
                         nop                                                                     // 0x00506b04    90
                         nop                                                                     // 0x00506b05    90
                         nop                                                                     // 0x00506b06    90
                         nop                                                                     // 0x00506b07    90
                         nop                                                                     // 0x00506b08    90
                         nop                                                                     // 0x00506b09    90
                         nop                                                                     // 0x00506b0a    90
                         nop                                                                     // 0x00506b0b    90
                         nop                                                                     // 0x00506b0c    90
                         nop                                                                     // 0x00506b0d    90
                         nop                                                                     // 0x00506b0e    90
                         nop                                                                     // 0x00506b0f    90
                         sub                esp, 0x10                                            // 0x00506b10    83ec10
                         push               esi                                                  // 0x00506b13    56
                         mov.s              esi, ecx                                             // 0x00506b14    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00506b16    8b06
                         call               dword ptr [eax + 0x1c]                               // 0x00506b18    ff501c
                         test               eax, eax                                             // 0x00506b1b    85c0
                         {disp8} jne        _jmp_addr_0x00506b29                                 // 0x00506b1d    750a
                         mov                eax, 0x00000002                                      // 0x00506b1f    b802000000
                         pop                esi                                                  // 0x00506b24    5e
                         add                esp, 0x10                                            // 0x00506b25    83c410
                         ret                                                                     // 0x00506b28    c3
_jmp_addr_0x00506b29:    {disp8} fild       dword ptr [esi + 0x14]                               // 0x00506b29    db4614
                         mov.s              ecx, esi                                             // 0x00506b2c    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x00506b2e    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x00506b34    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00506b3a    d95c2404
                         call               _jmp_addr_0x0047d740                                 // 0x00506b3e    e8fd6bf7ff
                         {disp32} fld       dword ptr [eax + 0x000000c8]                         // 0x00506b43    d980c8000000
                         {disp8} fsub       dword ptr [esp + 0x04]                               // 0x00506b49    d8642404
                         mov.s              ecx, esi                                             // 0x00506b4d    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00506b4f    c744240c00000000
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00506b57    d95c2408
                         {disp8} fild       dword ptr [esi + 0x18]                               // 0x00506b5b    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x00506b5e    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x00506b64    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00506b6a    d95c2404
                         call               _jmp_addr_0x0047d740                                 // 0x00506b6e    e8cd6bf7ff
                         {disp32} fld       dword ptr [eax + 0x000000d0]                         // 0x00506b73    d980d0000000
                         {disp8} fsub       dword ptr [esp + 0x04]                               // 0x00506b79    d8642404
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x00506b7d    8d4c2408
                         push               ecx                                                  // 0x00506b81    51
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00506b82    d95c2414
                         call               _jmp_addr_0x006e8160                                 // 0x00506b86    e8d5151e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                          // 0x00506b8b    d81d2cb28a00
                         add                esp, 0x04                                            // 0x00506b91    83c404
                         fnstsw             ax                                                   // 0x00506b94    dfe0
                         test               ah, 0x01                                             // 0x00506b96    f6c401
                         {disp8} je         _jmp_addr_0x00506ba5                                 // 0x00506b99    740a
                         mov                eax, 0x00000002                                      // 0x00506b9b    b802000000
                         pop                esi                                                  // 0x00506ba0    5e
                         add                esp, 0x10                                            // 0x00506ba1    83c410
                         ret                                                                     // 0x00506ba4    c3
_jmp_addr_0x00506ba5:    {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x00506ba5    8d542408
                         push               edx                                                  // 0x00506ba9    52
                         call               _jmp_addr_0x007faa50                                 // 0x00506baa    e8a13e2f00
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00506baf    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x00506bb3    8b442408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506bb7    8b8e60010000
                         add                esp, 0x04                                            // 0x00506bbd    83c404
                         push               eax                                                  // 0x00506bc0    50
                         call               _jmp_addr_0x004f00e0                                 // 0x00506bc1    e81a95feff
                         neg                eax                                                  // 0x00506bc6    f7d8
                         sbb.s              eax, eax                                             // 0x00506bc8    1bc0
                         and                eax, 0x02                                            // 0x00506bca    83e002
                         pop                esi                                                  // 0x00506bcd    5e
                         add                esp, 0x10                                            // 0x00506bce    83c410
                         ret                                                                     // 0x00506bd1    c3
                         nop                                                                     // 0x00506bd2    90
                         nop                                                                     // 0x00506bd3    90
                         nop                                                                     // 0x00506bd4    90
                         nop                                                                     // 0x00506bd5    90
                         nop                                                                     // 0x00506bd6    90
                         nop                                                                     // 0x00506bd7    90
                         nop                                                                     // 0x00506bd8    90
                         nop                                                                     // 0x00506bd9    90
                         nop                                                                     // 0x00506bda    90
                         nop                                                                     // 0x00506bdb    90
                         nop                                                                     // 0x00506bdc    90
                         nop                                                                     // 0x00506bdd    90
                         nop                                                                     // 0x00506bde    90
                         nop                                                                     // 0x00506bdf    90
                         sub                esp, 0x10                                            // 0x00506be0    83ec10
                         push               esi                                                  // 0x00506be3    56
                         mov.s              esi, ecx                                             // 0x00506be4    8bf1
                         mov                eax, dword ptr [esi]                                 // 0x00506be6    8b06
                         call               dword ptr [eax + 0x1c]                               // 0x00506be8    ff501c
                         test               eax, eax                                             // 0x00506beb    85c0
                         {disp8} jne        _jmp_addr_0x00506bf9                                 // 0x00506bed    750a
_jmp_addr_0x00506bef:    mov                eax, 0x00000002                                      // 0x00506bef    b802000000
                         pop                esi                                                  // 0x00506bf4    5e
                         add                esp, 0x10                                            // 0x00506bf5    83c410
                         ret                                                                     // 0x00506bf8    c3
_jmp_addr_0x00506bf9:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506bf9    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00506bff    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506c02    e8c9d6f7ff
                         test               eax, eax                                             // 0x00506c07    85c0
                         {disp32} jne       _jmp_addr_0x00506cde                                 // 0x00506c09    0f85cf000000
                         {disp8} fild       dword ptr [esi + 0x14]                               // 0x00506c0f    db4614
                         mov.s              ecx, esi                                             // 0x00506c12    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x00506c14    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x00506c1a    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00506c20    d95c2404
                         call               _jmp_addr_0x0047d740                                 // 0x00506c24    e8176bf7ff
                         {disp32} fld       dword ptr [eax + 0x000000c8]                         // 0x00506c29    d980c8000000
                         {disp8} fsub       dword ptr [esp + 0x04]                               // 0x00506c2f    d8642404
                         mov.s              ecx, esi                                             // 0x00506c33    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00506c35    c744240c00000000
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00506c3d    d95c2408
                         {disp8} fild       dword ptr [esi + 0x18]                               // 0x00506c41    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]                    // 0x00506c44    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]                     // 0x00506c4a    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00506c50    d95c2404
                         call               _jmp_addr_0x0047d740                                 // 0x00506c54    e8e76af7ff
                         {disp32} fld       dword ptr [eax + 0x000000d0]                         // 0x00506c59    d980d0000000
                         {disp8} fsub       dword ptr [esp + 0x04]                               // 0x00506c5f    d8642404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x00506c63    8d542408
                         push               edx                                                  // 0x00506c67    52
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00506c68    d95c2414
                         call               _jmp_addr_0x006e8160                                 // 0x00506c6c    e8ef141e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                          // 0x00506c71    d81d2cb28a00
                         add                esp, 0x04                                            // 0x00506c77    83c404
                         fnstsw             ax                                                   // 0x00506c7a    dfe0
                         test               ah, 0x01                                             // 0x00506c7c    f6c401
                         {disp8} je         _jmp_addr_0x00506c8b                                 // 0x00506c7f    740a
                         mov                eax, 0x00000002                                      // 0x00506c81    b802000000
                         pop                esi                                                  // 0x00506c86    5e
                         add                esp, 0x10                                            // 0x00506c87    83c410
                         ret                                                                     // 0x00506c8a    c3
_jmp_addr_0x00506c8b:    {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00506c8b    8d442408
                         push               eax                                                  // 0x00506c8f    50
                         call               _jmp_addr_0x007faa50                                 // 0x00506c90    e8bb3d2f00
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00506c95    d95c2408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506c99    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                          // 0x00506c9f    8b5158
                         {disp32} fld       dword ptr [edx + 0x00000084]                         // 0x00506ca2    d98284000000
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x00506ca8    d9442408
                         fsub               st, st(1)                                            // 0x00506cac    d8e1
                         fstp               dword ptr [esp]                                      // 0x00506cae    d91c24
                         fstp               st(0)                                                // 0x00506cb1    ddd8
                         call               _jmp_addr_0x007faaf0                                 // 0x00506cb3    e8383e2f00
                         fabs                                                                    // 0x00506cb8    d9e1
                         add                esp, 0x04                                            // 0x00506cba    83c404
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x28670]                    // 0x00506cbd    dc1d70168d00
                         fnstsw             ax                                                   // 0x00506cc3    dfe0
                         test               ah, 0x41                                             // 0x00506cc5    f6c441
                         {disp32} jne       _jmp_addr_0x00506bef                                 // 0x00506cc8    0f8521ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x00506cce    8b442404
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506cd2    8b8e60010000
                         push               eax                                                  // 0x00506cd8    50
                         call               _jmp_addr_0x004f00e0                                 // 0x00506cd9    e80294feff
_jmp_addr_0x00506cde:    xor.s              eax, eax                                             // 0x00506cde    33c0
                         pop                esi                                                  // 0x00506ce0    5e
                         add                esp, 0x10                                            // 0x00506ce1    83c410
                         ret                                                                     // 0x00506ce4    c3
                         nop                                                                     // 0x00506ce5    90
                         nop                                                                     // 0x00506ce6    90
                         nop                                                                     // 0x00506ce7    90
                         nop                                                                     // 0x00506ce8    90
                         nop                                                                     // 0x00506ce9    90
                         nop                                                                     // 0x00506cea    90
                         nop                                                                     // 0x00506ceb    90
                         nop                                                                     // 0x00506cec    90
                         nop                                                                     // 0x00506ced    90
                         nop                                                                     // 0x00506cee    90
                         nop                                                                     // 0x00506cef    90
                         push               esi                                                  // 0x00506cf0    56
                         mov.s              esi, ecx                                             // 0x00506cf1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506cf3    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506cf9    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506cfc    e8cfd5f7ff
                         test               eax, eax                                             // 0x00506d01    85c0
                         {disp8} jne        _jmp_addr_0x00506d45                                 // 0x00506d03    7540
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506d05    8b8e64010000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00001bec]                    // 0x00506d0b    8b89ec1b0000
                         test               ecx, ecx                                             // 0x00506d11    85c9
                         {disp8} jne        _jmp_addr_0x00506d1c                                 // 0x00506d13    7507
_jmp_addr_0x00506d15:    mov                eax, 0x00000001                                      // 0x00506d15    b801000000
                         pop                esi                                                  // 0x00506d1a    5e
                         ret                                                                     // 0x00506d1b    c3
_jmp_addr_0x00506d1c:    call               ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ                                 // 0x00506d1c    e80f540d00
                         test               eax, eax                                             // 0x00506d21    85c0
                         {disp8} je         _jmp_addr_0x00506d15                                 // 0x00506d23    74f0
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x00506d25    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                          // 0x00506d2b    8b4a58
                         push               eax                                                  // 0x00506d2e    50
                         call               _jmp_addr_0x00480fc0                                 // 0x00506d2f    e88ca2f7ff
                         {disp32} mov       dword ptr [esi + 0x00000394], 0x00000001             // 0x00506d34    c7869403000001000000
                         mov                eax, 0x00000002                                      // 0x00506d3e    b802000000
                         pop                esi                                                  // 0x00506d43    5e
                         ret                                                                     // 0x00506d44    c3
_jmp_addr_0x00506d45:    xor.s              eax, eax                                             // 0x00506d45    33c0
                         pop                esi                                                  // 0x00506d47    5e
                         ret                                                                     // 0x00506d48    c3
                         nop                                                                     // 0x00506d49    90
                         nop                                                                     // 0x00506d4a    90
                         nop                                                                     // 0x00506d4b    90
                         nop                                                                     // 0x00506d4c    90
                         nop                                                                     // 0x00506d4d    90
                         nop                                                                     // 0x00506d4e    90
                         nop                                                                     // 0x00506d4f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]                    // 0x00506d50    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506d56    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506d59    e872d5f7ff
                         neg                eax                                                  // 0x00506d5e    f7d8
                         sbb.s              eax, eax                                             // 0x00506d60    1bc0
                         and                eax, 0xfffffffe                                      // 0x00506d62    83e0fe
                         add                eax, 0x02                                            // 0x00506d65    83c002
                         ret                                                                     // 0x00506d68    c3
                         nop                                                                     // 0x00506d69    90
                         nop                                                                     // 0x00506d6a    90
                         nop                                                                     // 0x00506d6b    90
                         nop                                                                     // 0x00506d6c    90
                         nop                                                                     // 0x00506d6d    90
                         nop                                                                     // 0x00506d6e    90
                         nop                                                                     // 0x00506d6f    90
_jmp_addr_0x00506d70:    sub                esp, 0x0c                                            // 0x00506d70    83ec0c
                         push               esi                                                  // 0x00506d73    56
                         mov.s              esi, ecx                                             // 0x00506d74    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506d76    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00506d7c    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00506d7f    e84cd5f7ff
                         test               eax, eax                                             // 0x00506d84    85c0
                         {disp8} jne        _jmp_addr_0x00506e02                                 // 0x00506d86    757a
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506d88    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506d8e    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506d94    8d0c49
                         shl                ecx, 5                                               // 0x00506d97    c1e105
                         {disp32} mov       ecx, dword ptr [ecx + eax * 0x1 + 0x00000fe0]        // 0x00506d9a    8b8c01e00f0000
                         {disp32} mov       dword ptr [eax + 0x00001bf0], 0x00000000             // 0x00506da1    c780f01b000000000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506dab    8b8664010000
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x00506db1    8d542404
                         push               edx                                                  // 0x00506db5    52
                         {disp32} mov       edx, dword ptr [eax + 0x00001bf0]                    // 0x00506db6    8b90f01b0000
                         push               edx                                                  // 0x00506dbc    52
                         push               ecx                                                  // 0x00506dbd    51
                         mov.s              ecx, esi                                             // 0x00506dbe    8bce
                         call               _jmp_addr_0x0047a3b0                                 // 0x00506dc0    e8eb35f7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x00506dc5    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                          // 0x00506dcb    8b4958
                         push               0x0                                                  // 0x00506dce    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00506dd0    8d442408
                         push               eax                                                  // 0x00506dd4    50
                         call               _jmp_addr_0x00484920                                 // 0x00506dd5    e846dbf7ff
                         mov                edx, dword ptr [esi]                                 // 0x00506dda    8b16
                         mov.s              ecx, esi                                             // 0x00506ddc    8bce
                         call               dword ptr [edx + 0x42c]                              // 0x00506dde    ff922c040000
                         push               ecx                                                  // 0x00506de4    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]                    // 0x00506de5    8b8e70030000
                         fstp               dword ptr [esp]                                      // 0x00506deb    d91c24
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x00506dee    8d442408
                         push               eax                                                  // 0x00506df2    50
                         call               _jmp_addr_0x004f4b90                                 // 0x00506df3    e898ddfeff
                         mov                eax, 0x00000002                                      // 0x00506df8    b802000000
                         pop                esi                                                  // 0x00506dfd    5e
                         add                esp, 0x0c                                            // 0x00506dfe    83c40c
                         ret                                                                     // 0x00506e01    c3
_jmp_addr_0x00506e02:    xor.s              eax, eax                                             // 0x00506e02    33c0
                         pop                esi                                                  // 0x00506e04    5e
                         add                esp, 0x0c                                            // 0x00506e05    83c40c
                         ret                                                                     // 0x00506e08    c3
                         nop                                                                     // 0x00506e09    90
                         nop                                                                     // 0x00506e0a    90
                         nop                                                                     // 0x00506e0b    90
                         nop                                                                     // 0x00506e0c    90
                         nop                                                                     // 0x00506e0d    90
                         nop                                                                     // 0x00506e0e    90
                         nop                                                                     // 0x00506e0f    90
_jmp_addr_0x00506e10:    sub                esp, 0x18                                            // 0x00506e10    83ec18
                         push               ebx                                                  // 0x00506e13    53
                         push               ebp                                                  // 0x00506e14    55
                         push               esi                                                  // 0x00506e15    56
                         mov.s              esi, ecx                                             // 0x00506e16    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00506e18    8b8660010000
                         {disp8} mov        ebp, dword ptr [eax + 0x58]                          // 0x00506e1e    8b6858
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506e21    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00506e27    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x00506e2d    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00506e32    8d0c49
                         shl                ecx, 5                                               // 0x00506e35    c1e105
                         push               edi                                                  // 0x00506e38    57
                         {disp8} mov        edi, dword ptr [ecx + eax * 0x1 + 0x38]              // 0x00506e39    8b7c0138
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x00506e3d    8d542410
                         push               edx                                                  // 0x00506e41    52
                         mov.s              ecx, ebp                                             // 0x00506e42    8bcd
                         call               _jmp_addr_0x00487c70                                 // 0x00506e44    e8270ef8ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506e49    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00001bf0]                         // 0x00506e4f    d981f01b0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00506e55    d81d98a38a00
                         and                eax, 0x000000ff                                      // 0x00506e5b    25ff000000
                         mov.s              ebx, eax                                             // 0x00506e60    8bd8
                         fnstsw             ax                                                   // 0x00506e62    dfe0
                         test               ah, 0x40                                             // 0x00506e64    f6c440
                         {disp8} je         _jmp_addr_0x00506e9a                                 // 0x00506e67    7431
                         {disp32} mov       ecx, dword ptr [ecx + 0x00001bf0]                    // 0x00506e69    8b89f01b0000
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00506e6f    8d44241c
                         push               eax                                                  // 0x00506e73    50
                         push               ecx                                                  // 0x00506e74    51
                         push               edi                                                  // 0x00506e75    57
                         mov.s              ecx, esi                                             // 0x00506e76    8bce
                         call               _jmp_addr_0x0047a3b0                                 // 0x00506e78    e83335f7ff
                         test               ebx, ebx                                             // 0x00506e7d    85db
                         {disp8} je         _jmp_addr_0x00506e90                                 // 0x00506e7f    740f
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x00506e81    8b9664010000
                         cmp                dword ptr [edx + 0x00001bdc], 0x08                   // 0x00506e87    83badc1b000008
                         {disp8} jge        _jmp_addr_0x00506e9a                                 // 0x00506e8e    7d0a
_jmp_addr_0x00506e90:    pop                edi                                                  // 0x00506e90    5f
                         pop                esi                                                  // 0x00506e91    5e
                         pop                ebp                                                  // 0x00506e92    5d
                         xor.s              eax, eax                                             // 0x00506e93    33c0
                         pop                ebx                                                  // 0x00506e95    5b
                         add                esp, 0x18                                            // 0x00506e96    83c418
                         ret                                                                     // 0x00506e99    c3
_jmp_addr_0x00506e9a:    cmp                edi, 0x18                                            // 0x00506e9a    83ff18
                         {disp32} jge       _jmp_addr_0x00506fe8                                 // 0x00506e9d    0f8d45010000
                         push               edi                                                  // 0x00506ea3    57
                         call               _jmp_addr_0x0068c110                                 // 0x00506ea4    e867521800
                         {disp32} fmul      dword ptr [data_bytes + 0x22052c]                    // 0x00506ea9    d80d2c65be00
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00506eaf    8b8664010000
                         add                esp, 0x04                                            // 0x00506eb5    83c404
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x00506eb8    d83d90a38a00
                         {disp32} fadd      dword ptr [eax + 0x00001bf0]                         // 0x00506ebe    d880f01b0000
                         {disp32} fstp      dword ptr [eax + 0x00001bf0]                         // 0x00506ec4    d998f01b0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506eca    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00001bf0]                         // 0x00506ed0    d981f01b0000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x00506ed6    d81d90a38a00
                         fnstsw             ax                                                   // 0x00506edc    dfe0
                         test               ah, 0x01                                             // 0x00506ede    f6c401
                         {disp8} je         _jmp_addr_0x00506eeb                                 // 0x00506ee1    7408
                         {disp32} fld       dword ptr [ecx + 0x00001bf0]                         // 0x00506ee3    d981f01b0000
                         {disp8} jmp        _jmp_addr_0x00506ef1                                 // 0x00506ee9    eb06
_jmp_addr_0x00506eeb:    {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x00506eeb    d90590a38a00
_jmp_addr_0x00506ef1:    {disp32} fstp      dword ptr [ecx + 0x00001bf0]                         // 0x00506ef1    d999f01b0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506ef7    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00001bf0]                         // 0x00506efd    d981f01b0000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x00506f03    d81d90a38a00
                         fnstsw             ax                                                   // 0x00506f09    dfe0
                         test               ah, 0x01                                             // 0x00506f0b    f6c401
                         {disp8} je         _jmp_addr_0x00506f1a                                 // 0x00506f0e    740a
                         {disp32} mov       dword ptr [ecx + 0x00001bdc], 0x00000000             // 0x00506f10    c781dc1b000000000000
_jmp_addr_0x00506f1a:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506f1a    8b8e64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00001bf0]                    // 0x00506f20    8b91f01b0000
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00506f26    8d44241c
                         push               eax                                                  // 0x00506f2a    50
                         push               edx                                                  // 0x00506f2b    52
                         push               edi                                                  // 0x00506f2c    57
                         mov.s              ecx, esi                                             // 0x00506f2d    8bce
                         call               _jmp_addr_0x0047a3b0                                 // 0x00506f2f    e87c34f7ff
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00506f34    8d44241c
                         push               eax                                                  // 0x00506f38    50
                         mov.s              ecx, ebp                                             // 0x00506f39    8bcd
                         call               _jmp_addr_0x00484ac0                                 // 0x00506f3b    e880dbf7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00506f40    8b8e64010000
                         {disp32} fld       dword ptr [ecx + 0x00001bf0]                         // 0x00506f46    d981f01b0000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x00506f4c    d81d90a38a00
                         fnstsw             ax                                                   // 0x00506f52    dfe0
                         test               ah, 0x01                                             // 0x00506f54    f6c401
                         {disp8} jne        _jmp_addr_0x00506f76                                 // 0x00506f57    751d
                         cmp                dword ptr [ecx + 0x00001bdc], 0x08                   // 0x00506f59    83b9dc1b000008
                         {disp8} jle        _jmp_addr_0x00506f76                                 // 0x00506f60    7e14
                         mov.s              ecx, ebp                                             // 0x00506f62    8bcd
                         call               _jmp_addr_0x00484ae0                                 // 0x00506f64    e877dbf7ff
                         pop                edi                                                  // 0x00506f69    5f
                         pop                esi                                                  // 0x00506f6a    5e
                         pop                ebp                                                  // 0x00506f6b    5d
                         mov                eax, 0x00000002                                      // 0x00506f6c    b802000000
                         pop                ebx                                                  // 0x00506f71    5b
                         add                esp, 0x18                                            // 0x00506f72    83c418
                         ret                                                                     // 0x00506f75    c3
_jmp_addr_0x00506f76:    test               ebx, ebx                                             // 0x00506f76    85db
                         {disp8} je         _jmp_addr_0x00506fb1                                 // 0x00506f78    7437
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]                    // 0x00506f7a    8b8e70030000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x00506f80    8b542410
                         add                ecx, 0x000001a8                                      // 0x00506f84    81c1a8010000
                         mov                dword ptr [ecx], edx                                 // 0x00506f8a    8911
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x00506f8c    8b442414
                         {disp8} mov        dword ptr [ecx + 0x04], eax                          // 0x00506f90    894104
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x00506f93    8b542418
                         pop                edi                                                  // 0x00506f97    5f
                         {disp8} mov        dword ptr [ecx + 0x08], edx                          // 0x00506f98    895108
                         {disp32} mov       eax, dword ptr [esi + 0x00000370]                    // 0x00506f9b    8b8670030000
                         pop                esi                                                  // 0x00506fa1    5e
                         pop                ebp                                                  // 0x00506fa2    5d
                         {disp32} mov       byte ptr [eax + 0x000001d4], 0x01                    // 0x00506fa3    c680d401000001
                         xor.s              eax, eax                                             // 0x00506faa    33c0
                         pop                ebx                                                  // 0x00506fac    5b
                         add                esp, 0x18                                            // 0x00506fad    83c418
                         ret                                                                     // 0x00506fb0    c3
_jmp_addr_0x00506fb1:    {disp32} mov       ecx, dword ptr [esi + 0x00000370]                    // 0x00506fb1    8b8e70030000
                         add                ebp, 0x78                                            // 0x00506fb7    83c578
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                          // 0x00506fba    8b5500
                         add                ecx, 0x000001a8                                      // 0x00506fbd    81c1a8010000
                         mov                dword ptr [ecx], edx                                 // 0x00506fc3    8911
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                          // 0x00506fc5    8b4504
                         {disp8} mov        dword ptr [ecx + 0x04], eax                          // 0x00506fc8    894104
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                          // 0x00506fcb    8b5508
                         pop                edi                                                  // 0x00506fce    5f
                         {disp8} mov        dword ptr [ecx + 0x08], edx                          // 0x00506fcf    895108
                         {disp32} mov       eax, dword ptr [esi + 0x00000370]                    // 0x00506fd2    8b8670030000
                         pop                esi                                                  // 0x00506fd8    5e
                         pop                ebp                                                  // 0x00506fd9    5d
                         {disp32} mov       byte ptr [eax + 0x000001d4], 0x00                    // 0x00506fda    c680d401000000
                         xor.s              eax, eax                                             // 0x00506fe1    33c0
                         pop                ebx                                                  // 0x00506fe3    5b
                         add                esp, 0x18                                            // 0x00506fe4    83c418
                         ret                                                                     // 0x00506fe7    c3
_jmp_addr_0x00506fe8:    pop                edi                                                  // 0x00506fe8    5f
                         pop                esi                                                  // 0x00506fe9    5e
                         pop                ebp                                                  // 0x00506fea    5d
                         mov                eax, 0x00000001                                      // 0x00506feb    b801000000
                         pop                ebx                                                  // 0x00506ff0    5b
                         add                esp, 0x18                                            // 0x00506ff1    83c418
                         ret                                                                     // 0x00506ff4    c3
                         nop                                                                     // 0x00506ff5    90
                         nop                                                                     // 0x00506ff6    90
                         nop                                                                     // 0x00506ff7    90
                         nop                                                                     // 0x00506ff8    90
                         nop                                                                     // 0x00506ff9    90
                         nop                                                                     // 0x00506ffa    90
                         nop                                                                     // 0x00506ffb    90
                         nop                                                                     // 0x00506ffc    90
                         nop                                                                     // 0x00506ffd    90
                         nop                                                                     // 0x00506ffe    90
                         nop                                                                     // 0x00506fff    90
_jmp_addr_0x00507000:    push               esi                                                  // 0x00507000    56
                         mov.s              esi, ecx                                             // 0x00507001    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]                    // 0x00507003    8b8e70030000
                         call               _jmp_addr_0x004f4c30                                 // 0x00507009    e822dcfeff
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x0050700e    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00507014    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x00507017    e8b4d2f7ff
                         neg                eax                                                  // 0x0050701c    f7d8
                         sbb.s              eax, eax                                             // 0x0050701e    1bc0
                         and                eax, 0xfffffffe                                      // 0x00507020    83e0fe
                         add                eax, 0x02                                            // 0x00507023    83c002
                         pop                esi                                                  // 0x00507026    5e
                         ret                                                                     // 0x00507027    c3
                         nop                                                                     // 0x00507028    90
                         nop                                                                     // 0x00507029    90
                         nop                                                                     // 0x0050702a    90
                         nop                                                                     // 0x0050702b    90
                         nop                                                                     // 0x0050702c    90
                         nop                                                                     // 0x0050702d    90
                         nop                                                                     // 0x0050702e    90
                         nop                                                                     // 0x0050702f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00507030    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]                    // 0x00507036    8b90b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050703c    05a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]                     // 0x00507041    8d1452
                         shl                edx, 5                                               // 0x00507044    c1e205
                         {disp8} mov        eax, dword ptr [edx + eax * 0x1 + 0x38]              // 0x00507047    8b440238
                         {disp8} mov        word ptr [ecx + 0x58], ax                            // 0x0050704b    66894158
                         mov                eax, 0x00000002                                      // 0x0050704f    b802000000
                         ret                                                                     // 0x00507054    c3
                         nop                                                                     // 0x00507055    90
                         nop                                                                     // 0x00507056    90
                         nop                                                                     // 0x00507057    90
                         nop                                                                     // 0x00507058    90
                         nop                                                                     // 0x00507059    90
                         nop                                                                     // 0x0050705a    90
                         nop                                                                     // 0x0050705b    90
                         nop                                                                     // 0x0050705c    90
                         nop                                                                     // 0x0050705d    90
                         nop                                                                     // 0x0050705e    90
                         nop                                                                     // 0x0050705f    90
                         xor.s              eax, eax                                             // 0x00507060    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x58]                            // 0x00507062    668b4158
                         test               ax, ax                                               // 0x00507066    6685c0
                         {disp8} jle        _jmp_addr_0x00507073                                 // 0x00507069    7e08
                         dec                eax                                                  // 0x0050706b    48
                         {disp8} mov        word ptr [ecx + 0x58], ax                            // 0x0050706c    66894158
                         xor.s              eax, eax                                             // 0x00507070    33c0
                         ret                                                                     // 0x00507072    c3
_jmp_addr_0x00507073:    {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00507073    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x00507079    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x0050707f    05a80f0000
                         push               0x0                                                  // 0x00507084    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x00507086    8d0c49
                         push               0x009c8060                                           // 0x00507089    6860809c00
                         shl                ecx, 5                                               // 0x0050708e    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]              // 0x00507091    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                          // 0x00507095    8b4230
                         push               0x009c7f30                                           // 0x00507098    68307f9c00
                         push               0x0                                                  // 0x0050709d    6a00
                         push               eax                                                  // 0x0050709f    50
                         call               ___RTDynamicCast                                     // 0x005070a0    e874e92b00
                         {disp32} mov       eax, dword ptr [eax + 0x00000160]                    // 0x005070a5    8b8060010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005070ab    8b4858
                         add                esp, 0x14                                            // 0x005070ae    83c414
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ        // 0x005070b1    e81ad2f7ff
                         neg                eax                                                  // 0x005070b6    f7d8
                         sbb.s              eax, eax                                             // 0x005070b8    1bc0
                         and                eax, 0xfffffffe                                      // 0x005070ba    83e0fe
                         add                eax, 0x02                                            // 0x005070bd    83c002
                         ret                                                                     // 0x005070c0    c3
                         nop                                                                     // 0x005070c1    90
                         nop                                                                     // 0x005070c2    90
                         nop                                                                     // 0x005070c3    90
                         nop                                                                     // 0x005070c4    90
                         nop                                                                     // 0x005070c5    90
                         nop                                                                     // 0x005070c6    90
                         nop                                                                     // 0x005070c7    90
                         nop                                                                     // 0x005070c8    90
                         nop                                                                     // 0x005070c9    90
                         nop                                                                     // 0x005070ca    90
                         nop                                                                     // 0x005070cb    90
                         nop                                                                     // 0x005070cc    90
                         nop                                                                     // 0x005070cd    90
                         nop                                                                     // 0x005070ce    90
                         nop                                                                     // 0x005070cf    90
                         push               esi                                                  // 0x005070d0    56
                         mov.s              esi, ecx                                             // 0x005070d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005070d3    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                          // 0x005070d9    8b4828
                         mov                edx, dword ptr [ecx]                                 // 0x005070dc    8b11
                         call               dword ptr [edx + 0xac]                               // 0x005070de    ff92ac000000
                         test               eax, eax                                             // 0x005070e4    85c0
                         {disp8} je         _jmp_addr_0x0050711f                                 // 0x005070e6    7437
                         mov.s              ecx, eax                                             // 0x005070e8    8bc8
                         call               _jmp_addr_0x0072a5f0                                 // 0x005070ea    e801352200
                         mov.s              ecx, eax                                             // 0x005070ef    8bc8
                         call               _jmp_addr_0x0072b230                                 // 0x005070f1    e83a412200
                         lea                ecx, dword ptr [eax + eax * 0x8]                     // 0x005070f6    8d0cc0
                         shl                ecx, 3                                               // 0x005070f9    c1e103
                         sub.s              ecx, eax                                             // 0x005070fc    2bc8
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00cc66c8]              // 0x005070fe    8b048dc866cc00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00507105    8b8e64010000
                         push               0x1                                                  // 0x0050710b    6a01
                         push               0x41f00000                                           // 0x0050710d    680000f041
                         push               eax                                                  // 0x00507112    50
                         call               _jmp_addr_0x004dce20                                 // 0x00507113    e8085dfdff
                         mov                eax, 0x00000002                                      // 0x00507118    b802000000
                         pop                esi                                                  // 0x0050711d    5e
                         ret                                                                     // 0x0050711e    c3
_jmp_addr_0x0050711f:    {disp32} mov       edx, dword ptr [esi + 0x00000160]                    // 0x0050711f    8b9660010000
                         {disp8} mov        eax, dword ptr [edx + 0x28]                          // 0x00507125    8b4228
                         push               eax                                                  // 0x00507128    50
                         mov.s              ecx, esi                                             // 0x00507129    8bce
                         call               _jmp_addr_0x0047aa50                                 // 0x0050712b    e82039f7ff
                         xor.s              eax, eax                                             // 0x00507130    33c0
                         pop                esi                                                  // 0x00507132    5e
                         ret                                                                     // 0x00507133    c3
                         nop                                                                     // 0x00507134    90
                         nop                                                                     // 0x00507135    90
                         nop                                                                     // 0x00507136    90
                         nop                                                                     // 0x00507137    90
                         nop                                                                     // 0x00507138    90
                         nop                                                                     // 0x00507139    90
                         nop                                                                     // 0x0050713a    90
                         nop                                                                     // 0x0050713b    90
                         nop                                                                     // 0x0050713c    90
                         nop                                                                     // 0x0050713d    90
                         nop                                                                     // 0x0050713e    90
                         nop                                                                     // 0x0050713f    90
                         push               esi                                                  // 0x00507140    56
                         mov.s              esi, ecx                                             // 0x00507141    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00507143    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00507149    8b4858
                         {disp32} fld       dword ptr [ecx + 0x00000090]                         // 0x0050714c    d98190000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x28660]                    // 0x00507152    d90560168d00
                         fmul               st, st(1)                                            // 0x00507158    d8c9
                         call               _jmp_addr_0x007a1400                                 // 0x0050715a    e8a1a22900
                         fstp               st(0)                                                // 0x0050715f    ddd8
                         push               eax                                                  // 0x00507161    50
                         push               0x11                                                 // 0x00507162    6a11
                         {disp8} lea        edx, dword ptr [esi + 0x14]                          // 0x00507164    8d5614
                         push               edx                                                  // 0x00507167    52
                         push               0x0                                                  // 0x00507168    6a00
                         mov.s              ecx, esi                                             // 0x0050716a    8bce
                         call               _jmp_addr_0x0047acd0                                 // 0x0050716c    e85f3bf7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x00507171    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c6c], eax                    // 0x00507177    89816c1c0000
                         mov                eax, 0x00000002                                      // 0x0050717d    b802000000
                         pop                esi                                                  // 0x00507182    5e
                         ret                                                                     // 0x00507183    c3
                         nop                                                                     // 0x00507184    90
                         nop                                                                     // 0x00507185    90
                         nop                                                                     // 0x00507186    90
                         nop                                                                     // 0x00507187    90
                         nop                                                                     // 0x00507188    90
                         nop                                                                     // 0x00507189    90
                         nop                                                                     // 0x0050718a    90
                         nop                                                                     // 0x0050718b    90
                         nop                                                                     // 0x0050718c    90
                         nop                                                                     // 0x0050718d    90
                         nop                                                                     // 0x0050718e    90
                         nop                                                                     // 0x0050718f    90
                         sub                esp, 0x0c                                            // 0x00507190    83ec0c
                         push               esi                                                  // 0x00507193    56
                         mov.s              esi, ecx                                             // 0x00507194    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00507196    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x0050719c    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005071a2    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005071a7    8d0c49
                         shl                ecx, 5                                               // 0x005071aa    c1e105
                         {disp8} lea        edx, dword ptr [ecx + eax * 0x1 + 0x3c]              // 0x005071ad    8d54013c
                         push               edx                                                  // 0x005071b1    52
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x005071b2    8d4c2408
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x005071b6    e8a5bf0f00
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x005071bb    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x005071c1    8b4858
                         {disp32} fld       dword ptr [ecx + 0x00000090]                         // 0x005071c4    d98190000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x28660]                    // 0x005071ca    d90560168d00
                         fmul               st, st(1)                                            // 0x005071d0    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x005071d2    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                                 // 0x005071d8    e823a22900
                         fstp               st(0)                                                // 0x005071dd    ddd8
                         push               eax                                                  // 0x005071df    50
                         push               0x11                                                 // 0x005071e0    6a11
                         {disp8} lea        edx, dword ptr [esi + 0x14]                          // 0x005071e2    8d5614
                         push               edx                                                  // 0x005071e5    52
                         push               0x0                                                  // 0x005071e6    6a00
                         mov.s              ecx, esi                                             // 0x005071e8    8bce
                         call               _jmp_addr_0x0047acd0                                 // 0x005071ea    e8e13af7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x005071ef    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c6c], eax                    // 0x005071f5    89816c1c0000
                         mov                eax, 0x00000002                                      // 0x005071fb    b802000000
                         pop                esi                                                  // 0x00507200    5e
                         add                esp, 0x0c                                            // 0x00507201    83c40c
                         ret                                                                     // 0x00507204    c3
                         nop                                                                     // 0x00507205    90
                         nop                                                                     // 0x00507206    90
                         nop                                                                     // 0x00507207    90
                         nop                                                                     // 0x00507208    90
                         nop                                                                     // 0x00507209    90
                         nop                                                                     // 0x0050720a    90
                         nop                                                                     // 0x0050720b    90
                         nop                                                                     // 0x0050720c    90
                         nop                                                                     // 0x0050720d    90
                         nop                                                                     // 0x0050720e    90
                         nop                                                                     // 0x0050720f    90
                         sub                esp, 0x08                                            // 0x00507210    83ec08
                         xor.s              edx, edx                                             // 0x00507213    33d2
                         mov                eax, 0x000003e8                                      // 0x00507215    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x0050721a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x00507220    c744240400000000
                         push               esi                                                  // 0x00507228    56
                         mov.s              esi, ecx                                             // 0x00507229    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x0050722b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x0050722f    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28664]                    // 0x00507233    d80d64168d00
                         call               _jmp_addr_0x007a1400                                 // 0x00507239    e8c2a12900
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x0050723e    66894658
                         mov                eax, 0x00000002                                      // 0x00507242    b802000000
                         pop                esi                                                  // 0x00507247    5e
                         add                esp, 0x08                                            // 0x00507248    83c408
                         ret                                                                     // 0x0050724b    c3
                         nop                                                                     // 0x0050724c    90
                         nop                                                                     // 0x0050724d    90
                         nop                                                                     // 0x0050724e    90
                         nop                                                                     // 0x0050724f    90
                         sub                esp, 0x0c                                            // 0x00507250    83ec0c
                         push               esi                                                  // 0x00507253    56
                         mov.s              esi, ecx                                             // 0x00507254    8bf1
                         dec                word ptr [esi + 0x58]                                // 0x00507256    66ff4e58
                         push               edi                                                  // 0x0050725a    57
                         {disp8} mov        di, word ptr [esi + 0x58]                            // 0x0050725b    668b7e58
                         test               di, di                                               // 0x0050725f    6685ff
                         {disp8} je         _jmp_addr_0x005072ca                                 // 0x00507262    7466
                         xor.s              edx, edx                                             // 0x00507264    33d2
                         mov                eax, 0x000003e8                                      // 0x00507266    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x0050726b    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00507271    c744240c00000000
                         push               0x0                                                  // 0x00507279    6a00
                         push               0x0                                                  // 0x0050727b    6a00
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0050727d    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                               // 0x00507281    df6c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28664]                    // 0x00507285    d80d64168d00
                         call               _jmp_addr_0x007a1400                                 // 0x0050728b    e870a12900
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00507290    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x00507294    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                               // 0x0050729c    df6c2410
                         movsx              eax, di                                              // 0x005072a0    0fbfc7
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x005072a3    89442410
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x005072a7    d83d90a38a00
                         push               ecx                                                  // 0x005072ad    51
                         mov.s              ecx, esi                                             // 0x005072ae    8bce
                         {disp8} fimul      dword ptr [esp + 0x14]                               // 0x005072b0    da4c2414
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                          // 0x005072b4    d82d90a38a00
                         fstp               dword ptr [esp]                                      // 0x005072ba    d91c24
                         call               _jmp_addr_0x0047ab90                                 // 0x005072bd    e8ce38f7ff
                         pop                edi                                                  // 0x005072c2    5f
                         xor.s              eax, eax                                             // 0x005072c3    33c0
                         pop                esi                                                  // 0x005072c5    5e
                         add                esp, 0x0c                                            // 0x005072c6    83c40c
                         ret                                                                     // 0x005072c9    c3
_jmp_addr_0x005072ca:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x005072ca    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x005072d0    8b88b40f0000
                         add                eax, 0x00000fa8                                      // 0x005072d6    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005072db    8d0c49
                         shl                ecx, 5                                               // 0x005072de    c1e105
                         {disp8} lea        edx, dword ptr [ecx + eax * 0x1 + 0x3c]              // 0x005072e1    8d54013c
                         push               edx                                                  // 0x005072e5    52
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x005072e6    8d4c240c
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x005072ea    e871be0f00
                         push               0x0                                                  // 0x005072ef    6a00
                         push               0x1                                                  // 0x005072f1    6a01
                         push               0x1                                                  // 0x005072f3    6a01
                         push               0x0                                                  // 0x005072f5    6a00
                         push               0x0                                                  // 0x005072f7    6a00
                         push               0x2                                                  // 0x005072f9    6a02
                         push               0x0                                                  // 0x005072fb    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x005072fd    8d442424
                         push               0x26                                                 // 0x00507301    6a26
                         push               eax                                                  // 0x00507303    50
                         call               _jmp_addr_0x0071eb60                                 // 0x00507304    e857782100
                         add                esp, 0x24                                            // 0x00507309    83c424
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x0050730c    8d4c2408
                         push               ecx                                                  // 0x00507310    51
                         mov.s              ecx, esi                                             // 0x00507311    8bce
                         call               _jmp_addr_0x00479eb0                                 // 0x00507313    e8982bf7ff
                         xor.s              edx, edx                                             // 0x00507318    33d2
                         mov                eax, 0x000003e8                                      // 0x0050731a    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x0050731f    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00507325    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x0050732d    89442408
                         {disp8} fild       qword ptr [esp + 0x08]                               // 0x00507331    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28664]                    // 0x00507335    d80d64168d00
                         call               _jmp_addr_0x007a1400                                 // 0x0050733b    e8c0a02900
                         {disp8} mov        word ptr [esi + 0x58], ax                            // 0x00507340    66894658
                         pop                edi                                                  // 0x00507344    5f
                         mov                eax, 0x00000002                                      // 0x00507345    b802000000
                         pop                esi                                                  // 0x0050734a    5e
                         add                esp, 0x0c                                            // 0x0050734b    83c40c
                         ret                                                                     // 0x0050734e    c3
                         nop                                                                     // 0x0050734f    90
                         sub                esp, 0x08                                            // 0x00507350    83ec08
                         push               esi                                                  // 0x00507353    56
                         mov.s              esi, ecx                                             // 0x00507354    8bf1
                         dec                word ptr [esi + 0x58]                                // 0x00507356    66ff4e58
                         push               edi                                                  // 0x0050735a    57
                         {disp8} mov        di, word ptr [esi + 0x58]                            // 0x0050735b    668b7e58
                         test               di, di                                               // 0x0050735f    6685ff
                         push               0x0                                                  // 0x00507362    6a00
                         push               0x0                                                  // 0x00507364    6a00
                         {disp8} je         _jmp_addr_0x005073c4                                 // 0x00507366    745c
                         xor.s              edx, edx                                             // 0x00507368    33d2
                         mov                eax, 0x000003e8                                      // 0x0050736a    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x0050736f    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x00507375    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0050737d    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                               // 0x00507381    df6c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28664]                    // 0x00507385    d80d64168d00
                         call               _jmp_addr_0x007a1400                                 // 0x0050738b    e870a02900
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00507390    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x00507394    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                               // 0x0050739c    df6c2410
                         movsx              eax, di                                              // 0x005073a0    0fbfc7
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x005073a3    89442410
                         push               ecx                                                  // 0x005073a7    51
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x005073a8    d83d90a38a00
                         mov.s              ecx, esi                                             // 0x005073ae    8bce
                         {disp8} fimul      dword ptr [esp + 0x14]                               // 0x005073b0    da4c2414
                         fstp               dword ptr [esp]                                      // 0x005073b4    d91c24
                         call               _jmp_addr_0x0047ab90                                 // 0x005073b7    e8d437f7ff
                         pop                edi                                                  // 0x005073bc    5f
                         xor.s              eax, eax                                             // 0x005073bd    33c0
                         pop                esi                                                  // 0x005073bf    5e
                         add                esp, 0x08                                            // 0x005073c0    83c408
                         ret                                                                     // 0x005073c3    c3
_jmp_addr_0x005073c4:    push               0x0                                                  // 0x005073c4    6a00
                         mov.s              ecx, esi                                             // 0x005073c6    8bce
                         call               _jmp_addr_0x0047ab90                                 // 0x005073c8    e8c337f7ff
                         pop                edi                                                  // 0x005073cd    5f
                         mov                eax, 0x00000002                                      // 0x005073ce    b802000000
                         pop                esi                                                  // 0x005073d3    5e
                         add                esp, 0x08                                            // 0x005073d4    83c408
                         ret                                                                     // 0x005073d7    c3
                         nop                                                                     // 0x005073d8    90
                         nop                                                                     // 0x005073d9    90
                         nop                                                                     // 0x005073da    90
                         nop                                                                     // 0x005073db    90
                         nop                                                                     // 0x005073dc    90
                         nop                                                                     // 0x005073dd    90
                         nop                                                                     // 0x005073de    90
                         nop                                                                     // 0x005073df    90
                         sub                esp, 0x30                                            // 0x005073e0    83ec30
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x005073e3    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000f4c]                    // 0x005073e9    8b904c0f0000
                         add                eax, 0x00000f48                                      // 0x005073ef    05480f0000
                         {disp8} mov        dword ptr [esp + 0x04], edx                          // 0x005073f4    89542404
                         {disp8} mov        dword ptr [esp + 0x00], 0x008a9a44                   // 0x005073f8    c7442400449a8a00
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x00507400    8b5008
                         {disp8} mov        dword ptr [esp + 0x08], edx                          // 0x00507403    89542408
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                          // 0x00507407    8b500c
                         {disp8} mov        dword ptr [esp + 0x0c], edx                          // 0x0050740a    8954240c
                         {disp8} mov        edx, dword ptr [eax + 0x10]                          // 0x0050740e    8b5010
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x00507411    89542410
                         {disp8} mov        edx, dword ptr [eax + 0x14]                          // 0x00507415    8b5014
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x00507418    89542414
                         {disp8} mov        edx, dword ptr [eax + 0x18]                          // 0x0050741c    8b5018
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x0050741f    89542418
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                          // 0x00507423    8b501c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x00507426    8954241c
                         {disp8} mov        edx, dword ptr [eax + 0x20]                          // 0x0050742a    8b5020
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x0050742d    89542420
                         {disp8} mov        edx, dword ptr [eax + 0x24]                          // 0x00507431    8b5024
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x00507434    89542424
                         {disp8} mov        edx, dword ptr [eax + 0x28]                          // 0x00507438    8b5028
                         push               0x1                                                  // 0x0050743b    6a01
                         {disp8} mov        dword ptr [esp + 0x2c], edx                          // 0x0050743d    8954242c
                         {disp8} mov        eax, dword ptr [eax + 0x2c]                          // 0x00507441    8b402c
                         push               0x0                                                  // 0x00507444    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x00507446    8d542408
                         push               edx                                                  // 0x0050744a    52
                         {disp8} mov        dword ptr [esp + 0x38], eax                          // 0x0050744b    89442438
                         {disp8} mov        dword ptr [esp + 0x0c], 0x008cc7cc                   // 0x0050744f    c744240cccc78c00
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                                 // 0x00507457    e854d0fbff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                          // 0x0050745c    8d4c2400
                         call               _jmp_addr_0x004f12d0                                 // 0x00507460    e86b9efeff
                         xor.s              eax, eax                                             // 0x00507465    33c0
                         add                esp, 0x30                                            // 0x00507467    83c430
                         ret                                                                     // 0x0050746a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050746b    e809a4efff
                         call               _jmp_addr_0x00475d30                                 // 0x00507470    e8bbe8f6ff
                         mov                eax, 0x00000002                                      // 0x00507475    b802000000
                         ret                                                                     // 0x0050747a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x0050747b    e8f9a3efff
                         sub                esp, 0x1c                                            // 0x00507480    83ec1c
                         push               ebx                                                  // 0x00507483    53
                         push               esi                                                  // 0x00507484    56
                         mov.s              esi, ecx                                             // 0x00507485    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x00507487    8b8664010000
                         {disp32} mov       ebx, dword ptr [eax + 0x00001be8]                    // 0x0050748d    8b98e81b0000
                         test               ebx, ebx                                             // 0x00507493    85db
                         {disp32} je        _jmp_addr_0x00507582                                 // 0x00507495    0f84e7000000
                         {disp32} mov       eax, dword ptr [ebx + 0x000010a0]                    // 0x0050749b    8b83a0100000
                         test               eax, eax                                             // 0x005074a1    85c0
                         {disp32} jne       _jmp_addr_0x00507582                                 // 0x005074a3    0f85d9000000
                         push               edi                                                  // 0x005074a9    57
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x005074aa    e8a103f7ff
                         mov.s              edi, eax                                             // 0x005074af    8bf8
                         mov.s              ecx, ebx                                             // 0x005074b1    8bcb
                         add                edi, 0x78                                            // 0x005074b3    83c778
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x005074b6    e89503f7ff
                         {disp8} fld        dword ptr [eax + 0x78]                               // 0x005074bb    d94078
                         fadd               dword ptr [edi]                                      // 0x005074be    d807
                         add                eax, 0x78                                            // 0x005074c0    83c078
                         {disp8} fld        dword ptr [eax + 0x08]                               // 0x005074c3    d94008
                         {disp8} fadd       dword ptr [edi + 0x08]                               // 0x005074c6    d84708
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005074c9    d95c2424
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005074cd    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x005074d3    d9442424
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x005074d7    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x005074dd    d95c2424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x005074e1    d80d00c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x005074e7    e8149f2900
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x005074ec    d9442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x005074f0    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x005074f6    89442410
                         call               _jmp_addr_0x007a1400                                 // 0x005074fa    e8019f2900
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                          // 0x005074ff    8b4e28
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00507502    89442414
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x00507506    8b8660010000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x0050750c    c744241800000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000258]                    // 0x00507514    8b9158020000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x0050751a    8b4858
                         push               edx                                                  // 0x0050751d    52
                         call               _jmp_addr_0x0047fa20                                 // 0x0050751e    e8fd84f7ff
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                          // 0x00507523    8b4e28
                         {disp32} mov       edx, dword ptr [ecx + 0x00000258]                    // 0x00507526    8b9158020000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000160]                    // 0x0050752c    8b8360010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                          // 0x00507532    8b4858
                         push               edx                                                  // 0x00507535    52
                         call               _jmp_addr_0x0047fa20                                 // 0x00507536    e8e584f7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]                    // 0x0050753b    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                          // 0x00507541    8b5158
                         {disp32} mov       eax, dword ptr [edx + 0x00005198]                    // 0x00507544    8b8298510000
                         {disp32} fld       dword ptr [eax + 0x0006403c]                         // 0x0050754a    d9803c400600
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x00507550    8d542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]                     // 0x00507554    d80d14b48a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x0050755a    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x0050755e    8b4c240c
                         push               ecx                                                  // 0x00507562    51
                         push               ebx                                                  // 0x00507563    53
                         push               esi                                                  // 0x00507564    56
                         push               edx                                                  // 0x00507565    52
                         call               _jmp_addr_0x00424e70                                 // 0x00507566    e805d9f1ff
                         add                esp, 0x10                                            // 0x0050756b    83c410
                         test               eax, eax                                             // 0x0050756e    85c0
                         {disp32} mov       dword ptr [esi + 0x000010a0], eax                    // 0x00507570    8986a0100000
                         pop                edi                                                  // 0x00507576    5f
                         {disp8} je         _jmp_addr_0x0050758d                                 // 0x00507577    7414
                         push               ebx                                                  // 0x00507579    53
                         push               esi                                                  // 0x0050757a    56
                         mov.s              ecx, eax                                             // 0x0050757b    8bc8
                         call               _jmp_addr_0x00424ab0                                 // 0x0050757d    e82ed5f1ff
_jmp_addr_0x00507582:    pop                esi                                                  // 0x00507582    5e
                         mov                eax, 0x00000002                                      // 0x00507583    b802000000
                         pop                ebx                                                  // 0x00507588    5b
                         add                esp, 0x1c                                            // 0x00507589    83c41c
                         ret                                                                     // 0x0050758c    c3
_jmp_addr_0x0050758d:    pop                esi                                                  // 0x0050758d    5e
                         mov                eax, 0x00000001                                      // 0x0050758e    b801000000
                         pop                ebx                                                  // 0x00507593    5b
                         add                esp, 0x1c                                            // 0x00507594    83c41c
                         ret                                                                     // 0x00507597    c3
                         nop                                                                     // 0x00507598    90
                         nop                                                                     // 0x00507599    90
                         nop                                                                     // 0x0050759a    90
                         nop                                                                     // 0x0050759b    90
                         nop                                                                     // 0x0050759c    90
                         nop                                                                     // 0x0050759d    90
                         nop                                                                     // 0x0050759e    90
                         nop                                                                     // 0x0050759f    90
                         sub                esp, 0x18                                            // 0x005075a0    83ec18
                         push               esi                                                  // 0x005075a3    56
                         push               edi                                                  // 0x005075a4    57
                         mov.s              edi, ecx                                             // 0x005075a5    8bf9
                         {disp32} mov       esi, dword ptr [edi + 0x000010a0]                    // 0x005075a7    8bb7a0100000
                         test               esi, esi                                             // 0x005075ad    85f6
                         {disp8} je         _jmp_addr_0x005075bb                                 // 0x005075af    740a
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f800000                   // 0x005075b1    c74424080000803f
                         {disp8} jmp        _jmp_addr_0x005075d5                                 // 0x005075b9    eb1a
_jmp_addr_0x005075bb:    {disp32} mov       eax, dword ptr [edi + 0x00000164]                    // 0x005075bb    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001be8]                    // 0x005075c1    8b88e81b0000
                         {disp32} mov       esi, dword ptr [ecx + 0x000010a0]                    // 0x005075c7    8bb1a0100000
                         {disp8} mov        dword ptr [esp + 0x08], 0xbf800000                   // 0x005075cd    c7442408000080bf
_jmp_addr_0x005075d5:    mov.s              ecx, edi                                             // 0x005075d5    8bcf
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x005075d7    e87402f7ff
                         {disp32} fld       dword ptr [eax + 0x00000090]                         // 0x005075dc    d98090000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x005075e2    d80d402c8c00
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                          // 0x005075e8    8b561c
                         add                esi, 0x14                                            // 0x005075eb    83c614
                         mov.s              ecx, esi                                             // 0x005075ee    8bce
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x005075f0    d95c240c
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x005075f4    89542410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005075f8    e893ba2f00
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x005075fd    d8442410
                         push               0x0                                                  // 0x00507601    6a00
                         push               ecx                                                  // 0x00507603    51
                         {disp8} fst        dword ptr [esp + 0x20]                               // 0x00507604    d9542420
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x00507608    8d44241c
                         fild               dword ptr [esi]                                      // 0x0050760c    db06
                         mov.s              ecx, edi                                             // 0x0050760e    8bcf
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00507610    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00507616    d95c241c
                         {disp8} fild       dword ptr [esi + 0x04]                               // 0x0050761a    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x0050761d    d80da4a38a00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00507623    d9442414
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00507627    d84c2410
                         {disp8} fadd       dword ptr [esp + 0x1c]                               // 0x0050762b    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0050762f    d95c241c
                         fxch               st(1)                                                // 0x00507633    d9c9
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00507635    d95c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00507639    d95c2424
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0050763d    d9442414
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x00507641    d80d4cb28a00
                         fstp               dword ptr [esp]                                      // 0x00507647    d91c24
                         push               eax                                                  // 0x0050764a    50
                         push               0x0                                                  // 0x0050764b    6a00
                         call               _jmp_addr_0x0047a880                                 // 0x0050764d    e82e32f7ff
                         cmp                eax, 0x04                                            // 0x00507652    83f804
                         {disp8} ja         _jmp_addr_0x0050766e                                 // 0x00507655    7717
                         jmp                dword ptr [eax*4 + 0x50768c]                         // 0x00507657    ff24858c765000
                         push               0x1                                                  // 0x0050765e    6a01
                         push               0x1                                                  // 0x00507660    6a01
                         push               0x00be6540                                           // 0x00507662    684065be00
                         mov.s              ecx, edi                                             // 0x00507667    8bcf
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z    // 0x00507669    e8c2e0f6ff
_jmp_addr_0x0050766e:    pop                edi                                                  // 0x0050766e    5f
                         mov                eax, 0x00000001                                      // 0x0050766f    b801000000
                         pop                esi                                                  // 0x00507674    5e
                         add                esp, 0x18                                            // 0x00507675    83c418
                         ret                                                                     // 0x00507678    c3
                         pop                edi                                                  // 0x00507679    5f
                         xor.s              eax, eax                                             // 0x0050767a    33c0
                         pop                esi                                                  // 0x0050767c    5e
                         add                esp, 0x18                                            // 0x0050767d    83c418
                         ret                                                                     // 0x00507680    c3
                         pop                edi                                                  // 0x00507681    5f
                         mov                eax, 0x00000002                                      // 0x00507682    b802000000
                         pop                esi                                                  // 0x00507687    5e
                         add                esp, 0x18                                            // 0x00507688    83c418
                         ret                                                                     // 0x0050768b    c3

// Snippet: jmptbl, [0x0050768c, 0x005076a0)
.byte 0x5e, 0x76, 0x50, 0x00      // 0x0050768c
.byte 0x79, 0x76, 0x50, 0x00      // 0x00507690
.byte 0x5e, 0x76, 0x50, 0x00      // 0x00507694
.byte 0x81, 0x76, 0x50, 0x00      // 0x00507698
.byte 0x81, 0x76, 0x50, 0x00      // 0x0050769c

