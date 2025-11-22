.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004146f0
.extern ?__nw@Base@@SAPAXK@Z
.extern ?GetWoodValue@BuildingSite@@QAEMXZ
.extern @BuildBy__12BuildingSiteFf@12
.extern _jmp_addr_0x00477210
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x00479eb0
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047ab90
.extern _jmp_addr_0x0047cda0
.extern _jmp_addr_0x0047d640
.extern _jmp_addr_0x0047d740
.extern _jmp_addr_0x00480ac0
.extern _jmp_addr_0x00480c00
.extern @GetBonePos__12LH3DCreatureFl@12
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x004842e0
.extern _jmp_addr_0x00484310
.extern _jmp_addr_0x00484360
.extern _jmp_addr_0x004848c0
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x00484e20
.extern _jmp_addr_0x004c43a0
.extern ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern _jmp_addr_0x004d7b80
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004dc5b0
.extern _jmp_addr_0x004dfbe0
.extern _jmp_addr_0x004f00e0
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f4b60
.extern ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern _jmp_addr_0x004ff5c0
.extern _jmp_addr_0x00500540
.extern @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32
.extern _jmp_addr_0x005575e0
.extern ??0GameThing@@QAE@XZ
.extern @GetNearestTown__9MapCoordsCFf@12
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x00618c40
.extern _jmp_addr_0x0063e370
.extern _jmp_addr_0x0063e3a0
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x0066cf10
.extern _jmp_addr_0x006755b0
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern _jmp_addr_0x006e7560
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x0072a2f0
.extern _jmp_addr_0x0073d500
.extern _jmp_addr_0x0073d5a0
.extern _jmp_addr_0x0074cd50
.extern _jmp_addr_0x0074cde0
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern ___nw__FUl
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x00841170

.globl _globl_ct_0x00508e40
.globl _globl_ct_0x00508e70
.globl _globl_ct_0x00508ea0
.globl _globl_ct_0x00508f90
.globl _globl_ct_0x00508fc0
.globl _globl_ct_0x00508ff0

start_0x005076a0_0x00509480:
// Snippet: asm, [0x005076a0, 0x00509465)
                         push               esi                                           // 0x005076a0    56
                         mov.s              esi, ecx                                      // 0x005076a1    8bf1
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x005076a3    e8a801f7ff
                         mov.s              ecx, eax                                      // 0x005076a8    8bc8
                         call               _jmp_addr_0x00484e20                          // 0x005076aa    e871d7f7ff
                         mov                eax, dword ptr [esi]                          // 0x005076af    8b06
                         push               0x3ecccccd                                    // 0x005076b1    68cdcccc3e
                         mov.s              ecx, esi                                      // 0x005076b6    8bce
                         {disp32} mov       dword ptr [esi + 0x00000384], 0x00000000      // 0x005076b8    c7868403000000000000
                         call               dword ptr [eax + 0x5b0]                       // 0x005076c2    ff90b0050000
                         mov                eax, 0x00000002                               // 0x005076c8    b802000000
                         pop                esi                                           // 0x005076cd    5e
                         ret                                                              // 0x005076ce    c3
                         nop                                                              // 0x005076cf    90
                         push               esi                                           // 0x005076d0    56
                         mov.s              esi, ecx                                      // 0x005076d1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x005076d3    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005076d9    8b4858
                         push               0x6d                                          // 0x005076dc    6a6d
                         call               _jmp_addr_0x00484b00                          // 0x005076de    e81dd4f7ff
                         test               eax, eax                                      // 0x005076e3    85c0
                         {disp8} je         _jmp_addr_0x0050775c                          // 0x005076e5    7475
                         {disp32} mov       ecx, dword ptr [esi + 0x00001088]             // 0x005076e7    8b8e88100000
                         test               ecx, ecx                                      // 0x005076ed    85c9
                         {disp8} je         _jmp_addr_0x005076f6                          // 0x005076ef    7405
                         call               _jmp_addr_0x0063e370                          // 0x005076f1    e87a6c1300
_jmp_addr_0x005076f6:    push               0x0                                           // 0x005076f6    6a00
                         push               0x46                                          // 0x005076f8    6a46
                         push               0x3f800000                                    // 0x005076fa    680000803f
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005076ff    8d4e14
                         push               0x29                                          // 0x00507702    6a29
                         push               ecx                                           // 0x00507704    51
                         call               _jmp_addr_0x0063e580                          // 0x00507705    e8766e1300
                         add                esp, 0x14                                     // 0x0050770a    83c414
                         test               eax, eax                                      // 0x0050770d    85c0
                         {disp32} mov       dword ptr [esi + 0x00001088], eax             // 0x0050770f    898688100000
                         {disp8} je         _jmp_addr_0x00507755                          // 0x00507715    743e
                         mov                edx, dword ptr [esi]                          // 0x00507717    8b16
                         mov.s              ecx, esi                                      // 0x00507719    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0050771b    ff521c
                         test               eax, eax                                      // 0x0050771e    85c0
                         {disp8} je         _jmp_addr_0x0050772b                          // 0x00507720    7409
                         mov                eax, dword ptr [esi]                          // 0x00507722    8b06
                         mov.s              ecx, esi                                      // 0x00507724    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00507726    ff501c
                         {disp8} jmp        _jmp_addr_0x00507749                          // 0x00507729    eb1e
_jmp_addr_0x0050772b:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0050772b    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00507731    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00507733    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00507739    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0050773c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0050773f    8d0450
                         shl                eax, 5                                        // 0x00507742    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00507745    8d440818
_jmp_addr_0x00507749:    {disp32} mov       ecx, dword ptr [esi + 0x00001088]             // 0x00507749    8b8e88100000
                         mov                edx, dword ptr [ecx]                          // 0x0050774f    8b11
                         push               eax                                           // 0x00507751    50
                         call               dword ptr [edx + 0x20]                        // 0x00507752    ff5220
_jmp_addr_0x00507755:    mov                eax, 0x00000002                               // 0x00507755    b802000000
                         pop                esi                                           // 0x0050775a    5e
                         ret                                                              // 0x0050775b    c3
_jmp_addr_0x0050775c:    xor.s              eax, eax                                      // 0x0050775c    33c0
                         pop                esi                                           // 0x0050775e    5e
                         ret                                                              // 0x0050775f    c3
                         sub                esp, 0x34                                     // 0x00507760    83ec34
                         push               edi                                           // 0x00507763    57
                         mov.s              edi, ecx                                      // 0x00507764    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00507766    8b8764010000
                         {disp32} fld       dword ptr [eax + 0x00001c94]                  // 0x0050776c    d980941c0000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]             // 0x00507772    8b8f60010000
                         {disp8} fsub       dword ptr [ecx + 0x6c]                        // 0x00507778    d8616c
                         {disp32} mov       edx, dword ptr [edi + 0x00000168]             // 0x0050777b    8b9768010000
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x00507781    d94208
                         {disp32} fsubr     dword ptr [eax + 0x00001c98]                  // 0x00507784    d8a8981c0000
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0050778a    d95c2404
                         fld                st(0)                                         // 0x0050778e    d9c0
                         fabs                                                             // 0x00507790    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]             // 0x00507792    dc1d107a8c00
                         fnstsw             ax                                            // 0x00507798    dfe0
                         test               ah, 0x01                                      // 0x0050779a    f6c401
                         {disp8} je         _jmp_addr_0x005077be                          // 0x0050779d    741f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0050779f    d9442404
                         fabs                                                             // 0x005077a3    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]             // 0x005077a5    dc1d107a8c00
                         fnstsw             ax                                            // 0x005077ab    dfe0
                         test               ah, 0x01                                      // 0x005077ad    f6c401
                         {disp8} je         _jmp_addr_0x005077be                          // 0x005077b0    740c
                         fstp               st(0)                                         // 0x005077b2    ddd8
                         mov                eax, 0x00000002                               // 0x005077b4    b802000000
                         pop                edi                                           // 0x005077b9    5f
                         add                esp, 0x34                                     // 0x005077ba    83c434
                         ret                                                              // 0x005077bd    c3
_jmp_addr_0x005077be:    {disp32} fmul      dword ptr [rdata_bytes + 0x28694]             // 0x005077be    d80d94168d00
                         push               esi                                           // 0x005077c4    56
                         {disp8} fadd       dword ptr [ecx + 0x6c]                        // 0x005077c5    d8416c
                         {disp8} fstp       dword ptr [ecx + 0x6c]                        // 0x005077c8    d9596c
                         {disp32} mov       ecx, dword ptr [edi + 0x00000168]             // 0x005077cb    8b8f68010000
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x005077d1    d94108
                         push               ecx                                           // 0x005077d4    51
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005077d5    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28694]             // 0x005077d9    d80d94168d00
                         faddp              st(1), st                                     // 0x005077df    dec1
                         fstp               dword ptr [esp]                               // 0x005077e1    d91c24
                         call               _jmp_addr_0x004146f0                          // 0x005077e4    e807cff0ff
                         mov.s              ecx, edi                                      // 0x005077e9    8bcf
                         call               _jmp_addr_0x00477210                          // 0x005077eb    e820faf6ff
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]             // 0x005077f0    8b8760010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005077f6    8b4858
                         call               _jmp_addr_0x00618c40                          // 0x005077f9    e842141100
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x005077fe    8b8f64010000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000f58]             // 0x00507804    8b91580f0000
                         {disp8} mov        eax, dword ptr [edx + 0x30]                   // 0x0050780a    8b4230
                         push               0x0                                           // 0x0050780d    6a00
                         push               0x009c8060                                    // 0x0050780f    6860809c00
                         push               0x009c7f30                                    // 0x00507814    68307f9c00
                         push               0x0                                           // 0x00507819    6a00
                         push               eax                                           // 0x0050781b    50
                         call               ___RTDynamicCast                              // 0x0050781c    e8f8e12b00
                         mov.s              ecx, eax                                      // 0x00507821    8bc8
                         add                esp, 0x14                                     // 0x00507823    83c414
                         test               ecx, ecx                                      // 0x00507826    85c9
                         {disp32} je        _jmp_addr_0x00507a81                          // 0x00507828    0f8453020000
                         {disp32} mov       eax, dword ptr [edi + 0x00001088]             // 0x0050782e    8b8788100000
                         test               eax, eax                                      // 0x00507834    85c0
                         {disp32} je        _jmp_addr_0x00507a81                          // 0x00507836    0f8445020000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0050783c    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]             // 0x00507841    8b80405a2000
                         xor.s              edx, edx                                      // 0x00507847    33d2
                         mov                esi, 0x00000003                               // 0x00507849    be03000000
                         div                esi                                           // 0x0050784e    f7f6
                         test               edx, edx                                      // 0x00507850    85d2
                         {disp32} jne       _jmp_addr_0x00507a81                          // 0x00507852    0f8529020000
                         {disp32} mov       edx, dword ptr [edi + 0x00000160]             // 0x00507858    8b9760010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x0050785e    8b8160010000
                         {disp8} mov        esi, dword ptr [edx + 0x58]                   // 0x00507864    8b7258
                         push               ebx                                           // 0x00507867    53
                         {disp8} mov        ebx, dword ptr [eax + 0x58]                   // 0x00507868    8b5858
                         {disp32} mov       eax, dword ptr [esi + 0x000047b8]             // 0x0050786b    8b86b8470000
                         push               0x000011d9                                    // 0x00507871    68d9110000
                         push               0x00be6588                                    // 0x00507876    688865be00
                         push               eax                                           // 0x0050787b    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0050787c    e88f6c1d00
                         add                esp, 0x0c                                     // 0x00507881    83c40c
                         push               eax                                           // 0x00507884    50
                         mov.s              ecx, esi                                      // 0x00507885    8bce
                         call               @GetBonePos__12LH3DCreatureFl@12              // 0x00507887    e8649bf7ff
                         mov                ecx, dword ptr [eax]                          // 0x0050788c    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0050788e    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00507891    8b4008
                         push               0x000011db                                    // 0x00507894    68db110000
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00507899    89442434
                         {disp32} mov       eax, dword ptr [ebx + 0x000047b8]             // 0x0050789d    8b83b8470000
                         push               0x00be6588                                    // 0x005078a3    688865be00
                         push               eax                                           // 0x005078a8    50
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x005078a9    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x005078ad    89542438
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x005078b1    e85a6c1d00
                         add                esp, 0x0c                                     // 0x005078b6    83c40c
                         push               eax                                           // 0x005078b9    50
                         mov.s              ecx, ebx                                      // 0x005078ba    8bcb
                         call               @GetBonePos__12LH3DCreatureFl@12              // 0x005078bc    e82f9bf7ff
                         mov                ecx, dword ptr [eax]                          // 0x005078c1    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005078c3    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005078c6    8b4008
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x005078c9    894c2434
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005078cd    d9442434
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x005078d1    d8642428
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x005078d5    89542438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005078d9    8944243c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005078dd    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005078e1    d9442438
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x005078e5    d864242c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005078e9    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x005078ed    d944243c
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x005078f1    d8642430
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x005078f5    d9542424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x005078f9    d84c2424
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005078fd    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00507901    d84c2420
                         faddp              st(1), st                                     // 0x00507905    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00507907    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0050790b    d84c241c
                         faddp              st(1), st                                     // 0x0050790f    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x00507911    d81d18f58b00
                         fnstsw             ax                                            // 0x00507917    dfe0
                         test               ah, 0x01                                      // 0x00507919    f6c401
                         {disp8} je         _jmp_addr_0x0050794e                          // 0x0050791c    7430
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0050791e    c744241000000000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00507926    8b4c2410
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000            // 0x0050792a    c74424140000803f
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00507932    8b542414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00507936    c744241800000000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0050793e    8b442418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00507942    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00507946    89542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0050794a    89442424
_jmp_addr_0x0050794e:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x0050794e    d9442424
                         push               ecx                                           // 0x00507952    51
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00507953    d9442424
                         fld                st(0)                                         // 0x00507957    d9c0
                         fmul               st, st(1)                                     // 0x00507959    d8c9
                         fld                st(2)                                         // 0x0050795b    d9c2
                         fmul               st, st(3)                                     // 0x0050795d    d8cb
                         faddp              st(1), st                                     // 0x0050795f    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00507961    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00507965    d84c2420
                         faddp              st(1), st                                     // 0x00507969    dec1
                         fstp               dword ptr [esp]                               // 0x0050796b    d91c24
                         fstp               st(0)                                         // 0x0050796e    ddd8
                         fstp               st(0)                                         // 0x00507970    ddd8
                         call               _jmp_addr_0x00841170                          // 0x00507972    e8f9973300
                         fld                st(0)                                         // 0x00507977    d9c0
                         push               0x000011ec                                    // 0x00507979    68ec110000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0050797e    d84c2424
                         push               0x00be6588                                    // 0x00507982    688865be00
                         push               0x50                                          // 0x00507987    6a50
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00507989    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0050798d    d9442430
                         fmul               st, st(1)                                     // 0x00507991    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00507993    d95c2430
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00507997    d9442434
                         fmul               st, st(1)                                     // 0x0050799b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0050799d    d95c2434
                         fstp               st(0)                                         // 0x005079a1    ddd8
                         call               _jmp_addr_0x006755b0                          // 0x005079a3    e808dc1600
                         mov.s              esi, eax                                      // 0x005079a8    8bf0
                         add                esp, 0x10                                     // 0x005079aa    83c410
                         test               esi, esi                                      // 0x005079ad    85f6
                         {disp32} je        _jmp_addr_0x00507a72                          // 0x005079af    0f84bd000000
                         {disp32} fld       dword ptr [data_bytes + 0x22053c]             // 0x005079b5    d9053c65be00
                         push               0x000011ec                                    // 0x005079bb    68ec110000
                         {disp32} fsub      dword ptr [data_bytes + 0x220538]             // 0x005079c0    d8253865be00
                         push               0x00be6588                                    // 0x005079c6    688865be00
                         call               _jmp_addr_0x007a1400                          // 0x005079cb    e8309a2900
                         push               eax                                           // 0x005079d0    50
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x005079d1    e83a6b1d00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005079d6    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x005079da    c744242000000000
                         {disp8} fild       qword ptr [esp + 0x1c]                        // 0x005079e2    df6c241c
                         add                esp, 0x0c                                     // 0x005079e6    83c40c
                         {disp32} fadd      dword ptr [data_bytes + 0x220538]             // 0x005079e9    d8053865be00
                         call               _jmp_addr_0x007a1400                          // 0x005079ef    e80c9a2900
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x220534]        // 0x005079f4    8b0d3465be00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x220530]        // 0x005079fa    8b153065be00
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00507a00    894c2410
                         mov.s              ecx, esi                                      // 0x00507a04    8bce
                         mov.s              bl, al                                        // 0x00507a06    8ad8
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00507a08    8954240c
                         call               ??0GameThing@@QAE@XZ                          // 0x00507a0c    e8ff7f0600
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00507a11    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00507a15    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00507a19    8b542430
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00507a1d    894614
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00507a20    8b442434
                         {disp8} mov        dword ptr [esi + 0x18], ecx                   // 0x00507a24    894e18
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00507a27    8b4c2438
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x00507a2b    89561c
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00507a2e    8b54243c
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x00507a32    894620
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00507a35    8b44241c
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x00507a39    894e24
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00507a3c    8b4c2420
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x00507a40    895628
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00507a43    8b542424
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x00507a47    89462c
                         {disp8} mov        dword ptr [esi + 0x30], ecx                   // 0x00507a4a    894e30
                         {disp8} mov        dword ptr [esi + 0x34], edx                   // 0x00507a4d    895634
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x00507a50    894638
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00507a53    8b44240c
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                   // 0x00507a57    894e3c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00507a5a    8b4c2410
                         {disp8} mov        dword ptr [esi + 0x40], edx                   // 0x00507a5e    895640
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x00507a61    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx                   // 0x00507a64    894e48
                         {disp8} mov        byte ptr [esi + 0x4c], bl                     // 0x00507a67    885e4c
                         mov                dword ptr [esi], 0x008c9b34                   // 0x00507a6a    c706349b8c00
                         {disp8} jmp        _jmp_addr_0x00507a74                          // 0x00507a70    eb02
_jmp_addr_0x00507a72:    xor.s              esi, esi                                      // 0x00507a72    33f6
_jmp_addr_0x00507a74:    {disp32} mov       ecx, dword ptr [edi + 0x00001088]             // 0x00507a74    8b8f88100000
                         push               esi                                           // 0x00507a7a    56
                         call               _jmp_addr_0x0063e3a0                          // 0x00507a7b    e820691300
                         pop                ebx                                           // 0x00507a80    5b
