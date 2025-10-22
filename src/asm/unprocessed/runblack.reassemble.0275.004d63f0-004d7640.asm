.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??3Base@@SAXPAXK@Z
.extern @__ct__18DecisionTreeAgendaF18DECISION_TREE_TYPE16CREATURE_DESIRES@16
.extern _jmp_addr_0x004d4490
.extern _jmp_addr_0x004d4520
.extern _jmp_addr_0x004d4680
.extern _jmp_addr_0x004d4df0
.extern _jmp_addr_0x004d8300
.extern _jmp_addr_0x004daab0
.extern _jmp_addr_0x004daaf0
.extern _jmp_addr_0x004dab30
.extern _jmp_addr_0x004dab70
.extern _jmp_addr_0x004dabb0
.extern _jmp_addr_0x004dac30
.extern _jmp_addr_0x004dac70
.extern _jmp_addr_0x004dacb0
.extern _jmp_addr_0x004dacf0
.extern  ??3@YAXPAX@Z
.extern _sprintf
.extern ??2@YAPAXI@Z
.extern ___nw__FUl

.globl _jmp_addr_0x004d66e0
.globl _jmp_addr_0x004d6700
.globl _jmp_addr_0x004d6780
.globl _jmp_addr_0x004d6870
.globl _jmp_addr_0x004d68f0
.globl _jmp_addr_0x004d69b0
.globl _jmp_addr_0x004d6a50
.globl _jmp_addr_0x004d6cd0
.globl ??0DecisionTreeCollection@@QAE@XZ  
.globl _jmp_addr_0x004d7290
.globl _jmp_addr_0x004d72e0
.globl _jmp_addr_0x004d74a0
.globl _jmp_addr_0x004d75c0
.globl ??_GCreatureBeliefSmall@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutVillager@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutTown@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutFlock@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutCitadel@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutCreature@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutForest@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutAbode@@UAEPAXI@Z
.globl ??_GCreatureBeliefAboutContext@@UAEPAXI@Z

start_0x004d63f0_0x004d7640:
// Snippet: asm, [0x004d63f0, 0x004d75ff)
                         mov                eax, dword ptr [ecx]                    // 0x004d63f0    8b01
                         push               0x6                                     // 0x004d63f2    6a06
                         call               dword ptr [eax + 0x20]                  // 0x004d63f4    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]             // 0x004d63f7    8b4008
                         ret                                                        // 0x004d63fa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d63fb    e879b4f2ff
                         mov                eax, 0x00000007                         // 0x004d6400    b807000000
                         ret                                                        // 0x004d6405    c3
                         nop                                                        // 0x004d6406    90
                         nop                                                        // 0x004d6407    90
                         nop                                                        // 0x004d6408    90
                         nop                                                        // 0x004d6409    90
                         nop                                                        // 0x004d640a    90
                         nop                                                        // 0x004d640b    90
                         nop                                                        // 0x004d640c    90
                         nop                                                        // 0x004d640d    90
                         nop                                                        // 0x004d640e    90
                         nop                                                        // 0x004d640f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6410    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6414    8b44814c
                         ret                0x0004                                  // 0x004d6418    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d641b    e859b4f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6420    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6424    8d44814c
                         ret                0x0004                                  // 0x004d6428    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d642b    e849b4f2ff
??_GCreatureBeliefSmall@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6430    56
                         mov.s              esi, ecx                                // 0x004d6431    8bf1
                         call               _jmp_addr_0x004daab0                    // 0x004d6433    e878460000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6438    f644240801
                         {disp8} je         _jmp_addr_0x004d644a                    // 0x004d643d    740b
                         push               0x68                                    // 0x004d643f    6a68
                         push               esi                                     // 0x004d6441    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6442    e82905f6ff
                         add                esp, 0x08                               // 0x004d6447    83c408
_jmp_addr_0x004d644a:    mov.s              eax, esi                                // 0x004d644a    8bc6
                         pop                esi                                     // 0x004d644c    5e
                         ret                0x0004                                  // 0x004d644d    c20400
                         mov                eax, 0x0000000b                         // 0x004d6450    b80b000000
                         ret                                                        // 0x004d6455    c3
                         nop                                                        // 0x004d6456    90
                         nop                                                        // 0x004d6457    90
                         nop                                                        // 0x004d6458    90
                         nop                                                        // 0x004d6459    90
                         nop                                                        // 0x004d645a    90
                         nop                                                        // 0x004d645b    90
                         nop                                                        // 0x004d645c    90
                         nop                                                        // 0x004d645d    90
                         nop                                                        // 0x004d645e    90
                         nop                                                        // 0x004d645f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6460    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6464    8b44814c
                         ret                0x0004                                  // 0x004d6468    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d646b    e809b4f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6470    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6474    8d44814c
                         ret                0x0004                                  // 0x004d6478    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d647b    e8f9b3f2ff
??_GCreatureBeliefAboutVillager@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6480    56
                         mov.s              esi, ecx                                // 0x004d6481    8bf1
                         call               _jmp_addr_0x004dac30                    // 0x004d6483    e8a8470000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6488    f644240801
                         {disp8} je         _jmp_addr_0x004d649a                    // 0x004d648d    740b
                         push               0x78                                    // 0x004d648f    6a78
                         push               esi                                     // 0x004d6491    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6492    e8d904f6ff
                         add                esp, 0x08                               // 0x004d6497    83c408
_jmp_addr_0x004d649a:    mov.s              eax, esi                                // 0x004d649a    8bc6
                         pop                esi                                     // 0x004d649c    5e
                         ret                0x0004                                  // 0x004d649d    c20400
                         mov                eax, 0x0000000b                         // 0x004d64a0    b80b000000
                         ret                                                        // 0x004d64a5    c3
                         nop                                                        // 0x004d64a6    90
                         nop                                                        // 0x004d64a7    90
                         nop                                                        // 0x004d64a8    90
                         nop                                                        // 0x004d64a9    90
                         nop                                                        // 0x004d64aa    90
                         nop                                                        // 0x004d64ab    90
                         nop                                                        // 0x004d64ac    90
                         nop                                                        // 0x004d64ad    90
                         nop                                                        // 0x004d64ae    90
                         nop                                                        // 0x004d64af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d64b0    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d64b4    8b44814c
                         ret                0x0004                                  // 0x004d64b8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d64bb    e8b9b3f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d64c0    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d64c4    8d44814c
                         ret                0x0004                                  // 0x004d64c8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d64cb    e8a9b3f2ff
??_GCreatureBeliefAboutTown@@UAEPAXI@Z:
                         push               esi                                     // 0x004d64d0    56
                         mov.s              esi, ecx                                // 0x004d64d1    8bf1
                         call               _jmp_addr_0x004daaf0                    // 0x004d64d3    e818460000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d64d8    f644240801
                         {disp8} je         _jmp_addr_0x004d64ea                    // 0x004d64dd    740b
                         push               0x78                                    // 0x004d64df    6a78
                         push               esi                                     // 0x004d64e1    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d64e2    e88904f6ff
                         add                esp, 0x08                               // 0x004d64e7    83c408
_jmp_addr_0x004d64ea:    mov.s              eax, esi                                // 0x004d64ea    8bc6
                         pop                esi                                     // 0x004d64ec    5e
                         ret                0x0004                                  // 0x004d64ed    c20400
                         mov                eax, 0x00000007                         // 0x004d64f0    b807000000
                         ret                                                        // 0x004d64f5    c3
                         nop                                                        // 0x004d64f6    90
                         nop                                                        // 0x004d64f7    90
                         nop                                                        // 0x004d64f8    90
                         nop                                                        // 0x004d64f9    90
                         nop                                                        // 0x004d64fa    90
                         nop                                                        // 0x004d64fb    90
                         nop                                                        // 0x004d64fc    90
                         nop                                                        // 0x004d64fd    90
                         nop                                                        // 0x004d64fe    90
                         nop                                                        // 0x004d64ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6500    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6504    8b44814c
                         ret                0x0004                                  // 0x004d6508    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d650b    e869b3f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6510    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6514    8d44814c
                         ret                0x0004                                  // 0x004d6518    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d651b    e859b3f2ff
??_GCreatureBeliefAboutFlock@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6520    56
                         mov.s              esi, ecx                                // 0x004d6521    8bf1
                         call               _jmp_addr_0x004dab30                    // 0x004d6523    e808460000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6528    f644240801
                         {disp8} je         _jmp_addr_0x004d653a                    // 0x004d652d    740b
                         push               0x68                                    // 0x004d652f    6a68
                         push               esi                                     // 0x004d6531    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6532    e83904f6ff
                         add                esp, 0x08                               // 0x004d6537    83c408
_jmp_addr_0x004d653a:    mov.s              eax, esi                                // 0x004d653a    8bc6
                         pop                esi                                     // 0x004d653c    5e
                         ret                0x0004                                  // 0x004d653d    c20400
                         mov                eax, 0x00000007                         // 0x004d6540    b807000000
                         ret                                                        // 0x004d6545    c3
                         nop                                                        // 0x004d6546    90
                         nop                                                        // 0x004d6547    90
                         nop                                                        // 0x004d6548    90
                         nop                                                        // 0x004d6549    90
                         nop                                                        // 0x004d654a    90
                         nop                                                        // 0x004d654b    90
                         nop                                                        // 0x004d654c    90
                         nop                                                        // 0x004d654d    90
                         nop                                                        // 0x004d654e    90
                         nop                                                        // 0x004d654f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6550    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6554    8b44814c
                         ret                0x0004                                  // 0x004d6558    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d655b    e819b3f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6560    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6564    8d44814c
                         ret                0x0004                                  // 0x004d6568    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d656b    e809b3f2ff
??_GCreatureBeliefAboutCitadel@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6570    56
                         mov.s              esi, ecx                                // 0x004d6571    8bf1
                         call               _jmp_addr_0x004dacb0                    // 0x004d6573    e838470000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6578    f644240801
                         {disp8} je         _jmp_addr_0x004d658a                    // 0x004d657d    740b
                         push               0x68                                    // 0x004d657f    6a68
                         push               esi                                     // 0x004d6581    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6582    e8e903f6ff
                         add                esp, 0x08                               // 0x004d6587    83c408
_jmp_addr_0x004d658a:    mov.s              eax, esi                                // 0x004d658a    8bc6
                         pop                esi                                     // 0x004d658c    5e
                         ret                0x0004                                  // 0x004d658d    c20400
                         mov                eax, 0x0000000b                         // 0x004d6590    b80b000000
                         ret                                                        // 0x004d6595    c3
                         nop                                                        // 0x004d6596    90
                         nop                                                        // 0x004d6597    90
                         nop                                                        // 0x004d6598    90
                         nop                                                        // 0x004d6599    90
                         nop                                                        // 0x004d659a    90
                         nop                                                        // 0x004d659b    90
                         nop                                                        // 0x004d659c    90
                         nop                                                        // 0x004d659d    90
                         nop                                                        // 0x004d659e    90
                         nop                                                        // 0x004d659f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d65a0    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d65a4    8b44814c
                         ret                0x0004                                  // 0x004d65a8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d65ab    e8c9b2f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d65b0    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d65b4    8d44814c
                         ret                0x0004                                  // 0x004d65b8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d65bb    e8b9b2f2ff
??_GCreatureBeliefAboutCreature@@UAEPAXI@Z:
                         push               esi                                     // 0x004d65c0    56
                         mov.s              esi, ecx                                // 0x004d65c1    8bf1
                         call               _jmp_addr_0x004dab70                    // 0x004d65c3    e8a8450000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d65c8    f644240801
                         {disp8} je         _jmp_addr_0x004d65da                    // 0x004d65cd    740b
                         push               0x7c                                    // 0x004d65cf    6a7c
                         push               esi                                     // 0x004d65d1    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d65d2    e89903f6ff
                         add                esp, 0x08                               // 0x004d65d7    83c408
_jmp_addr_0x004d65da:    mov.s              eax, esi                                // 0x004d65da    8bc6
                         pop                esi                                     // 0x004d65dc    5e
                         ret                0x0004                                  // 0x004d65dd    c20400
                         mov                eax, 0x00000008                         // 0x004d65e0    b808000000
                         ret                                                        // 0x004d65e5    c3
                         nop                                                        // 0x004d65e6    90
                         nop                                                        // 0x004d65e7    90
                         nop                                                        // 0x004d65e8    90
                         nop                                                        // 0x004d65e9    90
                         nop                                                        // 0x004d65ea    90
                         nop                                                        // 0x004d65eb    90
                         nop                                                        // 0x004d65ec    90
                         nop                                                        // 0x004d65ed    90
                         nop                                                        // 0x004d65ee    90
                         nop                                                        // 0x004d65ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d65f0    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d65f4    8b44814c
                         ret                0x0004                                  // 0x004d65f8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d65fb    e879b2f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6600    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6604    8d44814c
                         ret                0x0004                                  // 0x004d6608    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d660b    e869b2f2ff
??_GCreatureBeliefAboutForest@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6610    56
                         mov.s              esi, ecx                                // 0x004d6611    8bf1
                         call               _jmp_addr_0x004dabb0                    // 0x004d6613    e898450000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6618    f644240801
                         {disp8} je         _jmp_addr_0x004d662a                    // 0x004d661d    740b
                         push               0x6c                                    // 0x004d661f    6a6c
                         push               esi                                     // 0x004d6621    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6622    e84903f6ff
                         add                esp, 0x08                               // 0x004d6627    83c408
_jmp_addr_0x004d662a:    mov.s              eax, esi                                // 0x004d662a    8bc6
                         pop                esi                                     // 0x004d662c    5e
                         ret                0x0004                                  // 0x004d662d    c20400
                         mov                eax, 0x0000000b                         // 0x004d6630    b80b000000
                         ret                                                        // 0x004d6635    c3
                         nop                                                        // 0x004d6636    90
                         nop                                                        // 0x004d6637    90
                         nop                                                        // 0x004d6638    90
                         nop                                                        // 0x004d6639    90
                         nop                                                        // 0x004d663a    90
                         nop                                                        // 0x004d663b    90
                         nop                                                        // 0x004d663c    90
                         nop                                                        // 0x004d663d    90
                         nop                                                        // 0x004d663e    90
                         nop                                                        // 0x004d663f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6640    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6644    8b44814c
                         ret                0x0004                                  // 0x004d6648    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d664b    e829b2f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d6650    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c] // 0x004d6654    8d44814c
                         ret                0x0004                                  // 0x004d6658    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d665b    e819b2f2ff
??_GCreatureBeliefAboutAbode@@UAEPAXI@Z:
                         push               esi                                     // 0x004d6660    56
                         mov.s              esi, ecx                                // 0x004d6661    8bf1
                         call               _jmp_addr_0x004dac70                    // 0x004d6663    e808460000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d6668    f644240801
                         {disp8} je         _jmp_addr_0x004d667a                    // 0x004d666d    740b
                         push               0x78                                    // 0x004d666f    6a78
                         push               esi                                     // 0x004d6671    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d6672    e8f902f6ff
                         add                esp, 0x08                               // 0x004d6677    83c408
_jmp_addr_0x004d667a:    mov.s              eax, esi                                // 0x004d667a    8bc6
                         pop                esi                                     // 0x004d667c    5e
                         ret                0x0004                                  // 0x004d667d    c20400
                         xor.s              eax, eax                                // 0x004d6680    33c0
                         ret                                                        // 0x004d6682    c3
                         nop                                                        // 0x004d6683    90
                         nop                                                        // 0x004d6684    90
                         nop                                                        // 0x004d6685    90
                         nop                                                        // 0x004d6686    90
                         nop                                                        // 0x004d6687    90
                         nop                                                        // 0x004d6688    90
                         nop                                                        // 0x004d6689    90
                         nop                                                        // 0x004d668a    90
                         nop                                                        // 0x004d668b    90
                         nop                                                        // 0x004d668c    90
                         nop                                                        // 0x004d668d    90
                         nop                                                        // 0x004d668e    90
                         nop                                                        // 0x004d668f    90
                         xor.s              eax, eax                                // 0x004d6690    33c0
                         ret                0x0004                                  // 0x004d6692    c20400
                         nop                                                        // 0x004d6695    90
                         nop                                                        // 0x004d6696    90
                         nop                                                        // 0x004d6697    90
                         nop                                                        // 0x004d6698    90
                         nop                                                        // 0x004d6699    90
                         nop                                                        // 0x004d669a    90
                         nop                                                        // 0x004d669b    90
                         nop                                                        // 0x004d669c    90
                         nop                                                        // 0x004d669d    90
                         nop                                                        // 0x004d669e    90
                         nop                                                        // 0x004d669f    90
                         xor.s              eax, eax                                // 0x004d66a0    33c0
                         ret                0x0004                                  // 0x004d66a2    c20400
                         nop                                                        // 0x004d66a5    90
                         nop                                                        // 0x004d66a6    90
                         nop                                                        // 0x004d66a7    90
                         nop                                                        // 0x004d66a8    90
                         nop                                                        // 0x004d66a9    90
                         nop                                                        // 0x004d66aa    90
                         nop                                                        // 0x004d66ab    90
                         nop                                                        // 0x004d66ac    90
                         nop                                                        // 0x004d66ad    90
                         nop                                                        // 0x004d66ae    90
                         nop                                                        // 0x004d66af    90
                         mov                eax, 0x00000014                         // 0x004d66b0    b814000000
                         ret                                                        // 0x004d66b5    c3
                         nop                                                        // 0x004d66b6    90
                         nop                                                        // 0x004d66b7    90
                         nop                                                        // 0x004d66b8    90
                         nop                                                        // 0x004d66b9    90
                         nop                                                        // 0x004d66ba    90
                         nop                                                        // 0x004d66bb    90
                         nop                                                        // 0x004d66bc    90
                         nop                                                        // 0x004d66bd    90
                         nop                                                        // 0x004d66be    90
                         nop                                                        // 0x004d66bf    90