_jmp_addr_0x00507a81:    pop                esi                                           // 0x00507a81    5e
                         xor.s              eax, eax                                      // 0x00507a82    33c0
                         pop                edi                                           // 0x00507a84    5f
                         add                esp, 0x34                                     // 0x00507a85    83c434
                         ret                                                              // 0x00507a88    c3
                         nop                                                              // 0x00507a89    90
                         nop                                                              // 0x00507a8a    90
                         nop                                                              // 0x00507a8b    90
                         nop                                                              // 0x00507a8c    90
                         nop                                                              // 0x00507a8d    90
                         nop                                                              // 0x00507a8e    90
                         nop                                                              // 0x00507a8f    90
                         mov                eax, 0x00000002                               // 0x00507a90    b802000000
                         ret                                                              // 0x00507a95    c3
                         nop                                                              // 0x00507a96    90
                         nop                                                              // 0x00507a97    90
                         nop                                                              // 0x00507a98    90
                         nop                                                              // 0x00507a99    90
                         nop                                                              // 0x00507a9a    90
                         nop                                                              // 0x00507a9b    90
                         nop                                                              // 0x00507a9c    90
                         nop                                                              // 0x00507a9d    90
                         nop                                                              // 0x00507a9e    90
                         nop                                                              // 0x00507a9f    90
                         mov                eax, 0x00000001                               // 0x00507aa0    b801000000
                         ret                                                              // 0x00507aa5    c3
                         nop                                                              // 0x00507aa6    90
                         nop                                                              // 0x00507aa7    90
                         nop                                                              // 0x00507aa8    90
                         nop                                                              // 0x00507aa9    90
                         nop                                                              // 0x00507aaa    90
                         nop                                                              // 0x00507aab    90
                         nop                                                              // 0x00507aac    90
                         nop                                                              // 0x00507aad    90
                         nop                                                              // 0x00507aae    90
                         nop                                                              // 0x00507aaf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00507ab0    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507ab6    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00507abc    05a80f0000
                         push               0x0                                           // 0x00507ac1    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507ac3    8d0c49
                         push               0x009c7f50                                    // 0x00507ac6    68507f9c00
                         shl                ecx, 5                                        // 0x00507acb    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00507ace    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                   // 0x00507ad2    8b4230
                         push               0x009c7f30                                    // 0x00507ad5    68307f9c00
                         push               0x0                                           // 0x00507ada    6a00
                         push               eax                                           // 0x00507adc    50
                         call               ___RTDynamicCast                              // 0x00507add    e837df2b00
                         add                esp, 0x14                                     // 0x00507ae2    83c414
                         test               eax, eax                                      // 0x00507ae5    85c0
                         {disp8} je         _jmp_addr_0x00507afb                          // 0x00507ae7    7412
                         mov                edx, dword ptr [eax]                          // 0x00507ae9    8b10
                         mov.s              ecx, eax                                      // 0x00507aeb    8bc8
                         call               dword ptr [edx + 0x178]                       // 0x00507aed    ff9278010000
                         neg                eax                                           // 0x00507af3    f7d8
                         sbb.s              eax, eax                                      // 0x00507af5    1bc0
                         and                eax, 0x02                                     // 0x00507af7    83e002
                         ret                                                              // 0x00507afa    c3
_jmp_addr_0x00507afb:    mov                eax, 0x00000001                               // 0x00507afb    b801000000
                         ret                                                              // 0x00507b00    c3
                         nop                                                              // 0x00507b01    90
                         nop                                                              // 0x00507b02    90
                         nop                                                              // 0x00507b03    90
                         nop                                                              // 0x00507b04    90
                         nop                                                              // 0x00507b05    90
                         nop                                                              // 0x00507b06    90
                         nop                                                              // 0x00507b07    90
                         nop                                                              // 0x00507b08    90
                         nop                                                              // 0x00507b09    90
                         nop                                                              // 0x00507b0a    90
                         nop                                                              // 0x00507b0b    90
                         nop                                                              // 0x00507b0c    90
                         nop                                                              // 0x00507b0d    90
                         nop                                                              // 0x00507b0e    90
                         nop                                                              // 0x00507b0f    90
                         sub                esp, 0x0c                                     // 0x00507b10    83ec0c
                         xor.s              eax, eax                                      // 0x00507b13    33c0
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00507b15    89442400
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00507b19    89442404
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00507b1d    89442408
                         push               esi                                           // 0x00507b21    56
                         mov.s              esi, ecx                                      // 0x00507b22    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507b24    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507b2a    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00507b30    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507b35    8d0c49
                         shl                ecx, 5                                        // 0x00507b38    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x3c]            // 0x00507b3b    d944013c
                         push               edi                                           // 0x00507b3f    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00507b40    d80d00c48a00
                         {disp8} lea        edi, dword ptr [ecx + eax * 0x1 + 0x3c]       // 0x00507b46    8d7c013c
                         call               _jmp_addr_0x007a1400                          // 0x00507b4a    e8b1982900
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00507b4f    89442408
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x00507b53    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00507b56    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00507b5c    e89f982900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00507b61    8d542408
                         push               edx                                           // 0x00507b65    52
                         mov.s              ecx, esi                                      // 0x00507b66    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00507b68    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00507b6c    c744241400000000
                         call               _jmp_addr_0x00479eb0                          // 0x00507b74    e83723f7ff
                         pop                edi                                           // 0x00507b79    5f
                         mov                eax, 0x00000002                               // 0x00507b7a    b802000000
                         pop                esi                                           // 0x00507b7f    5e
                         add                esp, 0x0c                                     // 0x00507b80    83c40c
                         ret                                                              // 0x00507b83    c3
                         nop                                                              // 0x00507b84    90
                         nop                                                              // 0x00507b85    90
                         nop                                                              // 0x00507b86    90
                         nop                                                              // 0x00507b87    90
                         nop                                                              // 0x00507b88    90
                         nop                                                              // 0x00507b89    90
                         nop                                                              // 0x00507b8a    90
                         nop                                                              // 0x00507b8b    90
                         nop                                                              // 0x00507b8c    90
                         nop                                                              // 0x00507b8d    90
                         nop                                                              // 0x00507b8e    90
                         nop                                                              // 0x00507b8f    90
                         push               esi                                           // 0x00507b90    56
                         mov.s              esi, ecx                                      // 0x00507b91    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00507b93    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00507b99    8b4828
                         test               ecx, ecx                                      // 0x00507b9c    85c9
                         {disp8} je         _jmp_addr_0x00507bb9                          // 0x00507b9e    7419
                         mov                edx, dword ptr [ecx]                          // 0x00507ba0    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x00507ba2    ff522c
                         test               eax, eax                                      // 0x00507ba5    85c0
                         {disp8} je         _jmp_addr_0x00507bb9                          // 0x00507ba7    7410
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00507ba9    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00507baf    8b4828
                         mov                edx, dword ptr [ecx]                          // 0x00507bb2    8b11
                         push               0x0                                           // 0x00507bb4    6a00
                         call               dword ptr [edx + 0xc]                         // 0x00507bb6    ff520c
_jmp_addr_0x00507bb9:    {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00507bb9    8b8660010000
                         {disp8} mov        dword ptr [eax + 0x28], 0x00000000            // 0x00507bbf    c7402800000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00507bc6    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x00507bcc    8b5158
                         {disp32} mov       dword ptr [edx + 0x000048d0], 0x00000000      // 0x00507bcf    c782d048000000000000
                         mov                eax, 0x00000002                               // 0x00507bd9    b802000000
                         pop                esi                                           // 0x00507bde    5e
                         ret                                                              // 0x00507bdf    c3
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00507be0    8b8164010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f5c]             // 0x00507be6    8b805c0f0000
                         test               eax, eax                                      // 0x00507bec    85c0
                         {disp8} je         _jmp_addr_0x00507bfe                          // 0x00507bee    740e
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00507bf0    8b4830
                         test               ecx, ecx                                      // 0x00507bf3    85c9
                         {disp8} je         _jmp_addr_0x00507bfe                          // 0x00507bf5    7407
                         mov                edx, dword ptr [ecx]                          // 0x00507bf7    8b11
                         push               0x0                                           // 0x00507bf9    6a00
                         call               dword ptr [edx + 0xc]                         // 0x00507bfb    ff520c
_jmp_addr_0x00507bfe:    mov                eax, 0x00000002                               // 0x00507bfe    b802000000
                         ret                                                              // 0x00507c03    c3
                         nop                                                              // 0x00507c04    90
                         nop                                                              // 0x00507c05    90
                         nop                                                              // 0x00507c06    90
                         nop                                                              // 0x00507c07    90
                         nop                                                              // 0x00507c08    90
                         nop                                                              // 0x00507c09    90
                         nop                                                              // 0x00507c0a    90
                         nop                                                              // 0x00507c0b    90
                         nop                                                              // 0x00507c0c    90
                         nop                                                              // 0x00507c0d    90
                         nop                                                              // 0x00507c0e    90
                         nop                                                              // 0x00507c0f    90
                         push               esi                                           // 0x00507c10    56
                         mov.s              esi, ecx                                      // 0x00507c11    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00507c13    8b8e64010000
                         push               esi                                           // 0x00507c19    56
                         call               _jmp_addr_0x004d7b80                          // 0x00507c1a    e861fffcff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00507c1f    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00000f58], eax             // 0x00507c25    8981580f0000
                         mov                eax, 0x00000002                               // 0x00507c2b    b802000000
                         pop                esi                                           // 0x00507c30    5e
                         ret                                                              // 0x00507c31    c3
                         nop                                                              // 0x00507c32    90
                         nop                                                              // 0x00507c33    90
                         nop                                                              // 0x00507c34    90
                         nop                                                              // 0x00507c35    90
                         nop                                                              // 0x00507c36    90
                         nop                                                              // 0x00507c37    90
                         nop                                                              // 0x00507c38    90
                         nop                                                              // 0x00507c39    90
                         nop                                                              // 0x00507c3a    90
                         nop                                                              // 0x00507c3b    90
                         nop                                                              // 0x00507c3c    90
                         nop                                                              // 0x00507c3d    90
                         nop                                                              // 0x00507c3e    90
                         nop                                                              // 0x00507c3f    90
                         push               esi                                           // 0x00507c40    56
                         mov.s              esi, ecx                                      // 0x00507c41    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00507c43    8b8e64010000
                         push               esi                                           // 0x00507c49    56
                         call               _jmp_addr_0x004d7b80                          // 0x00507c4a    e831fffcff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00507c4f    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00000f5c], eax             // 0x00507c55    89815c0f0000
                         mov                eax, 0x00000002                               // 0x00507c5b    b802000000
                         pop                esi                                           // 0x00507c60    5e
                         ret                                                              // 0x00507c61    c3
                         nop                                                              // 0x00507c62    90
                         nop                                                              // 0x00507c63    90
                         nop                                                              // 0x00507c64    90
                         nop                                                              // 0x00507c65    90
                         nop                                                              // 0x00507c66    90
                         nop                                                              // 0x00507c67    90
                         nop                                                              // 0x00507c68    90
                         nop                                                              // 0x00507c69    90
                         nop                                                              // 0x00507c6a    90
                         nop                                                              // 0x00507c6b    90
                         nop                                                              // 0x00507c6c    90
                         nop                                                              // 0x00507c6d    90
                         nop                                                              // 0x00507c6e    90
                         nop                                                              // 0x00507c6f    90
                         push               esi                                           // 0x00507c70    56
                         mov.s              esi, ecx                                      // 0x00507c71    8bf1
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00507c73    e8d8fbf6ff
                         mov.s              ecx, eax                                      // 0x00507c78    8bc8
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00507c7a    e851c6f7ff
                         test               eax, eax                                      // 0x00507c7f    85c0
                         {disp8} je         _jmp_addr_0x00507c87                          // 0x00507c81    7404
                         xor.s              eax, eax                                      // 0x00507c83    33c0
                         pop                esi                                           // 0x00507c85    5e
                         ret                                                              // 0x00507c86    c3
_jmp_addr_0x00507c87:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507c87    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507c8d    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00507c93    05a80f0000
                         push               0x0                                           // 0x00507c98    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507c9a    8d0c49
                         push               0x009c7f50                                    // 0x00507c9d    68507f9c00
                         shl                ecx, 5                                        // 0x00507ca2    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00507ca5    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                   // 0x00507ca9    8b4230
                         push               0x009c7f30                                    // 0x00507cac    68307f9c00
                         push               0x0                                           // 0x00507cb1    6a00
                         push               eax                                           // 0x00507cb3    50
                         call               ___RTDynamicCast                              // 0x00507cb4    e860dd2b00
                         add                esp, 0x14                                     // 0x00507cb9    83c414
                         test               eax, eax                                      // 0x00507cbc    85c0
                         {disp8} je         _jmp_addr_0x00507cd8                          // 0x00507cbe    7418
                         push               eax                                           // 0x00507cc0    50
                         mov.s              ecx, esi                                      // 0x00507cc1    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00507cc3    e888fbf6ff
                         mov.s              ecx, eax                                      // 0x00507cc8    8bc8
                         call               _jmp_addr_0x00480ac0                          // 0x00507cca    e8f18df7ff
                         test               eax, eax                                      // 0x00507ccf    85c0
                         mov                eax, 0x00000002                               // 0x00507cd1    b802000000
                         {disp8} jne        _jmp_addr_0x00507cdd                          // 0x00507cd6    7505
_jmp_addr_0x00507cd8:    mov                eax, 0x00000001                               // 0x00507cd8    b801000000
_jmp_addr_0x00507cdd:    pop                esi                                           // 0x00507cdd    5e
                         ret                                                              // 0x00507cde    c3
                         nop                                                              // 0x00507cdf    90
                         push               esi                                           // 0x00507ce0    56
                         mov.s              esi, ecx                                      // 0x00507ce1    8bf1
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00507ce3    e868fbf6ff
                         mov.s              ecx, eax                                      // 0x00507ce8    8bc8
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00507cea    e8e1c5f7ff
                         test               eax, eax                                      // 0x00507cef    85c0
                         {disp8} je         _jmp_addr_0x00507cf7                          // 0x00507cf1    7404
                         xor.s              eax, eax                                      // 0x00507cf3    33c0
                         pop                esi                                           // 0x00507cf5    5e
                         ret                                                              // 0x00507cf6    c3
_jmp_addr_0x00507cf7:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507cf7    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507cfd    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00507d03    05a80f0000
                         push               0x0                                           // 0x00507d08    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507d0a    8d0c49
                         push               0x009c7f50                                    // 0x00507d0d    68507f9c00
                         shl                ecx, 5                                        // 0x00507d12    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00507d15    8b540134
                         {disp8} mov        eax, dword ptr [edx + 0x30]                   // 0x00507d19    8b4230
                         push               0x009c7f30                                    // 0x00507d1c    68307f9c00
                         push               0x0                                           // 0x00507d21    6a00
                         push               eax                                           // 0x00507d23    50
                         call               ___RTDynamicCast                              // 0x00507d24    e8f0dc2b00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00507d29    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x00507d2f    8b5128
                         add                esp, 0x14                                     // 0x00507d32    83c414
                         cmp.s              eax, edx                                      // 0x00507d35    3bc2
                         {disp8} je         _jmp_addr_0x00507d5b                          // 0x00507d37    7422
                         test               byte ptr [eax + 0x24], 0x04                   // 0x00507d39    f6402404
                         {disp8} jne        _jmp_addr_0x00507d5b                          // 0x00507d3d    751c
                         test               eax, eax                                      // 0x00507d3f    85c0
                         {disp8} je         _jmp_addr_0x00507d5b                          // 0x00507d41    7418
                         push               eax                                           // 0x00507d43    50
                         mov.s              ecx, esi                                      // 0x00507d44    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00507d46    e805fbf6ff
                         mov.s              ecx, eax                                      // 0x00507d4b    8bc8
                         call               _jmp_addr_0x00480c00                          // 0x00507d4d    e8ae8ef7ff
                         test               eax, eax                                      // 0x00507d52    85c0
                         mov                eax, 0x00000002                               // 0x00507d54    b802000000
                         {disp8} jne        _jmp_addr_0x00507d60                          // 0x00507d59    7505
_jmp_addr_0x00507d5b:    mov                eax, 0x00000001                               // 0x00507d5b    b801000000
_jmp_addr_0x00507d60:    pop                esi                                           // 0x00507d60    5e
                         ret                                                              // 0x00507d61    c3
                         nop                                                              // 0x00507d62    90
                         nop                                                              // 0x00507d63    90
                         nop                                                              // 0x00507d64    90
                         nop                                                              // 0x00507d65    90
                         nop                                                              // 0x00507d66    90
                         nop                                                              // 0x00507d67    90
                         nop                                                              // 0x00507d68    90
                         nop                                                              // 0x00507d69    90
                         nop                                                              // 0x00507d6a    90
                         nop                                                              // 0x00507d6b    90
                         nop                                                              // 0x00507d6c    90
                         nop                                                              // 0x00507d6d    90
                         nop                                                              // 0x00507d6e    90
                         nop                                                              // 0x00507d6f    90
                         sub                esp, 0x08                                     // 0x00507d70    83ec08
                         xor.s              edx, edx                                      // 0x00507d73    33d2
                         mov                eax, 0x000003e8                               // 0x00507d75    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00507d7a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00507d80    c744240400000000
                         push               esi                                           // 0x00507d88    56
                         mov.s              esi, ecx                                      // 0x00507d89    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00507d8b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00507d8f    df6c2404
                         fadd.s             st(0), st(0)                                  // 0x00507d93    dcc0
                         call               _jmp_addr_0x007a1400                          // 0x00507d95    e866962900
                         push               0x0                                           // 0x00507d9a    6a00
                         push               0x40000000                                    // 0x00507d9c    6800000040
                         push               0x3f800000                                    // 0x00507da1    680000803f
                         mov.s              ecx, esi                                      // 0x00507da6    8bce
                         {disp8} mov        word ptr [esi + 0x58], ax                     // 0x00507da8    66894658
                         call               _jmp_addr_0x0047ab90                          // 0x00507dac    e8df2df7ff
                         mov                eax, 0x00000002                               // 0x00507db1    b802000000
                         pop                esi                                           // 0x00507db6    5e
                         add                esp, 0x08                                     // 0x00507db7    83c408
                         ret                                                              // 0x00507dba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00507dbb    e8b99aefff
                         sub                esp, 0x08                                     // 0x00507dc0    83ec08
                         push               esi                                           // 0x00507dc3    56
                         mov.s              esi, ecx                                      // 0x00507dc4    8bf1
                         dec                word ptr [esi + 0x58]                         // 0x00507dc6    66ff4e58
                         {disp8} mov        ax, word ptr [esi + 0x58]                     // 0x00507dca    668b4658
                         test               ax, ax                                        // 0x00507dce    6685c0
                         {disp32} jne       _jmp_addr_0x00507e79                          // 0x00507dd1    0f85a2000000
                         {disp32} lea       eax, dword ptr [esi + 0x00001200]             // 0x00507dd7    8d8600120000
                         push               eax                                           // 0x00507ddd    50
                         call               _jmp_addr_0x00479eb0                          // 0x00507dde    e8cd20f7ff
                         xor.s              edx, edx                                      // 0x00507de3    33d2
                         mov                eax, 0x000003e8                               // 0x00507de5    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00507dea    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00507df0    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00507df8    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00507dfc    df6c2404
                         fadd.s             st(0), st(0)                                  // 0x00507e00    dcc0
                         call               _jmp_addr_0x007a1400                          // 0x00507e02    e8f9952900
                         push               0x0                                           // 0x00507e07    6a00
                         push               0x40000000                                    // 0x00507e09    6800000040
                         push               0x0                                           // 0x00507e0e    6a00
                         mov.s              ecx, esi                                      // 0x00507e10    8bce
                         {disp8} mov        word ptr [esi + 0x58], ax                     // 0x00507e12    66894658
                         call               _jmp_addr_0x0047ab90                          // 0x00507e16    e8752df7ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00507e1b    8b8e60010000
                         {disp8} fld        dword ptr [ecx + 0x30]                        // 0x00507e21    d94130
                         mov                edx, 0x3f666666                               // 0x00507e24    ba6666663f
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c844]             // 0x00507e29    d81d44588c00
                         fnstsw             ax                                            // 0x00507e2f    dfe0
                         test               ah, 0x01                                      // 0x00507e31    f6c401
                         {disp8} jne        _jmp_addr_0x00507e39                          // 0x00507e34    7503
                         {disp8} mov        dword ptr [ecx + 0x30], edx                   // 0x00507e36    895130
_jmp_addr_0x00507e39:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00507e39    8b8e60010000
                         {disp8} fld        dword ptr [ecx + 0x34]                        // 0x00507e3f    d94134
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c844]             // 0x00507e42    d81d44588c00
                         fnstsw             ax                                            // 0x00507e48    dfe0
                         test               ah, 0x01                                      // 0x00507e4a    f6c401
                         {disp8} jne        _jmp_addr_0x00507e52                          // 0x00507e4d    7503
                         {disp8} mov        dword ptr [ecx + 0x34], edx                   // 0x00507e4f    895134
_jmp_addr_0x00507e52:    {disp32} mov       esi, dword ptr [esi + 0x00000160]             // 0x00507e52    8bb660010000
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x00507e58    d9461c
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x00507e5b    d81d2cb28a00
                         fnstsw             ax                                            // 0x00507e61    dfe0
                         test               ah, 0x41                                      // 0x00507e63    f6c441
                         {disp8} je         _jmp_addr_0x00507e6f                          // 0x00507e66    7407
                         {disp8} mov        dword ptr [esi + 0x1c], 0x3dcccccd            // 0x00507e68    c7461ccdcccc3d
_jmp_addr_0x00507e6f:    mov                eax, 0x00000002                               // 0x00507e6f    b802000000
                         pop                esi                                           // 0x00507e74    5e
                         add                esp, 0x08                                     // 0x00507e75    83c408
                         ret                                                              // 0x00507e78    c3
_jmp_addr_0x00507e79:    xor.s              eax, eax                                      // 0x00507e79    33c0
                         pop                esi                                           // 0x00507e7b    5e
                         add                esp, 0x08                                     // 0x00507e7c    83c408
                         ret                                                              // 0x00507e7f    c3
                         sub                esp, 0x08                                     // 0x00507e80    83ec08
                         push               esi                                           // 0x00507e83    56
                         mov.s              esi, ecx                                      // 0x00507e84    8bf1
                         dec                word ptr [esi + 0x58]                         // 0x00507e86    66ff4e58
                         {disp8} mov        ax, word ptr [esi + 0x58]                     // 0x00507e8a    668b4658
                         test               ax, ax                                        // 0x00507e8e    6685c0
                         {disp8} jne        _jmp_addr_0x00507ed5                          // 0x00507e91    7542
                         xor.s              edx, edx                                      // 0x00507e93    33d2
                         mov                eax, 0x000003e8                               // 0x00507e95    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00507e9a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00507ea0    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00507ea8    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00507eac    df6c2404
                         fadd.s             st(0), st(0)                                  // 0x00507eb0    dcc0
                         call               _jmp_addr_0x007a1400                          // 0x00507eb2    e849952900
                         push               0x0                                           // 0x00507eb7    6a00
                         push               0x40000000                                    // 0x00507eb9    6800000040
                         push               0x0                                           // 0x00507ebe    6a00
                         mov.s              ecx, esi                                      // 0x00507ec0    8bce
                         {disp8} mov        word ptr [esi + 0x58], ax                     // 0x00507ec2    66894658
                         call               _jmp_addr_0x0047ab90                          // 0x00507ec6    e8c52cf7ff
                         mov                eax, 0x00000002                               // 0x00507ecb    b802000000
                         pop                esi                                           // 0x00507ed0    5e
                         add                esp, 0x08                                     // 0x00507ed1    83c408
                         ret                                                              // 0x00507ed4    c3
_jmp_addr_0x00507ed5:    xor.s              eax, eax                                      // 0x00507ed5    33c0
                         pop                esi                                           // 0x00507ed7    5e
                         add                esp, 0x08                                     // 0x00507ed8    83c408
                         ret                                                              // 0x00507edb    c3
                         nop                                                              // 0x00507edc    90
                         nop                                                              // 0x00507edd    90
                         nop                                                              // 0x00507ede    90
                         nop                                                              // 0x00507edf    90
                         push               ebx                                           // 0x00507ee0    53
                         push               esi                                           // 0x00507ee1    56
                         mov.s              esi, ecx                                      // 0x00507ee2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507ee4    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507eea    8b88b40f0000
                         push               edi                                           // 0x00507ef0    57
                         add                eax, 0x00000fa8                               // 0x00507ef1    05a80f0000
                         push               0x0                                           // 0x00507ef6    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507ef8    8d0c49
                         push               0x009c7f50                                    // 0x00507efb    68507f9c00
                         shl                ecx, 5                                        // 0x00507f00    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00507f03    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00507f07    8b5030
                         push               0x009c7f30                                    // 0x00507f0a    68307f9c00
                         push               0x0                                           // 0x00507f0f    6a00
                         push               edx                                           // 0x00507f11    52
                         call               ___RTDynamicCast                              // 0x00507f12    e802db2b00
                         push               0x0                                           // 0x00507f17    6a00
                         push               0x009dd560                                    // 0x00507f19    6860d59d00
                         push               0x009c7f50                                    // 0x00507f1e    68507f9c00
                         push               0x0                                           // 0x00507f23    6a00
                         push               eax                                           // 0x00507f25    50
                         call               ___RTDynamicCast                              // 0x00507f26    e8eeda2b00
                         add                esp, 0x28                                     // 0x00507f2b    83c428
                         test               eax, eax                                      // 0x00507f2e    85c0
                         {disp32} je        _jmp_addr_0x00507fb8                          // 0x00507f30    0f8482000000
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00507f36    8b9664010000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000fb4]             // 0x00507f3c    8b8ab40f0000
                         add                edx, 0x00000fa8                               // 0x00507f42    81c2a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507f48    8d0c49
                         shl                ecx, 5                                        // 0x00507f4b    c1e105
                         {disp8} mov        ebx, dword ptr [ecx + edx * 0x1 + 0x38]       // 0x00507f4e    8b5c1138
                         mov                edx, dword ptr [eax]                          // 0x00507f52    8b10
                         mov.s              ecx, eax                                      // 0x00507f54    8bc8
                         call               dword ptr [edx + 0x48]                        // 0x00507f56    ff5248
                         mov.s              edi, eax                                      // 0x00507f59    8bf8
                         test               edi, edi                                      // 0x00507f5b    85ff
                         {disp8} je         _jmp_addr_0x00507fb8                          // 0x00507f5d    7459
                         {disp32} lea       eax, dword ptr [esi + 0x000010d8]             // 0x00507f5f    8d86d8100000
                         push               eax                                           // 0x00507f65    50
                         push               ebx                                           // 0x00507f66    53
                         mov.s              ecx, edi                                      // 0x00507f67    8bcf
                         call               _jmp_addr_0x0073d500                          // 0x00507f69    e892552300
                         cmp                eax, 0x01                                     // 0x00507f6e    83f801
                         {disp8} jne        _jmp_addr_0x00507fb8                          // 0x00507f71    7545
                         push               0x3f800000                                    // 0x00507f73    680000803f
                         push               -0x1                                          // 0x00507f78    6aff
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00507f7a    8d4e14
                         push               ebx                                           // 0x00507f7d    53
                         push               ecx                                           // 0x00507f7e    51
                         call               _jmp_addr_0x0072a2f0                          // 0x00507f7f    e86c232200
                         add                esp, 0x10                                     // 0x00507f84    83c410
                         test               eax, eax                                      // 0x00507f87    85c0
                         {disp8} je         _jmp_addr_0x00507fb8                          // 0x00507f89    742d
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00507f8b    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x00001c6c], eax             // 0x00507f91    89826c1c0000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507f97    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x000021c0], edi             // 0x00507f9d    89b8c0210000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00507fa3    8b8e64010000
                         pop                edi                                           // 0x00507fa9    5f
                         pop                esi                                           // 0x00507faa    5e
                         {disp32} mov       dword ptr [ecx + 0x000021c4], ebx             // 0x00507fab    8999c4210000
                         mov                eax, 0x00000002                               // 0x00507fb1    b802000000
                         pop                ebx                                           // 0x00507fb6    5b
                         ret                                                              // 0x00507fb7    c3
_jmp_addr_0x00507fb8:    pop                edi                                           // 0x00507fb8    5f
                         pop                esi                                           // 0x00507fb9    5e
                         mov                eax, 0x00000003                               // 0x00507fba    b803000000
                         pop                ebx                                           // 0x00507fbf    5b
                         ret                                                              // 0x00507fc0    c3
                         nop                                                              // 0x00507fc1    90
                         nop                                                              // 0x00507fc2    90
                         nop                                                              // 0x00507fc3    90
                         nop                                                              // 0x00507fc4    90
                         nop                                                              // 0x00507fc5    90
                         nop                                                              // 0x00507fc6    90
                         nop                                                              // 0x00507fc7    90
                         nop                                                              // 0x00507fc8    90
                         nop                                                              // 0x00507fc9    90
                         nop                                                              // 0x00507fca    90
                         nop                                                              // 0x00507fcb    90
                         nop                                                              // 0x00507fcc    90
                         nop                                                              // 0x00507fcd    90
                         nop                                                              // 0x00507fce    90
                         nop                                                              // 0x00507fcf    90
                         push               esi                                           // 0x00507fd0    56
                         mov.s              esi, ecx                                      // 0x00507fd1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00507fd3    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00507fd9    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00507fdf    05a80f0000
                         push               0x0                                           // 0x00507fe4    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00507fe6    8d0c49
                         push               0x009c7f50                                    // 0x00507fe9    68507f9c00
                         shl                ecx, 5                                        // 0x00507fee    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00507ff1    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00507ff5    8b5030
                         push               0x009c7f30                                    // 0x00507ff8    68307f9c00
                         push               0x0                                           // 0x00507ffd    6a00
                         push               edx                                           // 0x00507fff    52
                         call               ___RTDynamicCast                              // 0x00508000    e814da2b00
                         push               0x0                                           // 0x00508005    6a00
                         push               0x009dd560                                    // 0x00508007    6860d59d00
                         push               0x009c7f50                                    // 0x0050800c    68507f9c00
                         push               0x0                                           // 0x00508011    6a00
                         push               eax                                           // 0x00508013    50
                         call               ___RTDynamicCast                              // 0x00508014    e800da2b00
                         mov                edx, dword ptr [eax]                          // 0x00508019    8b10
                         add                esp, 0x28                                     // 0x0050801b    83c428
                         mov.s              ecx, eax                                      // 0x0050801e    8bc8
                         call               dword ptr [edx + 0x48]                        // 0x00508020    ff5248
                         test               eax, eax                                      // 0x00508023    85c0
                         {disp8} je         _jmp_addr_0x0050806c                          // 0x00508025    7445
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00508027    8b9664010000
                         {disp32} lea       ecx, dword ptr [esi + 0x000010d8]             // 0x0050802d    8d8ed8100000
                         push               ecx                                           // 0x00508033    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000021c4]             // 0x00508034    8b8ac4210000
                         push               ecx                                           // 0x0050803a    51
                         mov.s              ecx, eax                                      // 0x0050803b    8bc8
                         call               _jmp_addr_0x0073d5a0                          // 0x0050803d    e85e552300
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00508042    8b9664010000
                         {disp32} mov       ecx, dword ptr [edx + 0x00001c6c]             // 0x00508048    8b8a6c1c0000
                         mov                eax, dword ptr [ecx]                          // 0x0050804e    8b01
                         push               0x0                                           // 0x00508050    6a00
                         call               dword ptr [eax + 0xc]                         // 0x00508052    ff500c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00508055    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c6c], 0x00000000      // 0x0050805b    c7816c1c000000000000
                         mov                eax, 0x00000002                               // 0x00508065    b802000000
                         pop                esi                                           // 0x0050806a    5e
                         ret                                                              // 0x0050806b    c3
_jmp_addr_0x0050806c:    mov                eax, 0x00000003                               // 0x0050806c    b803000000
                         pop                esi                                           // 0x00508071    5e
                         ret                                                              // 0x00508072    c3
                         nop                                                              // 0x00508073    90
                         nop                                                              // 0x00508074    90
                         nop                                                              // 0x00508075    90
                         nop                                                              // 0x00508076    90
                         nop                                                              // 0x00508077    90
                         nop                                                              // 0x00508078    90
                         nop                                                              // 0x00508079    90
                         nop                                                              // 0x0050807a    90
                         nop                                                              // 0x0050807b    90
                         nop                                                              // 0x0050807c    90
                         nop                                                              // 0x0050807d    90
                         nop                                                              // 0x0050807e    90
                         nop                                                              // 0x0050807f    90
                         push               0x3f800000                                    // 0x00508080    680000803f
                         call               _jmp_addr_0x0047cda0                          // 0x00508085    e8164df7ff
                         mov                eax, 0x00000002                               // 0x0050808a    b802000000
                         ret                                                              // 0x0050808f    c3
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00508090    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00508096    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x0050809c    05a80f0000
                         push               0x0                                           // 0x005080a1    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005080a3    8d0c49
                         push               0x009c7f50                                    // 0x005080a6    68507f9c00
                         shl                ecx, 5                                        // 0x005080ab    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x005080ae    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x005080b2    8b5030
                         push               0x009c7f30                                    // 0x005080b5    68307f9c00
                         push               0x0                                           // 0x005080ba    6a00
                         push               edx                                           // 0x005080bc    52
                         call               ___RTDynamicCast                              // 0x005080bd    e857d92b00
                         push               0x0                                           // 0x005080c2    6a00
                         push               0x009cd328                                    // 0x005080c4    6828d39c00
                         push               0x009c7f50                                    // 0x005080c9    68507f9c00
                         push               0x0                                           // 0x005080ce    6a00
                         push               eax                                           // 0x005080d0    50
                         call               ___RTDynamicCast                              // 0x005080d1    e843d92b00
                         add                esp, 0x28                                     // 0x005080d6    83c428
                         test               eax, eax                                      // 0x005080d9    85c0
                         {disp8} je         _jmp_addr_0x005080ea                          // 0x005080db    740d
                         mov.s              ecx, eax                                      // 0x005080dd    8bc8
                         call               _jmp_addr_0x006e7560                          // 0x005080df    e87cf41d00
                         mov                eax, 0x00000002                               // 0x005080e4    b802000000
                         ret                                                              // 0x005080e9    c3