??_GCreatureBeliefAboutContext@@UAEPAXI@Z:
                         push               esi                                     // 0x004d66c0    56
                         mov.s              esi, ecx                                // 0x004d66c1    8bf1
                         call               _jmp_addr_0x004dacf0                    // 0x004d66c3    e828460000
                         test               byte ptr [esp + 0x08], 0x01             // 0x004d66c8    f644240801
                         {disp8} je         _jmp_addr_0x004d66da                    // 0x004d66cd    740b
                         push               0x4c                                    // 0x004d66cf    6a4c
                         push               esi                                     // 0x004d66d1    56
                         call               ??3Base@@SAXPAXK@Z                    // 0x004d66d2    e89902f6ff
                         add                esp, 0x08                               // 0x004d66d7    83c408
_jmp_addr_0x004d66da:    mov.s              eax, esi                                // 0x004d66da    8bc6
                         pop                esi                                     // 0x004d66dc    5e
                         ret                0x0004                                  // 0x004d66dd    c20400
_jmp_addr_0x004d66e0:    {disp8} fld        dword ptr [ecx + 0x08]                  // 0x004d66e0    d94108
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]       // 0x004d66e3    d81d40588c00
                         fnstsw             ax                                      // 0x004d66e9    dfe0
                         test               ah, 0x01                                // 0x004d66eb    f6c401
                         {disp8} je         _jmp_addr_0x004d66f6                    // 0x004d66ee    7406
                         mov                eax, 0x00000001                         // 0x004d66f0    b801000000
                         ret                                                        // 0x004d66f5    c3
_jmp_addr_0x004d66f6:    xor.s              eax, eax                                // 0x004d66f6    33c0
                         ret                                                        // 0x004d66f8    c3
                         nop                                                        // 0x004d66f9    90
                         nop                                                        // 0x004d66fa    90
                         nop                                                        // 0x004d66fb    90
                         nop                                                        // 0x004d66fc    90
                         nop                                                        // 0x004d66fd    90
                         nop                                                        // 0x004d66fe    90
                         nop                                                        // 0x004d66ff    90
_jmp_addr_0x004d6700:    {disp8} mov        eax, dword ptr [ecx + 0x04]             // 0x004d6700    8b4104
                         sub                esp, 0x08                               // 0x004d6703    83ec08
                         push               esi                                     // 0x004d6706    56
                         xor.s              esi, esi                                // 0x004d6707    33f6
                         cmp.s              eax, esi                                // 0x004d6709    3bc6
                         push               edi                                     // 0x004d670b    57
                         {disp8} jne        _jmp_addr_0x004d671a                    // 0x004d670c    750c
_jmp_addr_0x004d670e:    {disp8} mov        ecx, dword ptr [ecx + 0x0c]             // 0x004d670e    8b490c
                         cmp.s              ecx, esi                                // 0x004d6711    3bce
                         {disp8} je         _jmp_addr_0x004d676a                    // 0x004d6713    7455
                         cmp                dword ptr [ecx + 0x04], esi             // 0x004d6715    397104
                         {disp8} je         _jmp_addr_0x004d670e                    // 0x004d6718    74f4
_jmp_addr_0x004d671a:    mov                eax, dword ptr [ecx]                    // 0x004d671a    8b01
                         {disp32} fld       dword ptr [_rdata_float0p0]             // 0x004d671c    d90598a38a00
                         cmp.s              eax, esi                                // 0x004d6722    3bc6
                         {disp8} je         _jmp_addr_0x004d6732                    // 0x004d6724    740c
_jmp_addr_0x004d6726:    {disp8} mov        edx, dword ptr [eax + 0x04]             // 0x004d6726    8b5004
                         mov                eax, dword ptr [eax]                    // 0x004d6729    8b00
                         {disp8} fadd       dword ptr [edx + 0x0c]                  // 0x004d672b    d8420c
                         cmp.s              eax, esi                                // 0x004d672e    3bc6
                         {disp8} jne        _jmp_addr_0x004d6726                    // 0x004d6730    75f4
_jmp_addr_0x004d6732:    {disp8} mov        eax, dword ptr [ecx + 0x04]             // 0x004d6732    8b4104
                         {disp8} mov        dword ptr [esp + 0x08], eax             // 0x004d6735    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], esi             // 0x004d6739    8974240c
                         {disp8} fild       qword ptr [esp + 0x08]                  // 0x004d673d    df6c2408
                         fdivr              st, st(1)                               // 0x004d6741    d8f9
                         {disp8} fstp       dword ptr [esp + 0x08]                  // 0x004d6743    d95c2408
                         {disp8} mov        edi, dword ptr [esp + 0x08]             // 0x004d6747    8b7c2408
                         fstp               st(0)                                   // 0x004d674b    ddd8
_jmp_addr_0x004d674d:    push               esi                                     // 0x004d674d    56
                         push               edi                                     // 0x004d674e    57
                         call               _jmp_addr_0x004d6e70                    // 0x004d674f    e81c070000
                         add                esp, 0x08                               // 0x004d6754    83c408
                         test               eax, eax                                // 0x004d6757    85c0
                         {disp8} jne        _jmp_addr_0x004d6775                    // 0x004d6759    751a
                         inc                esi                                     // 0x004d675b    46
                         cmp                esi, 0x0b                               // 0x004d675c    83fe0b
                         {disp8} jl         _jmp_addr_0x004d674d                    // 0x004d675f    7cec
                         pop                edi                                     // 0x004d6761    5f
                         or                 eax, -0x1                               // 0x004d6762    83c8ff
                         pop                esi                                     // 0x004d6765    5e
                         add                esp, 0x08                               // 0x004d6766    83c408
                         ret                                                        // 0x004d6769    c3
_jmp_addr_0x004d676a:    pop                edi                                     // 0x004d676a    5f
                         mov                eax, 0x00000005                         // 0x004d676b    b805000000
                         pop                esi                                     // 0x004d6770    5e
                         add                esp, 0x08                               // 0x004d6771    83c408
                         ret                                                        // 0x004d6774    c3
_jmp_addr_0x004d6775:    pop                edi                                     // 0x004d6775    5f
                         mov.s              eax, esi                                // 0x004d6776    8bc6
                         pop                esi                                     // 0x004d6778    5e
                         add                esp, 0x08                               // 0x004d6779    83c408
                         ret                                                        // 0x004d677c    c3
                         nop                                                        // 0x004d677d    90
                         nop                                                        // 0x004d677e    90
                         nop                                                        // 0x004d677f    90
_jmp_addr_0x004d6780:    sub                esp, 0x08                               // 0x004d6780    83ec08
                         push               ebp                                     // 0x004d6783    55
                         mov.s              ebp, ecx                                // 0x004d6784    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x7c]             // 0x004d6786    8b457c
                         test               eax, eax                                // 0x004d6789    85c0
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000      // 0x004d678b    c744240800000000
                         {disp32} jbe       _jmp_addr_0x004d685c                    // 0x004d6793    0f86c3000000
                         push               ebx                                     // 0x004d6799    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]             // 0x004d679a    8b5c2414
                         push               esi                                     // 0x004d679e    56
                         {disp8} lea        eax, dword ptr [ebp + 0x1c]             // 0x004d679f    8d451c
                         push               edi                                     // 0x004d67a2    57
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x004d67a3    89442410
_jmp_addr_0x004d67a7:    {disp8} mov        ecx, dword ptr [esp + 0x10]             // 0x004d67a7    8b4c2410
                         mov                edi, dword ptr [ecx]                    // 0x004d67ab    8b39
                         push               0x00000311                              // 0x004d67ad    6811030000
                         push               0x00bdee10                              // 0x004d67b2    6810eebd00
                         push               0xc                                     // 0x004d67b7    6a0c
                         call               ___nw__FUl                              // 0x004d67b9    e8d24f3000
                         mov.s              esi, eax                                // 0x004d67be    8bf0
                         add                esp, 0x0c                               // 0x004d67c0    83c40c
                         test               esi, esi                                // 0x004d67c3    85f6
                         {disp8} je         _jmp_addr_0x004d67d9                    // 0x004d67c5    7412
                         push               edi                                     // 0x004d67c7    57
                         mov.s              ecx, ebp                                // 0x004d67c8    8bcd
                         call               _jmp_addr_0x004d6b10                    // 0x004d67ca    e841030000
                         {disp8} fstp       dword ptr [esi + 0x04]                  // 0x004d67cf    d95e04
                         mov                dword ptr [esi], edi                    // 0x004d67d2    893e
                         {disp8} mov        dword ptr [esi + 0x08], ebp             // 0x004d67d4    896e08
                         {disp8} jmp        _jmp_addr_0x004d67db                    // 0x004d67d7    eb02
_jmp_addr_0x004d67d9:    xor.s              esi, esi                                // 0x004d67d9    33f6
_jmp_addr_0x004d67db:    push               0x8                                     // 0x004d67db    6a08
                         call               ??2@YAPAXI@Z                            // 0x004d67dd    e80cfd2e00
                         xor.s              edx, edx                                // 0x004d67e2    33d2
                         add                esp, 0x04                               // 0x004d67e4    83c404
                         cmp.s              eax, edx                                // 0x004d67e7    3bc2
                         {disp8} je         _jmp_addr_0x004d67f4                    // 0x004d67e9    7409
                         mov                dword ptr [eax], esi                    // 0x004d67eb    8930
                         {disp8} mov        dword ptr [eax + 0x04], edx             // 0x004d67ed    895004
                         mov.s              edi, eax                                // 0x004d67f0    8bf8
                         {disp8} jmp        _jmp_addr_0x004d67f6                    // 0x004d67f2    eb02
_jmp_addr_0x004d67f4:    xor.s              edi, edi                                // 0x004d67f4    33ff
_jmp_addr_0x004d67f6:    mov                ecx, dword ptr [ebx]                    // 0x004d67f6    8b0b
                         test               ecx, ecx                                // 0x004d67f8    85c9
                         {disp8} je         _jmp_addr_0x004d682c                    // 0x004d67fa    7430
_jmp_addr_0x004d67fc:    mov                eax, dword ptr [ecx]                    // 0x004d67fc    8b01
                         {disp8} fld        dword ptr [esi + 0x04]                  // 0x004d67fe    d94604
                         {disp8} fcomp      dword ptr [eax + 0x04]                  // 0x004d6801    d85804
                         fnstsw             ax                                      // 0x004d6804    dfe0
                         test               ah, 0x41                                // 0x004d6806    f6c441
                         {disp8} je         _jmp_addr_0x004d6816                    // 0x004d6809    740b
                         mov.s              edx, ecx                                // 0x004d680b    8bd1
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]             // 0x004d680d    8b4904
                         test               ecx, ecx                                // 0x004d6810    85c9
                         {disp8} je         _jmp_addr_0x004d6828                    // 0x004d6812    7414
                         {disp8} jmp        _jmp_addr_0x004d67fc                    // 0x004d6814    ebe6
_jmp_addr_0x004d6816:    test               edx, edx                                // 0x004d6816    85d2
                         {disp8} mov        dword ptr [edi + 0x04], ecx             // 0x004d6818    894f04
                         {disp8} jne        _jmp_addr_0x004d6821                    // 0x004d681b    7504
                         mov                dword ptr [ebx], edi                    // 0x004d681d    893b
                         {disp8} jmp        _jmp_addr_0x004d6824                    // 0x004d681f    eb03
_jmp_addr_0x004d6821:    {disp8} mov        dword ptr [edx + 0x04], edi             // 0x004d6821    897a04
_jmp_addr_0x004d6824:    test               ecx, ecx                                // 0x004d6824    85c9
                         {disp8} jne        _jmp_addr_0x004d6833                    // 0x004d6826    750b
_jmp_addr_0x004d6828:    test               edx, edx                                // 0x004d6828    85d2
                         {disp8} jne        _jmp_addr_0x004d6830                    // 0x004d682a    7504
_jmp_addr_0x004d682c:    mov                dword ptr [ebx], edi                    // 0x004d682c    893b
                         {disp8} jmp        _jmp_addr_0x004d6833                    // 0x004d682e    eb03
_jmp_addr_0x004d6830:    {disp8} mov        dword ptr [edx + 0x04], edi             // 0x004d6830    897a04
_jmp_addr_0x004d6833:    {disp8} mov        edi, dword ptr [ebx + 0x04]             // 0x004d6833    8b7b04
                         {disp8} mov        eax, dword ptr [esp + 0x14]             // 0x004d6836    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x10]             // 0x004d683a    8b542410
                         inc                edi                                     // 0x004d683e    47
                         {disp8} mov        dword ptr [ebx + 0x04], edi             // 0x004d683f    897b04
                         {disp8} mov        ecx, dword ptr [ebp + 0x7c]             // 0x004d6842    8b4d7c
                         inc                eax                                     // 0x004d6845    40
                         add                edx, 0x04                               // 0x004d6846    83c204
                         cmp.s              eax, ecx                                // 0x004d6849    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax             // 0x004d684b    89442414
                         {disp8} mov        dword ptr [esp + 0x10], edx             // 0x004d684f    89542410
                         {disp32} jb        _jmp_addr_0x004d67a7                    // 0x004d6853    0f824effffff
                         pop                edi                                     // 0x004d6859    5f
                         pop                esi                                     // 0x004d685a    5e
                         pop                ebx                                     // 0x004d685b    5b
_jmp_addr_0x004d685c:    pop                ebp                                     // 0x004d685c    5d
                         add                esp, 0x08                               // 0x004d685d    83c408
                         ret                0x0004                                  // 0x004d6860    c20400
                         nop                                                        // 0x004d6863    90
                         nop                                                        // 0x004d6864    90
                         nop                                                        // 0x004d6865    90
                         nop                                                        // 0x004d6866    90
                         nop                                                        // 0x004d6867    90
                         nop                                                        // 0x004d6868    90
                         nop                                                        // 0x004d6869    90
                         nop                                                        // 0x004d686a    90
                         nop                                                        // 0x004d686b    90
                         nop                                                        // 0x004d686c    90
                         nop                                                        // 0x004d686d    90
                         nop                                                        // 0x004d686e    90
                         nop                                                        // 0x004d686f    90
_jmp_addr_0x004d6870:    {disp8} mov        eax, dword ptr [esp + 0x08]             // 0x004d6870    8b442408
                         push               edi                                     // 0x004d6874    57
                         mov                edi, dword ptr [eax]                    // 0x004d6875    8b38
                         test               edi, edi                                // 0x004d6877    85ff
                         {disp8} je         _jmp_addr_0x004d68e0                    // 0x004d6879    7465
                         push               ebx                                     // 0x004d687b    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]             // 0x004d687c    8b5c240c
                         push               ebp                                     // 0x004d6880    55
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]             // 0x004d6881    8b6c241c
                         push               esi                                     // 0x004d6885    56
_jmp_addr_0x004d6886:    {disp8} mov        ecx, dword ptr [edi + 0x04]             // 0x004d6886    8b4f04
                         {disp8} mov        edx, dword ptr [ecx + 0x08]             // 0x004d6889    8b5108
                         {disp8} mov        eax, dword ptr [esp + 0x1c]             // 0x004d688c    8b44241c
                         {disp8} mov        ecx, dword ptr [edx + 0x14]             // 0x004d6890    8b4a14
                         push               ebp                                     // 0x004d6893    55
                         push               eax                                     // 0x004d6894    50
                         call               _jmp_addr_0x004d8300                    // 0x004d6895    e8661a0000
                         test               eax, eax                                // 0x004d689a    85c0
                         {disp8} jne        _jmp_addr_0x004d68d7                    // 0x004d689c    7539
                         {disp8} mov        esi, dword ptr [edi + 0x04]             // 0x004d689e    8b7704
                         test               esi, esi                                // 0x004d68a1    85f6
                         {disp8} je         _jmp_addr_0x004d68d7                    // 0x004d68a3    7432
                         push               0x8                                     // 0x004d68a5    6a08
                         call               ??2@YAPAXI@Z                            // 0x004d68a7    e842fc2e00
                         add                esp, 0x04                               // 0x004d68ac    83c404
                         test               eax, eax                                // 0x004d68af    85c0
                         {disp8} je         _jmp_addr_0x004d68d7                    // 0x004d68b1    7424
                         {disp8} mov        dword ptr [eax + 0x04], esi             // 0x004d68b3    897004
                         mov                dword ptr [eax], 0x00000000             // 0x004d68b6    c70000000000
                         mov                ecx, dword ptr [ebx]                    // 0x004d68bc    8b0b
                         test               ecx, ecx                                // 0x004d68be    85c9
                         {disp8} je         _jmp_addr_0x004d68d2                    // 0x004d68c0    7410