_jmp_addr_0x005080ea:    mov                eax, 0x00000003                               // 0x005080ea    b803000000
                         ret                                                              // 0x005080ef    c3
                         push               esi                                           // 0x005080f0    56
                         mov.s              esi, ecx                                      // 0x005080f1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x005080f3    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c6c]             // 0x005080f9    8b886c1c0000
                         test               ecx, ecx                                      // 0x005080ff    85c9
                         {disp8} je         _jmp_addr_0x0050811a                          // 0x00508101    7417
                         mov                edx, dword ptr [ecx]                          // 0x00508103    8b11
                         push               0x0                                           // 0x00508105    6a00
                         call               dword ptr [edx + 0xc]                         // 0x00508107    ff520c
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0050810a    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001c6c], 0x00000000      // 0x00508110    c7806c1c000000000000
_jmp_addr_0x0050811a:    mov                eax, 0x00000002                               // 0x0050811a    b802000000
                         pop                esi                                           // 0x0050811f    5e
                         ret                                                              // 0x00508120    c3
                         nop                                                              // 0x00508121    90
                         nop                                                              // 0x00508122    90
                         nop                                                              // 0x00508123    90
                         nop                                                              // 0x00508124    90
                         nop                                                              // 0x00508125    90
                         nop                                                              // 0x00508126    90
                         nop                                                              // 0x00508127    90
                         nop                                                              // 0x00508128    90
                         nop                                                              // 0x00508129    90
                         nop                                                              // 0x0050812a    90
                         nop                                                              // 0x0050812b    90
                         nop                                                              // 0x0050812c    90
                         nop                                                              // 0x0050812d    90
                         nop                                                              // 0x0050812e    90
                         nop                                                              // 0x0050812f    90
                         push               ecx                                           // 0x00508130    51
                         push               ebx                                           // 0x00508131    53
                         push               esi                                           // 0x00508132    56
                         mov.s              esi, ecx                                      // 0x00508133    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00508135    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x0050813b    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00508141    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00508146    8d0c49
                         push               edi                                           // 0x00508149    57
                         shl                ecx, 5                                        // 0x0050814a    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x38]       // 0x0050814d    8b440138
                         push               0x0                                           // 0x00508151    6a00
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00508153    8d04c0
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x00508156    8d14c0
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00508159    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0050815f    8b4858
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x28648]        // 0x00508162    a148168d00
                         push               0x3f800000                                    // 0x00508167    680000803f
                         push               0x0                                           // 0x0050816c    6a00
                         {disp32} lea       ebx, dword ptr [edx * 0x4 + 0x00d4c660]       // 0x0050816e    8d1c9560c6d400
                         {disp32} mov       edx, dword ptr [ecx + 0x00000090]             // 0x00508175    8b9190000000
                         push               0x0                                           // 0x0050817b    6a00
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0050817d    8d7e14
                         push               eax                                           // 0x00508180    50
                         mov.s              ecx, edi                                      // 0x00508181    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00508183    89542420
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x00508187    e8549f0f00
                         {disp32} fld       dword ptr [rdata_bytes + 0x28660]             // 0x0050818c    d90560168d00
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x00508192    d84c241c
                         push               eax                                           // 0x00508196    50
                         push               0x0                                           // 0x00508197    6a00
                         call               _jmp_addr_0x007a1400                          // 0x00508199    e862922900
                         push               eax                                           // 0x0050819e    50
                         push               ebx                                           // 0x0050819f    53
                         push               edi                                           // 0x005081a0    57
                         call               _jmp_addr_0x0066cf10                          // 0x005081a1    e86a4d1600
                         mov.s              edi, eax                                      // 0x005081a6    8bf8
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x005081a8    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005081ae    8b4858
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x005081b1    d98190000000
                         mov                edx, dword ptr [edi]                          // 0x005081b7    8b17
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25ffc]             // 0x005081b9    d80dfcef8c00
                         add                esp, 0x20                                     // 0x005081bf    83c420
                         mov.s              ecx, edi                                      // 0x005081c2    8bcf
                         fstp               dword ptr [esp]                               // 0x005081c4    d91c24
                         call               dword ptr [edx + 0x124]                       // 0x005081c7    ff9224010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x005081cd    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x00001c6c], edi             // 0x005081d3    89ba6c1c0000
                         pop                edi                                           // 0x005081d9    5f
                         pop                esi                                           // 0x005081da    5e
                         mov                eax, 0x00000002                               // 0x005081db    b802000000
                         pop                ebx                                           // 0x005081e0    5b
                         pop                ecx                                           // 0x005081e1    59
                         ret                                                              // 0x005081e2    c3
                         nop                                                              // 0x005081e3    90
                         nop                                                              // 0x005081e4    90
                         nop                                                              // 0x005081e5    90
                         nop                                                              // 0x005081e6    90
                         nop                                                              // 0x005081e7    90
                         nop                                                              // 0x005081e8    90
                         nop                                                              // 0x005081e9    90
                         nop                                                              // 0x005081ea    90
                         nop                                                              // 0x005081eb    90
                         nop                                                              // 0x005081ec    90
                         nop                                                              // 0x005081ed    90
                         nop                                                              // 0x005081ee    90
                         nop                                                              // 0x005081ef    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x005081f0    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x005081f6    8b90b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x005081fc    8d1452
                         shl                edx, 5                                        // 0x005081ff    c1e205
                         {disp32} mov       edx, dword ptr [edx + eax * 0x1 + 0x00000fdc] // 0x00508202    8b9402dc0f0000
                         push               edx                                           // 0x00508209    52
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x0050820a    8b90b40f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x00508210    8d1452
                         shl                edx, 5                                        // 0x00508213    c1e205
                         {disp32} mov       eax, dword ptr [edx + eax * 0x1 + 0x00000fe0] // 0x00508216    8b8402e00f0000
                         push               eax                                           // 0x0050821d    50
                         call               _jmp_addr_0x004c43a0                          // 0x0050821e    e87dc1fbff
                         xor.s              eax, eax                                      // 0x00508223    33c0
                         ret                                                              // 0x00508225    c3
                         nop                                                              // 0x00508226    90
                         nop                                                              // 0x00508227    90
                         nop                                                              // 0x00508228    90
                         nop                                                              // 0x00508229    90
                         nop                                                              // 0x0050822a    90
                         nop                                                              // 0x0050822b    90
                         nop                                                              // 0x0050822c    90
                         nop                                                              // 0x0050822d    90
                         nop                                                              // 0x0050822e    90
                         nop                                                              // 0x0050822f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00508230    8b8164010000
                         {disp32} mov       dword ptr [eax + 0x00001c10], 0x00000000      // 0x00508236    c780101c000000000000
                         mov                eax, 0x00000002                               // 0x00508240    b802000000
                         ret                                                              // 0x00508245    c3
                         nop                                                              // 0x00508246    90
                         nop                                                              // 0x00508247    90
                         nop                                                              // 0x00508248    90
                         nop                                                              // 0x00508249    90
                         nop                                                              // 0x0050824a    90
                         nop                                                              // 0x0050824b    90
                         nop                                                              // 0x0050824c    90
                         nop                                                              // 0x0050824d    90
                         nop                                                              // 0x0050824e    90
                         nop                                                              // 0x0050824f    90
                         sub                esp, 0x28                                     // 0x00508250    83ec28
                         push               esi                                           // 0x00508253    56
                         mov.s              esi, ecx                                      // 0x00508254    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000010e8]             // 0x00508256    8b86e8100000
                         test               eax, eax                                      // 0x0050825c    85c0
                         {disp32} je        _jmp_addr_0x005084c0                          // 0x0050825e    0f845c020000
                         mov                eax, dword ptr [esi]                          // 0x00508264    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x00508266    ff501c
                         test               eax, eax                                      // 0x00508269    85c0
                         {disp32} je        _jmp_addr_0x005084c0                          // 0x0050826b    0f844f020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00508271    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00508277    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x0050827a    e851c0f7ff
                         test               eax, eax                                      // 0x0050827f    85c0
                         {disp32} jne       _jmp_addr_0x005084b9                          // 0x00508281    0f8532020000
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00508287    8b9664010000
                         {disp32} fld       dword ptr [edx + 0x00018c78]                  // 0x0050828d    d982788c0100
                         mov.s              ecx, esi                                      // 0x00508293    8bce
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1651c]             // 0x00508295    d81d1cf58b00
                         fnstsw             ax                                            // 0x0050829b    dfe0
                         test               ah, 0x41                                      // 0x0050829d    f6c441
                         {disp32} jne       _jmp_addr_0x005083b7                          // 0x005082a0    0f8511010000
                         call               _jmp_addr_0x0047d740                          // 0x005082a6    e89554f7ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000000c8]             // 0x005082ab    8b88c8000000
                         add                eax, 0x000000c8                               // 0x005082b1    05c8000000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x005082b6    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005082ba    8b5004
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x005082bd    8954240c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005082c1    8b4008
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x005082c4    8b9660010000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005082ca    89442410
                         {disp8} mov        eax, dword ptr [edx + 0x58]                   // 0x005082ce    8b4258
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005082d1    8d4c2408
                         push               ecx                                           // 0x005082d5    51
                         add                eax, 0x78                                     // 0x005082d6    83c078
                         push               eax                                           // 0x005082d9    50
                         call               _jmp_addr_0x0074cde0                          // 0x005082da    e8014b2400
                         fstp               st(0)                                         // 0x005082df    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005082e1    8b8e60010000
                         {disp8} mov        eax, dword ptr [ecx + 0x58]                   // 0x005082e7    8b4158
                         {disp32} fld       dword ptr [eax + 0x00000080]                  // 0x005082ea    d98080000000
                         add                eax, 0x78                                     // 0x005082f0    83c078
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005082f3    d8642418
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005082f7    8d54241c
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x005082fb    d94004
                         push               edx                                           // 0x005082fe    52
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005082ff    d8642418
                         fld                dword ptr [eax]                               // 0x00508303    d900
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00508305    d8642414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00508309    d95c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0050830d    d95c2424
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00508311    d95c2428
                         call               _jmp_addr_0x006e8160                          // 0x00508315    e846fe1d00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0050831a    d81d2cb28a00
                         add                esp, 0x0c                                     // 0x00508320    83c40c
                         fnstsw             ax                                            // 0x00508323    dfe0
                         test               ah, 0x41                                      // 0x00508325    f6c441
                         {disp32} jne       _jmp_addr_0x005084b9                          // 0x00508328    0f858b010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x0050832e    8b8660010000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00508334    d9442410
                         {disp8} mov        eax, dword ptr [eax + 0x58]                   // 0x00508338    8b4058
                         {disp32} fsub      dword ptr [eax + 0x00000080]                  // 0x0050833b    d8a080000000
                         add                eax, 0x78                                     // 0x00508341    83c078
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00508344    d944240c
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00508348    8d4c2420
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0050834c    d86004
                         push               ecx                                           // 0x0050834f    51
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00508350    d944240c
                         fsub               dword ptr [eax]                               // 0x00508354    d820
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00508356    d95c2424
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0050835a    d95c2428
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0050835e    d95c242c
                         call               _jmp_addr_0x007faa50                          // 0x00508362    e8e9262f00
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00508367    8b9660010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0050836d    d95c2408
                         {disp8} mov        eax, dword ptr [edx + 0x58]                   // 0x00508371    8b4258
                         {disp32} fld       dword ptr [eax + 0x00000084]                  // 0x00508374    d98084000000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0050837a    d9442408
                         fsub               st, st(1)                                     // 0x0050837e    d8e1
                         fstp               dword ptr [esp]                               // 0x00508380    d91c24
                         fstp               st(0)                                         // 0x00508383    ddd8
                         call               _jmp_addr_0x007faaf0                          // 0x00508385    e866272f00
                         fabs                                                             // 0x0050838a    d9e1
                         add                esp, 0x04                                     // 0x0050838c    83c404
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1eb48]             // 0x0050838f    dc1d487b8c00
                         fnstsw             ax                                            // 0x00508395    dfe0
                         test               ah, 0x41                                      // 0x00508397    f6c441
                         {disp32} jne       _jmp_addr_0x005084b9                          // 0x0050839a    0f8519010000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005083a0    8b4c2404
                         push               ecx                                           // 0x005083a4    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005083a5    8b8e60010000
                         call               _jmp_addr_0x004f00e0                          // 0x005083ab    e8307dfeff
                         xor.s              eax, eax                                      // 0x005083b0    33c0
                         pop                esi                                           // 0x005083b2    5e
                         add                esp, 0x28                                     // 0x005083b3    83c428
                         ret                                                              // 0x005083b6    c3
_jmp_addr_0x005083b7:    call               _jmp_addr_0x0047d640                          // 0x005083b7    e88452f7ff
                         {disp32} mov       edx, dword ptr [eax + 0x000000b0]             // 0x005083bc    8b90b0000000
                         add                eax, 0x000000b0                               // 0x005083c2    05b0000000
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x005083c7    89542408
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x005083cb    8b4804
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005083ce    894c240c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005083d2    8b5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005083d5    8b8e60010000
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005083db    89542410
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x005083df    8b5158
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x005083e2    8d442408
                         push               eax                                           // 0x005083e6    50
                         add                edx, 0x78                                     // 0x005083e7    83c278
                         push               edx                                           // 0x005083ea    52
                         call               _jmp_addr_0x0074cde0                          // 0x005083eb    e8f0492400
                         fstp               st(0)                                         // 0x005083f0    ddd8
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x005083f2    8b8660010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]                   // 0x005083f8    8b4058
                         {disp32} fld       dword ptr [eax + 0x00000080]                  // 0x005083fb    d98080000000
                         add                eax, 0x78                                     // 0x00508401    83c078
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00508404    d8642418
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00508408    8d4c2428
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0050840c    d94004
                         push               ecx                                           // 0x0050840f    51
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00508410    d8642418
                         fld                dword ptr [eax]                               // 0x00508414    d900
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00508416    d8642414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0050841a    d95c242c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0050841e    d95c2430
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00508422    d95c2434
                         call               _jmp_addr_0x006e8160                          // 0x00508426    e835fd1d00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0050842b    d81d2cb28a00
                         add                esp, 0x0c                                     // 0x00508431    83c40c
                         fnstsw             ax                                            // 0x00508434    dfe0
                         test               ah, 0x41                                      // 0x00508436    f6c441
                         {disp8} jne        _jmp_addr_0x005084b9                          // 0x00508439    757e
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x0050843b    8b9660010000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00508441    d9442410
                         {disp8} mov        eax, dword ptr [edx + 0x58]                   // 0x00508445    8b4258
                         {disp32} fsub      dword ptr [eax + 0x00000080]                  // 0x00508448    d8a080000000
                         add                eax, 0x78                                     // 0x0050844e    83c078
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00508451    d944240c
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x00508455    d86004
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00508458    d9442408
                         fsub               dword ptr [eax]                               // 0x0050845c    d820
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0050845e    8d442414
                         push               eax                                           // 0x00508462    50
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00508463    d95c2418
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00508467    d95c241c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0050846b    d95c2420
                         call               _jmp_addr_0x007faa50                          // 0x0050846f    e8dc252f00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00508474    8b8e60010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0050847a    d95c2408
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x0050847e    8b5158
                         {disp32} fld       dword ptr [edx + 0x00000084]                  // 0x00508481    d98284000000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00508487    d9442408
                         fsub               st, st(1)                                     // 0x0050848b    d8e1
                         fstp               dword ptr [esp]                               // 0x0050848d    d91c24
                         fstp               st(0)                                         // 0x00508490    ddd8
                         call               _jmp_addr_0x007faaf0                          // 0x00508492    e859262f00
                         fabs                                                             // 0x00508497    d9e1
                         add                esp, 0x04                                     // 0x00508499    83c404
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1eb48]             // 0x0050849c    dc1d487b8c00
                         fnstsw             ax                                            // 0x005084a2    dfe0
                         test               ah, 0x41                                      // 0x005084a4    f6c441
                         {disp8} jne        _jmp_addr_0x005084b9                          // 0x005084a7    7510
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005084a9    8b442404
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005084ad    8b8e60010000
                         push               eax                                           // 0x005084b3    50
                         call               _jmp_addr_0x004f00e0                          // 0x005084b4    e8277cfeff
_jmp_addr_0x005084b9:    xor.s              eax, eax                                      // 0x005084b9    33c0
                         pop                esi                                           // 0x005084bb    5e
                         add                esp, 0x28                                     // 0x005084bc    83c428
                         ret                                                              // 0x005084bf    c3
_jmp_addr_0x005084c0:    mov                eax, 0x00000002                               // 0x005084c0    b802000000
                         pop                esi                                           // 0x005084c5    5e
                         add                esp, 0x28                                     // 0x005084c6    83c428
                         ret                                                              // 0x005084c9    c3
                         call               dword ptr [__imp__GetKeyNameTextW@4]          // 0x005084ca    ff15d4978a00
                         push               ebx                                           // 0x005084d0    53
                         push               ebp                                           // 0x005084d1    55
                         push               esi                                           // 0x005084d2    56
                         mov.s              esi, ecx                                      // 0x005084d3    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x005084d5    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005084db    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005084e1    8d0c49
                         shl                ecx, 5                                        // 0x005084e4    c1e105
                         {disp32} mov       ebp, dword ptr [ecx + eax * 0x1 + 0x00000fe0] // 0x005084e7    8bac01e00f0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005084ee    8b88b40f0000
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x005084f4    8d1449
                         shl                edx, 5                                        // 0x005084f7    c1e205
                         {disp32} mov       eax, dword ptr [edx + eax * 0x1 + 0x00000fdc] // 0x005084fa    8b8402dc0f0000
                         test               eax, eax                                      // 0x00508501    85c0
                         {disp8} je         _jmp_addr_0x0050856a                          // 0x00508503    7465
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x00508505    8b4030
                         test               eax, eax                                      // 0x00508508    85c0
                         {disp8} je         _jmp_addr_0x0050856a                          // 0x0050850a    745e
                         push               0x0                                           // 0x0050850c    6a00
                         push               0x009cafc8                                    // 0x0050850e    68c8af9c00
                         push               0x009c7f30                                    // 0x00508513    68307f9c00
                         push               0x0                                           // 0x00508518    6a00
                         push               eax                                           // 0x0050851a    50
                         call               ___RTDynamicCast                              // 0x0050851b    e8f9d42b00
                         mov.s              ebx, eax                                      // 0x00508520    8bd8
                         add                esp, 0x14                                     // 0x00508522    83c414
                         test               ebx, ebx                                      // 0x00508525    85db
                         {disp8} je         _jmp_addr_0x0050856a                          // 0x00508527    7441
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00508529    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0050852f    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00508531    8a81595a2000
                         push               edi                                           // 0x00508537    57
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00508538    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0050853b    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0050853e    8d0450
                         mov                edx, dword ptr [esi]                          // 0x00508541    8b16
                         shl                eax, 5                                        // 0x00508543    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00508546    8d7c0818
                         mov.s              ecx, esi                                      // 0x0050854a    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0050854c    ff521c
                         sub.s              eax, edi                                      // 0x0050854f    2bc7
                         neg                eax                                           // 0x00508551    f7d8
                         sbb.s              eax, eax                                      // 0x00508553    1bc0
                         inc                eax                                           // 0x00508555    40
                         push               eax                                           // 0x00508556    50
                         push               ebp                                           // 0x00508557    55
                         push               esi                                           // 0x00508558    56
                         mov.s              ecx, ebx                                      // 0x00508559    8bcb
                         call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z                          // 0x0050855b    e8a0da2400
                         pop                edi                                           // 0x00508560    5f
                         pop                esi                                           // 0x00508561    5e
                         pop                ebp                                           // 0x00508562    5d
                         mov                eax, 0x00000002                               // 0x00508563    b802000000
                         pop                ebx                                           // 0x00508568    5b
                         ret                                                              // 0x00508569    c3
_jmp_addr_0x0050856a:    pop                esi                                           // 0x0050856a    5e
                         pop                ebp                                           // 0x0050856b    5d
                         mov                eax, 0x00000001                               // 0x0050856c    b801000000
                         pop                ebx                                           // 0x00508571    5b
                         ret                                                              // 0x00508572    c3
                         nop                                                              // 0x00508573    90
                         nop                                                              // 0x00508574    90
                         nop                                                              // 0x00508575    90
                         nop                                                              // 0x00508576    90
                         nop                                                              // 0x00508577    90
                         nop                                                              // 0x00508578    90
                         nop                                                              // 0x00508579    90
                         nop                                                              // 0x0050857a    90
                         nop                                                              // 0x0050857b    90
                         nop                                                              // 0x0050857c    90
                         nop                                                              // 0x0050857d    90
                         nop                                                              // 0x0050857e    90
                         nop                                                              // 0x0050857f    90
                         push               esi                                           // 0x00508580    56
                         mov.s              esi, ecx                                      // 0x00508581    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00001074]             // 0x00508583    8b8e74100000
                         test               ecx, ecx                                      // 0x00508589    85c9
                         {disp8} je         _jmp_addr_0x00508594                          // 0x0050858b    7407
                         mov                eax, dword ptr [ecx]                          // 0x0050858d    8b01
                         push               0x0                                           // 0x0050858f    6a00
                         call               dword ptr [eax + 0xc]                         // 0x00508591    ff500c
_jmp_addr_0x00508594:    {disp32} mov       dword ptr [esi + 0x00001074], 0x00000000      // 0x00508594    c7867410000000000000
                         mov                eax, 0x00000002                               // 0x0050859e    b802000000
                         pop                esi                                           // 0x005085a3    5e
                         ret                                                              // 0x005085a4    c3
                         nop                                                              // 0x005085a5    90
                         nop                                                              // 0x005085a6    90
                         nop                                                              // 0x005085a7    90
                         nop                                                              // 0x005085a8    90
                         nop                                                              // 0x005085a9    90
                         nop                                                              // 0x005085aa    90
                         nop                                                              // 0x005085ab    90
                         nop                                                              // 0x005085ac    90
                         nop                                                              // 0x005085ad    90
                         nop                                                              // 0x005085ae    90
                         nop                                                              // 0x005085af    90
                         sub                esp, 0x18                                     // 0x005085b0    83ec18
                         push               esi                                           // 0x005085b3    56
                         push               edi                                           // 0x005085b4    57
                         mov.s              edi, ecx                                      // 0x005085b5    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x005085b7    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005085bd    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x005085c3    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005085c8    8d0c49
                         shl                ecx, 5                                        // 0x005085cb    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x3c]       // 0x005085ce    8b54013c
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x1 + 0x3c]       // 0x005085d2    8d44013c
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x005085d6    89542408
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x005085da    8b4804
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005085dd    894c240c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005085e1    8b5008
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x005085e4    8d442408
                         push               eax                                           // 0x005085e8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x005085e9    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x005085ed    89542414
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x005085f1    e86aab0f00
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x005085f6    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005085fc    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00508602    8d0c49
                         shl                ecx, 5                                        // 0x00508605    c1e105
                         {disp32} mov       esi, dword ptr [ecx + eax * 0x1 + 0x00000fe0] // 0x00508608    8bb401e00f0000
                         cmp                esi, 0x19                                     // 0x0050860f    83fe19
                         {disp8} jl         _jmp_addr_0x0050861f                          // 0x00508612    7c0b
                         pop                edi                                           // 0x00508614    5f
                         mov                eax, 0x00000001                               // 0x00508615    b801000000
                         pop                esi                                           // 0x0050861a    5e
                         add                esp, 0x18                                     // 0x0050861b    83c418
                         ret                                                              // 0x0050861e    c3