_jmp_addr_0x004d68c2:    mov.s              edx, ecx                                // 0x004d68c2    8bd1
                         mov                ecx, dword ptr [ecx]                    // 0x004d68c4    8b09
                         test               ecx, ecx                                // 0x004d68c6    85c9
                         {disp8} jne        _jmp_addr_0x004d68c2                    // 0x004d68c8    75f8
                         test               edx, edx                                // 0x004d68ca    85d2
                         {disp8} je         _jmp_addr_0x004d68d2                    // 0x004d68cc    7404
                         mov                dword ptr [edx], eax                    // 0x004d68ce    8902
                         {disp8} jmp        _jmp_addr_0x004d68d4                    // 0x004d68d0    eb02
_jmp_addr_0x004d68d2:    mov                dword ptr [ebx], eax                    // 0x004d68d2    8903
_jmp_addr_0x004d68d4:    {disp8} inc        dword ptr [ebx + 0x04]                  // 0x004d68d4    ff4304
_jmp_addr_0x004d68d7:    mov                edi, dword ptr [edi]                    // 0x004d68d7    8b3f
                         test               edi, edi                                // 0x004d68d9    85ff
                         {disp8} jne        _jmp_addr_0x004d6886                    // 0x004d68db    75a9
                         pop                esi                                     // 0x004d68dd    5e
                         pop                ebp                                     // 0x004d68de    5d
                         pop                ebx                                     // 0x004d68df    5b
_jmp_addr_0x004d68e0:    pop                edi                                     // 0x004d68e0    5f
                         ret                                                        // 0x004d68e1    c3
                         nop                                                        // 0x004d68e2    90
                         nop                                                        // 0x004d68e3    90
                         nop                                                        // 0x004d68e4    90
                         nop                                                        // 0x004d68e5    90
                         nop                                                        // 0x004d68e6    90
                         nop                                                        // 0x004d68e7    90
                         nop                                                        // 0x004d68e8    90
                         nop                                                        // 0x004d68e9    90
                         nop                                                        // 0x004d68ea    90
                         nop                                                        // 0x004d68eb    90
                         nop                                                        // 0x004d68ec    90
                         nop                                                        // 0x004d68ed    90
                         nop                                                        // 0x004d68ee    90
                         nop                                                        // 0x004d68ef    90
_jmp_addr_0x004d68f0:    {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d68f0    8b442404
                         test               eax, eax                                // 0x004d68f4    85c0
                         push               ebx                                     // 0x004d68f6    53
                         push               ebp                                     // 0x004d68f7    55
                         push               esi                                     // 0x004d68f8    56
                         push               edi                                     // 0x004d68f9    57
                         mov.s              ebp, ecx                                // 0x004d68fa    8be9
                         {disp8} jl         _jmp_addr_0x004d6940                    // 0x004d68fc    7c42
                         cmp                eax, 0x01                               // 0x004d68fe    83f801
                         {disp8} jg         _jmp_addr_0x004d6940                    // 0x004d6901    7f3d
                         {disp8} mov        eax, dword ptr [esp + 0x18]             // 0x004d6903    8b442418
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000] // 0x004d6907    8d0cc500000000
                         xor.s              ebx, ebx                                // 0x004d690e    33db
                         sub.s              ecx, eax                                // 0x004d6910    2bc8
                         {disp32} lea       edi, dword ptr [ecx * 0x8 + 0x00c660a0] // 0x004d6912    8d3ccda060c600
_jmp_addr_0x004d6919:    mov                esi, dword ptr [edi]                    // 0x004d6919    8b37
                         cmp                esi, 0x17                               // 0x004d691b    83fe17
                         {disp8} je         _jmp_addr_0x004d6940                    // 0x004d691e    7420
                         push               esi                                     // 0x004d6920    56
                         call               _jmp_addr_0x004d69a0                    // 0x004d6921    e87a000000
                         add                esp, 0x04                               // 0x004d6926    83c404
                         test               eax, eax                                // 0x004d6929    85c0
                         {disp8} je         _jmp_addr_0x004d6937                    // 0x004d692b    740a
                         {disp8} mov        edx, dword ptr [ebp + 0x7c]             // 0x004d692d    8b557c
                         {disp8} mov        dword ptr [ebp + edx * 0x4 + 0x1c], esi // 0x004d6930    8974951c
                         {disp8} inc        dword ptr [ebp + 0x7c]                  // 0x004d6934    ff457c
_jmp_addr_0x004d6937:    inc                ebx                                     // 0x004d6937    43
                         add                edi, 0x04                               // 0x004d6938    83c704
                         cmp                ebx, 0x0a                               // 0x004d693b    83fb0a
                         .byte              0x72, 0xd9// {disp8} jb _jmp_addr_0x004d6919 // 0x004d693e    72d9
_jmp_addr_0x004d6940:    pop                edi                                     // 0x004d6940    5f
                         pop                esi                                     // 0x004d6941    5e
                         pop                ebp                                     // 0x004d6942    5d
                         pop                ebx                                     // 0x004d6943    5b
                         ret                0x000c                                  // 0x004d6944    c20c00
                         nop                                                        // 0x004d6947    90
                         nop                                                        // 0x004d6948    90
                         nop                                                        // 0x004d6949    90
                         nop                                                        // 0x004d694a    90
                         nop                                                        // 0x004d694b    90
                         nop                                                        // 0x004d694c    90
                         nop                                                        // 0x004d694d    90
                         nop                                                        // 0x004d694e    90
                         nop                                                        // 0x004d694f    90
_jmp_addr_0x004d6950:    mov                eax, dword ptr [ecx]                    // 0x004d6950    8b01
                         test               eax, eax                                // 0x004d6952    85c0
                         push               esi                                     // 0x004d6954    56
                         {disp8} jl         _jmp_addr_0x004d6989                    // 0x004d6955    7c32
                         cmp                eax, 0x01                               // 0x004d6957    83f801
                         {disp8} jg         _jmp_addr_0x004d6989                    // 0x004d695a    7f2d
                         {disp8} mov        eax, dword ptr [ecx + 0x04]             // 0x004d695c    8b4104
                         {disp8} mov        esi, dword ptr [esp + 0x08]             // 0x004d695f    8b742408
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000] // 0x004d6963    8d0cc500000000
                         xor.s              edx, edx                                // 0x004d696a    33d2
                         sub.s              ecx, eax                                // 0x004d696c    2bc8
                         {disp32} lea       ecx, dword ptr [ecx * 0x8 + 0x00c660a0] // 0x004d696e    8d0ccda060c600
_jmp_addr_0x004d6975:    mov                eax, dword ptr [ecx]                    // 0x004d6975    8b01
                         cmp                eax, 0x17                               // 0x004d6977    83f817
                         {disp8} je         _jmp_addr_0x004d6989                    // 0x004d697a    740d
                         cmp.s              eax, esi                                // 0x004d697c    3bc6
                         {disp8} je         _jmp_addr_0x004d698f                    // 0x004d697e    740f
                         inc                edx                                     // 0x004d6980    42
                         add                ecx, 0x4                                // 0x004d6981    83c104
                         cmp                edx, 0x0a                               // 0x004d6984    83fa0a
                         .byte              0x72, 0xec// {disp8} jb _jmp_addr_0x004d6975 // 0x004d6987    72ec
_jmp_addr_0x004d6989:    xor.s              eax, eax                                // 0x004d6989    33c0
                         pop                esi                                     // 0x004d698b    5e
                         ret                0x0004                                  // 0x004d698c    c20400
_jmp_addr_0x004d698f:    mov                eax, 0x00000001                         // 0x004d698f    b801000000
                         pop                esi                                     // 0x004d6994    5e
                         ret                0x0004                                  // 0x004d6995    c20400
                         nop                                                        // 0x004d6998    90
                         nop                                                        // 0x004d6999    90
                         nop                                                        // 0x004d699a    90
                         nop                                                        // 0x004d699b    90
                         nop                                                        // 0x004d699c    90
                         nop                                                        // 0x004d699d    90
                         nop                                                        // 0x004d699e    90
                         nop                                                        // 0x004d699f    90
_jmp_addr_0x004d69a0:    {disp8} mov        ecx, dword ptr [esp + 0x04]             // 0x004d69a0    8b4c2404
                         xor.s              eax, eax                                // 0x004d69a4    33c0
                         cmp                ecx, 0x06                               // 0x004d69a6    83f906
                         setle              al                                      // 0x004d69a9    0f9ec0
                         ret                                                        // 0x004d69ac    c3
                         nop                                                        // 0x004d69ad    90
                         nop                                                        // 0x004d69ae    90
                         nop                                                        // 0x004d69af    90
_jmp_addr_0x004d69b0:    push               ebx                                     // 0x004d69b0    53
                         push               ebp                                     // 0x004d69b1    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]             // 0x004d69b2    8b6c240c
                         push               esi                                     // 0x004d69b6    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]             // 0x004d69b7    8b742414
                         {disp8} mov        eax, dword ptr [esi + 0x7c]             // 0x004d69bb    8b467c
                         xor.s              ecx, ecx                                // 0x004d69be    33c9
                         test               eax, eax                                // 0x004d69c0    85c0
                         push               edi                                     // 0x004d69c2    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]             // 0x004d69c3    8b7c241c
                         {disp8} jbe        _jmp_addr_0x004d69e7                    // 0x004d69c7    761e
                         {disp8} lea        edx, dword ptr [esi + 0x1c]             // 0x004d69c9    8d561c
_jmp_addr_0x004d69cc:    mov                eax, dword ptr [edx]                    // 0x004d69cc    8b02
                         cmp.s              eax, edi                                // 0x004d69ce    3bc7
                         {disp8} je         _jmp_addr_0x004d69dc                    // 0x004d69d0    740a
                         {disp8} mov        ebx, dword ptr [ebp + 0x7c]             // 0x004d69d2    8b5d7c
                         {disp8} mov        dword ptr [ebp + ebx * 0x4 + 0x1c], eax // 0x004d69d5    89449d1c
                         {disp8} inc        dword ptr [ebp + 0x7c]                  // 0x004d69d9    ff457c
_jmp_addr_0x004d69dc:    {disp8} mov        eax, dword ptr [esi + 0x7c]             // 0x004d69dc    8b467c
                         inc                ecx                                     // 0x004d69df    41
                         add                edx, 0x04                               // 0x004d69e0    83c204
                         cmp.s              ecx, eax                                // 0x004d69e3    3bc8
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x004d69cc // 0x004d69e5    72e5
_jmp_addr_0x004d69e7:    cmp                edi, 0x06                               // 0x004d69e7    83ff06
                         {disp8} jne        _jmp_addr_0x004d6a4b                    // 0x004d69ea    755f
                         {disp8} mov        eax, dword ptr [esp + 0x20]             // 0x004d69ec    8b442420
                         {disp32} mov       esi, dword ptr [eax * 0x4 + 0x00c83ab8] // 0x004d69f0    8b3485b83ac800
                         mov                edx, dword ptr [esi]                    // 0x004d69f7    8b16
                         mov.s              ecx, esi                                // 0x004d69f9    8bce
                         xor.s              ebx, ebx                                // 0x004d69fb    33db
                         call               dword ptr [edx + 0x1c]                  // 0x004d69fd    ff521c
                         test               eax, eax                                // 0x004d6a00    85c0
                         {disp8} jbe        _jmp_addr_0x004d6a4b                    // 0x004d6a02    7647
_jmp_addr_0x004d6a04:    mov                eax, dword ptr [esi]                    // 0x004d6a04    8b06
                         push               ebx                                     // 0x004d6a06    53
                         mov.s              ecx, esi                                // 0x004d6a07    8bce
                         call               dword ptr [eax + 0x20]                  // 0x004d6a09    ff5020
                         mov                edx, dword ptr [eax]                    // 0x004d6a0c    8b10
                         mov.s              ecx, eax                                // 0x004d6a0e    8bc8
                         call               dword ptr [edx + 0x2c]                  // 0x004d6a10    ff522c
                         mov.s              edi, eax                                // 0x004d6a13    8bf8
                         cmp                edi, 0x06                               // 0x004d6a15    83ff06
                         {disp8} je         _jmp_addr_0x004d6a3f                    // 0x004d6a18    7425
                         push               edi                                     // 0x004d6a1a    57
                         call               _jmp_addr_0x004d69a0                    // 0x004d6a1b    e880ffffff
                         add                esp, 0x04                               // 0x004d6a20    83c404
                         test               eax, eax                                // 0x004d6a23    85c0
                         {disp8} jne        _jmp_addr_0x004d6a3f                    // 0x004d6a25    7518
                         {disp8} mov        ecx, dword ptr [esp + 0x24]             // 0x004d6a27    8b4c2424
                         push               edi                                     // 0x004d6a2b    57
                         call               _jmp_addr_0x004d6950                    // 0x004d6a2c    e81fffffff
                         test               eax, eax                                // 0x004d6a31    85c0
                         {disp8} je         _jmp_addr_0x004d6a3f                    // 0x004d6a33    740a
                         {disp8} mov        eax, dword ptr [ebp + 0x7c]             // 0x004d6a35    8b457c
                         {disp8} mov        dword ptr [ebp + eax * 0x4 + 0x1c], edi // 0x004d6a38    897c851c
                         {disp8} inc        dword ptr [ebp + 0x7c]                  // 0x004d6a3c    ff457c
_jmp_addr_0x004d6a3f:    mov                edx, dword ptr [esi]                    // 0x004d6a3f    8b16
                         mov.s              ecx, esi                                // 0x004d6a41    8bce
                         inc                ebx                                     // 0x004d6a43    43
                         call               dword ptr [edx + 0x1c]                  // 0x004d6a44    ff521c
                         cmp.s              ebx, eax                                // 0x004d6a47    3bd8
                         .byte              0x72, 0xb9// {disp8} jb _jmp_addr_0x004d6a04 // 0x004d6a49    72b9
_jmp_addr_0x004d6a4b:    pop                edi                                     // 0x004d6a4b    5f
                         pop                esi                                     // 0x004d6a4c    5e
                         pop                ebp                                     // 0x004d6a4d    5d
                         pop                ebx                                     // 0x004d6a4e    5b
                         ret                                                        // 0x004d6a4f    c3
_jmp_addr_0x004d6a50:    push               ebx                                     // 0x004d6a50    53
                         push               esi                                     // 0x004d6a51    56
                         mov.s              esi, ecx                                // 0x004d6a52    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000080]       // 0x004d6a54    8b8680000000
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c83b18] // 0x004d6a5a    8b0c85183bc800
                         mov                ecx, dword ptr [ecx]                    // 0x004d6a61    8b09
                         mov                edx, dword ptr [ecx]                    // 0x004d6a63    8b11
                         xor.s              ebx, ebx                                // 0x004d6a65    33db
                         call               dword ptr [edx + 0x20]                  // 0x004d6a67    ff5220
                         test               eax, eax                                // 0x004d6a6a    85c0
                         {disp32} jbe       _jmp_addr_0x004d6b06                    // 0x004d6a6c    0f8694000000
                         push               ebp                                     // 0x004d6a72    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]             // 0x004d6a73    8b6c2410
                         push               edi                                     // 0x004d6a77    57
_jmp_addr_0x004d6a78:    push               0x000003bf                              // 0x004d6a78    68bf030000
                         push               0x00bdee10                              // 0x004d6a7d    6810eebd00
                         push               0x00000094                              // 0x004d6a82    6894000000
                         call               ___nw__FUl                              // 0x004d6a87    e8044d3000
                         add                esp, 0x0c                               // 0x004d6a8c    83c40c
                         test               eax, eax                                // 0x004d6a8f    85c0
                         {disp8} je         _jmp_addr_0x004d6ae7                    // 0x004d6a91    7454
                         {disp32} mov       ecx, dword ptr [esi + 0x00000080]       // 0x004d6a93    8b8e80000000
                         push               ebp                                     // 0x004d6a99    55
                         push               esi                                     // 0x004d6a9a    56
                         push               ebx                                     // 0x004d6a9b    53
                         push               ecx                                     // 0x004d6a9c    51
                         mov.s              ecx, eax                                // 0x004d6a9d    8bc8
                         call               _jmp_addr_0x004d4df0                    // 0x004d6a9f    e84ce3ffff
                         mov.s              edi, eax                                // 0x004d6aa4    8bf8
                         test               edi, edi                                // 0x004d6aa6    85ff
                         {disp8} je         _jmp_addr_0x004d6ae7                    // 0x004d6aa8    743d
                         push               0x8                                     // 0x004d6aaa    6a08
                         call               ??2@YAPAXI@Z                            // 0x004d6aac    e83dfa2e00
                         add                esp, 0x04                               // 0x004d6ab1    83c404
                         test               eax, eax                                // 0x004d6ab4    85c0
                         {disp8} je         _jmp_addr_0x004d6ae7                    // 0x004d6ab6    742f
                         {disp8} mov        dword ptr [eax + 0x04], edi             // 0x004d6ab8    897804
                         mov                dword ptr [eax], 0x00000000             // 0x004d6abb    c70000000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]       // 0x004d6ac1    8b8e84000000
                         test               ecx, ecx                                // 0x004d6ac7    85c9
                         {disp8} je         _jmp_addr_0x004d6adb                    // 0x004d6ac9    7410
_jmp_addr_0x004d6acb:    mov.s              edx, ecx                                // 0x004d6acb    8bd1
                         mov                ecx, dword ptr [ecx]                    // 0x004d6acd    8b09
                         test               ecx, ecx                                // 0x004d6acf    85c9
                         {disp8} jne        _jmp_addr_0x004d6acb                    // 0x004d6ad1    75f8
                         test               edx, edx                                // 0x004d6ad3    85d2
                         {disp8} je         _jmp_addr_0x004d6adb                    // 0x004d6ad5    7404
                         mov                dword ptr [edx], eax                    // 0x004d6ad7    8902
                         {disp8} jmp        _jmp_addr_0x004d6ae1                    // 0x004d6ad9    eb06
_jmp_addr_0x004d6adb:    {disp32} mov       dword ptr [esi + 0x00000084], eax       // 0x004d6adb    898684000000
_jmp_addr_0x004d6ae1:    {disp32} inc       dword ptr [esi + 0x00000088]            // 0x004d6ae1    ff8688000000
_jmp_addr_0x004d6ae7:    {disp32} mov       edx, dword ptr [esi + 0x00000080]       // 0x004d6ae7    8b9680000000
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00c83b18] // 0x004d6aed    8b0495183bc800
                         mov                ecx, dword ptr [eax]                    // 0x004d6af4    8b08
                         mov                edx, dword ptr [ecx]                    // 0x004d6af6    8b11
                         inc                ebx                                     // 0x004d6af8    43
                         call               dword ptr [edx + 0x20]                  // 0x004d6af9    ff5220
                         cmp.s              ebx, eax                                // 0x004d6afc    3bd8
                         {disp32} jb        _jmp_addr_0x004d6a78                    // 0x004d6afe    0f8274ffffff
                         pop                edi                                     // 0x004d6b04    5f
                         pop                ebp                                     // 0x004d6b05    5d
_jmp_addr_0x004d6b06:    pop                esi                                     // 0x004d6b06    5e
                         pop                ebx                                     // 0x004d6b07    5b
                         ret                0x0004                                  // 0x004d6b08    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                    // 0x004d6b0b    e869adf2ff
_jmp_addr_0x004d6b10:    sub                esp, 0x30                               // 0x004d6b10    83ec30
                         push               ebx                                     // 0x004d6b13    53
                         push               ebp                                     // 0x004d6b14    55
                         push               esi                                     // 0x004d6b15    56
                         push               edi                                     // 0x004d6b16    57
                         mov.s              edi, ecx                                // 0x004d6b17    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x44]             // 0x004d6b19    8b4c2444
                         {disp8} mov        eax, dword ptr [edi + 0x08]             // 0x004d6b1d    8b4708
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00c83b18] // 0x004d6b20    8b148d183bc800
                         mov                ecx, dword ptr [edx]                    // 0x004d6b27    8b0a
                         {disp8} mov        dword ptr [esp + 0x24], eax             // 0x004d6b29    89442424
                         mov                eax, dword ptr [ecx]                    // 0x004d6b2d    8b01
                         xor.s              ebx, ebx                                // 0x004d6b2f    33db
                         {disp8} mov        dword ptr [esp + 0x1c], edi             // 0x004d6b31    897c241c
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000      // 0x004d6b35    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000      // 0x004d6b3d    c744241000000000
                         xor.s              ebp, ebp                                // 0x004d6b45    33ed
                         {disp8} mov        dword ptr [esp + 0x20], ebx             // 0x004d6b47    895c2420
                         call               dword ptr [eax + 0x20]                  // 0x004d6b4b    ff5020
                         test               eax, eax                                // 0x004d6b4e    85c0
                         {disp32} jbe       _jmp_addr_0x004d6ca1                    // 0x004d6b50    0f864b010000
                         {disp8} jmp        _jmp_addr_0x004d6b5c                    // 0x004d6b56    eb04
_jmp_addr_0x004d6b58:    {disp8} mov        edi, dword ptr [esp + 0x1c]             // 0x004d6b58    8b7c241c
_jmp_addr_0x004d6b5c:    mov                esi, dword ptr [edi]                    // 0x004d6b5c    8b37
                         cmp.s              esi, ebp                                // 0x004d6b5e    3bf5
                         {disp8} mov        dword ptr [esp + 0x2c], ebp             // 0x004d6b60    896c242c
                         {disp8} mov        dword ptr [esp + 0x28], ebp             // 0x004d6b64    896c2428
                         {disp8} je         _jmp_addr_0x004d6bbd                    // 0x004d6b68    7453
_jmp_addr_0x004d6b6a:    {disp8} mov        ecx, dword ptr [esi + 0x04]             // 0x004d6b6a    8b4e04
                         {disp8} mov        edx, dword ptr [ecx + 0x08]             // 0x004d6b6d    8b5108
                         {disp8} mov        eax, dword ptr [esp + 0x44]             // 0x004d6b70    8b442444
                         {disp8} mov        ecx, dword ptr [edx + 0x14]             // 0x004d6b74    8b4a14
                         push               ebx                                     // 0x004d6b77    53
                         push               eax                                     // 0x004d6b78    50
                         call               _jmp_addr_0x004d8300                    // 0x004d6b79    e882170000
                         sub.s              eax, ebp                                // 0x004d6b7e    2bc5
                         {disp8} je         _jmp_addr_0x004d6b8d                    // 0x004d6b80    740b
                         sub                eax, 0x02                               // 0x004d6b82    83e802
                         {disp32} je        _jmp_addr_0x004d6cbf                    // 0x004d6b85    0f8434010000
                         {disp8} jmp        _jmp_addr_0x004d6bb3                    // 0x004d6b8b    eb26
_jmp_addr_0x004d6b8d:    {disp8} mov        edi, dword ptr [esi + 0x04]             // 0x004d6b8d    8b7e04
                         cmp.s              edi, ebp                                // 0x004d6b90    3bfd
                         {disp8} je         _jmp_addr_0x004d6bb3                    // 0x004d6b92    741f
                         push               0x8                                     // 0x004d6b94    6a08
                         call               ??2@YAPAXI@Z                            // 0x004d6b96    e853f92e00
                         add                esp, 0x04                               // 0x004d6b9b    83c404
                         cmp.s              eax, ebp                                // 0x004d6b9e    3bc5
                         {disp8} je         _jmp_addr_0x004d6bb3                    // 0x004d6ba0    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x28]             // 0x004d6ba2    8b4c2428
                         {disp8} mov        dword ptr [eax + 0x04], edi             // 0x004d6ba6    897804
                         mov                dword ptr [eax], ecx                    // 0x004d6ba9    8908
                         {disp8} mov        dword ptr [esp + 0x28], eax             // 0x004d6bab    89442428
                         {disp8} inc        dword ptr [esp + 0x2c]                  // 0x004d6baf    ff44242c
_jmp_addr_0x004d6bb3:    mov                esi, dword ptr [esi]                    // 0x004d6bb3    8b36
                         cmp.s              esi, ebp                                // 0x004d6bb5    3bf5
                         {disp8} jne        _jmp_addr_0x004d6b6a                    // 0x004d6bb7    75b1
                         {disp8} mov        edi, dword ptr [esp + 0x1c]             // 0x004d6bb9    8b7c241c
_jmp_addr_0x004d6bbd:    {disp8} mov        ecx, dword ptr [esp + 0x2c]             // 0x004d6bbd    8b4c242c
                         {disp8} mov        edx, dword ptr [edi + 0x04]             // 0x004d6bc1    8b5704
                         {disp8} mov        dword ptr [esp + 0x30], ecx             // 0x004d6bc4    894c2430
                         {disp8} mov        dword ptr [esp + 0x34], ebp             // 0x004d6bc8    896c2434
                         {disp8} fild       qword ptr [esp + 0x30]                  // 0x004d6bcc    df6c2430
                         {disp8} mov        dword ptr [esp + 0x38], edx             // 0x004d6bd0    89542438
                         {disp8} mov        dword ptr [esp + 0x3c], ebp             // 0x004d6bd4    896c243c
                         {disp8} lea        eax, dword ptr [esp + 0x28]             // 0x004d6bd8    8d442428
                         {disp8} fidiv      dword ptr [esp + 0x38]                  // 0x004d6bdc    da742438
                         push               eax                                     // 0x004d6be0    50
                         {disp8} fstp       dword ptr [esp + 0x18]                  // 0x004d6be1    d95c2418
                         call               _jmp_addr_0x004d6cd0                    // 0x004d6be5    e8e6000000
                         {disp8} fmul       dword ptr [esp + 0x18]                  // 0x004d6bea    d84c2418
                         add                esp, 0x04                               // 0x004d6bee    83c404
                         {disp8} fadd       dword ptr [esp + 0x18]                  // 0x004d6bf1    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                  // 0x004d6bf5    d95c2418
                         {disp8} fld        dword ptr [esp + 0x14]                  // 0x004d6bf9    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x004d6bfd    d81d98a38a00
                         fnstsw             ax                                      // 0x004d6c03    dfe0
                         test               ah, 0x41                                // 0x004d6c05    f6c441
                         {disp8} jne        _jmp_addr_0x004d6c23                    // 0x004d6c08    7519
                         {disp8} mov        ecx, dword ptr [esp + 0x14]             // 0x004d6c0a    8b4c2414
                         push               ecx                                     // 0x004d6c0e    51
                         call               _jmp_addr_0x004d6ea0                    // 0x004d6c0f    e88c020000
                         {disp8} fmul       dword ptr [esp + 0x18]                  // 0x004d6c14    d84c2418
                         add                esp, 0x04                               // 0x004d6c18    83c404
                         {disp8} fsubr      dword ptr [esp + 0x10]                  // 0x004d6c1b    d86c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x004d6c1f    d95c2410
_jmp_addr_0x004d6c23:    {disp8} mov        ecx, dword ptr [esp + 0x28]             // 0x004d6c23    8b4c2428
                         cmp.s              ecx, ebp                                // 0x004d6c27    3bcd
                         {disp8} je         _jmp_addr_0x004d6c71                    // 0x004d6c29    7446
_jmp_addr_0x004d6c2b:    {disp8} mov        ebx, dword ptr [ecx + 0x04]             // 0x004d6c2b    8b5904
                         xor.s              edi, edi                                // 0x004d6c2e    33ff
                         cmp.s              ecx, ebp                                // 0x004d6c30    3bcd
                         mov.s              eax, ecx                                // 0x004d6c32    8bc1
                         {disp8} je         _jmp_addr_0x004d6c6d                    // 0x004d6c34    7437
_jmp_addr_0x004d6c36:    cmp                dword ptr [eax + 0x04], ebx             // 0x004d6c36    395804
                         mov                esi, dword ptr [eax]                    // 0x004d6c39    8b30
                         {disp8} jne        _jmp_addr_0x004d6c61                    // 0x004d6c3b    7524
                         cmp.s              eax, ecx                                // 0x004d6c3d    3bc1
                         {disp8} jne        _jmp_addr_0x004d6c47                    // 0x004d6c3f    7506
                         {disp8} mov        dword ptr [esp + 0x28], esi             // 0x004d6c41    89742428
                         {disp8} jmp        _jmp_addr_0x004d6c49                    // 0x004d6c45    eb02
_jmp_addr_0x004d6c47:    mov                dword ptr [edi], esi                    // 0x004d6c47    8937
_jmp_addr_0x004d6c49:    {disp8} mov        edx, dword ptr [esp + 0x2c]             // 0x004d6c49    8b54242c
                         dec                edx                                     // 0x004d6c4d    4a
                         push               eax                                     // 0x004d6c4e    50
                         {disp8} mov        dword ptr [esp + 0x30], edx             // 0x004d6c4f    89542430
                         call               ??3@YAXPAX@Z                            // 0x004d6c53    e840822d00
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]             // 0x004d6c58    8b4c242c
                         add                esp, 0x04                               // 0x004d6c5c    83c404
                         {disp8} jmp        _jmp_addr_0x004d6c63                    // 0x004d6c5f    eb02
_jmp_addr_0x004d6c61:    mov.s              edi, eax                                // 0x004d6c61    8bf8
_jmp_addr_0x004d6c63:    cmp.s              esi, ebp                                // 0x004d6c63    3bf5
                         mov.s              eax, esi                                // 0x004d6c65    8bc6
                         {disp8} jne        _jmp_addr_0x004d6c36                    // 0x004d6c67    75cd
                         cmp.s              ecx, ebp                                // 0x004d6c69    3bcd
                         {disp8} jne        _jmp_addr_0x004d6c2b                    // 0x004d6c6b    75be
_jmp_addr_0x004d6c6d:    {disp8} mov        ebx, dword ptr [esp + 0x20]             // 0x004d6c6d    8b5c2420
_jmp_addr_0x004d6c71:    {disp8} mov        edx, dword ptr [esp + 0x44]             // 0x004d6c71    8b542444
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00c83b18] // 0x004d6c75    8b0495183bc800
                         mov                ecx, dword ptr [eax]                    // 0x004d6c7c    8b08
                         mov                edx, dword ptr [ecx]                    // 0x004d6c7e    8b11
                         inc                ebx                                     // 0x004d6c80    43
                         {disp8} mov        dword ptr [esp + 0x20], ebx             // 0x004d6c81    895c2420
                         call               dword ptr [edx + 0x20]                  // 0x004d6c85    ff5220
                         cmp.s              ebx, eax                                // 0x004d6c88    3bd8
                         {disp32} jb        _jmp_addr_0x004d6b58                    // 0x004d6c8a    0f82c8feffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]        // 0x004d6c90    d90590a38a00
                         {disp8} fcomp      dword ptr [esp + 0x10]                  // 0x004d6c96    d85c2410
                         fnstsw             ax                                      // 0x004d6c9a    dfe0
                         test               ah, 0x41                                // 0x004d6c9c    f6c441
                         {disp8} jne        _jmp_addr_0x004d6ca9                    // 0x004d6c9f    7508
_jmp_addr_0x004d6ca1:    {disp8} mov        dword ptr [esp + 0x10], 0x3f800000      // 0x004d6ca1    c74424100000803f
_jmp_addr_0x004d6ca9:    {disp8} fld        dword ptr [esp + 0x24]                  // 0x004d6ca9    d9442424
                         pop                edi                                     // 0x004d6cad    5f
                         {disp8} fsub       dword ptr [esp + 0x14]                  // 0x004d6cae    d8642414
                         pop                esi                                     // 0x004d6cb2    5e
                         pop                ebp                                     // 0x004d6cb3    5d
                         pop                ebx                                     // 0x004d6cb4    5b
                         {disp8} fdiv       dword ptr [esp + 0x00]                  // 0x004d6cb5    d8742400
                         add                esp, 0x30                               // 0x004d6cb9    83c430
                         ret                0x0004                                  // 0x004d6cbc    c20400
_jmp_addr_0x004d6cbf:    {disp32} fld       dword ptr [_rdata_float0p0]             // 0x004d6cbf    d90598a38a00
                         pop                edi                                     // 0x004d6cc5    5f
                         pop                esi                                     // 0x004d6cc6    5e
                         pop                ebp                                     // 0x004d6cc7    5d
                         pop                ebx                                     // 0x004d6cc8    5b
                         add                esp, 0x30                               // 0x004d6cc9    83c430
                         ret                0x0004                                  // 0x004d6ccc    c20400
                         nop                                                        // 0x004d6ccf    90