_jmp_addr_0x0050861f:    {disp32} mov       eax, dword ptr [eax + 0x00000f54]             // 0x0050861f    8b80540f0000
                         test               eax, eax                                      // 0x00508625    85c0
                         push               ebx                                           // 0x00508627    53
                         {disp8} je         _jmp_addr_0x00508648                          // 0x00508628    741e
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x0050862a    8b4030
                         push               0x0                                           // 0x0050862d    6a00
                         push               0x009cfa40                                    // 0x0050862f    6840fa9c00
                         push               0x009c7f30                                    // 0x00508634    68307f9c00
                         push               0x0                                           // 0x00508639    6a00
                         push               eax                                           // 0x0050863b    50
                         call               ___RTDynamicCast                              // 0x0050863c    e8d8d32b00
                         add                esp, 0x14                                     // 0x00508641    83c414
                         mov.s              ebx, eax                                      // 0x00508644    8bd8
                         {disp8} jmp        _jmp_addr_0x0050864a                          // 0x00508646    eb02
_jmp_addr_0x00508648:    xor.s              ebx, ebx                                      // 0x00508648    33db
_jmp_addr_0x0050864a:    push               0x0000136a                                    // 0x0050864a    686a130000
                         push               0x00be6588                                    // 0x0050864f    688865be00
                         push               0x0000012c                                    // 0x00508654    682c010000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x00508659    e892e0f2ff
                         add                esp, 0x0c                                     // 0x0050865e    83c40c
                         test               eax, eax                                      // 0x00508661    85c0
                         {disp8} je         _jmp_addr_0x00508699                          // 0x00508663    7434
                         push               ebx                                           // 0x00508665    53
                         push               0x0                                           // 0x00508666    6a00
                         lea                edx, dword ptr [esi + esi * 0x4]              // 0x00508668    8d14b6
                         lea                ecx, dword ptr [esi + edx * 0x2]              // 0x0050866b    8d0c56
                         push               0x0                                           // 0x0050866e    6a00
                         shl                ecx, 4                                        // 0x00508670    c1e104
                         push               edi                                           // 0x00508673    57
                         add                ecx, OFFSET _GDanceInfo_ARRAY_00cc4b80        // 0x00508674    81c1804bcc00
                         push               ecx                                           // 0x0050867a    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0050867b    8d54242c
                         push               edx                                           // 0x0050867f    52
                         mov.s              ecx, eax                                      // 0x00508680    8bc8
                         call               @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32                          // 0x00508682    e819300000
                         pop                ebx                                           // 0x00508687    5b
                         {disp32} mov       dword ptr [edi + 0x00001074], eax             // 0x00508688    898774100000
                         pop                edi                                           // 0x0050868e    5f
                         mov                eax, 0x00000002                               // 0x0050868f    b802000000
                         pop                esi                                           // 0x00508694    5e
                         add                esp, 0x18                                     // 0x00508695    83c418
                         ret                                                              // 0x00508698    c3
_jmp_addr_0x00508699:    xor.s              eax, eax                                      // 0x00508699    33c0
                         pop                ebx                                           // 0x0050869b    5b
                         {disp32} mov       dword ptr [edi + 0x00001074], eax             // 0x0050869c    898774100000
                         pop                edi                                           // 0x005086a2    5f
                         mov                eax, 0x00000002                               // 0x005086a3    b802000000
                         pop                esi                                           // 0x005086a8    5e
                         add                esp, 0x18                                     // 0x005086a9    83c418
                         ret                                                              // 0x005086ac    c3
                         nop                                                              // 0x005086ad    90
                         nop                                                              // 0x005086ae    90
                         nop                                                              // 0x005086af    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x005086b0    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005086b6    8b4858
                         push               0x1d                                          // 0x005086b9    6a1d
                         call               _jmp_addr_0x00484310                          // 0x005086bb    e850bcf7ff
                         neg                eax                                           // 0x005086c0    f7d8
                         sbb.s              eax, eax                                      // 0x005086c2    1bc0
                         and                eax, 0x02                                     // 0x005086c4    83e002
                         ret                                                              // 0x005086c7    c3
                         nop                                                              // 0x005086c8    90
                         nop                                                              // 0x005086c9    90
                         nop                                                              // 0x005086ca    90
                         nop                                                              // 0x005086cb    90
                         nop                                                              // 0x005086cc    90
                         nop                                                              // 0x005086cd    90
                         nop                                                              // 0x005086ce    90
                         nop                                                              // 0x005086cf    90
                         sub                esp, 0x0c                                     // 0x005086d0    83ec0c
                         push               esi                                           // 0x005086d3    56
                         mov.s              esi, ecx                                      // 0x005086d4    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005086d6    8b8e60010000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x005086dc    8b4628
                         {disp8} fld        dword ptr [ecx + 0x6c]                        // 0x005086df    d9416c
                         {disp32} fmul      dword ptr [eax + 0x00000374]                  // 0x005086e2    d88874030000
                         {disp32} mov       edx, dword ptr [eax + 0x0000023c]             // 0x005086e8    8b903c020000
                         mov                eax, dword ptr [esi]                          // 0x005086ee    8b06
                         mov.s              ecx, esi                                      // 0x005086f0    8bce
                         {disp32} fmul      dword ptr [data_bytes + 0x33ba40]             // 0x005086f2    d80d401ad000
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x005086f8    89542408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]              // 0x005086fc    d80de4b68a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00508702    d95c240c
                         call               dword ptr [eax + 0x11c]                       // 0x00508706    ff901c010000
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x0050870c    d8442408
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00508710    d9542408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00508714    d81d98a38a00
                         fnstsw             ax                                            // 0x0050871a    dfe0
                         test               ah, 0x01                                      // 0x0050871c    f6c401
                         {disp8} je         _jmp_addr_0x0050872b                          // 0x0050871f    740a
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00508721    c744240800000000
                         {disp8} jmp        _jmp_addr_0x00508744                          // 0x00508729    eb19
_jmp_addr_0x0050872b:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x0050872b    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0050872f    d81d90a38a00
                         fnstsw             ax                                            // 0x00508735    dfe0
                         test               ah, 0x41                                      // 0x00508737    f6c441
                         {disp8} jne        _jmp_addr_0x00508744                          // 0x0050873a    7508
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x0050873c    c74424080000803f
_jmp_addr_0x00508744:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00508744    8b8e60010000
                         {disp8} fld        dword ptr [ecx + 0x30]                        // 0x0050874a    d94130
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x0050874d    8b5628
                         {disp32} fsub      dword ptr [edx + 0x00000240]                  // 0x00508750    d8a240020000
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x00508756    d9542404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050875a    d81d98a38a00
                         fnstsw             ax                                            // 0x00508760    dfe0
                         test               ah, 0x01                                      // 0x00508762    f6c401
                         {disp8} je         _jmp_addr_0x00508771                          // 0x00508765    740a
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00508767    c744240400000000
                         {disp8} jmp        _jmp_addr_0x0050878a                          // 0x0050876f    eb19
_jmp_addr_0x00508771:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00508771    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00508775    d81d90a38a00
                         fnstsw             ax                                            // 0x0050877b    dfe0
                         test               ah, 0x41                                      // 0x0050877d    f6c441
                         {disp8} jne        _jmp_addr_0x0050878a                          // 0x00508780    7508
                         {disp8} mov        dword ptr [esp + 0x04], 0x3f800000            // 0x00508782    c74424040000803f
_jmp_addr_0x0050878a:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0050878a    8b4c2408
                         mov                eax, dword ptr [esi]                          // 0x0050878e    8b06
                         push               ecx                                           // 0x00508790    51
                         mov.s              ecx, esi                                      // 0x00508791    8bce
                         call               dword ptr [eax + 0x5b0]                       // 0x00508793    ff90b0050000
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00508799    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050879d    d81d98a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005087a3    8b442404
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x005087a7    8b9660010000
                         {disp8} mov        dword ptr [edx + 0x30], eax                   // 0x005087ad    894230
                         fnstsw             ax                                            // 0x005087b0    dfe0
                         test               ah, 0x40                                      // 0x005087b2    f6c440
                         {disp8} je         _jmp_addr_0x005087d4                          // 0x005087b5    741d
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x005087b7    b9f819d000
                         call               _jmp_addr_0x005575e0                          // 0x005087bc    e81fee0400
                         test               eax, eax                                      // 0x005087c1    85c0
                         {disp8} jne        _jmp_addr_0x005087d4                          // 0x005087c3    750f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x005087c5    8b8e64010000
                         cmp                dword ptr [ecx + 0x00001bdc], 0x32            // 0x005087cb    83b9dc1b000032
                         {disp8} jg         _jmp_addr_0x00508809                          // 0x005087d2    7f35
_jmp_addr_0x005087d4:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005087d4    d9442404
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x005087d8    d81d2cb28a00
                         fnstsw             ax                                            // 0x005087de    dfe0
                         test               ah, 0x01                                      // 0x005087e0    f6c401
                         {disp8} je         _jmp_addr_0x00508821                          // 0x005087e3    743c
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x005087e5    8b9664010000
                         {disp32} mov       ecx, dword ptr [edx + 0x00001bdc]             // 0x005087eb    8b8adc1b0000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x005087f1    894c2408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x005087f5    db442408
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x005087f9    d85c240c
                         fnstsw             ax                                            // 0x005087fd    dfe0
                         test               ah, 0x01                                      // 0x005087ff    f6c401
                         {disp8} jne        _jmp_addr_0x00508821                          // 0x00508802    751d
                         cmp                ecx, 0x32                                     // 0x00508804    83f932
                         {disp8} jle        _jmp_addr_0x00508821                          // 0x00508807    7e18
_jmp_addr_0x00508809:    {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00508809    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0050880f    8b4858
                         call               _jmp_addr_0x004848c0                          // 0x00508812    e8a9c0f7ff
                         mov                eax, 0x00000002                               // 0x00508817    b802000000
                         pop                esi                                           // 0x0050881c    5e
                         add                esp, 0x0c                                     // 0x0050881d    83c40c
                         ret                                                              // 0x00508820    c3
_jmp_addr_0x00508821:    xor.s              eax, eax                                      // 0x00508821    33c0
                         pop                esi                                           // 0x00508823    5e
                         add                esp, 0x0c                                     // 0x00508824    83c40c
                         ret                                                              // 0x00508827    c3
                         nop                                                              // 0x00508828    90
                         nop                                                              // 0x00508829    90
                         nop                                                              // 0x0050882a    90
                         nop                                                              // 0x0050882b    90
                         nop                                                              // 0x0050882c    90
                         nop                                                              // 0x0050882d    90
                         nop                                                              // 0x0050882e    90
                         nop                                                              // 0x0050882f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00508830    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00508836    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00508839    e892baf7ff
                         neg                eax                                           // 0x0050883e    f7d8
                         sbb.s              eax, eax                                      // 0x00508840    1bc0
                         and                eax, 0xfffffffe                               // 0x00508842    83e0fe
                         add                eax, 0x02                                     // 0x00508845    83c002
                         ret                                                              // 0x00508848    c3
                         nop                                                              // 0x00508849    90
                         nop                                                              // 0x0050884a    90
                         nop                                                              // 0x0050884b    90
                         nop                                                              // 0x0050884c    90
                         nop                                                              // 0x0050884d    90
                         nop                                                              // 0x0050884e    90
                         nop                                                              // 0x0050884f    90
                         sub                esp, 0x44                                     // 0x00508850    83ec44
                         push               ebx                                           // 0x00508853    53
                         push               esi                                           // 0x00508854    56
                         push               edi                                           // 0x00508855    57
                         mov.s              esi, ecx                                      // 0x00508856    8bf1
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00508858    e8f3eff6ff
                         mov.s              ecx, eax                                      // 0x0050885d    8bc8
                         call               _jmp_addr_0x004842e0                          // 0x0050885f    e87cbaf7ff
                         test               eax, eax                                      // 0x00508864    85c0
                         {disp32} je        _jmp_addr_0x00508aeb                          // 0x00508866    0f847f020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0050886c    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00508872    8b88b40f0000
                         push               ebp                                           // 0x00508878    55
                         add                eax, 0x00000fa8                               // 0x00508879    05a80f0000
                         push               0x0                                           // 0x0050887e    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00508880    8d0c49
                         push               0x009c7f50                                    // 0x00508883    68507f9c00
                         shl                ecx, 5                                        // 0x00508888    c1e105
                         {disp8} mov        edi, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x0050888b    8b7c0134
                         {disp8} mov        edx, dword ptr [edi + 0x30]                   // 0x0050888f    8b5730
                         push               0x009c7f30                                    // 0x00508892    68307f9c00
                         push               0x0                                           // 0x00508897    6a00
                         push               edx                                           // 0x00508899    52
                         call               ___RTDynamicCast                              // 0x0050889a    e87ad12b00
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x0050889f    8d5e14
                         add                edi, 0x24                                     // 0x005088a2    83c724
                         push               ebx                                           // 0x005088a5    53
                         push               edi                                           // 0x005088a6    57
                         mov.s              ebp, eax                                      // 0x005088a7    8be8
                         call               _jmp_addr_0x0074cd50                          // 0x005088a9    e8a2442400
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005088ae    d95c2430
                         add                esp, 0x1c                                     // 0x005088b2    83c41c
                         test               ebp, ebp                                      // 0x005088b5    85ed
                         {disp8} je         _jmp_addr_0x005088c9                          // 0x005088b7    7410
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x005088b9    8b4500
                         mov.s              ecx, ebp                                      // 0x005088bc    8bcd
                         call               dword ptr [eax + 0x64]                        // 0x005088be    ff5064
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]             // 0x005088c1    d80d986c8c00
                         {disp8} jmp        _jmp_addr_0x005088cf                          // 0x005088c7    eb06