_jmp_addr_0x004d6cd0:    sub                esp, 0x4c                               // 0x004d6cd0    83ec4c
                         push               ebx                                     // 0x004d6cd3    53
                         push               ebp                                     // 0x004d6cd4    55
                         {disp8} mov        ebp, dword ptr [esp + 0x58]             // 0x004d6cd5    8b6c2458
                         {disp8} mov        eax, dword ptr [ebp + 0x04]             // 0x004d6cd9    8b4504
                         xor.s              ebx, ebx                                // 0x004d6cdc    33db
                         cmp.s              eax, ebx                                // 0x004d6cde    3bc3
                         {disp8} jne        _jmp_addr_0x004d6cee                    // 0x004d6ce0    750c
                         {disp32} fld       dword ptr [_rdata_float0p0]             // 0x004d6ce2    d90598a38a00
                         pop                ebp                                     // 0x004d6ce8    5d
                         pop                ebx                                     // 0x004d6ce9    5b
                         add                esp, 0x4c                               // 0x004d6cea    83c44c
                         ret                                                        // 0x004d6ced    c3
_jmp_addr_0x004d6cee:    push               esi                                     // 0x004d6cee    56
                         {disp8} mov        esi, dword ptr [ebp + 0x00]             // 0x004d6cef    8b7500
                         xor.s              eax, eax                                // 0x004d6cf2    33c0
                         cmp.s              esi, ebx                                // 0x004d6cf4    3bf3
                         push               edi                                     // 0x004d6cf6    57
                         {disp8} mov        dword ptr [esp + 0x20], eax             // 0x004d6cf7    89442420
                         mov                ecx, 0x0000000b                         // 0x004d6cfb    b90b000000
                         {disp8} lea        edi, dword ptr [esp + 0x30]             // 0x004d6d00    8d7c2430
                         {disp8} mov        dword ptr [esp + 0x24], eax             // 0x004d6d04    89442424
                         rep stosd                                                  // 0x004d6d08    f3ab
                         {disp8} je         _jmp_addr_0x004d6d45                    // 0x004d6d0a    7439
_jmp_addr_0x004d6d0c:    {disp8} mov        ecx, dword ptr [esi + 0x04]             // 0x004d6d0c    8b4e04
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]             // 0x004d6d0f    8b510c
                         mov.s              edi, edx                                // 0x004d6d12    8bfa
                         push               edi                                     // 0x004d6d14    57
                         {disp8} mov        dword ptr [esp + 0x64], edx             // 0x004d6d15    89542464
                         call               _jmp_addr_0x004d6e20                    // 0x004d6d19    e802010000
                         push               edi                                     // 0x004d6d1e    57
                         mov.s              ebx, eax                                // 0x004d6d1f    8bd8
                         call               _jmp_addr_0x004d6e40                    // 0x004d6d21    e81a010000
                         {disp8} mov        edx, dword ptr [esp + ebx * 0x4 + 0x28] // 0x004d6d26    8b549c28
                         mov                esi, dword ptr [esi]                    // 0x004d6d2a    8b36
                         {disp8} lea        ecx, dword ptr [esp + ebx * 0x4 + 0x28] // 0x004d6d2c    8d4c9c28
                         add                esp, 0x08                               // 0x004d6d30    83c408
                         inc                edx                                     // 0x004d6d33    42
                         {disp8} lea        eax, dword ptr [esp + eax * 0x4 + 0x30] // 0x004d6d34    8d448430
                         mov                dword ptr [ecx], edx                    // 0x004d6d38    8911
                         mov                ecx, dword ptr [eax]                    // 0x004d6d3a    8b08
                         inc                ecx                                     // 0x004d6d3c    41
                         test               esi, esi                                // 0x004d6d3d    85f6
                         mov                dword ptr [eax], ecx                    // 0x004d6d3f    8908
                         {disp8} jne        _jmp_addr_0x004d6d0c                    // 0x004d6d41    75c9
                         xor.s              ebx, ebx                                // 0x004d6d43    33db
_jmp_addr_0x004d6d45:    {disp8} mov        eax, dword ptr [ebp + 0x04]             // 0x004d6d45    8b4504
                         {disp8} mov        dword ptr [esp + 0x18], eax             // 0x004d6d48    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx             // 0x004d6d4c    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                  // 0x004d6d50    df6c2418
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000      // 0x004d6d54    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000      // 0x004d6d5c    c744241000000000
                         {disp8} lea        esi, dword ptr [esp + 0x20]             // 0x004d6d64    8d742420
                         {disp8} fstp       dword ptr [esp + 0x18]                  // 0x004d6d68    d95c2418
                         mov                edi, 0x00000002                         // 0x004d6d6c    bf02000000
_jmp_addr_0x004d6d71:    mov                ecx, dword ptr [esi]                    // 0x004d6d71    8b0e
                         {disp8} mov        dword ptr [esp + 0x28], ecx             // 0x004d6d73    894c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx             // 0x004d6d77    895c242c
                         {disp8} fild       qword ptr [esp + 0x28]                  // 0x004d6d7b    df6c2428
                         {disp8} fdiv       dword ptr [esp + 0x18]                  // 0x004d6d7f    d8742418
                         {disp8} fst        dword ptr [esp + 0x14]                  // 0x004d6d83    d9542414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x004d6d87    d81d98a38a00
                         fnstsw             ax                                      // 0x004d6d8d    dfe0
                         test               ah, 0x41                                // 0x004d6d8f    f6c441
                         {disp8} jne        _jmp_addr_0x004d6dad                    // 0x004d6d92    7519
                         {disp8} mov        edx, dword ptr [esp + 0x14]             // 0x004d6d94    8b542414
                         push               edx                                     // 0x004d6d98    52
                         call               _jmp_addr_0x004d6ea0                    // 0x004d6d99    e802010000
                         {disp8} fmul       dword ptr [esp + 0x18]                  // 0x004d6d9e    d84c2418
                         add                esp, 0x04                               // 0x004d6da2    83c404
                         {disp8} fsubr      dword ptr [esp + 0x60]                  // 0x004d6da5    d86c2460
                         {disp8} fstp       dword ptr [esp + 0x60]                  // 0x004d6da9    d95c2460
_jmp_addr_0x004d6dad:    add                esi, 0x04                               // 0x004d6dad    83c604
                         dec                edi                                     // 0x004d6db0    4f
                         {disp8} jne        _jmp_addr_0x004d6d71                    // 0x004d6db1    75be
                         {disp8} lea        esi, dword ptr [esp + 0x30]             // 0x004d6db3    8d742430
                         mov                edi, 0x0000000b                         // 0x004d6db7    bf0b000000
_jmp_addr_0x004d6dbc:    mov                eax, dword ptr [esi]                    // 0x004d6dbc    8b06
                         {disp8} mov        dword ptr [esp + 0x28], eax             // 0x004d6dbe    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx             // 0x004d6dc2    895c242c
                         {disp8} fild       qword ptr [esp + 0x28]                  // 0x004d6dc6    df6c2428
                         {disp8} fdiv       dword ptr [esp + 0x18]                  // 0x004d6dca    d8742418
                         {disp8} fst        dword ptr [esp + 0x14]                  // 0x004d6dce    d9542414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x004d6dd2    d81d98a38a00
                         fnstsw             ax                                      // 0x004d6dd8    dfe0
                         test               ah, 0x41                                // 0x004d6dda    f6c441
                         {disp8} jne        _jmp_addr_0x004d6df8                    // 0x004d6ddd    7519
                         {disp8} mov        ecx, dword ptr [esp + 0x14]             // 0x004d6ddf    8b4c2414
                         push               ecx                                     // 0x004d6de3    51
                         call               _jmp_addr_0x004d6ea0                    // 0x004d6de4    e8b7000000
                         {disp8} fmul       dword ptr [esp + 0x18]                  // 0x004d6de9    d84c2418
                         add                esp, 0x04                               // 0x004d6ded    83c404
                         {disp8} fsubr      dword ptr [esp + 0x10]                  // 0x004d6df0    d86c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                  // 0x004d6df4    d95c2410
_jmp_addr_0x004d6df8:    add                esi, 0x04                               // 0x004d6df8    83c604
                         dec                edi                                     // 0x004d6dfb    4f
                         {disp8} jne        _jmp_addr_0x004d6dbc                    // 0x004d6dfc    75be
                         {disp8} fld        dword ptr [esp + 0x60]                  // 0x004d6dfe    d9442460
                         pop                edi                                     // 0x004d6e02    5f
                         fadd.s             st(0), st(0)                            // 0x004d6e03    dcc0
                         pop                esi                                     // 0x004d6e05    5e
                         pop                ebp                                     // 0x004d6e06    5d
                         pop                ebx                                     // 0x004d6e07    5b
                         {disp8} fadd       dword ptr [esp + 0x00]                  // 0x004d6e08    d8442400
                         {disp32} fmul      dword ptr [__real@3eaaaaab]             // 0x004d6e0c    d80d6cb28a00
                         add                esp, 0x4c                               // 0x004d6e12    83c44c
                         ret                                                        // 0x004d6e15    c3
                         nop                                                        // 0x004d6e16    90
                         nop                                                        // 0x004d6e17    90
                         nop                                                        // 0x004d6e18    90
                         nop                                                        // 0x004d6e19    90
                         nop                                                        // 0x004d6e1a    90
                         nop                                                        // 0x004d6e1b    90
                         nop                                                        // 0x004d6e1c    90
                         nop                                                        // 0x004d6e1d    90
                         nop                                                        // 0x004d6e1e    90
                         nop                                                        // 0x004d6e1f    90
_jmp_addr_0x004d6e20:    {disp8} fld        dword ptr [esp + 0x04]                  // 0x004d6e20    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]             // 0x004d6e24    d81d98a38a00
                         fnstsw             ax                                      // 0x004d6e2a    dfe0
                         test               ah, 0x01                                // 0x004d6e2c    f6c401
                         {disp8} jne        _jmp_addr_0x004d6e37                    // 0x004d6e2f    7506
                         mov                eax, 0x00000001                         // 0x004d6e31    b801000000
                         ret                                                        // 0x004d6e36    c3
_jmp_addr_0x004d6e37:    xor.s              eax, eax                                // 0x004d6e37    33c0
                         ret                                                        // 0x004d6e39    c3
                         call               dword ptr [__imp__ShellExecuteA@4]      // 0x004d6e3a    ff15ac978a00
_jmp_addr_0x004d6e40:    push               esi                                     // 0x004d6e40    56
                         push               edi                                     // 0x004d6e41    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]             // 0x004d6e42    8b7c240c
                         xor.s              esi, esi                                // 0x004d6e46    33f6
_jmp_addr_0x004d6e48:    push               esi                                     // 0x004d6e48    56
                         push               edi                                     // 0x004d6e49    57
                         call               _jmp_addr_0x004d6e70                    // 0x004d6e4a    e821000000
                         add                esp, 0x08                               // 0x004d6e4f    83c408
                         test               eax, eax                                // 0x004d6e52    85c0
                         {disp8} jne        _jmp_addr_0x004d6e62                    // 0x004d6e54    750c
                         inc                esi                                     // 0x004d6e56    46
                         cmp                esi, 0x0b                               // 0x004d6e57    83fe0b
                         {disp8} jl         _jmp_addr_0x004d6e48                    // 0x004d6e5a    7cec
                         pop                edi                                     // 0x004d6e5c    5f
                         or                 eax, -0x1                               // 0x004d6e5d    83c8ff
                         pop                esi                                     // 0x004d6e60    5e
                         ret                                                        // 0x004d6e61    c3
_jmp_addr_0x004d6e62:    pop                edi                                     // 0x004d6e62    5f
                         mov.s              eax, esi                                // 0x004d6e63    8bc6
                         pop                esi                                     // 0x004d6e65    5e
                         ret                                                        // 0x004d6e66    c3
                         nop                                                        // 0x004d6e67    90
                         nop                                                        // 0x004d6e68    90
                         nop                                                        // 0x004d6e69    90
                         nop                                                        // 0x004d6e6a    90
                         nop                                                        // 0x004d6e6b    90
                         nop                                                        // 0x004d6e6c    90
                         nop                                                        // 0x004d6e6d    90
                         nop                                                        // 0x004d6e6e    90
                         nop                                                        // 0x004d6e6f    90
_jmp_addr_0x004d6e70:    {disp8} mov        eax, dword ptr [esp + 0x08]             // 0x004d6e70    8b442408
                         {disp8} fld        dword ptr [esp + 0x04]                  // 0x004d6e74    d9442404
                         {disp32} fsub      dword ptr [eax * 0x4 + 0x00bdea70]      // 0x004d6e78    d8248570eabd00
                         fabs                                                       // 0x004d6e7f    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ebe0]       // 0x004d6e81    dc1de07b8c00
                         fnstsw             ax                                      // 0x004d6e87    dfe0
                         test               ah, 0x41                                // 0x004d6e89    f6c441
                         {disp8} je         _jmp_addr_0x004d6e94                    // 0x004d6e8c    7406
                         mov                eax, 0x00000001                         // 0x004d6e8e    b801000000
                         ret                                                        // 0x004d6e93    c3
_jmp_addr_0x004d6e94:    xor.s              eax, eax                                // 0x004d6e94    33c0
                         ret                                                        // 0x004d6e96    c3
                         nop                                                        // 0x004d6e97    90
                         nop                                                        // 0x004d6e98    90
                         nop                                                        // 0x004d6e99    90
                         nop                                                        // 0x004d6e9a    90
                         nop                                                        // 0x004d6e9b    90
                         nop                                                        // 0x004d6e9c    90
                         nop                                                        // 0x004d6e9d    90
                         nop                                                        // 0x004d6e9e    90
                         nop                                                        // 0x004d6e9f    90
_jmp_addr_0x004d6ea0:    fldlg2                                                     // 0x004d6ea0    d9ec
                         {disp8} fld        dword ptr [esp + 0x04]                  // 0x004d6ea2    d9442404
                         fyl2x                                                      // 0x004d6ea6    d9f1
                         {disp32} fmul      qword ptr [rdata_bytes + 0x26df8]       // 0x004d6ea8    dc0df8fd8c00
                         ret                                                        // 0x004d6eae    c3
                         nop                                                        // 0x004d6eaf    90
_jmp_addr_0x004d6eb0:    push               ebp                                     // 0x004d6eb0    55
                         mov.s              ebp, esp                                // 0x004d6eb1    8bec
                         and                esp, 0xfffffff8                         // 0x004d6eb3    83e4f8
                         sub                esp, 0x00000810                         // 0x004d6eb6    81ec10080000
                         push               ebx                                     // 0x004d6ebc    53
                         push               ebp                                     // 0x004d6ebd    55
                         push               esi                                     // 0x004d6ebe    56
                         mov.s              esi, ecx                                // 0x004d6ebf    8bf1
                         push               edi                                     // 0x004d6ec1    57
                         {disp8} lea        ecx, dword ptr [esi + 0x14]             // 0x004d6ec2    8d4e14
                         call               _jmp_addr_0x004d6fb0                    // 0x004d6ec5    e8e6000000
                         push               0x00bdf27c                              // 0x004d6eca    687cf2bd00
                         push               0x0                                     // 0x004d6ecf    6a00
                         call               _jmp_addr_0x004d7210                    // 0x004d6ed1    e83a030000
                         {disp8} mov        esi, dword ptr [esi + 0x0c]             // 0x004d6ed6    8b760c
                         add                esp, 0x08                               // 0x004d6ed9    83c408
                         test               esi, esi                                // 0x004d6edc    85f6
                         {disp32} je        _jmp_addr_0x004d6fa8                    // 0x004d6ede    0f84c4000000
                         mov.s              ebp, esi                                // 0x004d6ee4    8bee
                         test               ebp, ebp                                // 0x004d6ee6    85ed
                         {disp32} je        _jmp_addr_0x004d6fa8                    // 0x004d6ee8    0f84ba000000
_jmp_addr_0x004d6eee:    {disp8} mov        esi, dword ptr [ebp + 0x04]             // 0x004d6eee    8b7504
                         {disp8} mov        eax, dword ptr [esi + 0x08]             // 0x004d6ef1    8b4608
                         {disp8} mov        edi, dword ptr [eax + 0x14]             // 0x004d6ef4    8b7814
                         push               0x00bdf23c                              // 0x004d6ef7    683cf2bd00
                         push               0x1                                     // 0x004d6efc    6a01
                         {disp8} mov        dword ptr [esp + 0x1c], esi             // 0x004d6efe    8974241c
                         call               _jmp_addr_0x004d7210                    // 0x004d6f02    e809030000
                         push               0x00bdf230                              // 0x004d6f07    6830f2bd00
                         push               0x1                                     // 0x004d6f0c    6a01
                         call               _jmp_addr_0x004d7210                    // 0x004d6f0e    e8fd020000
                         mov                edx, dword ptr [edi]                    // 0x004d6f13    8b17
                         add                esp, 0x10                               // 0x004d6f15    83c410
                         mov.s              ecx, edi                                // 0x004d6f18    8bcf
                         xor.s              ebx, ebx                                // 0x004d6f1a    33db
                         call               dword ptr [edx + 0x1c]                  // 0x004d6f1c    ff521c
                         test               eax, eax                                // 0x004d6f1f    85c0
                         {disp8} jbe        _jmp_addr_0x004d6f76                    // 0x004d6f21    7653
_jmp_addr_0x004d6f23:    mov                eax, dword ptr [edi]                    // 0x004d6f23    8b07
                         push               ebx                                     // 0x004d6f25    53
                         mov.s              ecx, edi                                // 0x004d6f26    8bcf
                         call               dword ptr [eax + 0x20]                  // 0x004d6f28    ff5020
                         mov.s              esi, eax                                // 0x004d6f2b    8bf0
                         {disp8} mov        eax, dword ptr [esi + 0x08]             // 0x004d6f2d    8b4608
                         mov                edx, dword ptr [esi]                    // 0x004d6f30    8b16
                         push               eax                                     // 0x004d6f32    50
                         mov.s              ecx, esi                                // 0x004d6f33    8bce
                         call               dword ptr [edx + 0x24]                  // 0x004d6f35    ff5224
                         push               eax                                     // 0x004d6f38    50
                         mov                eax, dword ptr [esi]                    // 0x004d6f39    8b06
                         mov.s              ecx, esi                                // 0x004d6f3b    8bce
                         call               dword ptr [eax + 0x2c]                  // 0x004d6f3d    ff502c
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c83b18] // 0x004d6f40    8b0c85183bc800
                         add                ecx, 0x4                                // 0x004d6f47    83c104
                         push               ecx                                     // 0x004d6f4a    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]             // 0x004d6f4b    8d542420
                         push               0x009d9968                              // 0x004d6f4f    6868999d00
                         push               edx                                     // 0x004d6f54    52
                         call               dword ptr [rdata_bytes + 0x35c]         // 0x004d6f55    ff155c938a00
                         push               eax                                     // 0x004d6f5b    50
                         push               0x2                                     // 0x004d6f5c    6a02
                         call               _jmp_addr_0x004d7210                    // 0x004d6f5e    e8ad020000
                         mov                eax, dword ptr [edi]                    // 0x004d6f63    8b07
                         add                esp, 0x18                               // 0x004d6f65    83c418
                         mov.s              ecx, edi                                // 0x004d6f68    8bcf
                         inc                ebx                                     // 0x004d6f6a    43
                         call               dword ptr [eax + 0x1c]                  // 0x004d6f6b    ff501c
                         cmp.s              ebx, eax                                // 0x004d6f6e    3bd8
                         .byte              0x72, 0xb1// {disp8} jb _jmp_addr_0x004d6f23 // 0x004d6f70    72b1
                         {disp8} mov        esi, dword ptr [esp + 0x14]             // 0x004d6f72    8b742414
_jmp_addr_0x004d6f76:    {disp8} fld        dword ptr [esi + 0x0c]                  // 0x004d6f76    d9460c
                         sub                esp, 0x08                               // 0x004d6f79    83ec08
                         fstp               qword ptr [esp]                         // 0x004d6f7c    dd1c24
                         {disp32} lea       ecx, dword ptr [esp + 0x00000424]       // 0x004d6f7f    8d8c2424040000
                         push               0x009d98bc                              // 0x004d6f86    68bc989d00
                         push               ecx                                     // 0x004d6f8b    51
                         call               dword ptr [rdata_bytes + 0x35c]         // 0x004d6f8c    ff155c938a00
                         push               eax                                     // 0x004d6f92    50
                         push               0x1                                     // 0x004d6f93    6a01
                         call               _jmp_addr_0x004d7210                    // 0x004d6f95    e876020000
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]             // 0x004d6f9a    8b6d00
                         add                esp, 0x18                               // 0x004d6f9d    83c418
                         test               ebp, ebp                                // 0x004d6fa0    85ed
                         {disp32} jne       _jmp_addr_0x004d6eee                    // 0x004d6fa2    0f8546ffffff
_jmp_addr_0x004d6fa8:    pop                edi                                     // 0x004d6fa8    5f
                         pop                esi                                     // 0x004d6fa9    5e
                         pop                ebp                                     // 0x004d6faa    5d
                         pop                ebx                                     // 0x004d6fab    5b
                         mov.s              esp, ebp                                // 0x004d6fac    8be5
                         pop                ebp                                     // 0x004d6fae    5d
                         ret                                                        // 0x004d6faf    c3
_jmp_addr_0x004d6fb0:    mov                ecx, dword ptr [ecx]                    // 0x004d6fb0    8b09
                         push               0x1                                     // 0x004d6fb2    6a01
                         call               _jmp_addr_0x004d6fc0                    // 0x004d6fb4    e807000000
                         ret                                                        // 0x004d6fb9    c3
                         call               dword ptr [__imp___0Dialup__QAE_XZ@4]   // 0x004d6fba    ff1580998a00
_jmp_addr_0x004d6fc0:    sub                esp, 0x00000404                         // 0x004d6fc0    81ec04040000
                         push               ebx                                     // 0x004d6fc6    53
                         push               esi                                     // 0x004d6fc7    56
                         push               edi                                     // 0x004d6fc8    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000414]       // 0x004d6fc9    8bbc2414040000
                         push               0x00bdf308                              // 0x004d6fd0    6808f3bd00
                         push               edi                                     // 0x004d6fd5    57
                         mov.s              esi, ecx                                // 0x004d6fd6    8bf1
                         call               _jmp_addr_0x004d7210                    // 0x004d6fd8    e833020000
                         {disp8} fld        dword ptr [esi + 0x08]                  // 0x004d6fdd    d94608
                         {disp32} mov       ebx, dword ptr [rdata_bytes + 0x35c]    // 0x004d6fe0    8b1d5c938a00
                         fstp               qword ptr [esp]                         // 0x004d6fe6    dd1c24
                         {disp8} lea        eax, dword ptr [esp + 0x14]             // 0x004d6fe9    8d442414
                         push               0x00bdf2f8                              // 0x004d6fed    68f8f2bd00
                         push               eax                                     // 0x004d6ff2    50
                         call               ebx                                     // 0x004d6ff3    ffd3
                         push               eax                                     // 0x004d6ff5    50
                         push               edi                                     // 0x004d6ff6    57
                         call               _jmp_addr_0x004d7210                    // 0x004d6ff7    e814020000
                         {disp8} mov        eax, dword ptr [esi + 0x0c]             // 0x004d6ffc    8b460c
                         add                esp, 0x18                               // 0x004d6fff    83c418
                         test               eax, eax                                // 0x004d7002    85c0
                         {disp8} je         _jmp_addr_0x004d7040                    // 0x004d7004    743a
                         {disp8} mov        ecx, dword ptr [esi + 0x10]             // 0x004d7006    8b4e10
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00c83b18] // 0x004d7009    8b148d183bc800
                         mov                ecx, dword ptr [edx]                    // 0x004d7010    8b0a
                         {disp8} mov        edx, dword ptr [esi + 0x14]             // 0x004d7012    8b5614
                         mov                eax, dword ptr [ecx]                    // 0x004d7015    8b01
                         push               edx                                     // 0x004d7017    52
                         call               dword ptr [eax + 0x24]                  // 0x004d7018    ff5024
                         push               eax                                     // 0x004d701b    50
                         {disp8} mov        eax, dword ptr [esi + 0x10]             // 0x004d701c    8b4610
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c83b18] // 0x004d701f    8b0c85183bc800
                         add                ecx, 0x4                                // 0x004d7026    83c104
                         push               ecx                                     // 0x004d7029    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]             // 0x004d702a    8d542414
                         push               0x00bdf2d4                              // 0x004d702e    68d4f2bd00
                         push               edx                                     // 0x004d7033    52
                         call               ebx                                     // 0x004d7034    ffd3
                         push               eax                                     // 0x004d7036    50
                         push               edi                                     // 0x004d7037    57
                         call               _jmp_addr_0x004d7210                    // 0x004d7038    e8d3010000
                         add                esp, 0x18                               // 0x004d703d    83c418
_jmp_addr_0x004d7040:    cmp                dword ptr [esi + 0x00000090], -0x01     // 0x004d7040    83be90000000ff
                         {disp8} je         _jmp_addr_0x004d7082                    // 0x004d7047    7439
                         push               edi                                     // 0x004d7049    57
                         mov.s              ecx, esi                                // 0x004d704a    8bce
                         call               _jmp_addr_0x004d7100                    // 0x004d704c    e8af000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000090]       // 0x004d7051    8b8690000000
                         shl                eax, 6                                  // 0x004d7057    c1e006
                         add                eax, 0x00bdea9c                         // 0x004d705a    059ceabd00
                         push               eax                                     // 0x004d705f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]             // 0x004d7060    8d4c2410
                         push               0x00bdf2c8                              // 0x004d7064    68c8f2bd00
                         push               ecx                                     // 0x004d7069    51
                         call               ebx                                     // 0x004d706a    ffd3
                         push               eax                                     // 0x004d706c    50
                         push               edi                                     // 0x004d706d    57
                         call               _jmp_addr_0x004d7210                    // 0x004d706e    e89d010000
                         add                esp, 0x14                               // 0x004d7073    83c414
                         pop                edi                                     // 0x004d7076    5f
                         pop                esi                                     // 0x004d7077    5e
                         pop                ebx                                     // 0x004d7078    5b
                         add                esp, 0x00000404                         // 0x004d7079    81c404040000
                         ret                0x0004                                  // 0x004d707f    c20400
_jmp_addr_0x004d7082:    {disp32} mov       edx, dword ptr [esi + 0x00000080]       // 0x004d7082    8b9680000000
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00c83b18] // 0x004d7088    8b0495183bc800
                         add                eax, 0x04                               // 0x004d708f    83c004
                         push               eax                                     // 0x004d7092    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]             // 0x004d7093    8d4c2410
                         push               0x00bdf2a8                              // 0x004d7097    68a8f2bd00
                         push               ecx                                     // 0x004d709c    51
                         call               ebx                                     // 0x004d709d    ffd3
                         push               eax                                     // 0x004d709f    50
                         push               edi                                     // 0x004d70a0    57
                         call               _jmp_addr_0x004d7210                    // 0x004d70a1    e86a010000
                         {disp32} fld       dword ptr [esi + 0x0000008c]            // 0x004d70a6    d9868c000000
                         add                esp, 0x0c                               // 0x004d70ac    83c40c
                         fstp               qword ptr [esp]                         // 0x004d70af    dd1c24
                         {disp8} lea        edx, dword ptr [esp + 0x14]             // 0x004d70b2    8d542414
                         push               0x00bdf294                              // 0x004d70b6    6894f2bd00
                         push               edx                                     // 0x004d70bb    52
                         call               ebx                                     // 0x004d70bc    ffd3
                         push               eax                                     // 0x004d70be    50
                         push               edi                                     // 0x004d70bf    57
                         call               _jmp_addr_0x004d7210                    // 0x004d70c0    e84b010000
                         push               0x00bdf288                              // 0x004d70c5    6888f2bd00
                         push               edi                                     // 0x004d70ca    57
                         call               _jmp_addr_0x004d7210                    // 0x004d70cb    e840010000
                         {disp32} mov       esi, dword ptr [esi + 0x00000084]       // 0x004d70d0    8bb684000000
                         add                esp, 0x20                               // 0x004d70d6    83c420
                         test               esi, esi                                // 0x004d70d9    85f6
                         {disp8} je         _jmp_addr_0x004d70ed                    // 0x004d70db    7410
                         inc                edi                                     // 0x004d70dd    47
_jmp_addr_0x004d70de:    {disp8} mov        ecx, dword ptr [esi + 0x04]             // 0x004d70de    8b4e04
                         push               edi                                     // 0x004d70e1    57
                         call               _jmp_addr_0x004d6fc0                    // 0x004d70e2    e8d9feffff
                         mov                esi, dword ptr [esi]                    // 0x004d70e7    8b36
                         test               esi, esi                                // 0x004d70e9    85f6
                         {disp8} jne        _jmp_addr_0x004d70de                    // 0x004d70eb    75f1
_jmp_addr_0x004d70ed:    pop                edi                                     // 0x004d70ed    5f
                         pop                esi                                     // 0x004d70ee    5e
                         pop                ebx                                     // 0x004d70ef    5b
                         add                esp, 0x00000404                         // 0x004d70f0    81c404040000
                         ret                0x0004                                  // 0x004d70f6    c20400
                         nop                                                        // 0x004d70f9    90
                         nop                                                        // 0x004d70fa    90
                         nop                                                        // 0x004d70fb    90
                         nop                                                        // 0x004d70fc    90
                         nop                                                        // 0x004d70fd    90
                         nop                                                        // 0x004d70fe    90
                         nop                                                        // 0x004d70ff    90
_jmp_addr_0x004d7100:    sub                esp, 0x0000080c                         // 0x004d7100    81ec0c080000
                         push               ebx                                     // 0x004d7106    53
                         push               ebp                                     // 0x004d7107    55
                         push               esi                                     // 0x004d7108    56
                         mov.s              esi, ecx                                // 0x004d7109    8bf1
                         cmp                dword ptr [esi], 0x00                   // 0x004d710b    833e00
                         {disp32} je        _jmp_addr_0x004d7200                    // 0x004d710e    0f84ec000000
                         {disp32} mov       ebx, dword ptr [esp + 0x0000081c]       // 0x004d7114    8b9c241c080000
                         push               0x00bdf27c                              // 0x004d711b    687cf2bd00
                         push               ebx                                     // 0x004d7120    53
                         call               _jmp_addr_0x004d7210                    // 0x004d7121    e8ea000000
                         mov                ebp, dword ptr [esi]                    // 0x004d7126    8b2e
                         add                esp, 0x08                               // 0x004d7128    83c408
                         test               ebp, ebp                                // 0x004d712b    85ed
                         {disp32} je        _jmp_addr_0x004d7200                    // 0x004d712d    0f84cd000000
                         push               edi                                     // 0x004d7133    57
                         inc                ebx                                     // 0x004d7134    43
_jmp_addr_0x004d7135:    {disp8} mov        esi, dword ptr [ebp + 0x04]             // 0x004d7135    8b7504
                         {disp8} mov        eax, dword ptr [esi + 0x08]             // 0x004d7138    8b4608
                         {disp8} mov        edi, dword ptr [eax + 0x14]             // 0x004d713b    8b7814
                         push               0x00bdf23c                              // 0x004d713e    683cf2bd00
                         push               ebx                                     // 0x004d7143    53
                         {disp8} mov        dword ptr [esp + 0x18], esi             // 0x004d7144    89742418
                         call               _jmp_addr_0x004d7210                    // 0x004d7148    e8c3000000
                         push               0x00bdf230                              // 0x004d714d    6830f2bd00
                         push               ebx                                     // 0x004d7152    53
                         call               _jmp_addr_0x004d7210                    // 0x004d7153    e8b8000000
                         mov                edx, dword ptr [edi]                    // 0x004d7158    8b17
                         add                esp, 0x10                               // 0x004d715a    83c410
                         mov.s              ecx, edi                                // 0x004d715d    8bcf
                         xor.s              ebx, ebx                                // 0x004d715f    33db
                         call               dword ptr [edx + 0x1c]                  // 0x004d7161    ff521c
                         test               eax, eax                                // 0x004d7164    85c0
                         {disp8} jbe        _jmp_addr_0x004d71c4                    // 0x004d7166    765c