_jmp_addr_0x005088c9:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005088c9    d90598a38a00
_jmp_addr_0x005088cf:    {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x005088cf    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005088d5    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x005088db    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005088e0    8d0c49
                         shl                ecx, 5                                        // 0x005088e3    c1e105
                         {disp8} fld        dword ptr [ecx + eax * 0x1 + 0x48]            // 0x005088e6    d9440148
                         pop                ebp                                           // 0x005088ea    5d
                         fadd               st, st(1)                                     // 0x005088eb    d8c1
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005088ed    d95c240c
                         fstp               st(0)                                         // 0x005088f1    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005088f3    d9442410
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x005088f7    d85c240c
                         fnstsw             ax                                            // 0x005088fb    dfe0
                         test               ah, 0x01                                      // 0x005088fd    f6c401
                         {disp32} je        _jmp_addr_0x00508adf                          // 0x00508900    0f84d9010000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00508906    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x0050890a    d81d18f58b00
                         fnstsw             ax                                            // 0x00508910    dfe0
                         test               ah, 0x41                                      // 0x00508912    f6c441
                         {disp8} je         _jmp_addr_0x00508932                          // 0x00508915    741b
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00508917    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x0050891d    c74424200000803f
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x00508925    c744242800000000
                         {disp32} jmp       _jmp_addr_0x005089fd                          // 0x0050892d    e9cb000000
_jmp_addr_0x00508932:    {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00508932    8d542420
                         push               edx                                           // 0x00508936    52
                         mov.s              ecx, edi                                      // 0x00508937    8bcf
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00508939    e802d30f00
                         mov.s              edi, eax                                      // 0x0050893e    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x00508940    8d442444
                         push               eax                                           // 0x00508944    50
                         mov.s              ecx, ebx                                      // 0x00508945    8bcb
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00508947    e8f4d20f00
                         fld                dword ptr [eax]                               // 0x0050894c    d900
                         fsub               dword ptr [edi]                               // 0x0050894e    d827
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00508950    d95c2414
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x00508954    d94004
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00508957    8b4c2414
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x0050895b    d86704
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0050895e    d95c2418
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x00508962    d94008
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00508965    8b542418
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00508969    d86708
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0050896c    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00508970    89542424
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00508974    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00508978    d9442414
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0050897c    8b44241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00508980    d81d98a38a00
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00508986    89442428
                         fnstsw             ax                                            // 0x0050898a    dfe0
                         test               ah, 0x40                                      // 0x0050898c    f6c440
                         {disp8} je         _jmp_addr_0x005089b3                          // 0x0050898f    7422
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00508991    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00508995    d81d98a38a00
                         fnstsw             ax                                            // 0x0050899b    dfe0
                         test               ah, 0x40                                      // 0x0050899d    f6c440
                         {disp8} je         _jmp_addr_0x005089b3                          // 0x005089a0    7411
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005089a2    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005089a6    d81d98a38a00
                         fnstsw             ax                                            // 0x005089ac    dfe0
                         test               ah, 0x40                                      // 0x005089ae    f6c440
                         {disp8} jne        _jmp_addr_0x005089f9                          // 0x005089b1    7546
_jmp_addr_0x005089b3:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005089b3    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x005089b7    d84c241c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005089bb    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005089bf    d84c2418
                         faddp              st(1), st                                     // 0x005089c3    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005089c5    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005089c9    d84c2414
                         faddp              st(1), st                                     // 0x005089cd    dec1
                         fsqrt                                                            // 0x005089cf    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005089d1    d83d90a38a00
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x005089d7    d9542410
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005089db    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005089df    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005089e3    d9442418
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005089e7    d84c2410
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005089eb    d944241c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005089ef    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005089f3    d95c2428
                         {disp8} jmp        _jmp_addr_0x005089fd                          // 0x005089f7    eb04
_jmp_addr_0x005089f9:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x005089f9    d9442424
_jmp_addr_0x005089fd:    {disp8} fld        dword ptr [esp + 0x20]                        // 0x005089fd    d9442420
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x00508a01    8d4c2444
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00508a05    d84c240c
                         push               ecx                                           // 0x00508a09    51
                         mov.s              ecx, ebx                                      // 0x00508a0a    8bcb
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00508a0c    d95c2424
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00508a10    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00508a14    d95c2428
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00508a18    d944242c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00508a1c    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00508a20    d95c242c
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00508a24    e817d20f00
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00508a29    d9442428
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x00508a2d    d84008
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00508a30    d9442424
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x00508a34    d84004
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00508a37    d9442420
                         fadd               dword ptr [eax]                               // 0x00508a3b    d800
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00508a3d    d95c242c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00508a41    d95c2430
                         {disp8} fst        dword ptr [esp + 0x34]                        // 0x00508a45    d9542434
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00508a49    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00508a4d    d80d00c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00508a53    e8a8892900
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x00508a58    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00508a5e    89442438
                         call               _jmp_addr_0x007a1400                          // 0x00508a62    e899892900
                         mov                edx, dword ptr [esi]                          // 0x00508a67    8b16
                         push               0x0                                           // 0x00508a69    6a00
                         mov.s              ecx, esi                                      // 0x00508a6b    8bce
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00508a6d    89442440
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x00508a71    c744244400000000
                         call               dword ptr [edx + 0x42c]                       // 0x00508a79    ff922c040000
                         push               ecx                                           // 0x00508a7f    51
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00508a80    8d442440
                         fstp               dword ptr [esp]                               // 0x00508a84    d91c24
                         push               eax                                           // 0x00508a87    50
                         mov.s              ecx, esi                                      // 0x00508a88    8bce
                         call               _jmp_addr_0x004dfbe0                          // 0x00508a8a    e85171fdff
                         test               eax, eax                                      // 0x00508a8f    85c0
                         {disp8} je         _jmp_addr_0x00508ad3                          // 0x00508a91    7440
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x00508a93    8d4c2444
                         push               ecx                                           // 0x00508a97    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x00508a98    8d4c243c
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00508a9c    e89fd10f00
                         mov                edx, dword ptr [eax]                          // 0x00508aa1    8b10
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00508aa3    8954242c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00508aa7    8b4804
                         push               0x0                                           // 0x00508aaa    6a00
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00508aac    894c2434
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00508ab0    8b5008
                         push               0x3f800000                                    // 0x00508ab3    680000803f
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x00508ab8    8d442434
                         push               eax                                           // 0x00508abc    50
                         push               0x0                                           // 0x00508abd    6a00
                         mov.s              ecx, esi                                      // 0x00508abf    8bce
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00508ac1    89542444
                         call               _jmp_addr_0x0047a880                          // 0x00508ac5    e8b61df7ff
                         test               eax, eax                                      // 0x00508aca    85c0
                         {disp8} jl         _jmp_addr_0x00508adf                          // 0x00508acc    7c11
                         cmp                eax, 0x02                                     // 0x00508ace    83f802
                         {disp8} jg         _jmp_addr_0x00508adf                          // 0x00508ad1    7f0c
_jmp_addr_0x00508ad3:    pop                edi                                           // 0x00508ad3    5f
                         pop                esi                                           // 0x00508ad4    5e
                         mov                eax, 0x00000001                               // 0x00508ad5    b801000000
                         pop                ebx                                           // 0x00508ada    5b
                         add                esp, 0x44                                     // 0x00508adb    83c444
                         ret                                                              // 0x00508ade    c3
_jmp_addr_0x00508adf:    pop                edi                                           // 0x00508adf    5f
                         pop                esi                                           // 0x00508ae0    5e
                         mov                eax, 0x00000002                               // 0x00508ae1    b802000000
                         pop                ebx                                           // 0x00508ae6    5b
                         add                esp, 0x44                                     // 0x00508ae7    83c444
                         ret                                                              // 0x00508aea    c3
_jmp_addr_0x00508aeb:    pop                edi                                           // 0x00508aeb    5f
                         pop                esi                                           // 0x00508aec    5e
                         xor.s              eax, eax                                      // 0x00508aed    33c0
                         pop                ebx                                           // 0x00508aef    5b
                         add                esp, 0x44                                     // 0x00508af0    83c444
                         ret                                                              // 0x00508af3    c3
                         nop                                                              // 0x00508af4    90
                         nop                                                              // 0x00508af5    90
                         nop                                                              // 0x00508af6    90
                         nop                                                              // 0x00508af7    90
                         nop                                                              // 0x00508af8    90
                         nop                                                              // 0x00508af9    90
                         nop                                                              // 0x00508afa    90
                         nop                                                              // 0x00508afb    90
                         nop                                                              // 0x00508afc    90
                         nop                                                              // 0x00508afd    90
                         nop                                                              // 0x00508afe    90
                         nop                                                              // 0x00508aff    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00508b00    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00508b06    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00508b09    e8c2b7f7ff
                         neg                eax                                           // 0x00508b0e    f7d8
                         sbb.s              eax, eax                                      // 0x00508b10    1bc0
                         and                eax, 0xfffffffe                               // 0x00508b12    83e0fe
                         add                eax, 0x02                                     // 0x00508b15    83c002
                         ret                                                              // 0x00508b18    c3
                         nop                                                              // 0x00508b19    90
                         nop                                                              // 0x00508b1a    90
                         nop                                                              // 0x00508b1b    90
                         nop                                                              // 0x00508b1c    90
                         nop                                                              // 0x00508b1d    90
                         nop                                                              // 0x00508b1e    90
                         nop                                                              // 0x00508b1f    90
                         push               0x0                                           // 0x00508b20    6a00
                         push               0x0                                           // 0x00508b22    6a00
                         push               0x0                                           // 0x00508b24    6a00
                         call               _jmp_addr_0x0047ab90                          // 0x00508b26    e86520f7ff
                         ret                                                              // 0x00508b2b    c3
                         nop                                                              // 0x00508b2c    90
                         nop                                                              // 0x00508b2d    90
                         nop                                                              // 0x00508b2e    90
                         nop                                                              // 0x00508b2f    90
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00508b30    e81bedf6ff
                         mov.s              ecx, eax                                      // 0x00508b35    8bc8
                         {disp32} jmp       _jmp_addr_0x004848c0                          // 0x00508b37    e984bdf7ff
                         nop                                                              // 0x00508b3c    90
                         nop                                                              // 0x00508b3d    90
                         nop                                                              // 0x00508b3e    90
                         nop                                                              // 0x00508b3f    90
                         push               esi                                           // 0x00508b40    56
                         mov.s              esi, ecx                                      // 0x00508b41    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00508b43    8b8660010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]                   // 0x00508b49    8b4058
                         {disp32} mov       ecx, dword ptr [eax + 0x000048d0]             // 0x00508b4c    8b88d0480000
                         test               ecx, ecx                                      // 0x00508b52    85c9
                         {disp8} jne        _jmp_addr_0x00508b9d                          // 0x00508b54    7547
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00508b56    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00508b5c    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00508b62    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00508b67    8d0c49
                         shl                ecx, 5                                        // 0x00508b6a    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00508b6d    8b440134
                         test               eax, eax                                      // 0x00508b71    85c0
                         {disp8} je         _jmp_addr_0x00508bc4                          // 0x00508b73    744f
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00508b75    8b5030
                         push               0x0                                           // 0x00508b78    6a00
                         push               0x009c7f50                                    // 0x00508b7a    68507f9c00
                         push               0x009c7f30                                    // 0x00508b7f    68307f9c00
                         push               0x0                                           // 0x00508b84    6a00
                         push               edx                                           // 0x00508b86    52
                         call               ___RTDynamicCast                              // 0x00508b87    e88dce2b00
                         add                esp, 0x14                                     // 0x00508b8c    83c414
                         test               eax, eax                                      // 0x00508b8f    85c0
                         {disp8} je         _jmp_addr_0x00508bc4                          // 0x00508b91    7431
                         push               eax                                           // 0x00508b93    50
                         mov.s              ecx, esi                                      // 0x00508b94    8bce
                         call               _jmp_addr_0x00500540                          // 0x00508b96    e8a579ffff
                         pop                esi                                           // 0x00508b9b    5e
                         ret                                                              // 0x00508b9c    c3
_jmp_addr_0x00508b9d:    cmp                dword ptr [eax + 0x00004994], 0x0c            // 0x00508b9d    83b8944900000c
                         {disp8} jne        _jmp_addr_0x00508bc4                          // 0x00508ba4    751e
                         {disp32} mov       dword ptr [eax + 0x000048d0], 0x00000000      // 0x00508ba6    c780d048000000000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00508bb0    8b8660010000
                         {disp8} mov        dword ptr [eax + 0x28], 0x00000000            // 0x00508bb6    c7402800000000
                         mov                edx, dword ptr [ecx]                          // 0x00508bbd    8b11
                         push               0x0                                           // 0x00508bbf    6a00
                         call               dword ptr [edx + 0xc]                         // 0x00508bc1    ff520c
_jmp_addr_0x00508bc4:    pop                esi                                           // 0x00508bc4    5e
                         ret                                                              // 0x00508bc5    c3
                         nop                                                              // 0x00508bc6    90
                         nop                                                              // 0x00508bc7    90
                         nop                                                              // 0x00508bc8    90
                         nop                                                              // 0x00508bc9    90
                         nop                                                              // 0x00508bca    90
                         nop                                                              // 0x00508bcb    90
                         nop                                                              // 0x00508bcc    90
                         nop                                                              // 0x00508bcd    90
                         nop                                                              // 0x00508bce    90
                         nop                                                              // 0x00508bcf    90
                         push               0x000000cd                                    // 0x00508bd0    68cd000000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00508bd5    e876ecf6ff
                         mov.s              ecx, eax                                      // 0x00508bda    8bc8
                         call               _jmp_addr_0x00484360                          // 0x00508bdc    e87fb7f7ff
                         mov                eax, 0x00000002                               // 0x00508be1    b802000000
                         ret                                                              // 0x00508be6    c3
                         nop                                                              // 0x00508be7    90
                         nop                                                              // 0x00508be8    90
                         nop                                                              // 0x00508be9    90
                         nop                                                              // 0x00508bea    90
                         nop                                                              // 0x00508beb    90
                         nop                                                              // 0x00508bec    90
                         nop                                                              // 0x00508bed    90
                         nop                                                              // 0x00508bee    90
                         nop                                                              // 0x00508bef    90
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00508bf0    e85becf6ff
                         {disp32} mov       edx, dword ptr [eax + 0x00005738]             // 0x00508bf5    8b9038570000
                         xor.s              ecx, ecx                                      // 0x00508bfb    33c9
                         test               edx, edx                                      // 0x00508bfd    85d2
                         setne              cl                                            // 0x00508bff    0f95c1
                         dec                ecx                                           // 0x00508c02    49
                         and                ecx, 0x02                                     // 0x00508c03    83e102
                         mov.s              eax, ecx                                      // 0x00508c06    8bc1
                         ret                                                              // 0x00508c08    c3
                         nop                                                              // 0x00508c09    90
                         nop                                                              // 0x00508c0a    90
                         nop                                                              // 0x00508c0b    90
                         nop                                                              // 0x00508c0c    90
                         nop                                                              // 0x00508c0d    90
                         nop                                                              // 0x00508c0e    90
                         nop                                                              // 0x00508c0f    90
                         push               esi                                           // 0x00508c10    56
                         mov.s              esi, ecx                                      // 0x00508c11    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]             // 0x00508c13    8b8e70030000
                         call               _jmp_addr_0x004f4b60                          // 0x00508c19    e842bffeff
                         test               eax, eax                                      // 0x00508c1e    85c0
                         {disp8} je         _jmp_addr_0x00508c57                          // 0x00508c20    7435
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00508c22    8b8664010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f58]             // 0x00508c28    8b80580f0000
                         test               eax, eax                                      // 0x00508c2e    85c0
                         {disp8} je         _jmp_addr_0x00508c57                          // 0x00508c30    7425
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00508c32    8b4830
                         mov                edx, dword ptr [ecx]                          // 0x00508c35    8b11
                         call               dword ptr [edx + 0xa4]                        // 0x00508c37    ff92a4000000
                         test               eax, eax                                      // 0x00508c3d    85c0
                         {disp8} je         _jmp_addr_0x00508c57                          // 0x00508c3f    7416
                         {disp32} mov       ecx, dword ptr [eax + 0x00000370]             // 0x00508c41    8b8870030000
                         call               _jmp_addr_0x004f4b60                          // 0x00508c47    e814bffeff
                         test               eax, eax                                      // 0x00508c4c    85c0
                         {disp8} je         _jmp_addr_0x00508c57                          // 0x00508c4e    7407
                         mov                eax, 0x00000002                               // 0x00508c50    b802000000
                         pop                esi                                           // 0x00508c55    5e
                         ret                                                              // 0x00508c56    c3
_jmp_addr_0x00508c57:    xor.s              eax, eax                                      // 0x00508c57    33c0
                         pop                esi                                           // 0x00508c59    5e
                         ret                                                              // 0x00508c5a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00508c5b    e8198cefff
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00508c60    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00508c66    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00508c6c    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00508c71    8d0c49
                         shl                ecx, 5                                        // 0x00508c74    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00508c77    8b440134
                         sub                esp, 0x08                                     // 0x00508c7b    83ec08
                         test               eax, eax                                      // 0x00508c7e    85c0
                         push               esi                                           // 0x00508c80    56
                         {disp32} je        _jmp_addr_0x00508d21                          // 0x00508c81    0f849a000000
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00508c87    8b5030
                         push               0x0                                           // 0x00508c8a    6a00
                         push               0x009c7f50                                    // 0x00508c8c    68507f9c00
                         push               0x009c7f30                                    // 0x00508c91    68307f9c00
                         push               0x0                                           // 0x00508c96    6a00
                         push               edx                                           // 0x00508c98    52
                         call               ___RTDynamicCast                              // 0x00508c99    e87bcd2b00
                         add                esp, 0x14                                     // 0x00508c9e    83c414
                         test               eax, eax                                      // 0x00508ca1    85c0
                         {disp8} je         _jmp_addr_0x00508d21                          // 0x00508ca3    747c
                         push               0x0                                           // 0x00508ca5    6a00
                         push               0x009c7fa0                                    // 0x00508ca7    68a07f9c00
                         push               0x009c7f50                                    // 0x00508cac    68507f9c00
                         push               0x0                                           // 0x00508cb1    6a00
                         push               eax                                           // 0x00508cb3    50
                         call               ___RTDynamicCast                              // 0x00508cb4    e860cd2b00
                         add                esp, 0x14                                     // 0x00508cb9    83c414
                         test               eax, eax                                      // 0x00508cbc    85c0
                         {disp8} je         _jmp_addr_0x00508d21                          // 0x00508cbe    7461
                         {disp8} mov        esi, dword ptr [eax + 0x74]                   // 0x00508cc0    8b7074
                         test               esi, esi                                      // 0x00508cc3    85f6
                         {disp8} je         _jmp_addr_0x00508d21                          // 0x00508cc5    745a
                         mov                eax, dword ptr [esi]                          // 0x00508cc7    8b06
                         push               edi                                           // 0x00508cc9    57
                         push               0x1                                           // 0x00508cca    6a01
                         mov.s              ecx, esi                                      // 0x00508ccc    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00508cce    ff9098000000
                         mov.s              edi, eax                                      // 0x00508cd4    8bf8
                         {disp8} mov        dword ptr [esp + 0x08], edi                   // 0x00508cd6    897c2408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00508cda    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x00508ce2    df6c2408
                         mov.s              ecx, esi                                      // 0x00508ce6    8bce
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00508ce8    d95c2408
                         call               ?GetWoodValue@BuildingSite@@QAEMXZ            // 0x00508cec    e8cf33f3ff
                         {disp8} fdivr      dword ptr [esp + 0x08]                        // 0x00508cf1    d87c2408
                         mov                edx, dword ptr [esi]                          // 0x00508cf5    8b16
                         push               0x0                                           // 0x00508cf7    6a00
                         push               0x0                                           // 0x00508cf9    6a00
                         push               edi                                           // 0x00508cfb    57
                         push               0x1                                           // 0x00508cfc    6a01
                         mov.s              ecx, esi                                      // 0x00508cfe    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00508d00    d95c2418
                         call               dword ptr [edx + 0xa0]                        // 0x00508d04    ff92a0000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00508d0a    8b442408
                         push               eax                                           // 0x00508d0e    50
                         mov.s              ecx, esi                                      // 0x00508d0f    8bce
                         call               @BuildBy__12BuildingSiteFf@12                 // 0x00508d11    e86a43f3ff
                         pop                edi                                           // 0x00508d16    5f
                         mov                eax, 0x00000002                               // 0x00508d17    b802000000
                         pop                esi                                           // 0x00508d1c    5e
                         add                esp, 0x08                                     // 0x00508d1d    83c408
                         ret                                                              // 0x00508d20    c3
_jmp_addr_0x00508d21:    mov                eax, 0x00000002                               // 0x00508d21    b802000000
                         pop                esi                                           // 0x00508d26    5e
                         add                esp, 0x08                                     // 0x00508d27    83c408
                         ret                                                              // 0x00508d2a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00508d2b    e8498befff
                         sub                esp, 0x44                                     // 0x00508d30    83ec44
                         push               ebx                                           // 0x00508d33    53
                         mov.s              ebx, ecx                                      // 0x00508d34    8bd9
                         {disp8} lea        eax, dword ptr [ebx + 0x14]                   // 0x00508d36    8d4314
                         mov                ecx, dword ptr [eax]                          // 0x00508d39    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00508d3b    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00508d3e    8b4008
                         push               ebp                                           // 0x00508d41    55
                         push               esi                                           // 0x00508d42    56
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00508d43    8944241c
                         mov                eax, 0x00000001                               // 0x00508d47    b801000000
                         push               edi                                           // 0x00508d4c    57
                         xor.s              edi, edi                                      // 0x00508d4d    33ff
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00508d4f    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00508d53    8954241c
                         mov                ebp, 0x00000019                               // 0x00508d57    bd19000000
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00508d5c    89442414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00508d60    89442410
_jmp_addr_0x00508d64:    push               0x0                                           // 0x00508d64    6a00
                         push               -0x1                                          // 0x00508d66    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00508d68    8d4c2420
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00508d6c    e84fb80f00
                         mov.s              esi, eax                                      // 0x00508d71    8bf0
                         test               esi, esi                                      // 0x00508d73    85f6
                         {disp8} je         _jmp_addr_0x00508da6                          // 0x00508d75    742f
_jmp_addr_0x00508d77:    push               0x0                                           // 0x00508d77    6a00
                         push               0x00be67b0                                    // 0x00508d79    68b067be00
                         push               0x009c7f50                                    // 0x00508d7e    68507f9c00
                         push               0x0                                           // 0x00508d83    6a00
                         push               esi                                           // 0x00508d85    56
                         call               ___RTDynamicCast                              // 0x00508d86    e88ecc2b00
                         mov.s              edi, eax                                      // 0x00508d8b    8bf8
                         add                esp, 0x14                                     // 0x00508d8d    83c414
                         test               edi, edi                                      // 0x00508d90    85ff
                         {disp8} jne        _jmp_addr_0x00508dcb                          // 0x00508d92    7537
                         push               esi                                           // 0x00508d94    56
                         push               -0x1                                          // 0x00508d95    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00508d97    8d4c2420
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00508d9b    e820b80f00
                         mov.s              esi, eax                                      // 0x00508da0    8bf0
                         test               esi, esi                                      // 0x00508da2    85f6
                         {disp8} jne        _jmp_addr_0x00508d77                          // 0x00508da4    75d1
_jmp_addr_0x00508da6:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00508da6    8d4c2410
                         push               ecx                                           // 0x00508daa    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00508dab    8d542418
                         push               edx                                           // 0x00508daf    52
                         dec                ebp                                           // 0x00508db0    4d
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z        // 0x00508db1    e82a4a2400
                         add                esp, 0x08                                     // 0x00508db6    83c408
                         push               eax                                           // 0x00508db9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00508dba    8d4c241c
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12            // 0x00508dbe    e8adc60f00
                         test               ebp, ebp                                      // 0x00508dc3    85ed
                         {disp8} jne        _jmp_addr_0x00508d64                          // 0x00508dc5    759d
                         test               edi, edi                                      // 0x00508dc7    85ff
                         {disp8} je         _jmp_addr_0x00508e25                          // 0x00508dc9    745a
_jmp_addr_0x00508dcb:    {disp32} mov       ecx, dword ptr [ebx + 0x00000164]             // 0x00508dcb    8b8b64010000
                         push               edi                                           // 0x00508dd1    57
                         push               ebx                                           // 0x00508dd2    53
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x00508dd3    e8f8edfcff
                         push               0x3f800000                                    // 0x00508dd8    680000803f
                         push               0x0                                           // 0x00508ddd    6a00
                         push               eax                                           // 0x00508ddf    50
                         push               0x0                                           // 0x00508de0    6a00
                         push               0x0000009e                                    // 0x00508de2    689e000000
                         push               0x4                                           // 0x00508de7    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x00508de9    8d4c243c
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x00508ded    e83e84feff
                         push               0x1                                           // 0x00508df2    6a01
                         push               0x1                                           // 0x00508df4    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x00508df6    8d44242c
                         push               eax                                           // 0x00508dfa    50
                         mov.s              ecx, ebx                                      // 0x00508dfb    8bcb
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x00508dfd    e8aeb6fbff
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000164]             // 0x00508e02    8b8b64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c14], 0x00000001      // 0x00508e08    c781141c000001000000
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00508e12    8d4c2424
                         call               _jmp_addr_0x004f12d0                          // 0x00508e16    e8b584feff
                         pop                edi                                           // 0x00508e1b    5f
                         pop                esi                                           // 0x00508e1c    5e
                         pop                ebp                                           // 0x00508e1d    5d
                         xor.s              eax, eax                                      // 0x00508e1e    33c0
                         pop                ebx                                           // 0x00508e20    5b
                         add                esp, 0x44                                     // 0x00508e21    83c444
                         ret                                                              // 0x00508e24    c3