_jmp_addr_0x004d7168:    mov                eax, dword ptr [edi]                    // 0x004d7168    8b07
                         push               ebx                                     // 0x004d716a    53
                         mov.s              ecx, edi                                // 0x004d716b    8bcf
                         call               dword ptr [eax + 0x20]                  // 0x004d716d    ff5020
                         mov.s              esi, eax                                // 0x004d7170    8bf0
                         {disp8} mov        eax, dword ptr [esi + 0x08]             // 0x004d7172    8b4608
                         mov                edx, dword ptr [esi]                    // 0x004d7175    8b16
                         push               eax                                     // 0x004d7177    50
                         mov.s              ecx, esi                                // 0x004d7178    8bce
                         call               dword ptr [edx + 0x24]                  // 0x004d717a    ff5224
                         push               eax                                     // 0x004d717d    50
                         mov                eax, dword ptr [esi]                    // 0x004d717e    8b06
                         mov.s              ecx, esi                                // 0x004d7180    8bce
                         call               dword ptr [eax + 0x2c]                  // 0x004d7182    ff502c
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c83b18] // 0x004d7185    8b0c85183bc800
                         add                ecx, 0x4                                // 0x004d718c    83c104
                         push               ecx                                     // 0x004d718f    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]             // 0x004d7190    8d54241c
                         push               0x009d9968                              // 0x004d7194    6868999d00
                         push               edx                                     // 0x004d7199    52
                         call               dword ptr [rdata_bytes + 0x35c]         // 0x004d719a    ff155c938a00
                         push               eax                                     // 0x004d71a0    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000834]       // 0x004d71a1    8b842434080000
                         add                eax, 0x02                               // 0x004d71a8    83c002
                         push               eax                                     // 0x004d71ab    50
                         call               _jmp_addr_0x004d7210                    // 0x004d71ac    e85f000000
                         mov                edx, dword ptr [edi]                    // 0x004d71b1    8b17
                         add                esp, 0x18                               // 0x004d71b3    83c418
                         mov.s              ecx, edi                                // 0x004d71b6    8bcf
                         inc                ebx                                     // 0x004d71b8    43
                         call               dword ptr [edx + 0x1c]                  // 0x004d71b9    ff521c
                         cmp.s              ebx, eax                                // 0x004d71bc    3bd8
                         .byte              0x72, 0xa8// {disp8} jb _jmp_addr_0x004d7168 // 0x004d71be    72a8
                         {disp8} mov        esi, dword ptr [esp + 0x10]             // 0x004d71c0    8b742410
_jmp_addr_0x004d71c4:    {disp8} fld        dword ptr [esi + 0x0c]                  // 0x004d71c4    d9460c
                         sub                esp, 0x08                               // 0x004d71c7    83ec08
                         fstp               qword ptr [esp]                         // 0x004d71ca    dd1c24
                         {disp32} lea       eax, dword ptr [esp + 0x00000420]       // 0x004d71cd    8d842420040000
                         push               0x009d98bc                              // 0x004d71d4    68bc989d00
                         push               eax                                     // 0x004d71d9    50
                         call               dword ptr [rdata_bytes + 0x35c]         // 0x004d71da    ff155c938a00
                         {disp32} mov       ecx, dword ptr [esp + 0x00000830]       // 0x004d71e0    8b8c2430080000
                         push               eax                                     // 0x004d71e7    50
                         {disp8} lea        ebx, dword ptr [ecx + 0x01]             // 0x004d71e8    8d5901
                         push               ebx                                     // 0x004d71eb    53
                         call               _jmp_addr_0x004d7210                    // 0x004d71ec    e81f000000
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]             // 0x004d71f1    8b6d00
                         add                esp, 0x18                               // 0x004d71f4    83c418
                         test               ebp, ebp                                // 0x004d71f7    85ed
                         {disp32} jne       _jmp_addr_0x004d7135                    // 0x004d71f9    0f8536ffffff
                         pop                edi                                     // 0x004d71ff    5f
_jmp_addr_0x004d7200:    pop                esi                                     // 0x004d7200    5e
                         pop                ebp                                     // 0x004d7201    5d
                         pop                ebx                                     // 0x004d7202    5b
                         add                esp, 0x0000080c                         // 0x004d7203    81c40c080000
                         ret                0x0004                                  // 0x004d7209    c20400
                         nop                                                        // 0x004d720c    90
                         nop                                                        // 0x004d720d    90
                         nop                                                        // 0x004d720e    90
                         nop                                                        // 0x004d720f    90
_jmp_addr_0x004d7210:    ret                                                        // 0x004d7210    c3
                         nop                                                        // 0x004d7211    90
                         nop                                                        // 0x004d7212    90
                         nop                                                        // 0x004d7213    90
                         nop                                                        // 0x004d7214    90
                         nop                                                        // 0x004d7215    90
                         nop                                                        // 0x004d7216    90
                         nop                                                        // 0x004d7217    90
                         nop                                                        // 0x004d7218    90
                         nop                                                        // 0x004d7219    90
                         nop                                                        // 0x004d721a    90
                         nop                                                        // 0x004d721b    90
                         nop                                                        // 0x004d721c    90
                         nop                                                        // 0x004d721d    90
                         nop                                                        // 0x004d721e    90
                         nop                                                        // 0x004d721f    90
??0DecisionTreeCollection@@QAE@XZ:
                                        push               ebx                                     // 0x004d7220    53
                         push               esi                                     // 0x004d7221    56
                         mov.s              ebx, ecx                                // 0x004d7222    8bd9
                         push               edi                                     // 0x004d7224    57
                         xor.s              esi, esi                                // 0x004d7225    33f6
                         mov.s              edi, ebx                                // 0x004d7227    8bfb
_jmp_addr_0x004d7229:    push               0x000004b9                              // 0x004d7229    68b9040000
                         push               0x00bdee10                              // 0x004d722e    6810eebd00
                         push               0x24                                    // 0x004d7233    6a24
                         call               ___nw__FUl                              // 0x004d7235    e856453000
                         add                esp, 0x0c                               // 0x004d723a    83c40c
                         test               eax, eax                                // 0x004d723d    85c0
                         {disp8} je         _jmp_addr_0x004d724d                    // 0x004d723f    740c
                         push               esi                                     // 0x004d7241    56
                         push               0x0                                     // 0x004d7242    6a00
                         mov.s              ecx, eax                                // 0x004d7244    8bc8
                         call               @__ct__18DecisionTreeAgendaF18DECISION_TREE_TYPE16CREATURE_DESIRES@16                    // 0x004d7246    e8a5d1ffff
                         {disp8} jmp        _jmp_addr_0x004d724f                    // 0x004d724b    eb02
_jmp_addr_0x004d724d:    xor.s              eax, eax                                // 0x004d724d    33c0
_jmp_addr_0x004d724f:    push               0x000004ba                              // 0x004d724f    68ba040000
                         push               0x00bdee10                              // 0x004d7254    6810eebd00
                         push               0x24                                    // 0x004d7259    6a24
                         mov                dword ptr [edi], eax                    // 0x004d725b    8907
                         call               ___nw__FUl                              // 0x004d725d    e82e453000
                         add                esp, 0x0c                               // 0x004d7262    83c40c
                         test               eax, eax                                // 0x004d7265    85c0
                         {disp8} je         _jmp_addr_0x004d7275                    // 0x004d7267    740c
                         push               esi                                     // 0x004d7269    56
                         push               0x1                                     // 0x004d726a    6a01
                         mov.s              ecx, eax                                // 0x004d726c    8bc8
                         call               @__ct__18DecisionTreeAgendaF18DECISION_TREE_TYPE16CREATURE_DESIRES@16                    // 0x004d726e    e87dd1ffff
                         {disp8} jmp        _jmp_addr_0x004d7277                    // 0x004d7273    eb02
_jmp_addr_0x004d7275:    xor.s              eax, eax                                // 0x004d7275    33c0
_jmp_addr_0x004d7277:    {disp32} mov       dword ptr [edi + 0x000000a0], eax       // 0x004d7277    8987a0000000
                         inc                esi                                     // 0x004d727d    46
                         add                edi, 0x04                               // 0x004d727e    83c704
                         cmp                esi, 0x28                               // 0x004d7281    83fe28
                         {disp8} jl         _jmp_addr_0x004d7229                    // 0x004d7284    7ca3
                         pop                edi                                     // 0x004d7286    5f
                         pop                esi                                     // 0x004d7287    5e
                         mov.s              eax, ebx                                // 0x004d7288    8bc3
                         pop                ebx                                     // 0x004d728a    5b
                         ret                                                        // 0x004d728b    c3
                         nop                                                        // 0x004d728c    90
                         nop                                                        // 0x004d728d    90
                         nop                                                        // 0x004d728e    90
                         nop                                                        // 0x004d728f    90
_jmp_addr_0x004d7290:    push               ebx                                     // 0x004d7290    53
                         push               esi                                     // 0x004d7291    56
                         push               edi                                     // 0x004d7292    57
                         mov.s              esi, ecx                                // 0x004d7293    8bf1
                         mov                ebx, 0x00000028                         // 0x004d7295    bb28000000
_jmp_addr_0x004d729a:    mov                edi, dword ptr [esi]                    // 0x004d729a    8b3e
                         test               edi, edi                                // 0x004d729c    85ff
                         {disp8} je         _jmp_addr_0x004d72b0                    // 0x004d729e    7410
                         mov.s              ecx, edi                                // 0x004d72a0    8bcf
                         call               _jmp_addr_0x004d4490                    // 0x004d72a2    e8e9d1ffff
                         push               edi                                     // 0x004d72a7    57
                         call               ??3@YAXPAX@Z                            // 0x004d72a8    e8eb7b2d00
                         add                esp, 0x04                               // 0x004d72ad    83c404
_jmp_addr_0x004d72b0:    {disp32} mov       edi, dword ptr [esi + 0x000000a0]       // 0x004d72b0    8bbea0000000
                         test               edi, edi                                // 0x004d72b6    85ff
                         {disp8} je         _jmp_addr_0x004d72ca                    // 0x004d72b8    7410
                         mov.s              ecx, edi                                // 0x004d72ba    8bcf
                         call               _jmp_addr_0x004d4490                    // 0x004d72bc    e8cfd1ffff
                         push               edi                                     // 0x004d72c1    57
                         call               ??3@YAXPAX@Z                            // 0x004d72c2    e8d17b2d00
                         add                esp, 0x04                               // 0x004d72c7    83c404
_jmp_addr_0x004d72ca:    add                esi, 0x04                               // 0x004d72ca    83c604
                         dec                ebx                                     // 0x004d72cd    4b
                         {disp8} jne        _jmp_addr_0x004d729a                    // 0x004d72ce    75ca
                         pop                edi                                     // 0x004d72d0    5f
                         pop                esi                                     // 0x004d72d1    5e
                         pop                ebx                                     // 0x004d72d2    5b
                         ret                                                        // 0x004d72d3    c3
                         nop                                                        // 0x004d72d4    90
                         nop                                                        // 0x004d72d5    90
                         nop                                                        // 0x004d72d6    90
                         nop                                                        // 0x004d72d7    90
                         nop                                                        // 0x004d72d8    90
                         nop                                                        // 0x004d72d9    90
                         nop                                                        // 0x004d72da    90
                         nop                                                        // 0x004d72db    90
                         nop                                                        // 0x004d72dc    90
                         nop                                                        // 0x004d72dd    90
                         nop                                                        // 0x004d72de    90
                         nop                                                        // 0x004d72df    90
_jmp_addr_0x004d72e0:    push               esi                                     // 0x004d72e0    56
                         push               edi                                     // 0x004d72e1    57
                         mov.s              esi, ecx                                // 0x004d72e2    8bf1
                         mov                edi, 0x00000028                         // 0x004d72e4    bf28000000
_jmp_addr_0x004d72e9:    mov                ecx, dword ptr [esi]                    // 0x004d72e9    8b0e
                         call               _jmp_addr_0x004d4520                    // 0x004d72eb    e830d2ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000a0]       // 0x004d72f0    8b8ea0000000
                         call               _jmp_addr_0x004d4520                    // 0x004d72f6    e825d2ffff
                         add                esi, 0x04                               // 0x004d72fb    83c604
                         dec                edi                                     // 0x004d72fe    4f
                         {disp8} jne        _jmp_addr_0x004d72e9                    // 0x004d72ff    75e8
                         pop                edi                                     // 0x004d7301    5f
                         pop                esi                                     // 0x004d7302    5e
                         ret                                                        // 0x004d7303    c3
                         nop                                                        // 0x004d7304    90
                         nop                                                        // 0x004d7305    90
                         nop                                                        // 0x004d7306    90
                         nop                                                        // 0x004d7307    90
                         nop                                                        // 0x004d7308    90
                         nop                                                        // 0x004d7309    90
                         nop                                                        // 0x004d730a    90
                         nop                                                        // 0x004d730b    90
                         nop                                                        // 0x004d730c    90
                         nop                                                        // 0x004d730d    90
                         nop                                                        // 0x004d730e    90
                         nop                                                        // 0x004d730f    90
                         push               esi                                     // 0x004d7310    56
                         push               edi                                     // 0x004d7311    57
                         mov.s              esi, ecx                                // 0x004d7312    8bf1
                         mov                edi, 0x00000028                         // 0x004d7314    bf28000000
_jmp_addr_0x004d7319:    mov                ecx, dword ptr [esi]                    // 0x004d7319    8b0e
                         call               _jmp_addr_0x004d6eb0                    // 0x004d731b    e890fbffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000a0]       // 0x004d7320    8b8ea0000000
                         call               _jmp_addr_0x004d6eb0                    // 0x004d7326    e885fbffff
                         add                esi, 0x04                               // 0x004d732b    83c604
                         dec                edi                                     // 0x004d732e    4f
                         {disp8} jne        _jmp_addr_0x004d7319                    // 0x004d732f    75e8
                         pop                edi                                     // 0x004d7331    5f
                         pop                esi                                     // 0x004d7332    5e
                         ret                                                        // 0x004d7333    c3
                         nop                                                        // 0x004d7334    90
                         nop                                                        // 0x004d7335    90
                         nop                                                        // 0x004d7336    90
                         nop                                                        // 0x004d7337    90
                         nop                                                        // 0x004d7338    90
                         nop                                                        // 0x004d7339    90
                         nop                                                        // 0x004d733a    90
                         nop                                                        // 0x004d733b    90
                         nop                                                        // 0x004d733c    90
                         nop                                                        // 0x004d733d    90
                         nop                                                        // 0x004d733e    90
                         nop                                                        // 0x004d733f    90
                         sub                esp, 0x08                               // 0x004d7340    83ec08
                         push               ebx                                     // 0x004d7343    53
                         push               ebp                                     // 0x004d7344    55
                         push               esi                                     // 0x004d7345    56
                         push               edi                                     // 0x004d7346    57
                         xor.s              ebp, ebp                                // 0x004d7347    33ed
                         mov.s              edi, ecx                                // 0x004d7349    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000028      // 0x004d734b    c744241028000000
_jmp_addr_0x004d7353:    mov                ebx, dword ptr [edi]                    // 0x004d7353    8b1f
                         {disp8} lea        ecx, dword ptr [ebx + 0x1c]             // 0x004d7355    8d4b1c
                         call               _jmp_addr_0x004d4680                    // 0x004d7358    e823d3ffff
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]             // 0x004d735d    8d4b14
                         mov.s              esi, eax                                // 0x004d7360    8bf0
                         call               _jmp_addr_0x004d4680                    // 0x004d7362    e819d3ffff
                         {disp32} mov       ebx, dword ptr [edi + 0x000000a0]       // 0x004d7367    8b9fa0000000
                         {disp8} lea        ecx, dword ptr [ebx + 0x1c]             // 0x004d736d    8d4b1c
                         add.s              esi, eax                                // 0x004d7370    03f0
                         call               _jmp_addr_0x004d4680                    // 0x004d7372    e809d3ffff
                         mov.s              edx, eax                                // 0x004d7377    8bd0
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]             // 0x004d7379    8d4b14
                         {disp8} mov        dword ptr [esp + 0x14], edx             // 0x004d737c    89542414
                         call               _jmp_addr_0x004d4680                    // 0x004d7380    e8fbd2ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]             // 0x004d7385    8b4c2414
                         add.s              esi, ecx                                // 0x004d7389    03f1
                         add.s              eax, esi                                // 0x004d738b    03c6
                         add.s              ebp, eax                                // 0x004d738d    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x10]             // 0x004d738f    8b442410
                         add                edi, 0x04                               // 0x004d7393    83c704
                         dec                eax                                     // 0x004d7396    48
                         {disp8} mov        dword ptr [esp + 0x10], eax             // 0x004d7397    89442410
                         {disp8} jne        _jmp_addr_0x004d7353                    // 0x004d739b    75b6
                         pop                edi                                     // 0x004d739d    5f
                         pop                esi                                     // 0x004d739e    5e
                         mov.s              eax, ebp                                // 0x004d739f    8bc5
                         pop                ebp                                     // 0x004d73a1    5d
                         pop                ebx                                     // 0x004d73a2    5b
                         add                esp, 0x08                               // 0x004d73a3    83c408
                         ret                                                        // 0x004d73a6    c3
                         nop                                                        // 0x004d73a7    90
                         nop                                                        // 0x004d73a8    90
                         nop                                                        // 0x004d73a9    90
                         nop                                                        // 0x004d73aa    90
                         nop                                                        // 0x004d73ab    90
                         nop                                                        // 0x004d73ac    90
                         nop                                                        // 0x004d73ad    90
                         nop                                                        // 0x004d73ae    90
                         nop                                                        // 0x004d73af    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]             // 0x004d73b0    8b410c
                         test               eax, eax                                // 0x004d73b3    85c0
                         push               esi                                     // 0x004d73b5    56
                         {disp8} je         _jmp_addr_0x004d73f4                    // 0x004d73b6    743c
                         {disp8} mov        esi, dword ptr [ecx + 0x10]             // 0x004d73b8    8b7110
                         {disp32} mov       eax, dword ptr [esi * 0x4 + 0x00c83b18] // 0x004d73bb    8b04b5183bc800
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]             // 0x004d73c2    8b4914
                         mov                eax, dword ptr [eax]                    // 0x004d73c5    8b00
                         mov                edx, dword ptr [eax]                    // 0x004d73c7    8b10
                         push               ecx                                     // 0x004d73c9    51
                         mov.s              ecx, eax                                // 0x004d73ca    8bc8
                         call               dword ptr [edx + 0x24]                  // 0x004d73cc    ff5224
                         {disp32} mov       edx, dword ptr [esi * 0x4 + 0x00c83b18] // 0x004d73cf    8b14b5183bc800
                         push               eax                                     // 0x004d73d6    50
                         add                edx, 0x04                               // 0x004d73d7    83c204
                         push               edx                                     // 0x004d73da    52
                         push               0x00bdf358                              // 0x004d73db    6858f3bd00
                         push               0x00c839b8                              // 0x004d73e0    68b839c800
                         call               _sprintf                                // 0x004d73e5    e8e8e32e00
                         add                esp, 0x10                               // 0x004d73ea    83c410
                         mov                eax, 0x00c839b8                         // 0x004d73ed    b8b839c800
                         pop                esi                                     // 0x004d73f2    5e
                         ret                                                        // 0x004d73f3    c3
_jmp_addr_0x004d73f4:    push               edi                                     // 0x004d73f4    57
                         or                 ecx, 0xffffffff                         // 0x004d73f5    83c9ff
                         xor.s              eax, eax                                // 0x004d73f8    33c0
                         mov                edi, 0x00bdf350                         // 0x004d73fa    bf50f3bd00
                         repne scasb                                                // 0x004d73ff    f2ae
                         not                ecx                                     // 0x004d7401    f7d1
                         sub.s              edi, ecx                                // 0x004d7403    2bf9
                         mov.s              eax, ecx                                // 0x004d7405    8bc1
                         mov.s              esi, edi                                // 0x004d7407    8bf7
                         shr                ecx, 2                                  // 0x004d7409    c1e902
                         mov                edi, 0x00c839b8                         // 0x004d740c    bfb839c800
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x004d7411    f3a5
                         mov.s              ecx, eax                                // 0x004d7413    8bc8
                         and                ecx, 0x03                               // 0x004d7415    83e103
                         rep movsb                                                  // 0x004d7418    f3a4
                         pop                edi                                     // 0x004d741a    5f
                         mov                eax, 0x00c839b8                         // 0x004d741b    b8b839c800
                         pop                esi                                     // 0x004d7420    5e
                         ret                                                        // 0x004d7421    c3
                         nop                                                        // 0x004d7422    90
                         nop                                                        // 0x004d7423    90
                         nop                                                        // 0x004d7424    90
                         nop                                                        // 0x004d7425    90
                         nop                                                        // 0x004d7426    90
                         nop                                                        // 0x004d7427    90
                         nop                                                        // 0x004d7428    90
                         nop                                                        // 0x004d7429    90
                         nop                                                        // 0x004d742a    90
                         nop                                                        // 0x004d742b    90
                         nop                                                        // 0x004d742c    90
                         nop                                                        // 0x004d742d    90
                         nop                                                        // 0x004d742e    90
                         nop                                                        // 0x004d742f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000080]       // 0x004d7430    8b8180000000
                         cmp                eax, 0x17                               // 0x004d7436    83f817
                         {disp8} je         _jmp_addr_0x004d746f                    // 0x004d7439    7434
                         push               esi                                     // 0x004d743b    56
                         push               edi                                     // 0x004d743c    57
                         {disp32} mov       edi, dword ptr [eax * 0x4 + 0x00c83b18] // 0x004d743d    8b3c85183bc800
                         or                 ecx, 0xffffffff                         // 0x004d7444    83c9ff
                         add                edi, 0x04                               // 0x004d7447    83c704
                         xor.s              eax, eax                                // 0x004d744a    33c0
                         repne scasb                                                // 0x004d744c    f2ae
                         not                ecx                                     // 0x004d744e    f7d1
                         sub.s              edi, ecx                                // 0x004d7450    2bf9
                         mov.s              eax, ecx                                // 0x004d7452    8bc1
                         mov.s              esi, edi                                // 0x004d7454    8bf7
                         shr                ecx, 2                                  // 0x004d7456    c1e902
                         mov                edi, 0x00c835b8                         // 0x004d7459    bfb835c800
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x004d745e    f3a5
                         mov.s              ecx, eax                                // 0x004d7460    8bc8
                         and                ecx, 0x03                               // 0x004d7462    83e103
                         rep movsb                                                  // 0x004d7465    f3a4
                         pop                edi                                     // 0x004d7467    5f
                         mov                eax, 0x00c835b8                         // 0x004d7468    b8b835c800
                         pop                esi                                     // 0x004d746d    5e
                         ret                                                        // 0x004d746e    c3
_jmp_addr_0x004d746f:    {disp8} fld        dword ptr [ecx + 0x08]                  // 0x004d746f    d94108
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000090]       // 0x004d7472    8b8990000000
                         sub                esp, 0x08                               // 0x004d7478    83ec08
                         shl                ecx, 6                                  // 0x004d747b    c1e106
                         fstp               qword ptr [esp]                         // 0x004d747e    dd1c24
                         add                ecx, 0x00bdea9c                         // 0x004d7481    81c19ceabd00
                         push               ecx                                     // 0x004d7487    51
                         push               0x00bdf360                              // 0x004d7488    6860f3bd00
                         push               0x00c835b8                              // 0x004d748d    68b835c800
                         call               _sprintf                                // 0x004d7492    e83be32e00
                         add                esp, 0x14                               // 0x004d7497    83c414
                         mov                eax, 0x00c835b8                         // 0x004d749a    b8b835c800
                         ret                                                        // 0x004d749f    c3
_jmp_addr_0x004d74a0:    sub                esp, 0x00000400                         // 0x004d74a0    81ec00040000
                         push               ebx                                     // 0x004d74a6    53
                         push               ebp                                     // 0x004d74a7    55
                         mov.s              ebp, ecx                                // 0x004d74a8    8be9
                         {disp32} mov       byte ptr [data_bytes + 0x2bd1b8], 0x00  // 0x004d74aa    c605b831c80000
                         {disp8} mov        ebx, dword ptr [ebp + 0x0c]             // 0x004d74b1    8b5d0c
                         test               ebx, ebx                                // 0x004d74b4    85db
                         push               esi                                     // 0x004d74b6    56
                         push               edi                                     // 0x004d74b7    57
                         mov.s              eax, ebp                                // 0x004d74b8    8bc5
                         {disp8} je         _jmp_addr_0x004d7533                    // 0x004d74ba    7477
_jmp_addr_0x004d74bc:    {disp8} mov        esi, dword ptr [eax + 0x10]             // 0x004d74bc    8b7010
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00c83b18] // 0x004d74bf    8b0cb5183bc800
                         mov                edi, dword ptr [ecx]                    // 0x004d74c6    8b39
                         cmp.s              eax, ebp                                // 0x004d74c8    3bc5
                         {disp8} mov        eax, dword ptr [eax + 0x14]             // 0x004d74ca    8b4014
                         setne              dl                                      // 0x004d74cd    0f95c2
                         push               0x00c831b8                              // 0x004d74d0    68b831c800
                         dec                edx                                     // 0x004d74d5    4a
                         and                edx, 0xfffffff4                         // 0x004d74d6    83e2f4
                         add                edx, 0x2c                               // 0x004d74d9    83c22c
                         movsx              ecx, dl                                 // 0x004d74dc    0fbeca
                         mov                edx, dword ptr [edi]                    // 0x004d74df    8b17
                         push               ecx                                     // 0x004d74e1    51
                         push               eax                                     // 0x004d74e2    50
                         mov.s              ecx, edi                                // 0x004d74e3    8bcf
                         call               dword ptr [edx + 0x24]                  // 0x004d74e5    ff5224
                         {disp32} mov       ecx, dword ptr [esi * 0x4 + 0x00c83b18] // 0x004d74e8    8b0cb5183bc800
                         push               eax                                     // 0x004d74ef    50
                         add                ecx, 0x4                                // 0x004d74f0    83c104
                         push               ecx                                     // 0x004d74f3    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]             // 0x004d74f4    8d542420
                         push               0x00bdf380                              // 0x004d74f8    6880f3bd00
                         push               edx                                     // 0x004d74fd    52
                         call               _sprintf                                // 0x004d74fe    e8cfe22e00
                         or                 ecx, 0xffffffff                         // 0x004d7503    83c9ff
                         xor.s              eax, eax                                // 0x004d7506    33c0
                         add                esp, 0x18                               // 0x004d7508    83c418
                         {disp8} lea        edi, dword ptr [esp + 0x10]             // 0x004d750b    8d7c2410
                         repne scasb                                                // 0x004d750f    f2ae
                         not                ecx                                     // 0x004d7511    f7d1
                         sub.s              edi, ecx                                // 0x004d7513    2bf9
                         mov.s              eax, ecx                                // 0x004d7515    8bc1
                         shr                ecx, 2                                  // 0x004d7517    c1e902
                         mov.s              esi, edi                                // 0x004d751a    8bf7
                         mov                edi, 0x00c831b8                         // 0x004d751c    bfb831c800
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x004d7521    f3a5
                         mov.s              ecx, eax                                // 0x004d7523    8bc8
                         and                ecx, 0x03                               // 0x004d7525    83e103
                         rep movsb                                                  // 0x004d7528    f3a4
                         mov.s              eax, ebx                                // 0x004d752a    8bc3
                         {disp8} mov        ebx, dword ptr [ebx + 0x0c]             // 0x004d752c    8b5b0c
                         test               ebx, ebx                                // 0x004d752f    85db
                         {disp8} jne        _jmp_addr_0x004d74bc                    // 0x004d7531    7589
_jmp_addr_0x004d7533:    {disp32} mov       eax, dword ptr [ebp + 0x00000090]       // 0x004d7533    8b8590000000
                         or                 ecx, 0xffffffff                         // 0x004d7539    83c9ff
                         cmp.s              eax, ecx                                // 0x004d753c    3bc1
                         {disp8} jne        _jmp_addr_0x004d7586                    // 0x004d753e    7546
                         {disp32} mov       ebp, dword ptr [ebp + 0x00000080]       // 0x004d7540    8bad80000000
                         cmp                ebp, 0x17                               // 0x004d7546    83fd17
                         {disp8} je         _jmp_addr_0x004d75af                    // 0x004d7549    7464
                         {disp32} mov       edx, dword ptr [ebp * 0x4 + 0x00c83b18] // 0x004d754b    8b14ad183bc800
                         add                edx, 0x04                               // 0x004d7552    83c204
                         xor.s              eax, eax                                // 0x004d7555    33c0
                         mov                edi, 0x00c831b8                         // 0x004d7557    bfb831c800
                         repne scasb                                                // 0x004d755c    f2ae
                         not                ecx                                     // 0x004d755e    f7d1
                         push               edx                                     // 0x004d7560    52
                         dec                ecx                                     // 0x004d7561    49
                         add                ecx, 0x00c831b8                         // 0x004d7562    81c1b831c800
                         push               0x00bdf378                              // 0x004d7568    6878f3bd00
                         push               ecx                                     // 0x004d756d    51
                         call               _sprintf                                // 0x004d756e    e85fe22e00
                         add                esp, 0x0c                               // 0x004d7573    83c40c
                         pop                edi                                     // 0x004d7576    5f
                         pop                esi                                     // 0x004d7577    5e
                         pop                ebp                                     // 0x004d7578    5d
                         mov                eax, 0x00c831b8                         // 0x004d7579    b8b831c800
                         pop                ebx                                     // 0x004d757e    5b
                         add                esp, 0x00000400                         // 0x004d757f    81c400040000
                         ret                                                        // 0x004d7585    c3
_jmp_addr_0x004d7586:    {disp8} mov        eax, dword ptr [ebp + 0x0c]             // 0x004d7586    8b450c
                         test               eax, eax                                // 0x004d7589    85c0
                         {disp8} jne        _jmp_addr_0x004d75af                    // 0x004d758b    7522
                         xor.s              eax, eax                                // 0x004d758d    33c0
                         mov                edi, 0x00bdf36c                         // 0x004d758f    bf6cf3bd00
                         repne scasb                                                // 0x004d7594    f2ae
                         not                ecx                                     // 0x004d7596    f7d1
                         sub.s              edi, ecx                                // 0x004d7598    2bf9
                         mov.s              eax, ecx                                // 0x004d759a    8bc1
                         mov.s              esi, edi                                // 0x004d759c    8bf7
                         shr                ecx, 2                                  // 0x004d759e    c1e902
                         mov                edi, 0x00c831b8                         // 0x004d75a1    bfb831c800
                         rep movsd          es:[edi], dword ptr ds:[esi]            // 0x004d75a6    f3a5
                         mov.s              ecx, eax                                // 0x004d75a8    8bc8
                         and                ecx, 0x03                               // 0x004d75aa    83e103
                         rep movsb                                                  // 0x004d75ad    f3a4
_jmp_addr_0x004d75af:    pop                edi                                     // 0x004d75af    5f
                         pop                esi                                     // 0x004d75b0    5e
                         pop                ebp                                     // 0x004d75b1    5d
                         mov                eax, 0x00c831b8                         // 0x004d75b2    b8b831c800
                         pop                ebx                                     // 0x004d75b7    5b
                         add                esp, 0x00000400                         // 0x004d75b8    81c400040000
                         ret                                                        // 0x004d75be    c3
                         nop                                                        // 0x004d75bf    90
_jmp_addr_0x004d75c0:    {disp8} mov        eax, dword ptr [esp + 0x04]             // 0x004d75c0    8b442404
                         cmp                eax, 0x1c                               // 0x004d75c4    83f81c
                         {disp8} ja         _jmp_addr_0x004d75fc                    // 0x004d75c7    7733
                         xor.s              ecx, ecx                                // 0x004d75c9    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x004d761c]         // 0x004d75cb    8a881c764d00
                         jmp                dword ptr [ecx*4 + 0x4d7600]            // 0x004d75d1    ff248d00764d00
                         mov                eax, 0x0000004a                         // 0x004d75d8    b84a000000
                         ret                                                        // 0x004d75dd    c3
                         mov                eax, 0x000001f5                         // 0x004d75de    b8f5010000
                         ret                                                        // 0x004d75e3    c3
                         mov                eax, 0x00000010                         // 0x004d75e4    b810000000
                         ret                                                        // 0x004d75e9    c3
                         mov                eax, 0x00000240                         // 0x004d75ea    b840020000
                         ret                                                        // 0x004d75ef    c3
                         mov                eax, 0x00000215                         // 0x004d75f0    b815020000
                         ret                                                        // 0x004d75f5    c3
                         mov                eax, 0x0000017c                         // 0x004d75f6    b87c010000
                         ret                                                        // 0x004d75fb    c3
_jmp_addr_0x004d75fc:    xor.s              eax, eax                                // 0x004d75fc    33c0
                         ret                                                        // 0x004d75fe    c3

// Snippet: db, [0x004d75ff, 0x004d7600)
.byte 0x90                        // 0x004d75ff

// Snippet: jmptbl, [0x004d7600, 0x004d761c)
.byte 0xd8, 0x75, 0x4d, 0x00      // 0x004d7600
.byte 0xde, 0x75, 0x4d, 0x00      // 0x004d7604
.byte 0xe4, 0x75, 0x4d, 0x00      // 0x004d7608
.byte 0xea, 0x75, 0x4d, 0x00      // 0x004d760c
.byte 0xf0, 0x75, 0x4d, 0x00      // 0x004d7610
.byte 0xf6, 0x75, 0x4d, 0x00      // 0x004d7614
.byte 0xfc, 0x75, 0x4d, 0x00      // 0x004d7618

// Snippet: ijmptbl, [0x004d761c, 0x004d7639)
.byte 0x00, 0x06, 0x01, 0x06      // 0x004d761c
.byte 0x02, 0x06, 0x03, 0x06      // 0x004d7620
.byte 0x06, 0x06, 0x06, 0x06      // 0x004d7624
.byte 0x06, 0x06, 0x06, 0x06      // 0x004d7628
.byte 0x06, 0x06, 0x06, 0x06      // 0x004d762c
.byte 0x06, 0x04, 0x06, 0x06      // 0x004d7630
.byte 0x06, 0x06, 0x06, 0x06      // 0x004d7634
.byte 0x05                        // 0x004d7638

// Snippet: db, [0x004d7639, 0x004d7640)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004d7639
.byte 0x90, 0x90, 0x90            // 0x004d763d