_jmp_addr_0x00508e25:    pop                edi                                           // 0x00508e25    5f
                         pop                esi                                           // 0x00508e26    5e
                         pop                ebp                                           // 0x00508e27    5d
                         mov                eax, 0x00000001                               // 0x00508e28    b801000000
                         pop                ebx                                           // 0x00508e2d    5b
                         add                esp, 0x44                                     // 0x00508e2e    83c444
                         ret                                                              // 0x00508e31    c3
                         nop                                                              // 0x00508e32    90
                         nop                                                              // 0x00508e33    90
                         nop                                                              // 0x00508e34    90
                         nop                                                              // 0x00508e35    90
                         nop                                                              // 0x00508e36    90
                         nop                                                              // 0x00508e37    90
                         nop                                                              // 0x00508e38    90
                         nop                                                              // 0x00508e39    90
                         nop                                                              // 0x00508e3a    90
                         nop                                                              // 0x00508e3b    90
                         nop                                                              // 0x00508e3c    90
                         nop                                                              // 0x00508e3d    90
                         nop                                                              // 0x00508e3e    90
                         nop                                                              // 0x00508e3f    90
_globl_ct_0x00508e40:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00508e40    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00508e46    b001
                         test               al, cl                                        // 0x00508e48    84c8
                         {disp8} jne        _jmp_addr_0x00508e54                          // 0x00508e4a    7508
                         or.s               cl, al                                        // 0x00508e4c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00508e4e    880d34c9fa00
_jmp_addr_0x00508e54:    {disp32} jmp       _jmp_addr_0x00508e60                          // 0x00508e54    e907000000
                         nop                                                              // 0x00508e59    90
                         nop                                                              // 0x00508e5a    90
                         nop                                                              // 0x00508e5b    90
                         nop                                                              // 0x00508e5c    90
                         nop                                                              // 0x00508e5d    90
                         nop                                                              // 0x00508e5e    90
                         nop                                                              // 0x00508e5f    90
_jmp_addr_0x00508e60:    push               0x00407870                                    // 0x00508e60    6870784000
                         call               _atexit                                       // 0x00508e65    e827c92b00
                         pop                ecx                                           // 0x00508e6a    59
                         ret                                                              // 0x00508e6b    c3
                         nop                                                              // 0x00508e6c    90
                         nop                                                              // 0x00508e6d    90
                         nop                                                              // 0x00508e6e    90
                         nop                                                              // 0x00508e6f    90
_globl_ct_0x00508e70:    {disp32} jmp       _jmp_addr_0x00508e80                          // 0x00508e70    e90b000000
                         nop                                                              // 0x00508e75    90
                         nop                                                              // 0x00508e76    90
                         nop                                                              // 0x00508e77    90
                         nop                                                              // 0x00508e78    90
                         nop                                                              // 0x00508e79    90
                         nop                                                              // 0x00508e7a    90
                         nop                                                              // 0x00508e7b    90
                         nop                                                              // 0x00508e7c    90
                         nop                                                              // 0x00508e7d    90
                         nop                                                              // 0x00508e7e    90
                         nop                                                              // 0x00508e7f    90
_jmp_addr_0x00508e80:    {disp32} fld       dword ptr [rdata_bytes + 0x2869c]             // 0x00508e80    d9059c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x28698]             // 0x00508e86    d80d98168d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7b30]             // 0x00508e8c    d91d30dbca00
                         ret                                                              // 0x00508e92    c3
                         nop                                                              // 0x00508e93    90
                         nop                                                              // 0x00508e94    90
                         nop                                                              // 0x00508e95    90
                         nop                                                              // 0x00508e96    90
                         nop                                                              // 0x00508e97    90
                         nop                                                              // 0x00508e98    90
                         nop                                                              // 0x00508e99    90
                         nop                                                              // 0x00508e9a    90
                         nop                                                              // 0x00508e9b    90
                         nop                                                              // 0x00508e9c    90
                         nop                                                              // 0x00508e9d    90
                         nop                                                              // 0x00508e9e    90
                         nop                                                              // 0x00508e9f    90
_globl_ct_0x00508ea0:    {disp32} jmp       _jmp_addr_0x00508eb0                          // 0x00508ea0    e90b000000
                         nop                                                              // 0x00508ea5    90
                         nop                                                              // 0x00508ea6    90
                         nop                                                              // 0x00508ea7    90
                         nop                                                              // 0x00508ea8    90
                         nop                                                              // 0x00508ea9    90
                         nop                                                              // 0x00508eaa    90
                         nop                                                              // 0x00508eab    90
                         nop                                                              // 0x00508eac    90
                         nop                                                              // 0x00508ead    90
                         nop                                                              // 0x00508eae    90
                         nop                                                              // 0x00508eaf    90
_jmp_addr_0x00508eb0:    {disp32} mov       dword ptr [data_bytes + 0x2e7b2c], 0xffffffff // 0x00508eb0    c7052cdbca00ffffffff
                         ret                                                              // 0x00508eba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00508ebb    e8b989efff
                         mov                eax, 0x00000001                               // 0x00508ec0    b801000000
                         ret                                                              // 0x00508ec5    c3
                         nop                                                              // 0x00508ec6    90
                         nop                                                              // 0x00508ec7    90
                         nop                                                              // 0x00508ec8    90
                         nop                                                              // 0x00508ec9    90
                         nop                                                              // 0x00508eca    90
                         nop                                                              // 0x00508ecb    90
                         nop                                                              // 0x00508ecc    90
                         nop                                                              // 0x00508ecd    90
                         nop                                                              // 0x00508ece    90
                         nop                                                              // 0x00508ecf    90
                         {disp32} mov       edx, dword ptr [ecx + 0x00001268]             // 0x00508ed0    8b9168120000
                         xor.s              eax, eax                                      // 0x00508ed6    33c0
                         cmp                edx, 0x03                                     // 0x00508ed8    83fa03
                         setge              al                                            // 0x00508edb    0f9dc0
                         ret                                                              // 0x00508ede    c3
                         nop                                                              // 0x00508edf    90
                         mov                eax, 0x00000001                               // 0x00508ee0    b801000000
                         ret                                                              // 0x00508ee5    c3
                         nop                                                              // 0x00508ee6    90
                         nop                                                              // 0x00508ee7    90
                         nop                                                              // 0x00508ee8    90
                         nop                                                              // 0x00508ee9    90
                         nop                                                              // 0x00508eea    90
                         nop                                                              // 0x00508eeb    90
                         nop                                                              // 0x00508eec    90
                         nop                                                              // 0x00508eed    90
                         nop                                                              // 0x00508eee    90
                         nop                                                              // 0x00508eef    90
                         xor.s              eax, eax                                      // 0x00508ef0    33c0
                         ret                                                              // 0x00508ef2    c3
                         nop                                                              // 0x00508ef3    90
                         nop                                                              // 0x00508ef4    90
                         nop                                                              // 0x00508ef5    90
                         nop                                                              // 0x00508ef6    90
                         nop                                                              // 0x00508ef7    90
                         nop                                                              // 0x00508ef8    90
                         nop                                                              // 0x00508ef9    90
                         nop                                                              // 0x00508efa    90
                         nop                                                              // 0x00508efb    90
                         nop                                                              // 0x00508efc    90
                         nop                                                              // 0x00508efd    90
                         nop                                                              // 0x00508efe    90
                         nop                                                              // 0x00508eff    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]             // 0x00508f00    8b8964010000
                         push               0x28                                          // 0x00508f06    6a28
                         add                ecx, 0x8                                      // 0x00508f08    83c108
                         call               _jmp_addr_0x004dc5b0                          // 0x00508f0b    e8a036fdff
                         sub                eax, 0x0c                                     // 0x00508f10    83e80c
                         neg                eax                                           // 0x00508f13    f7d8
                         sbb.s              eax, eax                                      // 0x00508f15    1bc0
                         inc                eax                                           // 0x00508f17    40
                         ret                                                              // 0x00508f18    c3
                         nop                                                              // 0x00508f19    90
                         nop                                                              // 0x00508f1a    90
                         nop                                                              // 0x00508f1b    90
                         nop                                                              // 0x00508f1c    90
                         nop                                                              // 0x00508f1d    90
                         nop                                                              // 0x00508f1e    90
                         nop                                                              // 0x00508f1f    90
                         mov                eax, 0x00000001                               // 0x00508f20    b801000000
                         ret                                                              // 0x00508f25    c3
                         nop                                                              // 0x00508f26    90
                         nop                                                              // 0x00508f27    90
                         nop                                                              // 0x00508f28    90
                         nop                                                              // 0x00508f29    90
                         nop                                                              // 0x00508f2a    90
                         nop                                                              // 0x00508f2b    90
                         nop                                                              // 0x00508f2c    90
                         nop                                                              // 0x00508f2d    90
                         nop                                                              // 0x00508f2e    90
                         nop                                                              // 0x00508f2f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00508f30    8b8160010000
                         {disp8} mov        edx, dword ptr [eax + 0x28]                   // 0x00508f36    8b5028
                         xor.s              ecx, ecx                                      // 0x00508f39    33c9
                         test               edx, edx                                      // 0x00508f3b    85d2
                         setne              cl                                            // 0x00508f3d    0f95c1
                         mov.s              eax, ecx                                      // 0x00508f40    8bc1
                         ret                                                              // 0x00508f42    c3
                         nop                                                              // 0x00508f43    90
                         nop                                                              // 0x00508f44    90
                         nop                                                              // 0x00508f45    90
                         nop                                                              // 0x00508f46    90
                         nop                                                              // 0x00508f47    90
                         nop                                                              // 0x00508f48    90
                         nop                                                              // 0x00508f49    90
                         nop                                                              // 0x00508f4a    90
                         nop                                                              // 0x00508f4b    90
                         nop                                                              // 0x00508f4c    90
                         nop                                                              // 0x00508f4d    90
                         nop                                                              // 0x00508f4e    90
                         nop                                                              // 0x00508f4f    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]             // 0x00508f50    8b8964010000
                         push               0x28                                          // 0x00508f56    6a28
                         add                ecx, 0x8                                      // 0x00508f58    83c108
                         call               _jmp_addr_0x004dc5b0                          // 0x00508f5b    e85036fdff
                         sub                eax, 0x0e                                     // 0x00508f60    83e80e
                         neg                eax                                           // 0x00508f63    f7d8
                         sbb.s              eax, eax                                      // 0x00508f65    1bc0
                         inc                eax                                           // 0x00508f67    40
                         ret                                                              // 0x00508f68    c3
                         nop                                                              // 0x00508f69    90
                         nop                                                              // 0x00508f6a    90
                         nop                                                              // 0x00508f6b    90
                         nop                                                              // 0x00508f6c    90
                         nop                                                              // 0x00508f6d    90
                         nop                                                              // 0x00508f6e    90
                         nop                                                              // 0x00508f6f    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]             // 0x00508f70    8b8964010000
                         push               0x28                                          // 0x00508f76    6a28
                         add                ecx, 0x8                                      // 0x00508f78    83c108
                         call               _jmp_addr_0x004dc5b0                          // 0x00508f7b    e83036fdff
                         sub                eax, 0x07                                     // 0x00508f80    83e807
                         neg                eax                                           // 0x00508f83    f7d8
                         sbb.s              eax, eax                                      // 0x00508f85    1bc0
                         inc                eax                                           // 0x00508f87    40
                         ret                                                              // 0x00508f88    c3
                         nop                                                              // 0x00508f89    90
                         nop                                                              // 0x00508f8a    90
                         nop                                                              // 0x00508f8b    90
                         nop                                                              // 0x00508f8c    90
                         nop                                                              // 0x00508f8d    90
                         nop                                                              // 0x00508f8e    90
                         nop                                                              // 0x00508f8f    90
_globl_ct_0x00508f90:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00508f90    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00508f96    b001
                         test               al, cl                                        // 0x00508f98    84c8
                         {disp8} jne        _jmp_addr_0x00508fa4                          // 0x00508f9a    7508
                         or.s               cl, al                                        // 0x00508f9c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00508f9e    880d34c9fa00
_jmp_addr_0x00508fa4:    {disp32} jmp       _jmp_addr_0x00508fb0                          // 0x00508fa4    e907000000
                         nop                                                              // 0x00508fa9    90
                         nop                                                              // 0x00508faa    90
                         nop                                                              // 0x00508fab    90
                         nop                                                              // 0x00508fac    90
                         nop                                                              // 0x00508fad    90
                         nop                                                              // 0x00508fae    90
                         nop                                                              // 0x00508faf    90
_jmp_addr_0x00508fb0:    push               0x00407870                                    // 0x00508fb0    6870784000
                         call               _atexit                                       // 0x00508fb5    e8d7c72b00
                         pop                ecx                                           // 0x00508fba    59
                         ret                                                              // 0x00508fbb    c3
                         nop                                                              // 0x00508fbc    90
                         nop                                                              // 0x00508fbd    90
                         nop                                                              // 0x00508fbe    90
                         nop                                                              // 0x00508fbf    90
_globl_ct_0x00508fc0:    {disp32} jmp       _jmp_addr_0x00508fd0                          // 0x00508fc0    e90b000000
                         nop                                                              // 0x00508fc5    90
                         nop                                                              // 0x00508fc6    90
                         nop                                                              // 0x00508fc7    90
                         nop                                                              // 0x00508fc8    90
                         nop                                                              // 0x00508fc9    90
                         nop                                                              // 0x00508fca    90
                         nop                                                              // 0x00508fcb    90
                         nop                                                              // 0x00508fcc    90
                         nop                                                              // 0x00508fcd    90
                         nop                                                              // 0x00508fce    90
                         nop                                                              // 0x00508fcf    90
_jmp_addr_0x00508fd0:    {disp32} fld       dword ptr [rdata_bytes + 0x286b0]             // 0x00508fd0    d905b0168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x286ac]             // 0x00508fd6    d80dac168d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2e7b38]             // 0x00508fdc    d91d38dbca00
                         ret                                                              // 0x00508fe2    c3
                         nop                                                              // 0x00508fe3    90
                         nop                                                              // 0x00508fe4    90
                         nop                                                              // 0x00508fe5    90
                         nop                                                              // 0x00508fe6    90
                         nop                                                              // 0x00508fe7    90
                         nop                                                              // 0x00508fe8    90
                         nop                                                              // 0x00508fe9    90
                         nop                                                              // 0x00508fea    90
                         nop                                                              // 0x00508feb    90
                         nop                                                              // 0x00508fec    90
                         nop                                                              // 0x00508fed    90
                         nop                                                              // 0x00508fee    90
                         nop                                                              // 0x00508fef    90
_globl_ct_0x00508ff0:    {disp32} jmp       _jmp_addr_0x00509000                          // 0x00508ff0    e90b000000
                         nop                                                              // 0x00508ff5    90
                         nop                                                              // 0x00508ff6    90
                         nop                                                              // 0x00508ff7    90
                         nop                                                              // 0x00508ff8    90
                         nop                                                              // 0x00508ff9    90
                         nop                                                              // 0x00508ffa    90
                         nop                                                              // 0x00508ffb    90
                         nop                                                              // 0x00508ffc    90
                         nop                                                              // 0x00508ffd    90
                         nop                                                              // 0x00508ffe    90
                         nop                                                              // 0x00508fff    90
_jmp_addr_0x00509000:    {disp32} mov       dword ptr [data_bytes + 0x2e7b34], 0xffffffff // 0x00509000    c70534dbca00ffffffff
                         ret                                                              // 0x0050900a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0050900b    e86988efff
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00509010    8b442404
                         push               esi                                           // 0x00509014    56
                         push               0x1                                           // 0x00509015    6a01
                         push               0x1                                           // 0x00509017    6a01
                         push               0x0                                           // 0x00509019    6a00
                         push               eax                                           // 0x0050901b    50
                         push               0xd                                           // 0x0050901c    6a0d
                         push               0x00be67c8                                    // 0x0050901e    68c867be00
                         push               0x3                                           // 0x00509023    6a03
                         mov.s              esi, ecx                                      // 0x00509025    8bf1
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00509027    e8e4541d00
                         add                esp, 0x0c                                     // 0x0050902c    83c40c
                         neg                eax                                           // 0x0050902f    f7d8
                         sbb.s              eax, eax                                      // 0x00509031    1bc0
                         and                eax, 0x68                                     // 0x00509033    83e068
                         add                eax, 0x46                                     // 0x00509036    83c046
                         push               eax                                           // 0x00509039    50
                         push               0x0                                           // 0x0050903a    6a00
                         push               0x5                                           // 0x0050903c    6a05
                         mov.s              ecx, esi                                      // 0x0050903e    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x00509040    e80bb4fbff
                         pop                esi                                           // 0x00509045    5e
                         ret                0x0008                                        // 0x00509046    c20800
                         nop                                                              // 0x00509049    90
                         nop                                                              // 0x0050904a    90
                         nop                                                              // 0x0050904b    90
                         nop                                                              // 0x0050904c    90
                         nop                                                              // 0x0050904d    90
                         nop                                                              // 0x0050904e    90
                         nop                                                              // 0x0050904f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00509050    8b442404
                         push               0x1                                           // 0x00509054    6a01
                         push               0x1                                           // 0x00509056    6a01
                         push               0x0                                           // 0x00509058    6a00
                         push               eax                                           // 0x0050905a    50
                         push               0x4b                                          // 0x0050905b    6a4b
                         push               0x0                                           // 0x0050905d    6a00
                         push               0x6                                           // 0x0050905f    6a06
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x00509061    e8eab3fbff
                         ret                0x0008                                        // 0x00509066    c20800
                         nop                                                              // 0x00509069    90
                         nop                                                              // 0x0050906a    90
                         nop                                                              // 0x0050906b    90
                         nop                                                              // 0x0050906c    90
                         nop                                                              // 0x0050906d    90
                         nop                                                              // 0x0050906e    90
                         nop                                                              // 0x0050906f    90
                         sub                esp, 0x10                                     // 0x00509070    83ec10
                         push               ebx                                           // 0x00509073    53
                         push               ebp                                           // 0x00509074    55
                         push               esi                                           // 0x00509075    56
                         push               edi                                           // 0x00509076    57
                         push               0x1                                           // 0x00509077    6a01
                         push               0x1                                           // 0x00509079    6a01
                         mov.s              esi, ecx                                      // 0x0050907b    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0050907d    8b8e64010000
                         push               0x0                                           // 0x00509083    6a00
                         push               esi                                           // 0x00509085    56
                         call               _jmp_addr_0x004d7b80                          // 0x00509086    e8f5eafcff
                         push               eax                                           // 0x0050908b    50
                         push               0x17                                          // 0x0050908c    6a17
                         push               0x0                                           // 0x0050908e    6a00
                         push               0x12                                          // 0x00509090    6a12
                         mov.s              ecx, esi                                      // 0x00509092    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x00509094    e8b7b3fbff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00509099    8b8e64010000
                         add                ecx, 0x00000fa8                               // 0x0050909f    81c1a80f0000
                         call               _jmp_addr_0x004ff5c0                          // 0x005090a5    e81665ffff
                         push               0x1b                                          // 0x005090aa    6a1b
                         push               0x00be67c8                                    // 0x005090ac    68c867be00
                         push               0x8                                           // 0x005090b1    6a08
                         xor.s              edi, edi                                      // 0x005090b3    33ff
                         xor.s              ebx, ebx                                      // 0x005090b5    33db
                         xor.s              ebp, ebp                                      // 0x005090b7    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x005090b9    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x005090c1    e8ca262d00
                         add                esp, 0x0c                                     // 0x005090c6    83c40c
                         test               eax, eax                                      // 0x005090c9    85c0
                         {disp8} je         _jmp_addr_0x005090dc                          // 0x005090cb    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x005090cd    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000037            // 0x005090d3    c7400437000000
                         {disp8} jmp        _jmp_addr_0x005090de                          // 0x005090da    eb02
_jmp_addr_0x005090dc:    xor.s              eax, eax                                      // 0x005090dc    33c0
_jmp_addr_0x005090de:    sub                esp, 0x10                                     // 0x005090de    83ec10
                         mov.s              edx, esp                                      // 0x005090e1    8bd4
                         mov                dword ptr [edx], edi                          // 0x005090e3    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x005090e5    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x005090e8    896a08
                         or                 ecx, 0xffffffff                               // 0x005090eb    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x005090ee    894a0c
                         xor.s              ecx, ecx                                      // 0x005090f1    33c9
                         sub                esp, 0x10                                     // 0x005090f3    83ec10
                         mov.s              edx, esp                                      // 0x005090f6    8bd4
                         mov                dword ptr [edx], ecx                          // 0x005090f8    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x005090fa    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x005090fd    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00509100    8b4c243c
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00509104    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00509107    8b8e64010000
                         push               eax                                           // 0x0050910d    50
                         push               0xa                                           // 0x0050910e    6a0a
                         add                ecx, 0x00000fa8                               // 0x00509110    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x00509116    e82561ffff
                         pop                edi                                           // 0x0050911b    5f
                         pop                esi                                           // 0x0050911c    5e
                         pop                ebp                                           // 0x0050911d    5d
                         pop                ebx                                           // 0x0050911e    5b
                         add                esp, 0x10                                     // 0x0050911f    83c410
                         ret                0x0008                                        // 0x00509122    c20800
                         nop                                                              // 0x00509125    90
                         nop                                                              // 0x00509126    90
                         nop                                                              // 0x00509127    90
                         nop                                                              // 0x00509128    90
                         nop                                                              // 0x00509129    90
                         nop                                                              // 0x0050912a    90
                         nop                                                              // 0x0050912b    90
                         nop                                                              // 0x0050912c    90
                         nop                                                              // 0x0050912d    90
                         nop                                                              // 0x0050912e    90
                         nop                                                              // 0x0050912f    90
                         sub                esp, 0x10                                     // 0x00509130    83ec10
                         push               ebx                                           // 0x00509133    53
                         push               ebp                                           // 0x00509134    55
                         push               esi                                           // 0x00509135    56
                         push               edi                                           // 0x00509136    57
                         push               0x1                                           // 0x00509137    6a01
                         push               0x1                                           // 0x00509139    6a01
                         mov.s              esi, ecx                                      // 0x0050913b    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0050913d    8b8e64010000
                         push               0x0                                           // 0x00509143    6a00
                         push               esi                                           // 0x00509145    56
                         call               _jmp_addr_0x004d7b80                          // 0x00509146    e835eafcff
                         push               eax                                           // 0x0050914b    50
                         push               0x17                                          // 0x0050914c    6a17
                         push               0x0                                           // 0x0050914e    6a00
                         push               0x12                                          // 0x00509150    6a12
                         mov.s              ecx, esi                                      // 0x00509152    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXW4CREATURE_DESIRES@@PAVCreatureBelief@@W4CREATURE_ACTION@@11HH@Z                          // 0x00509154    e8f7b2fbff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00509159    8b8e64010000
                         add                ecx, 0x00000fa8                               // 0x0050915f    81c1a80f0000
                         call               _jmp_addr_0x004ff5c0                          // 0x00509165    e85664ffff
                         push               0x23                                          // 0x0050916a    6a23
                         push               0x00be67c8                                    // 0x0050916c    68c867be00
                         push               0x4                                           // 0x00509171    6a04
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00509173    e898531d00
                         add                esp, 0x0c                                     // 0x00509178    83c40c
                         cmp                eax, 0x03                                     // 0x0050917b    83f803
                         {disp32} ja        _jmp_addr_0x0050944b                          // 0x0050917e    0f87c7020000
                         jmp                dword ptr [eax*4 + 0x509468]                  // 0x00509184    ff248568945000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0050918b    8b8664010000
                         {disp32} fld       dword ptr [eax + 0x00000158]                  // 0x00509191    d98058010000
                         {disp32} fld       dword ptr [eax + 0x00000154]                  // 0x00509197    d98054010000
                         fcompp                                                           // 0x0050919d    ded9
                         fnstsw             ax                                            // 0x0050919f    dfe0
                         test               ah, 0x01                                      // 0x005091a1    f6c401
                         {disp32} je        _jmp_addr_0x00509291                          // 0x005091a4    0f84e7000000
                         push               0x28                                          // 0x005091aa    6a28
                         push               0x00be67c8                                    // 0x005091ac    68c867be00
                         push               0x2                                           // 0x005091b1    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x005091b3    e858531d00
                         add                esp, 0x0c                                     // 0x005091b8    83c40c
                         test               eax, eax                                      // 0x005091bb    85c0
                         {disp8} jne        _jmp_addr_0x0050921b                          // 0x005091bd    755c
                         push               0x2a                                          // 0x005091bf    6a2a
                         push               0x00be67c8                                    // 0x005091c1    68c867be00
                         push               0x8                                           // 0x005091c6    6a08
                         xor.s              edi, edi                                      // 0x005091c8    33ff
                         xor.s              ebx, ebx                                      // 0x005091ca    33db
                         xor.s              ebp, ebp                                      // 0x005091cc    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x005091ce    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x005091d6    e8b5252d00
                         add                esp, 0x0c                                     // 0x005091db    83c40c
                         test               eax, eax                                      // 0x005091de    85c0
                         {disp8} je         _jmp_addr_0x005091f1                          // 0x005091e0    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x005091e2    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000035            // 0x005091e8    c7400435000000
                         {disp8} jmp        _jmp_addr_0x005091f3                          // 0x005091ef    eb02
_jmp_addr_0x005091f1:    xor.s              eax, eax                                      // 0x005091f1    33c0
_jmp_addr_0x005091f3:    sub                esp, 0x10                                     // 0x005091f3    83ec10
                         mov.s              edx, esp                                      // 0x005091f6    8bd4
                         mov                dword ptr [edx], edi                          // 0x005091f8    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x005091fa    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x005091fd    896a08
                         or                 ecx, 0xffffffff                               // 0x00509200    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00509203    894a0c
                         sub                esp, 0x10                                     // 0x00509206    83ec10
                         xor.s              ecx, ecx                                      // 0x00509209    33c9
                         mov.s              edx, esp                                      // 0x0050920b    8bd4
                         mov                dword ptr [edx], ecx                          // 0x0050920d    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0050920f    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00509212    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00509215    8b4c243c
                         {disp8} jmp        _jmp_addr_0x00509275                          // 0x00509219    eb5a
_jmp_addr_0x0050921b:    push               0x2e                                          // 0x0050921b    6a2e
                         push               0x00be67c8                                    // 0x0050921d    68c867be00
                         push               0x8                                           // 0x00509222    6a08
                         xor.s              edi, edi                                      // 0x00509224    33ff
                         xor.s              ebx, ebx                                      // 0x00509226    33db
                         xor.s              ebp, ebp                                      // 0x00509228    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x0050922a    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x00509232    e859252d00
                         add                esp, 0x0c                                     // 0x00509237    83c40c
                         test               eax, eax                                      // 0x0050923a    85c0
                         {disp8} je         _jmp_addr_0x0050924d                          // 0x0050923c    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x0050923e    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000de            // 0x00509244    c74004de000000
                         {disp8} jmp        _jmp_addr_0x0050924f                          // 0x0050924b    eb02
_jmp_addr_0x0050924d:    xor.s              eax, eax                                      // 0x0050924d    33c0
_jmp_addr_0x0050924f:    sub                esp, 0x10                                     // 0x0050924f    83ec10
                         mov.s              edx, esp                                      // 0x00509252    8bd4
                         mov                dword ptr [edx], edi                          // 0x00509254    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x00509256    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x00509259    896a08
                         or                 ecx, 0xffffffff                               // 0x0050925c    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0050925f    894a0c
                         sub                esp, 0x10                                     // 0x00509262    83ec10
                         xor.s              ecx, ecx                                      // 0x00509265    33c9
                         mov.s              edx, esp                                      // 0x00509267    8bd4
                         mov                dword ptr [edx], ecx                          // 0x00509269    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0050926b    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0050926e    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00509271    8b4c243c
_jmp_addr_0x00509275:    {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00509275    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00509278    8b8e64010000
                         push               eax                                           // 0x0050927e    50
                         push               0xa                                           // 0x0050927f    6a0a
                         add                ecx, 0x00000fa8                               // 0x00509281    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x00509287    e8b45fffff
                         {disp32} jmp       _jmp_addr_0x0050944b                          // 0x0050928c    e9ba010000
_jmp_addr_0x00509291:    push               0x33                                          // 0x00509291    6a33
                         push               0x00be67c8                                    // 0x00509293    68c867be00
                         push               0x8                                           // 0x00509298    6a08
                         xor.s              edi, edi                                      // 0x0050929a    33ff
                         xor.s              ebx, ebx                                      // 0x0050929c    33db
                         xor.s              ebp, ebp                                      // 0x0050929e    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x005092a0    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x005092a8    e8e3242d00
                         add                esp, 0x0c                                     // 0x005092ad    83c40c
                         test               eax, eax                                      // 0x005092b0    85c0
                         {disp8} je         _jmp_addr_0x005092c3                          // 0x005092b2    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x005092b4    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x0000003d            // 0x005092ba    c740043d000000
                         {disp8} jmp        _jmp_addr_0x005092c5                          // 0x005092c1    eb02
_jmp_addr_0x005092c3:    xor.s              eax, eax                                      // 0x005092c3    33c0
_jmp_addr_0x005092c5:    sub                esp, 0x10                                     // 0x005092c5    83ec10
                         mov.s              edx, esp                                      // 0x005092c8    8bd4
                         mov                dword ptr [edx], edi                          // 0x005092ca    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x005092cc    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x005092cf    896a08
                         or                 ecx, 0xffffffff                               // 0x005092d2    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x005092d5    894a0c
                         sub                esp, 0x10                                     // 0x005092d8    83ec10
                         xor.s              ecx, ecx                                      // 0x005092db    33c9
                         mov.s              edx, esp                                      // 0x005092dd    8bd4
                         mov                dword ptr [edx], ecx                          // 0x005092df    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x005092e1    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x005092e4    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005092e7    8b4c243c
                         {disp8} jmp        _jmp_addr_0x00509275                          // 0x005092eb    eb88
                         push               0x37                                          // 0x005092ed    6a37
                         push               0x00be67c8                                    // 0x005092ef    68c867be00
                         push               0x8                                           // 0x005092f4    6a08
                         xor.s              edi, edi                                      // 0x005092f6    33ff
                         xor.s              ebx, ebx                                      // 0x005092f8    33db
                         xor.s              ebp, ebp                                      // 0x005092fa    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x005092fc    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x00509304    e887242d00
                         add                esp, 0x0c                                     // 0x00509309    83c40c
                         test               eax, eax                                      // 0x0050930c    85c0
                         {disp8} je         _jmp_addr_0x0050931f                          // 0x0050930e    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x00509310    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000038            // 0x00509316    c7400438000000
                         {disp8} jmp        _jmp_addr_0x00509321                          // 0x0050931d    eb02
_jmp_addr_0x0050931f:    xor.s              eax, eax                                      // 0x0050931f    33c0
_jmp_addr_0x00509321:    sub                esp, 0x10                                     // 0x00509321    83ec10
                         mov.s              edx, esp                                      // 0x00509324    8bd4
                         mov                dword ptr [edx], edi                          // 0x00509326    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x00509328    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0050932b    896a08
                         or                 ecx, 0xffffffff                               // 0x0050932e    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00509331    894a0c
                         sub                esp, 0x10                                     // 0x00509334    83ec10
                         xor.s              ecx, ecx                                      // 0x00509337    33c9
                         mov.s              edx, esp                                      // 0x00509339    8bd4
                         mov                dword ptr [edx], ecx                          // 0x0050933b    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0050933d    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00509340    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x00509343    8b4c243c
                         {disp32} jmp       _jmp_addr_0x00509275                          // 0x00509347    e929ffffff
                         push               0x3a                                          // 0x0050934c    6a3a
                         push               0x00be67c8                                    // 0x0050934e    68c867be00
                         push               0x8                                           // 0x00509353    6a08
                         xor.s              edi, edi                                      // 0x00509355    33ff
                         xor.s              ebx, ebx                                      // 0x00509357    33db
                         xor.s              ebp, ebp                                      // 0x00509359    33ed
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x0050935b    c7442428ffffffff
                         call               ___nw__FUl                                    // 0x00509363    e828242d00
                         add                esp, 0x0c                                     // 0x00509368    83c40c
                         test               eax, eax                                      // 0x0050936b    85c0
                         {disp8} je         _jmp_addr_0x0050937e                          // 0x0050936d    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x0050936f    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000db            // 0x00509375    c74004db000000
                         {disp8} jmp        _jmp_addr_0x00509380                          // 0x0050937c    eb02
_jmp_addr_0x0050937e:    xor.s              eax, eax                                      // 0x0050937e    33c0
_jmp_addr_0x00509380:    sub                esp, 0x10                                     // 0x00509380    83ec10
                         mov.s              edx, esp                                      // 0x00509383    8bd4
                         mov                dword ptr [edx], edi                          // 0x00509385    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x00509387    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0050938a    896a08
                         or                 ecx, 0xffffffff                               // 0x0050938d    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00509390    894a0c
                         sub                esp, 0x10                                     // 0x00509393    83ec10
                         xor.s              ecx, ecx                                      // 0x00509396    33c9
                         mov.s              edx, esp                                      // 0x00509398    8bd4
                         mov                dword ptr [edx], ecx                          // 0x0050939a    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0050939c    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0050939f    894a08
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005093a2    8b4c243c
                         {disp32} jmp       _jmp_addr_0x00509275                          // 0x005093a6    e9cafeffff
                         push               0x3d                                          // 0x005093ab    6a3d
                         push               0x00be67c8                                    // 0x005093ad    68c867be00
                         push               0x8                                           // 0x005093b2    6a08
                         mov                ebx, 0x004c8550                               // 0x005093b4    bb50854c00
                         xor.s              ebp, ebp                                      // 0x005093b9    33ed
                         call               ___nw__FUl                                    // 0x005093bb    e8d0232d00
                         mov.s              edi, eax                                      // 0x005093c0    8bf8
                         add                esp, 0x0c                                     // 0x005093c2    83c40c
                         test               edi, edi                                      // 0x005093c5    85ff
                         {disp8} je         _jmp_addr_0x0050940c                          // 0x005093c7    7443
                         push               0x3d                                          // 0x005093c9    6a3d
                         push               0x00be67c8                                    // 0x005093cb    68c867be00
                         push               0x3f800000                                    // 0x005093d0    680000803f
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x005093d5    e856511d00
                         xor.s              edx, edx                                      // 0x005093da    33d2
                         mov                eax, 0x000003e8                               // 0x005093dc    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x005093e1    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x005093e7    896c2420
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005093eb    d80590a38a00
                         add                esp, 0x0c                                     // 0x005093f1    83c40c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005093f4    89442410
                         {disp8} fimul      dword ptr [esp + 0x10]                        // 0x005093f8    da4c2410
                         call               _jmp_addr_0x007a1400                          // 0x005093fc    e8ff7f2900
                         mov                dword ptr [edi], 0x008cf064                   // 0x00509401    c70764f08c00
                         {disp8} mov        dword ptr [edi + 0x04], eax                   // 0x00509407    894704
                         {disp8} jmp        _jmp_addr_0x0050940e                          // 0x0050940a    eb02
_jmp_addr_0x0050940c:    xor.s              edi, edi                                      // 0x0050940c    33ff
_jmp_addr_0x0050940e:    sub                esp, 0x10                                     // 0x0050940e    83ec10
                         mov.s              edx, esp                                      // 0x00509411    8bd4
                         mov                dword ptr [edx], ebx                          // 0x00509413    891a
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x00509415    896a04
                         xor.s              eax, eax                                      // 0x00509418    33c0
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0050941a    894208
                         {disp8} mov        dword ptr [edx + 0x0c], eax                   // 0x0050941d    89420c
                         sub                esp, 0x10                                     // 0x00509420    83ec10
                         mov.s              ecx, esp                                      // 0x00509423    8bcc
                         mov                eax, 0x004d10d0                               // 0x00509425    b8d0104d00
                         mov                dword ptr [ecx], eax                          // 0x0050942a    8901
                         xor.s              eax, eax                                      // 0x0050942c    33c0
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0050942e    894104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00509431    894108
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x00509434    89410c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00509437    8b8e64010000
                         push               edi                                           // 0x0050943d    57
                         push               0x42                                          // 0x0050943e    6a42
                         add                ecx, 0x00000fa8                               // 0x00509440    81c1a80f0000
                         call               ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x00509446    e8555fffff
_jmp_addr_0x0050944b:    {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x0050944b    8b9664010000
                         pop                edi                                           // 0x00509451    5f
                         pop                esi                                           // 0x00509452    5e
                         pop                ebp                                           // 0x00509453    5d
                         {disp32} mov       dword ptr [edx + 0x00001c14], 0x00000001      // 0x00509454    c782141c000001000000
                         pop                ebx                                           // 0x0050945e    5b
                         add                esp, 0x10                                     // 0x0050945f    83c410
                         ret                0x0008                                        // 0x00509462    c20800

// Snippet: db, [0x00509465, 0x00509468)
.byte 0x8d, 0x49, 0x00            // 0x00509465

// Snippet: jmptbl, [0x00509468, 0x00509478)
.byte 0x8b, 0x91, 0x50, 0x00      // 0x00509468
.byte 0xed, 0x92, 0x50, 0x00      // 0x0050946c
.byte 0x4c, 0x93, 0x50, 0x00      // 0x00509470
.byte 0xab, 0x93, 0x50, 0x00      // 0x00509474

// Snippet: db, [0x00509478, 0x00509480)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00509478
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050947c

