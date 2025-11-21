.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @__as__7Point2DFRC7Point2D@12
.extern _jmp_addr_0x00476fa0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047e760
.extern _jmp_addr_0x0047ec10
.extern _jmp_addr_0x0047fa20
.extern _jmp_addr_0x0047fa80
.extern _jmp_addr_0x0048f750
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern _jmp_addr_0x004d7b80
.extern ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z
.extern _jmp_addr_0x004dce20
.extern _jmp_addr_0x004e2890
.extern _jmp_addr_0x004e28c0
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f12e0
.extern _jmp_addr_0x004f5e60
.extern _jmp_addr_0x004f5ea0
.extern _jmp_addr_0x004f8ca0
.extern ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern _jmp_addr_0x004ff5c0
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x00555a10
.extern _jmp_addr_0x005de010
.extern ?ReduceLife@Object@@UAEMMPAVGPlayer@@@Z
.extern ?IncreaseLife@Object@@UAEXM@Z
.extern ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.extern ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z
.extern @IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE@12
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern ?Exists@LHOSFile@@SAIPAD@Z
.extern _sprintf
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0083b450
.extern ?Free@LH3DMem@@SAXPAX@Z

.globl _jmp_addr_0x0047d580
.globl _jmp_addr_0x0047d590
.globl _jmp_addr_0x0047d600
.globl _jmp_addr_0x0047d640
.globl _jmp_addr_0x0047d740
.globl _jmp_addr_0x0047d830
.globl _jmp_addr_0x0047d860
.globl _jmp_addr_0x0047d950
.globl _jmp_addr_0x0047d980
.globl _jmp_addr_0x0047d9a0
.globl _jmp_addr_0x0047daa0
.globl _jmp_addr_0x0047db50
.globl _jmp_addr_0x0047dbd0
.globl _jmp_addr_0x0047dc50
.globl _jmp_addr_0x0047deb0
.globl _jmp_addr_0x0047e060
.globl ?AddToRoutePlan@Creature@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.globl ?SetSpeedInMetres@Creature@@UAEXMH@Z
.globl ?GetQueryFirstEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ
.globl ?GetQueryLastEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ
.globl ?ReduceLife@Creature@@UAEXMPAVGPlayer@@@Z
.globl ?IncreaseLife@Creature@@UAEXM@Z
.globl ?SetHeight@Creature@@UAEXM@Z

start_0x0047d500_0x0047e760:
// Snippet: asm, [0x0047d500, 0x0047e740)
?AddToRoutePlan@Creature@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z:
                         sub                esp, 0x08                                     // 0x0047d500    83ec08
                         push               ebx                                           // 0x0047d503    53
                         push               esi                                           // 0x0047d504    56
                         mov.s              esi, ecx                                      // 0x0047d505    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0047d507    8b06
                         push               edi                                           // 0x0047d509    57
                         call               dword ptr [eax + 0x64]                        // 0x0047d50a    ff5064
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0047d50d    8b7c2418
                         {disp32} fadd      dword ptr [edi + 0x00050020]                  // 0x0047d511    d88720000500
                         mov.s              ecx, esi                                      // 0x0047d517    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26028]             // 0x0047d519    d80d28f08c00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0047d51f    d95c2418
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047d523    e828a3ffff
                         {disp32} fld       dword ptr [eax + 0x00000080]                  // 0x0047d528    d98080000000
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0047d52e    8b4c2420
                         {disp8} fld        dword ptr [eax + 0x78]                        // 0x0047d532    d94078
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x0047d535    8b5c2424
                         test               ebx, ebx                                      // 0x0047d539    85db
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0047d53b    8b542418
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047d53f    d95c240c
                         push               ecx                                           // 0x0047d543    51
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0047d544    d95c2414
                         push               edx                                           // 0x0047d548    52
                         {disp8} je         _jmp_addr_0x0047d569                          // 0x0047d549    741e
                         sub                esp, 0x08                                     // 0x0047d54b    83ec08
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0047d54e    8d44241c
                         mov.s              ecx, esp                                      // 0x0047d552    8bcc
                         push               eax                                           // 0x0047d554    50
                         call               @__as__7Point2DFRC7Point2D@12                 // 0x0047d555    e826affeff
                         push               esi                                           // 0x0047d55a    56
                         call               ebx                                           // 0x0047d55b    ffd3
                         add                esp, 0x14                                     // 0x0047d55d    83c414
                         pop                edi                                           // 0x0047d560    5f
                         pop                esi                                           // 0x0047d561    5e
                         pop                ebx                                           // 0x0047d562    5b
                         add                esp, 0x08                                     // 0x0047d563    83c408
                         ret                0x0010                                        // 0x0047d566    c21000
_jmp_addr_0x0047d569:    {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0047d569    8d442414
                         push               eax                                           // 0x0047d56d    50
                         push               esi                                           // 0x0047d56e    56
                         mov.s              ecx, edi                                      // 0x0047d56f    8bcf
                         call               _jmp_addr_0x0083b450                          // 0x0047d571    e8dade3b00
                         pop                edi                                           // 0x0047d576    5f
                         pop                esi                                           // 0x0047d577    5e
                         pop                ebx                                           // 0x0047d578    5b
                         add                esp, 0x08                                     // 0x0047d579    83c408
                         ret                0x0010                                        // 0x0047d57c    c21000
                         nop                                                              // 0x0047d57f    90
_jmp_addr_0x0047d580:    {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x0047d580    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0047d586    8b4858
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x0047d589    d98190000000
                         ret                                                              // 0x0047d58f    c3
_jmp_addr_0x0047d590:    push               ecx                                           // 0x0047d590    51
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x0047d591    8b8160010000
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0047d597    8b5128
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0047d59a    8b4858
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x0047d59d    d98190000000
                         {disp32} fadd      dword ptr [edx + 0x00000388]                  // 0x0047d5a3    d88288030000
                         {disp8} fst        dword ptr [esp + 0x00]                        // 0x0047d5a9    d9542400
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0047d5ad    d81d90a38a00
                         fnstsw             ax                                            // 0x0047d5b3    dfe0
                         test               ah, 0x01                                      // 0x0047d5b5    f6c401
                         {disp8} je         _jmp_addr_0x0047d5c8                          // 0x0047d5b8    740e
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047d5ba    d90590a38a00
                         {disp32} fmul      dword ptr [edx + 0x0000038c]                  // 0x0047d5c0    d88a8c030000
                         pop                ecx                                           // 0x0047d5c6    59
                         ret                                                              // 0x0047d5c7    c3
_jmp_addr_0x0047d5c8:    {disp8} fld        dword ptr [esp + 0x00]                        // 0x0047d5c8    d9442400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2418]              // 0x0047d5cc    d81d18b48a00
                         fnstsw             ax                                            // 0x0047d5d2    dfe0
                         test               ah, 0x41                                      // 0x0047d5d4    f6c441
                         {disp8} jne        _jmp_addr_0x0047d5e7                          // 0x0047d5d7    750e
                         {disp32} fld       dword ptr [rdata_bytes + 0x2418]              // 0x0047d5d9    d90518b48a00
                         {disp32} fmul      dword ptr [edx + 0x0000038c]                  // 0x0047d5df    d88a8c030000
                         pop                ecx                                           // 0x0047d5e5    59
                         ret                                                              // 0x0047d5e6    c3
_jmp_addr_0x0047d5e7:    {disp8} fld        dword ptr [esp + 0x00]                        // 0x0047d5e7    d9442400
                         {disp32} fmul      dword ptr [edx + 0x0000038c]                  // 0x0047d5eb    d88a8c030000
                         pop                ecx                                           // 0x0047d5f1    59
                         ret                                                              // 0x0047d5f2    c3
                         nop                                                              // 0x0047d5f3    90
                         nop                                                              // 0x0047d5f4    90
                         nop                                                              // 0x0047d5f5    90
                         nop                                                              // 0x0047d5f6    90
                         nop                                                              // 0x0047d5f7    90
                         nop                                                              // 0x0047d5f8    90
                         nop                                                              // 0x0047d5f9    90
                         nop                                                              // 0x0047d5fa    90
                         nop                                                              // 0x0047d5fb    90
                         nop                                                              // 0x0047d5fc    90
                         nop                                                              // 0x0047d5fd    90
                         nop                                                              // 0x0047d5fe    90
                         nop                                                              // 0x0047d5ff    90
_jmp_addr_0x0047d600:    call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047d600    e84ba2ffff
                         mov.s              ecx, eax                                      // 0x0047d605    8bc8
                         call               _jmp_addr_0x0047fa80                          // 0x0047d607    e874240000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2602c]             // 0x0047d60c    d80d2cf08c00
                         {disp8} fdivr      dword ptr [esp + 0x04]                        // 0x0047d612    d87c2404
                         {disp32} fld       dword ptr [rdata_bytes + 0x241c]              // 0x0047d616    d9051cb48a00
                         fcomp              st(1)                                         // 0x0047d61c    d8d9
                         fnstsw             ax                                            // 0x0047d61e    dfe0
                         test               ah, 0x01                                      // 0x0047d620    f6c401
                         {disp8} je         _jmp_addr_0x0047d62d                          // 0x0047d623    7408
                         fstp               st(0)                                         // 0x0047d625    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x241c]              // 0x0047d627    d9051cb48a00
_jmp_addr_0x0047d62d:    {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x0047d62d    d80d104b8c00
                         ret                0x0004                                        // 0x0047d633    c20400
                         nop                                                              // 0x0047d636    90
                         nop                                                              // 0x0047d637    90
                         nop                                                              // 0x0047d638    90
                         nop                                                              // 0x0047d639    90
                         nop                                                              // 0x0047d63a    90
                         nop                                                              // 0x0047d63b    90
                         nop                                                              // 0x0047d63c    90
                         nop                                                              // 0x0047d63d    90
                         nop                                                              // 0x0047d63e    90
                         nop                                                              // 0x0047d63f    90
_jmp_addr_0x0047d640:    sub                esp, 0x14                                     // 0x0047d640    83ec14
                         push               edi                                           // 0x0047d643    57
                         mov.s              edi, ecx                                      // 0x0047d644    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0047d646    8b07
                         call               dword ptr [eax + 0x1c]                        // 0x0047d648    ff501c
                         test               eax, eax                                      // 0x0047d64b    85c0
                         {disp8} jne        _jmp_addr_0x0047d675                          // 0x0047d64d    7526
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047d64f    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0047d655    e826590d00
                         test               eax, eax                                      // 0x0047d65a    85c0
                         {disp8} je         _jmp_addr_0x0047d665                          // 0x0047d65c    7407
                         xor.s              eax, eax                                      // 0x0047d65e    33c0
                         pop                edi                                           // 0x0047d660    5f
                         add                esp, 0x14                                     // 0x0047d661    83c414
                         ret                                                              // 0x0047d664    c3
_jmp_addr_0x0047d665:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0047d665    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x0047d66b    e810820d00
                         pop                edi                                           // 0x0047d670    5f
                         add                esp, 0x14                                     // 0x0047d671    83c414
                         ret                                                              // 0x0047d674    c3
_jmp_addr_0x0047d675:    {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0047d675    8b4f1c
                         push               ebx                                           // 0x0047d678    53
                         push               esi                                           // 0x0047d679    56
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x0047d67a    8d7714
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0047d67d    894c2410
                         xor.s              ebx, ebx                                      // 0x0047d681    33db
                         mov.s              ecx, esi                                      // 0x0047d683    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x0047d685    895c240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0047d689    e8025a3800
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x0047d68e    d8442410
                         mov                edx, dword ptr [edi]                          // 0x0047d692    8b17
                         push               ebx                                           // 0x0047d694    53
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0047d695    d95c241c
                         mov.s              ecx, edi                                      // 0x0047d699    8bcf
                         fild               dword ptr [esi]                               // 0x0047d69b    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047d69d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0047d6a3    d95c2418
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0047d6a7    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047d6aa    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0047d6b0    d95c2420
                         call               dword ptr [edx + 0x1c]                        // 0x0047d6b4    ff521c
                         mov.s              ecx, eax                                      // 0x0047d6b7    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                          // 0x0047d6b9    e802d41c00
                         mov.s              ecx, eax                                      // 0x0047d6be    8bc8
                         test               ecx, ecx                                      // 0x0047d6c0    85c9
                         {disp8} je         _jmp_addr_0x0047d728                          // 0x0047d6c2    7464
_jmp_addr_0x0047d6c4:    test               ebx, ebx                                      // 0x0047d6c4    85db
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0047d6c6    d9442414
                         {disp32} fsub      dword ptr [ecx + 0x000000b0]                  // 0x0047d6ca    d8a1b0000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0047d6d0    d9442418
                         {disp32} fsub      dword ptr [ecx + 0x000000b4]                  // 0x0047d6d4    d8a1b4000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0047d6da    d944241c
                         {disp32} fsub      dword ptr [ecx + 0x000000b8]                  // 0x0047d6de    d8a1b8000000
                         fld                st(0)                                         // 0x0047d6e4    d9c0
                         fmul               st, st(1)                                     // 0x0047d6e6    d8c9
                         fld                st(2)                                         // 0x0047d6e8    d9c2
                         fmul               st, st(3)                                     // 0x0047d6ea    d8cb
                         faddp              st(1), st                                     // 0x0047d6ec    dec1
                         fld                st(3)                                         // 0x0047d6ee    d9c3
                         fmul               st, st(4)                                     // 0x0047d6f0    d8cc
                         faddp              st(1), st                                     // 0x0047d6f2    dec1
                         fsqrt                                                            // 0x0047d6f4    d9fa
                         fstp               st(3)                                         // 0x0047d6f6    dddb
                         fstp               st(0)                                         // 0x0047d6f8    ddd8
                         fstp               st(0)                                         // 0x0047d6fa    ddd8
                         {disp8} je         _jmp_addr_0x0047d709                          // 0x0047d6fc    740b
                         {disp8} fcom       dword ptr [esp + 0x0c]                        // 0x0047d6fe    d854240c
                         fnstsw             ax                                            // 0x0047d702    dfe0
                         test               ah, 0x01                                      // 0x0047d704    f6c401
                         {disp8} je         _jmp_addr_0x0047d711                          // 0x0047d707    7408
_jmp_addr_0x0047d709:    {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047d709    d95c240c
                         mov.s              ebx, ecx                                      // 0x0047d70d    8bd9
                         {disp8} jmp        _jmp_addr_0x0047d713                          // 0x0047d70f    eb02
_jmp_addr_0x0047d711:    fstp               st(0)                                         // 0x0047d711    ddd8
_jmp_addr_0x0047d713:    mov                eax, dword ptr [edi]                          // 0x0047d713    8b07
                         push               ecx                                           // 0x0047d715    51
                         mov.s              ecx, edi                                      // 0x0047d716    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x0047d718    ff501c
                         mov.s              ecx, eax                                      // 0x0047d71b    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                          // 0x0047d71d    e89ed31c00
                         mov.s              ecx, eax                                      // 0x0047d722    8bc8
                         test               ecx, ecx                                      // 0x0047d724    85c9
                         {disp8} jne        _jmp_addr_0x0047d6c4                          // 0x0047d726    759c
_jmp_addr_0x0047d728:    pop                esi                                           // 0x0047d728    5e
                         mov.s              eax, ebx                                      // 0x0047d729    8bc3
                         pop                ebx                                           // 0x0047d72b    5b
                         pop                edi                                           // 0x0047d72c    5f
                         add                esp, 0x14                                     // 0x0047d72d    83c414
                         ret                                                              // 0x0047d730    c3
                         nop                                                              // 0x0047d731    90
                         nop                                                              // 0x0047d732    90
                         nop                                                              // 0x0047d733    90
                         nop                                                              // 0x0047d734    90
                         nop                                                              // 0x0047d735    90
                         nop                                                              // 0x0047d736    90
                         nop                                                              // 0x0047d737    90
                         nop                                                              // 0x0047d738    90
                         nop                                                              // 0x0047d739    90
                         nop                                                              // 0x0047d73a    90
                         nop                                                              // 0x0047d73b    90
                         nop                                                              // 0x0047d73c    90
                         nop                                                              // 0x0047d73d    90
                         nop                                                              // 0x0047d73e    90
                         nop                                                              // 0x0047d73f    90
_jmp_addr_0x0047d740:    sub                esp, 0x14                                     // 0x0047d740    83ec14
                         push               edi                                           // 0x0047d743    57
                         mov.s              edi, ecx                                      // 0x0047d744    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0047d746    8b07
                         call               dword ptr [eax + 0x1c]                        // 0x0047d748    ff501c
                         test               eax, eax                                      // 0x0047d74b    85c0
                         {disp8} jne        _jmp_addr_0x0047d754                          // 0x0047d74d    7505
                         pop                edi                                           // 0x0047d74f    5f
                         add                esp, 0x14                                     // 0x0047d750    83c414
                         ret                                                              // 0x0047d753    c3
_jmp_addr_0x0047d754:    {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0047d754    8b4f1c
                         push               ebx                                           // 0x0047d757    53
                         push               esi                                           // 0x0047d758    56
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x0047d759    8d7714
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0047d75c    894c2410
                         xor.s              ebx, ebx                                      // 0x0047d760    33db
                         mov.s              ecx, esi                                      // 0x0047d762    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x0047d764    895c240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0047d768    e823593800
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x0047d76d    d8442410
                         mov                edx, dword ptr [edi]                          // 0x0047d771    8b17
                         push               ebx                                           // 0x0047d773    53
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0047d774    d95c241c
                         mov.s              ecx, edi                                      // 0x0047d778    8bcf
                         fild               dword ptr [esi]                               // 0x0047d77a    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047d77c    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0047d782    d95c2418
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0047d786    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0047d789    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0047d78f    d95c2420
                         call               dword ptr [edx + 0x1c]                        // 0x0047d793    ff521c
                         mov.s              ecx, eax                                      // 0x0047d796    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                          // 0x0047d798    e823d31c00
                         mov.s              ecx, eax                                      // 0x0047d79d    8bc8
                         test               ecx, ecx                                      // 0x0047d79f    85c9
                         {disp8} je         _jmp_addr_0x0047d807                          // 0x0047d7a1    7464
_jmp_addr_0x0047d7a3:    test               ebx, ebx                                      // 0x0047d7a3    85db
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0047d7a5    d9442414
                         {disp32} fsub      dword ptr [ecx + 0x000000c8]                  // 0x0047d7a9    d8a1c8000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0047d7af    d9442418
                         {disp32} fsub      dword ptr [ecx + 0x000000cc]                  // 0x0047d7b3    d8a1cc000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0047d7b9    d944241c
                         {disp32} fsub      dword ptr [ecx + 0x000000d0]                  // 0x0047d7bd    d8a1d0000000
                         fld                st(0)                                         // 0x0047d7c3    d9c0
                         fmul               st, st(1)                                     // 0x0047d7c5    d8c9
                         fld                st(2)                                         // 0x0047d7c7    d9c2
                         fmul               st, st(3)                                     // 0x0047d7c9    d8cb
                         faddp              st(1), st                                     // 0x0047d7cb    dec1
                         fld                st(3)                                         // 0x0047d7cd    d9c3
                         fmul               st, st(4)                                     // 0x0047d7cf    d8cc
                         faddp              st(1), st                                     // 0x0047d7d1    dec1
                         fsqrt                                                            // 0x0047d7d3    d9fa
                         fstp               st(3)                                         // 0x0047d7d5    dddb
                         fstp               st(0)                                         // 0x0047d7d7    ddd8
                         fstp               st(0)                                         // 0x0047d7d9    ddd8
                         {disp8} je         _jmp_addr_0x0047d7e8                          // 0x0047d7db    740b
                         {disp8} fcom       dword ptr [esp + 0x0c]                        // 0x0047d7dd    d854240c
                         fnstsw             ax                                            // 0x0047d7e1    dfe0
                         test               ah, 0x01                                      // 0x0047d7e3    f6c401
                         {disp8} je         _jmp_addr_0x0047d7f0                          // 0x0047d7e6    7408
_jmp_addr_0x0047d7e8:    {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0047d7e8    d95c240c
                         mov.s              ebx, ecx                                      // 0x0047d7ec    8bd9
                         {disp8} jmp        _jmp_addr_0x0047d7f2                          // 0x0047d7ee    eb02
_jmp_addr_0x0047d7f0:    fstp               st(0)                                         // 0x0047d7f0    ddd8
_jmp_addr_0x0047d7f2:    mov                eax, dword ptr [edi]                          // 0x0047d7f2    8b07
                         push               ecx                                           // 0x0047d7f4    51
                         mov.s              ecx, edi                                      // 0x0047d7f5    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x0047d7f7    ff501c
                         mov.s              ecx, eax                                      // 0x0047d7fa    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                          // 0x0047d7fc    e8bfd21c00
                         mov.s              ecx, eax                                      // 0x0047d801    8bc8
                         test               ecx, ecx                                      // 0x0047d803    85c9
                         {disp8} jne        _jmp_addr_0x0047d7a3                          // 0x0047d805    759c
_jmp_addr_0x0047d807:    pop                esi                                           // 0x0047d807    5e
                         mov.s              eax, ebx                                      // 0x0047d808    8bc3
                         pop                ebx                                           // 0x0047d80a    5b
                         pop                edi                                           // 0x0047d80b    5f
                         add                esp, 0x14                                     // 0x0047d80c    83c414
                         ret                                                              // 0x0047d80f    c3
?SetSpeedInMetres@Creature@@UAEXMH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0047d810    8b442404
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]             // 0x0047d814    8b8960010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x0047d81a    8b4958
                         push               eax                                           // 0x0047d81d    50
                         call               _jmp_addr_0x0047fa20                          // 0x0047d81e    e8fd210000
                         ret                0x0008                                        // 0x0047d823    c20800
                         nop                                                              // 0x0047d826    90
                         nop                                                              // 0x0047d827    90
                         nop                                                              // 0x0047d828    90
                         nop                                                              // 0x0047d829    90
                         nop                                                              // 0x0047d82a    90
                         nop                                                              // 0x0047d82b    90
                         nop                                                              // 0x0047d82c    90
                         nop                                                              // 0x0047d82d    90
                         nop                                                              // 0x0047d82e    90
                         nop                                                              // 0x0047d82f    90
_jmp_addr_0x0047d830:    xor.s              eax, eax                                      // 0x0047d830    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x2bc850], eax        // 0x0047d832    a35028c800
                         {disp32} mov       dword ptr [data_bytes + 0x29e148], eax        // 0x0047d837    a34841c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e150], eax        // 0x0047d83c    a35041c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e154], eax        // 0x0047d841    a35441c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e158], eax        // 0x0047d846    a35841c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e15c], eax        // 0x0047d84b    a35c41c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e160], eax        // 0x0047d850    a36041c600
                         {disp32} mov       dword ptr [data_bytes + 0x29e164], eax        // 0x0047d855    a36441c600
                         ret                                                              // 0x0047d85a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047d85b    e81940f8ff
_jmp_addr_0x0047d860:    sub                esp, 0x08                                     // 0x0047d860    83ec08
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0047d863    8b155c19d000
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x22f38]        // 0x0047d869    a138bf8c00
                         push               ebx                                           // 0x0047d86e    53
                         push               edi                                           // 0x0047d86f    57
                         {disp32} mov       edi, dword ptr [edx + 0x00205c74]             // 0x0047d870    8bba745c2000
                         xor.s              ebx, ebx                                      // 0x0047d876    33db
                         test               edi, edi                                      // 0x0047d878    85ff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0047d87a    89442408
                         {disp8} je         _jmp_addr_0x0047d8e6                          // 0x0047d87e    7466
                         push               ebp                                           // 0x0047d880    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0047d881    8b6c2418
                         add                ecx, 0x14                                     // 0x0047d885    83c114
                         push               esi                                           // 0x0047d888    56
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0047d889    894c2414
_jmp_addr_0x0047d88d:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047d88d    8b442414
                         push               eax                                           // 0x0047d891    50
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x0047d892    8d7714
                         push               esi                                           // 0x0047d895    56
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0047d896    e8d5f42c00
                         {disp8} fcom       dword ptr [esp + 0x28]                        // 0x0047d89b    d8542428
                         add                esp, 0x08                                     // 0x0047d89f    83c408
                         fnstsw             ax                                            // 0x0047d8a2    dfe0
                         test               ah, 0x01                                      // 0x0047d8a4    f6c401
                         {disp8} je         _jmp_addr_0x0047d8d1                          // 0x0047d8a7    7428
                         {disp8} fcom       dword ptr [esp + 0x10]                        // 0x0047d8a9    d8542410
                         fnstsw             ax                                            // 0x0047d8ad    dfe0
                         test               ah, 0x01                                      // 0x0047d8af    f6c401
                         {disp8} je         _jmp_addr_0x0047d8d1                          // 0x0047d8b2    741d
                         mov                edx, dword ptr [esi]                          // 0x0047d8b4    8b16
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0047d8b6    d95c2410
                         mov.s              ecx, ebp                                      // 0x0047d8ba    8bcd
                         mov                dword ptr [ecx], edx                          // 0x0047d8bc    8911
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0047d8be    8b4604
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0047d8c1    894104
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x0047d8c4    8b5608
                         mov                ebx, 0x00000001                               // 0x0047d8c7    bb01000000
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0047d8cc    895108
                         {disp8} jmp        _jmp_addr_0x0047d8d3                          // 0x0047d8cf    eb02
_jmp_addr_0x0047d8d1:    fstp               st(0)                                         // 0x0047d8d1    ddd8
_jmp_addr_0x0047d8d3:    {disp8} mov        edi, dword ptr [edi + 0x28]                   // 0x0047d8d3    8b7f28
                         test               edi, edi                                      // 0x0047d8d6    85ff
                         {disp8} jne        _jmp_addr_0x0047d88d                          // 0x0047d8d8    75b3
                         pop                esi                                           // 0x0047d8da    5e
                         pop                ebp                                           // 0x0047d8db    5d
                         pop                edi                                           // 0x0047d8dc    5f
                         mov.s              eax, ebx                                      // 0x0047d8dd    8bc3
                         pop                ebx                                           // 0x0047d8df    5b
                         add                esp, 0x08                                     // 0x0047d8e0    83c408
                         ret                0x0008                                        // 0x0047d8e3    c20800
_jmp_addr_0x0047d8e6:    pop                edi                                           // 0x0047d8e6    5f
                         mov.s              eax, ebx                                      // 0x0047d8e7    8bc3
                         pop                ebx                                           // 0x0047d8e9    5b
                         add                esp, 0x08                                     // 0x0047d8ea    83c408
                         ret                0x0008                                        // 0x0047d8ed    c20800
?GetQueryFirstEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ:
                         push               ebx                                           // 0x0047d8f0    53
                         push               esi                                           // 0x0047d8f1    56
                         mov.s              esi, ecx                                      // 0x0047d8f2    8bf1
                         call               ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ                          // 0x0047d8f4    e887ac1b00
                         mov.s              ebx, eax                                      // 0x0047d8f9    8bd8
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0047d8fb    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x000001f4]             // 0x0047d8fe    8b80f4010000
                         cmp                eax, 0x0c                                     // 0x0047d904    83f80c
                         {disp8} je         _jmp_addr_0x0047d93a                          // 0x0047d907    7431
                         cmp                eax, 0x0d                                     // 0x0047d909    83f80d
                         {disp8} je         _jmp_addr_0x0047d93a                          // 0x0047d90c    742c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047d90e    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0047d914    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0047d916    8a81595a2000
                         push               edi                                           // 0x0047d91c    57
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0047d91d    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0047d920    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0047d923    8d0450
                         mov                edx, dword ptr [esi]                          // 0x0047d926    8b16
                         shl                eax, 5                                        // 0x0047d928    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0047d92b    8d7c0818
                         mov.s              ecx, esi                                      // 0x0047d92f    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0047d931    ff521c
                         cmp.s              eax, edi                                      // 0x0047d934    3bc7
                         pop                edi                                           // 0x0047d936    5f
                         {disp8} je         _jmp_addr_0x0047d93a                          // 0x0047d937    7401
                         inc                ebx                                           // 0x0047d939    43
_jmp_addr_0x0047d93a:    pop                esi                                           // 0x0047d93a    5e
                         mov.s              eax, ebx                                      // 0x0047d93b    8bc3
                         pop                ebx                                           // 0x0047d93d    5b
                         ret                                                              // 0x0047d93e    c3
                         nop                                                              // 0x0047d93f    90
?GetQueryLastEnumText@Creature@@UAE?AW4HELP_TEXT@@XZ:
                         mov                eax, dword ptr [ecx]                          // 0x0047d940    8b01
                         jmp                dword ptr [eax + 0x4d8]                       // 0x0047d942    ffa0d8040000
                         nop                                                              // 0x0047d948    90
                         nop                                                              // 0x0047d949    90
                         nop                                                              // 0x0047d94a    90
                         nop                                                              // 0x0047d94b    90
                         nop                                                              // 0x0047d94c    90
                         nop                                                              // 0x0047d94d    90
                         nop                                                              // 0x0047d94e    90
                         nop                                                              // 0x0047d94f    90
_jmp_addr_0x0047d950:    push               esi                                           // 0x0047d950    56
                         mov.s              esi, ecx                                      // 0x0047d951    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00001190]             // 0x0047d953    8b8690110000
                         test               eax, eax                                      // 0x0047d959    85c0
                         {disp8} je         _jmp_addr_0x0047d966                          // 0x0047d95b    7409
                         push               eax                                           // 0x0047d95d    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0047d95e    e8fd533c00
                         add                esp, 0x04                                     // 0x0047d963    83c404
_jmp_addr_0x0047d966:    {disp32} mov       dword ptr [esi + 0x00001190], 0x00000000      // 0x0047d966    c7869011000000000000
                         pop                esi                                           // 0x0047d970    5e
                         ret                                                              // 0x0047d971    c3
                         nop                                                              // 0x0047d972    90
                         nop                                                              // 0x0047d973    90
                         nop                                                              // 0x0047d974    90
                         nop                                                              // 0x0047d975    90
                         nop                                                              // 0x0047d976    90
                         nop                                                              // 0x0047d977    90
                         nop                                                              // 0x0047d978    90
                         nop                                                              // 0x0047d979    90
                         nop                                                              // 0x0047d97a    90
                         nop                                                              // 0x0047d97b    90
                         nop                                                              // 0x0047d97c    90
                         nop                                                              // 0x0047d97d    90
                         nop                                                              // 0x0047d97e    90
                         nop                                                              // 0x0047d97f    90
_jmp_addr_0x0047d980:    push               esi                                           // 0x0047d980    56
                         mov.s              esi, ecx                                      // 0x0047d981    8bf1
                         call               _jmp_addr_0x0047d950                          // 0x0047d983    e8c8ffffff
                         push               esi                                           // 0x0047d988    56
                         call               _jmp_addr_0x005de010                          // 0x0047d989    e882061600
                         add                esp, 0x04                                     // 0x0047d98e    83c404
                         {disp32} mov       dword ptr [esi + 0x00001190], eax             // 0x0047d991    898690110000
                         pop                esi                                           // 0x0047d997    5e
                         ret                                                              // 0x0047d998    c3
                         nop                                                              // 0x0047d999    90
                         nop                                                              // 0x0047d99a    90
                         nop                                                              // 0x0047d99b    90
                         nop                                                              // 0x0047d99c    90
                         nop                                                              // 0x0047d99d    90
                         nop                                                              // 0x0047d99e    90
                         nop                                                              // 0x0047d99f    90
_jmp_addr_0x0047d9a0:    sub                esp, 0x30                                     // 0x0047d9a0    83ec30
                         push               esi                                           // 0x0047d9a3    56
                         mov.s              esi, ecx                                      // 0x0047d9a4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000012a8]             // 0x0047d9a6    8b86a8120000
                         test               eax, eax                                      // 0x0047d9ac    85c0
                         push               edi                                           // 0x0047d9ae    57
                         {disp32} jne       _jmp_addr_0x0047da93                          // 0x0047d9af    0f85de000000
                         {disp8} mov        edi, dword ptr [esp + 0x3c]                   // 0x0047d9b5    8b7c243c
                         test               edi, edi                                      // 0x0047d9b9    85ff
                         {disp32} jbe       _jmp_addr_0x0047da93                          // 0x0047d9bb    0f86d2000000
                         push               0x000015b0                                    // 0x0047d9c1    68b0150000
                         push               0x009cf9e0                                    // 0x0047d9c6    68e0f99c00
                         push               0x4                                           // 0x0047d9cb    6a04
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047d9cd    e83e0b2600
                         add                esp, 0x0c                                     // 0x0047d9d2    83c40c
                         test               eax, eax                                      // 0x0047d9d5    85c0
                         {disp8} jne        _jmp_addr_0x0047d9e0                          // 0x0047d9d7    7507
                         push               0x000015b2                                    // 0x0047d9d9    68b2150000
                         {disp8} jmp        _jmp_addr_0x0047d9ef                          // 0x0047d9de    eb0f
_jmp_addr_0x0047d9e0:    cmp                edi, 0x03                                     // 0x0047d9e0    83ff03
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x0047d9ea   // 0x0047d9e3    7205
                         mov                edi, 0x00000003                               // 0x0047d9e5    bf03000000
_jmp_addr_0x0047d9ea:    push               0x000015b6                                    // 0x0047d9ea    68b6150000
_jmp_addr_0x0047d9ef:    push               0x009cf9e0                                    // 0x0047d9ef    68e0f99c00
                         push               edi                                           // 0x0047d9f4    57
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047d9f5    e8160b2600
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0047d9fa    8b4c244c
                         mov                edi, dword ptr [ecx + eax * 0x4]              // 0x0047d9fe    8b3c81
                         add                esp, 0x0c                                     // 0x0047da01    83c40c
                         push               ebx                                           // 0x0047da04    53
                         push               edi                                           // 0x0047da05    57
                         mov.s              ecx, esi                                      // 0x0047da06    8bce
                         call               _jmp_addr_0x0047daa0                          // 0x0047da08    e893000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047da0d    8b8e64010000
                         push               edi                                           // 0x0047da13    57
                         push               esi                                           // 0x0047da14    56
                         mov.s              ebx, eax                                      // 0x0047da15    8bd8
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x0047da17    e8b4a10500
                         push               0x3f800000                                    // 0x0047da1c    680000803f
                         push               0x0                                           // 0x0047da21    6a00
                         push               eax                                           // 0x0047da23    50
                         push               0x0                                           // 0x0047da24    6a00
                         push               ebx                                           // 0x0047da26    53
                         push               0x18                                          // 0x0047da27    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0047da29    8d4c2424
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x0047da2d    e8fe370700
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047da32    8d4c240c
                         call               _jmp_addr_0x004f12e0                          // 0x0047da36    e8a5380700
                         test               eax, eax                                      // 0x0047da3b    85c0
                         mov                ebx, 0x00000001                               // 0x0047da3d    bb01000000
                         {disp8} je         _jmp_addr_0x0047da83                          // 0x0047da42    743f
                         push               ebp                                           // 0x0047da44    55
                         push               ebx                                           // 0x0047da45    53
                         push               ebx                                           // 0x0047da46    53
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0047da47    8d542418
                         push               edx                                           // 0x0047da4b    52
                         mov.s              ecx, esi                                      // 0x0047da4c    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x0047da4e    e85d6a0400
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047da53    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001c14], ebx             // 0x0047da59    8998141c0000
                         {disp32} mov       ebp, dword ptr [esi + 0x00000164]             // 0x0047da5f    8bae64010000
                         xor.s              ecx, ecx                                      // 0x0047da65    33c9
                         xor.s              edx, edx                                      // 0x0047da67    33d2
                         xor.s              edi, edi                                      // 0x0047da69    33ff
                         add                ebp, 0x000021d0                               // 0x0047da6b    81c5d0210000
                         mov                eax, 0x0050a7e0                               // 0x0047da71    b8e0a75000
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x0047da76    894500
                         {disp8} mov        dword ptr [ebp + 0x04], ecx                   // 0x0047da79    894d04
                         {disp8} mov        dword ptr [ebp + 0x08], edx                   // 0x0047da7c    895508
                         {disp8} mov        dword ptr [ebp + 0x0c], edi                   // 0x0047da7f    897d0c
                         pop                ebp                                           // 0x0047da82    5d
_jmp_addr_0x0047da83:    {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047da83    8d4c240c
                         {disp32} mov       dword ptr [esi + 0x000012a8], ebx             // 0x0047da87    899ea8120000
                         call               _jmp_addr_0x004f12d0                          // 0x0047da8d    e83e380700
                         pop                ebx                                           // 0x0047da92    5b
_jmp_addr_0x0047da93:    pop                edi                                           // 0x0047da93    5f
                         pop                esi                                           // 0x0047da94    5e
                         add                esp, 0x30                                     // 0x0047da95    83c430
                         ret                0x0008                                        // 0x0047da98    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047da9b    e8d93df8ff
_jmp_addr_0x0047daa0:    push               ebx                                           // 0x0047daa0    53
                         push               esi                                           // 0x0047daa1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0047daa2    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x0047daa6    8b06
                         mov.s              ebx, ecx                                      // 0x0047daa8    8bd9
                         push               edi                                           // 0x0047daaa    57
                         mov.s              ecx, esi                                      // 0x0047daab    8bce
                         call               dword ptr [eax + 0x220]                       // 0x0047daad    ff9020020000
                         test               eax, eax                                      // 0x0047dab3    85c0
                         {disp32} jne       _jmp_addr_0x0047db43                          // 0x0047dab5    0f8588000000
                         mov                edx, dword ptr [esi]                          // 0x0047dabb    8b16
                         push               eax                                           // 0x0047dabd    50
                         mov.s              ecx, esi                                      // 0x0047dabe    8bce
                         call               dword ptr [edx + 0x300]                       // 0x0047dac0    ff9200030000
                         test               eax, eax                                      // 0x0047dac6    85c0
                         {disp8} jne        _jmp_addr_0x0047db43                          // 0x0047dac8    7579
                         mov                eax, dword ptr [esi]                          // 0x0047daca    8b06
                         mov.s              ecx, esi                                      // 0x0047dacc    8bce
                         call               dword ptr [eax + 0x1e0]                       // 0x0047dace    ff90e0010000
                         test               eax, eax                                      // 0x0047dad4    85c0
                         {disp8} jne        _jmp_addr_0x0047db43                          // 0x0047dad6    756b
                         mov                edx, dword ptr [esi]                          // 0x0047dad8    8b16
                         push               ebx                                           // 0x0047dada    53
                         mov.s              ecx, esi                                      // 0x0047dadb    8bce
                         call               dword ptr [edx + 0x258]                       // 0x0047dadd    ff9258020000
                         test               eax, eax                                      // 0x0047dae3    85c0
                         {disp8} je         _jmp_addr_0x0047daf2                          // 0x0047dae5    740b
                         pop                edi                                           // 0x0047dae7    5f
                         pop                esi                                           // 0x0047dae8    5e
                         mov                eax, 0x00000107                               // 0x0047dae9    b807010000
                         pop                ebx                                           // 0x0047daee    5b
                         ret                0x0004                                        // 0x0047daef    c20400
_jmp_addr_0x0047daf2:    mov                eax, dword ptr [esi]                          // 0x0047daf2    8b06
                         push               ebx                                           // 0x0047daf4    53
                         mov.s              ecx, esi                                      // 0x0047daf5    8bce
                         call               dword ptr [eax + 0x38c]                       // 0x0047daf7    ff908c030000
                         test               eax, eax                                      // 0x0047dafd    85c0
                         {disp8} je         _jmp_addr_0x0047db0c                          // 0x0047daff    740b
                         pop                edi                                           // 0x0047db01    5f
                         pop                esi                                           // 0x0047db02    5e
                         mov                eax, 0x000000ec                               // 0x0047db03    b8ec000000
                         pop                ebx                                           // 0x0047db08    5b
                         ret                0x0004                                        // 0x0047db09    c20400
_jmp_addr_0x0047db0c:    xor.s              edi, edi                                      // 0x0047db0c    33ff
                         mov                esi, 0x00ca9cc0                               // 0x0047db0e    bec09cca00
_jmp_addr_0x0047db13:    {disp32} mov       eax, dword ptr [ebx + 0x00000164]             // 0x0047db13    8b8364010000
                         push               edi                                           // 0x0047db19    57
                         push               0x1                                           // 0x0047db1a    6a01
                         {disp32} lea       ecx, dword ptr [eax + 0x0001a9fc]             // 0x0047db1c    8d88fca90100
                         call               _jmp_addr_0x004e2890                          // 0x0047db22    e8694d0600
                         test               eax, eax                                      // 0x0047db27    85c0
                         {disp8} je         _jmp_addr_0x0047db37                          // 0x0047db29    740c
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0047db2b    8b4618
                         test               eax, eax                                      // 0x0047db2e    85c0
                         {disp8} je         _jmp_addr_0x0047db37                          // 0x0047db30    7405
                         cmp                dword ptr [esi], 0x02                         // 0x0047db32    833e02
                         {disp8} je         _jmp_addr_0x0047db45                          // 0x0047db35    740e
_jmp_addr_0x0047db37:    add                esi, 0x70                                     // 0x0047db37    83c670
                         inc                edi                                           // 0x0047db3a    47
                         cmp                esi, 0x00caaf20                               // 0x0047db3b    81fe20afca00
                         .byte              0x72, 0xd0// {disp8} jb _jmp_addr_0x0047db13  // 0x0047db41    72d0
_jmp_addr_0x0047db43:    xor.s              eax, eax                                      // 0x0047db43    33c0
_jmp_addr_0x0047db45:    pop                edi                                           // 0x0047db45    5f
                         pop                esi                                           // 0x0047db46    5e
                         pop                ebx                                           // 0x0047db47    5b
                         ret                0x0004                                        // 0x0047db48    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0047db4b    e8293df8ff
_jmp_addr_0x0047db50:    push               ecx                                           // 0x0047db50    51
                         push               esi                                           // 0x0047db51    56
                         mov.s              esi, ecx                                      // 0x0047db52    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047db54    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001be8]             // 0x0047db5a    8b88e81b0000
                         test               ecx, ecx                                      // 0x0047db60    85c9
                         {disp8} je         _jmp_addr_0x0047dbc3                          // 0x0047db62    745f
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047db64    e8e79cffff
                         {disp32} fld       dword ptr [eax + 0x00000090]                  // 0x0047db69    d98090000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26030]             // 0x0047db6f    d80d30f08c00
                         mov.s              ecx, esi                                      // 0x0047db75    8bce
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0047db77    d95c2404
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047db7b    e8d09cffff
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047db80    d9442404
                         {disp32} fcomp     dword ptr [eax + 0x00000090]                  // 0x0047db84    d89890000000
                         fnstsw             ax                                            // 0x0047db8a    dfe0
                         test               ah, 0x01                                      // 0x0047db8c    f6c401
                         {disp8} je         _jmp_addr_0x0047dba2                          // 0x0047db8f    7411
                         mov.s              ecx, esi                                      // 0x0047db91    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047db93    e8b89cffff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000090]             // 0x0047db98    8b8890000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0047db9e    894c2404
_jmp_addr_0x0047dba2:    {disp32} fld       dword ptr [esi + 0x00000374]                  // 0x0047dba2    d98674030000
                         {disp8} fcomp      dword ptr [esp + 0x04]                        // 0x0047dba8    d85c2404
                         fnstsw             ax                                            // 0x0047dbac    dfe0
                         test               ah, 0x01                                      // 0x0047dbae    f6c401
                         {disp8} je         _jmp_addr_0x0047dbbc                          // 0x0047dbb1    7409
                         {disp32} fld       dword ptr [esi + 0x00000374]                  // 0x0047dbb3    d98674030000
                         pop                esi                                           // 0x0047dbb9    5e
                         pop                ecx                                           // 0x0047dbba    59
                         ret                                                              // 0x0047dbbb    c3
_jmp_addr_0x0047dbbc:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047dbbc    d9442404
                         pop                esi                                           // 0x0047dbc0    5e
                         pop                ecx                                           // 0x0047dbc1    59
                         ret                                                              // 0x0047dbc2    c3
_jmp_addr_0x0047dbc3:    {disp32} fld       dword ptr [esi + 0x00000374]                  // 0x0047dbc3    d98674030000
                         pop                esi                                           // 0x0047dbc9    5e
                         pop                ecx                                           // 0x0047dbca    59
                         ret                                                              // 0x0047dbcb    c3
                         nop                                                              // 0x0047dbcc    90
                         nop                                                              // 0x0047dbcd    90
                         nop                                                              // 0x0047dbce    90
                         nop                                                              // 0x0047dbcf    90
_jmp_addr_0x0047dbd0:    push               ecx                                           // 0x0047dbd0    51
                         push               esi                                           // 0x0047dbd1    56
                         mov.s              esi, ecx                                      // 0x0047dbd2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047dbd4    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001be8]             // 0x0047dbda    8b88e81b0000
                         test               ecx, ecx                                      // 0x0047dbe0    85c9
                         {disp8} je         _jmp_addr_0x0047dc43                          // 0x0047dbe2    745f
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047dbe4    e8679cffff
                         {disp32} fld       dword ptr [eax + 0x00000090]                  // 0x0047dbe9    d98090000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26034]             // 0x0047dbef    d80d34f08c00
                         mov.s              ecx, esi                                      // 0x0047dbf5    8bce
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0047dbf7    d95c2404
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047dbfb    e8509cffff
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047dc00    d9442404
                         {disp32} fcomp     dword ptr [eax + 0x00000090]                  // 0x0047dc04    d89890000000
                         fnstsw             ax                                            // 0x0047dc0a    dfe0
                         test               ah, 0x41                                      // 0x0047dc0c    f6c441
                         {disp8} jne        _jmp_addr_0x0047dc22                          // 0x0047dc0f    7511
                         mov.s              ecx, esi                                      // 0x0047dc11    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047dc13    e8389cffff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000090]             // 0x0047dc18    8b8890000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0047dc1e    894c2404
_jmp_addr_0x0047dc22:    {disp32} fld       dword ptr [esi + 0x00000378]                  // 0x0047dc22    d98678030000
                         {disp8} fcomp      dword ptr [esp + 0x04]                        // 0x0047dc28    d85c2404
                         fnstsw             ax                                            // 0x0047dc2c    dfe0
                         test               ah, 0x01                                      // 0x0047dc2e    f6c401
                         {disp8} je         _jmp_addr_0x0047dc3c                          // 0x0047dc31    7409
                         {disp32} fld       dword ptr [esi + 0x00000378]                  // 0x0047dc33    d98678030000
                         pop                esi                                           // 0x0047dc39    5e
                         pop                ecx                                           // 0x0047dc3a    59
                         ret                                                              // 0x0047dc3b    c3
_jmp_addr_0x0047dc3c:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047dc3c    d9442404
                         pop                esi                                           // 0x0047dc40    5e
                         pop                ecx                                           // 0x0047dc41    59
                         ret                                                              // 0x0047dc42    c3
_jmp_addr_0x0047dc43:    {disp32} fld       dword ptr [esi + 0x00000378]                  // 0x0047dc43    d98678030000
                         pop                esi                                           // 0x0047dc49    5e
                         pop                ecx                                           // 0x0047dc4a    59
                         ret                                                              // 0x0047dc4b    c3
                         nop                                                              // 0x0047dc4c    90
                         nop                                                              // 0x0047dc4d    90
                         nop                                                              // 0x0047dc4e    90
                         nop                                                              // 0x0047dc4f    90
_jmp_addr_0x0047dc50:    push               ecx                                           // 0x0047dc50    51
                         push               esi                                           // 0x0047dc51    56
                         mov.s              esi, ecx                                      // 0x0047dc52    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047dc54    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0047dc5a    e821530d00
                         test               eax, eax                                      // 0x0047dc5f    85c0
                         {disp32} jne       _jmp_addr_0x0047dcfb                          // 0x0047dc61    0f8594000000
                         {disp32} mov       eax, dword ptr [esi + 0x0000115c]             // 0x0047dc67    8b865c110000
                         test               eax, eax                                      // 0x0047dc6d    85c0
                         {disp32} je        _jmp_addr_0x0047dcfb                          // 0x0047dc6f    0f8486000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047dc75    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0047dc7b    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0047dc7d    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0047dc83    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0047dc86    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0047dc89    8d0450
                         shl                eax, 5                                        // 0x0047dc8c    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0047dc8f    8b8408640a0000
                         test               eax, eax                                      // 0x0047dc96    85c0
                         {disp8} je         _jmp_addr_0x0047dcfb                          // 0x0047dc98    7461
                         {disp32} mov       ecx, dword ptr [eax + 0x00000370]             // 0x0047dc9a    8b8870030000
                         call               _jmp_addr_0x004f5e60                          // 0x0047dca0    e8bb810700
                         {disp32} fmul      dword ptr [esi + 0x00001160]                  // 0x0047dca5    d88e60110000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x0047dcab    8b8660010000
                         {disp8} fsub       dword ptr [eax + 0x6c]                        // 0x0047dcb1    d8606c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0047dcb4    d80db4a38a00
                         {disp8} fadd       dword ptr [eax + 0x6c]                        // 0x0047dcba    d8406c
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2478]              // 0x0047dcbd    d81578b48a00
                         fnstsw             ax                                            // 0x0047dcc3    dfe0
                         test               ah, 0x01                                      // 0x0047dcc5    f6c401
                         {disp8} je         _jmp_addr_0x0047dce1                          // 0x0047dcc8    7417
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0047dcca    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047dcce    8b4c2404
                         push               ecx                                           // 0x0047dcd2    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]             // 0x0047dcd3    8b8e70030000
                         call               _jmp_addr_0x004f5ea0                          // 0x0047dcd9    e8c2810700
                         pop                esi                                           // 0x0047dcde    5e
                         pop                ecx                                           // 0x0047dcdf    59
                         ret                                                              // 0x0047dce0    c3
_jmp_addr_0x0047dce1:    {disp8} mov        dword ptr [esp + 0x04], 0x40000000            // 0x0047dce1    c744240400000040
                         fstp               st(0)                                         // 0x0047dce9    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047dceb    8b4c2404
                         push               ecx                                           // 0x0047dcef    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]             // 0x0047dcf0    8b8e70030000
                         call               _jmp_addr_0x004f5ea0                          // 0x0047dcf6    e8a5810700
_jmp_addr_0x0047dcfb:    pop                esi                                           // 0x0047dcfb    5e
                         pop                ecx                                           // 0x0047dcfc    59
                         ret                                                              // 0x0047dcfd    c3
                         nop                                                              // 0x0047dcfe    90
                         nop                                                              // 0x0047dcff    90
?ReduceLife@Creature@@UAEXMPAVGPlayer@@@Z:
                         sub                esp, 0x30                                     // 0x0047dd00    83ec30
                         push               edi                                           // 0x0047dd03    57
                         mov.s              edi, ecx                                      // 0x0047dd04    8bf9
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047dd06    e8459bffff
                         mov.s              ecx, eax                                      // 0x0047dd0b    8bc8
                         test               ecx, ecx                                      // 0x0047dd0d    85c9
                         {disp32} je        _jmp_addr_0x0047ddfd                          // 0x0047dd0f    0f84e8000000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000528c]             // 0x0047dd15    8b918c520000
                         test               edx, edx                                      // 0x0047dd1b    85d2
                         {disp32} je        _jmp_addr_0x0047ddfd                          // 0x0047dd1d    0f84da000000
                         {disp32} fld       dword ptr [ecx + 0x00004aa8]                  // 0x0047dd23    d981a84a0000
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x0047dd29    d8642438
                         {disp32} fst       dword ptr [ecx + 0x00004aa8]                  // 0x0047dd2d    d991a84a0000
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0047dd33    d90598a38a00
                         fcomp              st(1)                                         // 0x0047dd39    d8d9
                         fnstsw             ax                                            // 0x0047dd3b    dfe0
                         test               ah, 0x41                                      // 0x0047dd3d    f6c441
                         {disp8} jne        _jmp_addr_0x0047dd4a                          // 0x0047dd40    7508
                         fstp               st(0)                                         // 0x0047dd42    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0047dd44    d90598a38a00
_jmp_addr_0x0047dd4a:    {disp32} fst       dword ptr [ecx + 0x00004aa8]                  // 0x0047dd4a    d991a84a0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047dd50    d81d98a38a00
                         fnstsw             ax                                            // 0x0047dd56    dfe0
                         test               ah, 0x41                                      // 0x0047dd58    f6c441
                         {disp32} je        _jmp_addr_0x0047ddfd                          // 0x0047dd5b    0f849c000000
                         push               ebx                                           // 0x0047dd61    53
                         push               ebp                                           // 0x0047dd62    55
                         push               esi                                           // 0x0047dd63    56
                         {disp32} mov       esi, dword ptr [edx + 0x00004834]             // 0x0047dd64    8bb234480000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047dd6a    8b8e64010000
                         push               edi                                           // 0x0047dd70    57
                         push               esi                                           // 0x0047dd71    56
                         call               ?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z                          // 0x0047dd72    e8599e0500
                         mov.s              ecx, esi                                      // 0x0047dd77    8bce
                         mov.s              ebx, eax                                      // 0x0047dd79    8bd8
                         mov                ebp, 0x00000027                               // 0x0047dd7b    bd27000000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047dd80    e8cb9affff
                         {disp32} fld       dword ptr [eax + 0x0000009c]                  // 0x0047dd85    d9809c000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fcc]             // 0x0047dd8b    d81dccef8c00
                         fnstsw             ax                                            // 0x0047dd91    dfe0
                         test               ah, 0x01                                      // 0x0047dd93    f6c401
                         {disp8} je         _jmp_addr_0x0047dd9d                          // 0x0047dd96    7405
                         mov                ebp, 0x00000013                               // 0x0047dd98    bd13000000
_jmp_addr_0x0047dd9d:    push               0x3f800000                                    // 0x0047dd9d    680000803f
                         push               0x0                                           // 0x0047dda2    6a00
                         push               ebx                                           // 0x0047dda4    53
                         push               ebx                                           // 0x0047dda5    53
                         push               ebp                                           // 0x0047dda6    55
                         push               0x18                                          // 0x0047dda7    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0047dda9    8d4c2428
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x0047ddad    e87e340700
                         mov                ebx, 0x00000001                               // 0x0047ddb2    bb01000000
                         push               ebx                                           // 0x0047ddb7    53
                         push               ebx                                           // 0x0047ddb8    53
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0047ddb9    8d442418
                         push               eax                                           // 0x0047ddbd    50
                         mov.s              ecx, esi                                      // 0x0047ddbe    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x0047ddc0    e8eb660400
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047ddc5    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c14], ebx             // 0x0047ddcb    8999141c0000
                         {disp32} mov       eax, dword ptr [esi + 0x0000017c]             // 0x0047ddd1    8b867c010000
                         inc                eax                                           // 0x0047ddd7    40
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047ddd8    8d4c2410
                         {disp32} mov       dword ptr [esi + 0x0000017c], eax             // 0x0047dddc    89867c010000
                         {disp32} mov       dword ptr [esi + 0x000010b0], ebx             // 0x0047dde2    899eb0100000
                         call               _jmp_addr_0x004f12d0                          // 0x0047dde8    e8e3340700
                         mov.s              ecx, edi                                      // 0x0047dded    8bcf
                         {disp32} mov       dword ptr [edi + 0x000010b0], ebx             // 0x0047ddef    899fb0100000
                         call               _jmp_addr_0x00476fa0                          // 0x0047ddf5    e8a691ffff
                         pop                esi                                           // 0x0047ddfa    5e
                         pop                ebp                                           // 0x0047ddfb    5d
                         pop                ebx                                           // 0x0047ddfc    5b
_jmp_addr_0x0047ddfd:    {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0047ddfd    8b54243c
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0047de01    8b442438
                         push               edx                                           // 0x0047de05    52
                         push               eax                                           // 0x0047de06    50
                         mov.s              ecx, edi                                      // 0x0047de07    8bcf
                         call               ?ReduceLife@Object@@UAEMMPAVGPlayer@@@Z       // 0x0047de09    e8029a1b00
                         pop                edi                                           // 0x0047de0e    5f
                         add                esp, 0x30                                     // 0x0047de0f    83c430
                         ret                0x0008                                        // 0x0047de12    c20800
                         nop                                                              // 0x0047de15    90
                         nop                                                              // 0x0047de16    90
                         nop                                                              // 0x0047de17    90
                         nop                                                              // 0x0047de18    90
                         nop                                                              // 0x0047de19    90
                         nop                                                              // 0x0047de1a    90
                         nop                                                              // 0x0047de1b    90
                         nop                                                              // 0x0047de1c    90
                         nop                                                              // 0x0047de1d    90
                         nop                                                              // 0x0047de1e    90
                         nop                                                              // 0x0047de1f    90
?IncreaseLife@Creature@@UAEXM@Z:
                         push               esi                                           // 0x0047de20    56
                         mov.s              esi, ecx                                      // 0x0047de21    8bf1
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047de23    e8289affff
                         mov.s              ecx, eax                                      // 0x0047de28    8bc8
                         test               ecx, ecx                                      // 0x0047de2a    85c9
                         {disp8} je         _jmp_addr_0x0047de65                          // 0x0047de2c    7437
                         {disp32} mov       eax, dword ptr [ecx + 0x0000528c]             // 0x0047de2e    8b818c520000
                         test               eax, eax                                      // 0x0047de34    85c0
                         {disp8} je         _jmp_addr_0x0047de65                          // 0x0047de36    742d
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0047de38    d9442408
                         {disp32} fadd      dword ptr [ecx + 0x00004aa8]                  // 0x0047de3c    d881a84a0000
                         {disp32} fst       dword ptr [ecx + 0x00004aa8]                  // 0x0047de42    d991a84a0000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047de48    d90590a38a00
                         fcomp              st(1)                                         // 0x0047de4e    d8d9
                         fnstsw             ax                                            // 0x0047de50    dfe0
                         test               ah, 0x01                                      // 0x0047de52    f6c401
                         {disp8} je         _jmp_addr_0x0047de5f                          // 0x0047de55    7408
                         fstp               st(0)                                         // 0x0047de57    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0047de59    d90590a38a00
_jmp_addr_0x0047de5f:    {disp32} fstp      dword ptr [ecx + 0x00004aa8]                  // 0x0047de5f    d999a84a0000
_jmp_addr_0x0047de65:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0047de65    8b442408
                         push               eax                                           // 0x0047de69    50
                         mov.s              ecx, esi                                      // 0x0047de6a    8bce
                         call               ?IncreaseLife@Object@@UAEXM@Z                 // 0x0047de6c    e8ff991b00
                         pop                esi                                           // 0x0047de71    5e
                         ret                0x0004                                        // 0x0047de72    c20400
                         nop                                                              // 0x0047de75    90
                         nop                                                              // 0x0047de76    90
                         nop                                                              // 0x0047de77    90
                         nop                                                              // 0x0047de78    90
                         nop                                                              // 0x0047de79    90
                         nop                                                              // 0x0047de7a    90
                         nop                                                              // 0x0047de7b    90
                         nop                                                              // 0x0047de7c    90
                         nop                                                              // 0x0047de7d    90
                         nop                                                              // 0x0047de7e    90
                         nop                                                              // 0x0047de7f    90
?SetHeight@Creature@@UAEXM@Z:
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0047de80    d9442404
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x0047de84    8b8160010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x20d38]             // 0x0047de8a    d80d389d8c00
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x0047de90    d9542404
                         {disp8} fstp       dword ptr [eax + 0x6c]                        // 0x0047de94    d9586c
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0047de97    e8b499ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0047de9c    8b4c2404
                         {disp32} mov       dword ptr [eax + 0x00000090], ecx             // 0x0047dea0    898890000000
                         ret                0x0004                                        // 0x0047dea6    c20400
                         nop                                                              // 0x0047dea9    90
                         nop                                                              // 0x0047deaa    90
                         nop                                                              // 0x0047deab    90
                         nop                                                              // 0x0047deac    90
                         nop                                                              // 0x0047dead    90
                         nop                                                              // 0x0047deae    90
                         nop                                                              // 0x0047deaf    90
_jmp_addr_0x0047deb0:    push               ebp                                           // 0x0047deb0    55
                         push               edi                                           // 0x0047deb1    57
                         mov.s              edi, ecx                                      // 0x0047deb2    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0047deb4    8b07
                         call               dword ptr [eax + 0x1c]                        // 0x0047deb6    ff501c
                         mov.s              ebp, eax                                      // 0x0047deb9    8be8
                         test               ebp, ebp                                      // 0x0047debb    85ed
                         {disp8} je         _jmp_addr_0x0047df3c                          // 0x0047debd    747d
                         {disp32} mov       eax, dword ptr [ebp + 0x00000a48]             // 0x0047debf    8b85480a0000
                         test               eax, eax                                      // 0x0047dec5    85c0
                         {disp8} je         _jmp_addr_0x0047df3c                          // 0x0047dec7    7473
                         push               ebx                                           // 0x0047dec9    53
                         push               esi                                           // 0x0047deca    56
                         mov                ebx, 0x00000001                               // 0x0047decb    bb01000000
                         mov                esi, 0x00017d3c                               // 0x0047ded0    be3c7d0100
_jmp_addr_0x0047ded5:    push               ebx                                           // 0x0047ded5    53
                         mov.s              ecx, ebp                                      // 0x0047ded6    8bcd
                         call               @IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE@12 // 0x0047ded8    e843e31c00
                         test               eax, eax                                      // 0x0047dedd    85c0
                         {disp8} jne        _jmp_addr_0x0047df01                          // 0x0047dedf    7520
                         cmp                esi, 0x00017d70                               // 0x0047dee1    81fe707d0100
                         {disp8} je         _jmp_addr_0x0047df01                          // 0x0047dee7    7418
                         cmp                esi, 0x00017d60                               // 0x0047dee9    81fe607d0100
                         {disp8} je         _jmp_addr_0x0047df01                          // 0x0047deef    7410
                         cmp                esi, 0x00017d8c                               // 0x0047def1    81fe8c7d0100
                         {disp8} je         _jmp_addr_0x0047df01                          // 0x0047def7    7408
                         cmp                esi, 0x00017d90                               // 0x0047def9    81fe907d0100
                         {disp8} jne        _jmp_addr_0x0047df2e                          // 0x0047deff    752d
_jmp_addr_0x0047df01:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x0047df01    8b8f64010000
                         push               0x1                                           // 0x0047df07    6a01
                         push               ebx                                           // 0x0047df09    53
                         push               0x1                                           // 0x0047df0a    6a01
                         push               edi                                           // 0x0047df0c    57
                         add                ecx, 0x0001a9fc                               // 0x0047df0d    81c1fca90100
                         call               _jmp_addr_0x004e28c0                          // 0x0047df13    e8a8490600
                         push               ebx                                           // 0x0047df18    53
                         mov.s              ecx, edi                                      // 0x0047df19    8bcf
                         call               _jmp_addr_0x004f8ca0                          // 0x0047df1b    e880ad0700
                         call               _jmp_addr_0x007a1400                          // 0x0047df20    e8db343200
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x0047df25    8b8f64010000
                         mov                dword ptr [esi + ecx * 0x1], eax              // 0x0047df2b    89040e
_jmp_addr_0x0047df2e:    add                esi, 0x04                                     // 0x0047df2e    83c604
                         inc                ebx                                           // 0x0047df31    43
                         cmp                esi, 0x00017de0                               // 0x0047df32    81fee07d0100
                         .byte              0x72, 0x9b// {disp8} jb _jmp_addr_0x0047ded5  // 0x0047df38    729b
                         pop                esi                                           // 0x0047df3a    5e
                         pop                ebx                                           // 0x0047df3b    5b
_jmp_addr_0x0047df3c:    pop                edi                                           // 0x0047df3c    5f
                         pop                ebp                                           // 0x0047df3d    5d
                         ret                                                              // 0x0047df3e    c3
                         nop                                                              // 0x0047df3f    90
                         mov                eax, 0x00000001                               // 0x0047df40    b801000000
                         ret                                                              // 0x0047df45    c3
                         nop                                                              // 0x0047df46    90
                         nop                                                              // 0x0047df47    90
                         nop                                                              // 0x0047df48    90
                         nop                                                              // 0x0047df49    90
                         nop                                                              // 0x0047df4a    90
                         nop                                                              // 0x0047df4b    90
                         nop                                                              // 0x0047df4c    90
                         nop                                                              // 0x0047df4d    90
                         nop                                                              // 0x0047df4e    90
                         nop                                                              // 0x0047df4f    90
                         sub                esp, 0x00000104                               // 0x0047df50    81ec04010000
                         push               esi                                           // 0x0047df56    56
                         mov.s              esi, ecx                                      // 0x0047df57    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047df59    8b0d5c19d000
                         push               edi                                           // 0x0047df5f    57
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0047df60    e81b500d00
                         test               eax, eax                                      // 0x0047df65    85c0
                         {disp32} jne       _jmp_addr_0x0047dff6                          // 0x0047df67    0f8589000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047df6d    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0047df73    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0047df79    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0047df7c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0047df7f    8d0450
                         mov                edx, dword ptr [esi]                          // 0x0047df82    8b16
                         shl                eax, 5                                        // 0x0047df84    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0047df87    8d7c0818
                         mov.s              ecx, esi                                      // 0x0047df8b    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0047df8d    ff521c
                         cmp.s              eax, edi                                      // 0x0047df90    3bc7
                         {disp8} jne        _jmp_addr_0x0047dff6                          // 0x0047df92    7562
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0047df94    8b0d5c19d000
                         call               _jmp_addr_0x00555a10                          // 0x0047df9a    e8717a0d00
                         test               eax, eax                                      // 0x0047df9f    85c0
                         {disp8} je         _jmp_addr_0x0047dff6                          // 0x0047dfa1    7453
                         {disp8} lea        edi, dword ptr [eax + 0x04]                   // 0x0047dfa3    8d7804
                         push               edi                                           // 0x0047dfa6    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0047dfa7    8d44240c
                         push               0x009cf968                                    // 0x0047dfab    6868f99c00
                         push               eax                                           // 0x0047dfb0    50
                         call               _sprintf                                      // 0x0047dfb1    e81c783400
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0047dfb6    8d4c2414
                         push               ecx                                           // 0x0047dfba    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x0047dfbb    e8e0e63300
                         add                esp, 0x10                                     // 0x0047dfc0    83c410
                         test               eax, eax                                      // 0x0047dfc3    85c0
                         {disp8} jne        _jmp_addr_0x0047dfe8                          // 0x0047dfc5    7521
                         push               edi                                           // 0x0047dfc7    57
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0047dfc8    8d54240c
                         push               0x009cf944                                    // 0x0047dfcc    6844f99c00
                         push               edx                                           // 0x0047dfd1    52
                         call               _sprintf                                      // 0x0047dfd2    e8fb773400
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0047dfd7    8d442414
                         push               eax                                           // 0x0047dfdb    50
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x0047dfdc    e8bfe63300
                         add                esp, 0x10                                     // 0x0047dfe1    83c410
                         test               eax, eax                                      // 0x0047dfe4    85c0
                         {disp8} je         _jmp_addr_0x0047dff6                          // 0x0047dfe6    740e
_jmp_addr_0x0047dfe8:    mov                edx, dword ptr [esi]                          // 0x0047dfe8    8b16
                         push               0x0                                           // 0x0047dfea    6a00
                         mov.s              ecx, esi                                      // 0x0047dfec    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0047dfee    ff520c
                         call               _jmp_addr_0x0047e000                          // 0x0047dff1    e80a000000
_jmp_addr_0x0047dff6:    pop                edi                                           // 0x0047dff6    5f
                         pop                esi                                           // 0x0047dff7    5e
                         add                esp, 0x00000104                               // 0x0047dff8    81c404010000
                         ret                                                              // 0x0047dffe    c3
                         nop                                                              // 0x0047dfff    90
_jmp_addr_0x0047e000:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0047e000    8b0d5c19d000
                         sub                esp, 0x00000104                               // 0x0047e006    81ec04010000
                         call               _jmp_addr_0x00555a10                          // 0x0047e00c    e8ff790d00
                         test               eax, eax                                      // 0x0047e011    85c0
                         {disp8} je         _jmp_addr_0x0047e056                          // 0x0047e013    7441
                         push               esi                                           // 0x0047e015    56
                         push               edi                                           // 0x0047e016    57
                         {disp8} lea        esi, dword ptr [eax + 0x04]                   // 0x0047e017    8d7004
                         push               esi                                           // 0x0047e01a    56
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0047e01b    8d44240c
                         push               0x009cf968                                    // 0x0047e01f    6868f99c00
                         push               eax                                           // 0x0047e024    50
                         call               _sprintf                                      // 0x0047e025    e8a8773400
                         {disp32} mov       edi, dword ptr [__imp__DeleteFileA@4]         // 0x0047e02a    8b3d28928a00
                         add                esp, 0x0c                                     // 0x0047e030    83c40c
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0047e033    8d4c2408
                         push               ecx                                           // 0x0047e037    51
                         call               edi                                           // 0x0047e038    ffd7
                         push               esi                                           // 0x0047e03a    56
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0047e03b    8d54240c
                         push               0x009cf944                                    // 0x0047e03f    6844f99c00
                         push               edx                                           // 0x0047e044    52
                         call               _sprintf                                      // 0x0047e045    e888773400
                         add                esp, 0x0c                                     // 0x0047e04a    83c40c
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0047e04d    8d442408
                         push               eax                                           // 0x0047e051    50
                         call               edi                                           // 0x0047e052    ffd7
                         pop                edi                                           // 0x0047e054    5f
                         pop                esi                                           // 0x0047e055    5e
_jmp_addr_0x0047e056:    add                esp, 0x00000104                               // 0x0047e056    81c404010000
                         ret                                                              // 0x0047e05c    c3
                         nop                                                              // 0x0047e05d    90
                         nop                                                              // 0x0047e05e    90
                         nop                                                              // 0x0047e05f    90
_jmp_addr_0x0047e060:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0047e060    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0047e066    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0047e068    8a81595a2000
                         sub                esp, 0x30                                     // 0x0047e06e    83ec30
                         push               esi                                           // 0x0047e071    56
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0047e072    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0047e075    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0047e078    8d0450
                         shl                eax, 5                                        // 0x0047e07b    c1e005
                         {disp32} mov       esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0047e07e    8bb408640a0000
                         test               esi, esi                                      // 0x0047e085    85f6
                         {disp32} je        _jmp_addr_0x0047e1ab                          // 0x0047e087    0f841e010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x0047e08d    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x0047e093    8b4958
                         push               edi                                           // 0x0047e096    57
                         call               _jmp_addr_0x0048f750                          // 0x0047e097    e8b4160100
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e09c    8b8e64010000
                         push               esi                                           // 0x0047e0a2    56
                         call               _jmp_addr_0x004d7b80                          // 0x0047e0a3    e8d89a0500
                         push               0x3f800000                                    // 0x0047e0a8    680000803f
                         push               0x0                                           // 0x0047e0ad    6a00
                         mov.s              edi, eax                                      // 0x0047e0af    8bf8
                         push               edi                                           // 0x0047e0b1    57
                         push               0x0                                           // 0x0047e0b2    6a00
                         push               0x000016ad                                    // 0x0047e0b4    68ad160000
                         push               0x009cf9e0                                    // 0x0047e0b9    68e0f99c00
                         push               0x3                                           // 0x0047e0be    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e0c0    e84b042600
                         add                esp, 0x0c                                     // 0x0047e0c5    83c40c
                         neg                eax                                           // 0x0047e0c8    f7d8
                         sbb.s              eax, eax                                      // 0x0047e0ca    1bc0
                         and                eax, 0x56                                     // 0x0047e0cc    83e056
                         add                eax, 0x52                                     // 0x0047e0cf    83c052
                         push               eax                                           // 0x0047e0d2    50
                         push               0x9                                           // 0x0047e0d3    6a09
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0047e0d5    8d4c2420
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                          // 0x0047e0d9    e852310700
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0047e0de    d944243c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047e0e2    d81d98a38a00
                         fnstsw             ax                                            // 0x0047e0e8    dfe0
                         test               ah, 0x01                                      // 0x0047e0ea    f6c401
                         {disp8} je         _jmp_addr_0x0047e0ff                          // 0x0047e0ed    7410
                         {disp8} mov        dword ptr [esp + 0x10], 0x0000001b            // 0x0047e0ef    c74424101b000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x000000a0            // 0x0047e0f7    c7442420a0000000
_jmp_addr_0x0047e0ff:    push               0x1                                           // 0x0047e0ff    6a01
                         push               0x1                                           // 0x0047e101    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0047e103    8d542410
                         push               edx                                           // 0x0047e107    52
                         mov.s              ecx, esi                                      // 0x0047e108    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                          // 0x0047e10a    e8a1630400
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x0047e10f    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001c14], 0x00000001      // 0x0047e115    c780141c000001000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e11f    8b8e64010000
                         add                ecx, 0x00000fa8                               // 0x0047e125    81c1a80f0000
                         call               _jmp_addr_0x004ff5c0                          // 0x0047e12b    e890140800
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0047e130    d944243c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047e134    d81d98a38a00
                         fnstsw             ax                                            // 0x0047e13a    dfe0
                         test               ah, 0x40                                      // 0x0047e13c    f6c440
                         {disp8} je         _jmp_addr_0x0047e14e                          // 0x0047e13f    740d
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0047e141    8b4c243c
                         push               ecx                                           // 0x0047e145    51
                         push               esi                                           // 0x0047e146    56
                         call               _jmp_addr_0x0047e1b0                          // 0x0047e147    e864000000
                         {disp8} jmp        _jmp_addr_0x0047e177                          // 0x0047e14c    eb29
_jmp_addr_0x0047e14e:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0047e14e    d944243c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047e152    d81d98a38a00
                         fnstsw             ax                                            // 0x0047e158    dfe0
                         test               ah, 0x41                                      // 0x0047e15a    f6c441
                         {disp8} jne        _jmp_addr_0x0047e16c                          // 0x0047e15d    750d
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0047e15f    8b54243c
                         push               edx                                           // 0x0047e163    52
                         push               esi                                           // 0x0047e164    56
                         call               _jmp_addr_0x0047e760                          // 0x0047e165    e8f6050000
                         {disp8} jmp        _jmp_addr_0x0047e177                          // 0x0047e16a    eb0b
_jmp_addr_0x0047e16c:    {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0047e16c    8b44243c
                         push               eax                                           // 0x0047e170    50
                         push               esi                                           // 0x0047e171    56
                         call               _jmp_addr_0x0047ec10                          // 0x0047e172    e8990a0000
_jmp_addr_0x0047e177:    {disp8} fld        dword ptr [esp + 0x44]                        // 0x0047e177    d9442444
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e17b    8b8e64010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0047e181    d80d14b48a00
                         add                esp, 0x08                                     // 0x0047e187    83c408
                         {disp32} mov       dword ptr [ecx + 0x000021e0], edi             // 0x0047e18a    89b9e0210000
                         call               _jmp_addr_0x007a1400                          // 0x0047e190    e86b323200
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x0047e195    8b9664010000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0047e19b    8d4c2408
                         {disp32} mov       dword ptr [edx + 0x000021f0], eax             // 0x0047e19f    8982f0210000
                         call               _jmp_addr_0x004f12d0                          // 0x0047e1a5    e826310700
                         pop                edi                                           // 0x0047e1aa    5f
_jmp_addr_0x0047e1ab:    pop                esi                                           // 0x0047e1ab    5e
                         add                esp, 0x30                                     // 0x0047e1ac    83c430
                         ret                                                              // 0x0047e1af    c3
_jmp_addr_0x0047e1b0:    sub                esp, 0x24                                     // 0x0047e1b0    83ec24
                         push               ebx                                           // 0x0047e1b3    53
                         push               ebp                                           // 0x0047e1b4    55
                         push               esi                                           // 0x0047e1b5    56
                         push               edi                                           // 0x0047e1b6    57
                         push               0x000016cd                                    // 0x0047e1b7    68cd160000
                         push               0x009cf9e0                                    // 0x0047e1bc    68e0f99c00
                         push               0x8                                           // 0x0047e1c1    6a08
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e1c3    e848032600
                         {disp8} mov        esi, dword ptr [esp + 0x44]                   // 0x0047e1c8    8b742444
                         add                esp, 0x0c                                     // 0x0047e1cc    83c40c
                         add                eax, 0x08                                     // 0x0047e1cf    83c008
                         mov                ebx, 0x00000000                               // 0x0047e1d2    bb00000000
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0047e1d7    89442414
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0047e1db    895c2410
                         {disp32} je        _jmp_addr_0x0047e51f                          // 0x0047e1df    0f843a030000
                         xor.s              ecx, ecx                                      // 0x0047e1e5    33c9
                         xor.s              edx, edx                                      // 0x0047e1e7    33d2
                         mov                eax, 0x004c8660                               // 0x0047e1e9    b860864c00
                         xor.s              edi, edi                                      // 0x0047e1ee    33ff
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0047e1f0    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x0047e1f4    894c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0047e1f8    8954242c
                         {disp8} mov        dword ptr [esp + 0x30], edi                   // 0x0047e1fc    897c2430
_jmp_addr_0x0047e200:    test               ebx, ebx                                      // 0x0047e200    85db
                         {disp8} je         _jmp_addr_0x0047e21c                          // 0x0047e202    7418
                         push               0x000016d3                                    // 0x0047e204    68d3160000
                         push               0x009cf9e0                                    // 0x0047e209    68e0f99c00
                         push               0x2                                           // 0x0047e20e    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e210    e8fb022600
                         add                esp, 0x0c                                     // 0x0047e215    83c40c
                         test               eax, eax                                      // 0x0047e218    85c0
                         {disp8} jne        _jmp_addr_0x0047e263                          // 0x0047e21a    7547
_jmp_addr_0x0047e21c:    sub                esp, 0x10                                     // 0x0047e21c    83ec10
                         mov.s              ebp, esp                                      // 0x0047e21f    8bec
                         mov                ebx, 0x004c8660                               // 0x0047e221    bb60864c00
                         {disp8} mov        dword ptr [ebp + 0x00], ebx                   // 0x0047e226    895d00
                         xor.s              ebx, ebx                                      // 0x0047e229    33db
                         {disp8} mov        dword ptr [ebp + 0x04], ebx                   // 0x0047e22b    895d04
                         {disp8} mov        dword ptr [ebp + 0x08], ebx                   // 0x0047e22e    895d08
                         {disp8} mov        dword ptr [ebp + 0x0c], ebx                   // 0x0047e231    895d0c
                         sub                esp, 0x10                                     // 0x0047e234    83ec10
                         mov.s              ebx, esp                                      // 0x0047e237    8bdc
                         mov                eax, 0x004d1a30                               // 0x0047e239    b8301a4d00
                         xor.s              ecx, ecx                                      // 0x0047e23e    33c9
                         mov                dword ptr [ebx], eax                          // 0x0047e240    8903
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                   // 0x0047e242    894b04
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e245    8b8e64010000
                         xor.s              edi, edi                                      // 0x0047e24b    33ff
                         xor.s              edx, edx                                      // 0x0047e24d    33d2
                         push               edi                                           // 0x0047e24f    57
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x0047e250    895308
                         push               0x1f                                          // 0x0047e253    6a1f
                         add                ecx, 0x00000fa8                               // 0x0047e255    81c1a80f0000
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x0047e25b    897b0c
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e25e    e8dd0f0800
_jmp_addr_0x0047e263:    push               0x000016d7                                    // 0x0047e263    68d7160000
                         push               0x009cf9e0                                    // 0x0047e268    68e0f99c00
                         push               0x5                                           // 0x0047e26d    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e26f    e89c022600
                         add                esp, 0x0c                                     // 0x0047e274    83c40c
                         cmp                eax, 0x04                                     // 0x0047e277    83f804
                         {disp32} ja        _jmp_addr_0x0047e50a                          // 0x0047e27a    0f878a020000
                         jmp                dword ptr [eax*4 + 0x47e740]                  // 0x0047e280    ff248540e74700
                         {disp32} mov       eax, dword ptr [esi + 0x00000168]             // 0x0047e287    8b8668010000
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0047e28d    d94008
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0047e290    d81d98a38a00
                         fnstsw             ax                                            // 0x0047e296    dfe0
                         test               ah, 0x01                                      // 0x0047e298    f6c401
                         {disp8} je         _jmp_addr_0x0047e2f8                          // 0x0047e29b    745b
                         push               0x000016dd                                    // 0x0047e29d    68dd160000
                         push               0x009cf9e0                                    // 0x0047e2a2    68e0f99c00
                         push               0x8                                           // 0x0047e2a7    6a08
                         xor.s              edi, edi                                      // 0x0047e2a9    33ff
                         xor.s              ebx, ebx                                      // 0x0047e2ab    33db
                         xor.s              ebp, ebp                                      // 0x0047e2ad    33ed
                         call               ___nw__FUl                                    // 0x0047e2af    e8dcd43500
                         add                esp, 0x0c                                     // 0x0047e2b4    83c40c
                         test               eax, eax                                      // 0x0047e2b7    85c0
                         {disp8} je         _jmp_addr_0x0047e2ca                          // 0x0047e2b9    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x0047e2bb    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000da            // 0x0047e2c1    c74004da000000
                         {disp8} jmp        _jmp_addr_0x0047e2cc                          // 0x0047e2c8    eb02
_jmp_addr_0x0047e2ca:    xor.s              eax, eax                                      // 0x0047e2ca    33c0
_jmp_addr_0x0047e2cc:    sub                esp, 0x10                                     // 0x0047e2cc    83ec10
                         mov.s              edx, esp                                      // 0x0047e2cf    8bd4
                         mov                ecx, 0x004c8660                               // 0x0047e2d1    b960864c00
                         mov                dword ptr [edx], ecx                          // 0x0047e2d6    890a
                         xor.s              ecx, ecx                                      // 0x0047e2d8    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0047e2da    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0047e2dd    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e2e0    894a0c
                         sub                esp, 0x10                                     // 0x0047e2e3    83ec10
                         mov.s              edx, esp                                      // 0x0047e2e6    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e2e8    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e2ea    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e2ed    896a08
                         or                 ecx, 0xffffffff                               // 0x0047e2f0    83c9ff
                         {disp32} jmp       _jmp_addr_0x0047e4f3                          // 0x0047e2f3    e9fb010000
_jmp_addr_0x0047e2f8:    push               0x000016e1                                    // 0x0047e2f8    68e1160000
                         push               0x009cf9e0                                    // 0x0047e2fd    68e0f99c00
                         push               0x8                                           // 0x0047e302    6a08
                         xor.s              edi, edi                                      // 0x0047e304    33ff
                         xor.s              ebx, ebx                                      // 0x0047e306    33db
                         xor.s              ebp, ebp                                      // 0x0047e308    33ed
                         call               ___nw__FUl                                    // 0x0047e30a    e881d43500
                         add                esp, 0x0c                                     // 0x0047e30f    83c40c
                         test               eax, eax                                      // 0x0047e312    85c0
                         {disp8} je         _jmp_addr_0x0047e325                          // 0x0047e314    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x0047e316    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000010            // 0x0047e31c    c7400410000000
                         {disp8} jmp        _jmp_addr_0x0047e327                          // 0x0047e323    eb02
_jmp_addr_0x0047e325:    xor.s              eax, eax                                      // 0x0047e325    33c0
_jmp_addr_0x0047e327:    sub                esp, 0x10                                     // 0x0047e327    83ec10
                         mov.s              edx, esp                                      // 0x0047e32a    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e32c    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e32e    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e331    896a08
                         or                 ecx, 0xffffffff                               // 0x0047e334    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e337    894a0c
                         xor.s              ecx, ecx                                      // 0x0047e33a    33c9
                         sub                esp, 0x10                                     // 0x0047e33c    83ec10
                         mov.s              edx, esp                                      // 0x0047e33f    8bd4
                         mov                dword ptr [edx], ecx                          // 0x0047e341    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0047e343    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0047e346    894a08
                         or                 ecx, 0xffffffff                               // 0x0047e349    83c9ff
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e34c    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e34f    8b8e64010000
                         push               eax                                           // 0x0047e355    50
                         push               0xd                                           // 0x0047e356    6a0d
                         add                ecx, 0x00000fa8                               // 0x0047e358    81c1a80f0000
                         call               ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e35e    e83d100800
                         {disp32} jmp       _jmp_addr_0x0047e50a                          // 0x0047e363    e9a2010000
                         mov.s              ecx, esi                                      // 0x0047e368    8bce
                         call               _jmp_addr_0x0047d640                          // 0x0047e36a    e8d1f2ffff
                         test               eax, eax                                      // 0x0047e36f    85c0
                         {disp32} je        _jmp_addr_0x0047e50a                          // 0x0047e371    0f8493010000
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]             // 0x0047e377    8b88b0000000
                         {disp32} mov       edx, dword ptr [eax + 0x000000b4]             // 0x0047e37d    8b90b4000000
                         {disp32} mov       eax, dword ptr [eax + 0x000000b8]             // 0x0047e383    8b80b8000000
                         push               0x000016eb                                    // 0x0047e389    68eb160000
                         push               0x009cf9e0                                    // 0x0047e38e    68e0f99c00
                         push               0x14                                          // 0x0047e393    6a14
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0047e395    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0047e399    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0047e39d    8944242c
                         mov                edi, 0x004d1460                               // 0x0047e3a1    bf60144d00
                         xor.s              ebx, ebx                                      // 0x0047e3a6    33db
                         xor.s              ebp, ebp                                      // 0x0047e3a8    33ed
                         call               ___nw__FUl                                    // 0x0047e3aa    e8e1d33500
                         add                esp, 0x0c                                     // 0x0047e3af    83c40c
                         test               eax, eax                                      // 0x0047e3b2    85c0
                         {disp8} je         _jmp_addr_0x0047e3dc                          // 0x0047e3b4    7426
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0047e3b6    8b542418
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                   // 0x0047e3ba    8d4804
                         mov                dword ptr [ecx], edx                          // 0x0047e3bd    8911
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0047e3bf    8b54241c
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0047e3c3    895104
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0047e3c6    8b542420
                         mov                dword ptr [eax], 0x008cefec                   // 0x0047e3ca    c700ecef8c00
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0047e3d0    895108
                         {disp8} mov        dword ptr [eax + 0x10], 0x3f800000            // 0x0047e3d3    c740100000803f
                         {disp8} jmp        _jmp_addr_0x0047e3de                          // 0x0047e3da    eb02
_jmp_addr_0x0047e3dc:    xor.s              eax, eax                                      // 0x0047e3dc    33c0
_jmp_addr_0x0047e3de:    sub                esp, 0x10                                     // 0x0047e3de    83ec10
                         mov.s              edx, esp                                      // 0x0047e3e1    8bd4
                         mov                ecx, 0x004c8660                               // 0x0047e3e3    b960864c00
                         mov                dword ptr [edx], ecx                          // 0x0047e3e8    890a
                         xor.s              ecx, ecx                                      // 0x0047e3ea    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0047e3ec    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0047e3ef    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e3f2    894a0c
                         sub                esp, 0x10                                     // 0x0047e3f5    83ec10
                         mov.s              edx, esp                                      // 0x0047e3f8    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e3fa    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e3fc    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e3ff    896a08
                         push               eax                                           // 0x0047e402    50
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e403    894a0c
                         push               0x50                                          // 0x0047e406    6a50
                         {disp32} jmp       _jmp_addr_0x0047e4f9                          // 0x0047e408    e9ec000000
                         sub                esp, 0x10                                     // 0x0047e40d    83ec10
                         mov.s              ebp, esp                                      // 0x0047e410    8bec
                         mov                ebx, 0x004c8660                               // 0x0047e412    bb60864c00
                         {disp8} mov        dword ptr [ebp + 0x00], ebx                   // 0x0047e417    895d00
                         xor.s              ebx, ebx                                      // 0x0047e41a    33db
                         {disp8} mov        dword ptr [ebp + 0x04], ebx                   // 0x0047e41c    895d04
                         {disp8} mov        dword ptr [ebp + 0x08], ebx                   // 0x0047e41f    895d08
                         xor.s              edx, edx                                      // 0x0047e422    33d2
                         {disp8} mov        dword ptr [ebp + 0x0c], ebx                   // 0x0047e424    895d0c
                         xor.s              eax, eax                                      // 0x0047e427    33c0
                         xor.s              ecx, ecx                                      // 0x0047e429    33c9
                         or                 edi, 0xffffffff                               // 0x0047e42b    83cfff
                         sub                esp, 0x10                                     // 0x0047e42e    83ec10
                         mov.s              ebx, esp                                      // 0x0047e431    8bdc
                         mov                dword ptr [ebx], eax                          // 0x0047e433    8903
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                   // 0x0047e435    894b04
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x0047e438    895308
                         push               edx                                           // 0x0047e43b    52
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x0047e43c    897b0c
                         push               0x00000089                                    // 0x0047e43f    6889000000
                         {disp32} jmp       _jmp_addr_0x0047e4f9                          // 0x0047e444    e9b0000000
                         xor.s              ebx, ebx                                      // 0x0047e449    33db
                         mov                edi, 0x004d1100                               // 0x0047e44b    bf00114d00
                         xor.s              ebp, ebp                                      // 0x0047e450    33ed
                         push               0x000016f5                                    // 0x0047e452    68f5160000
                         {disp8} jmp        _jmp_addr_0x0047e480                          // 0x0047e457    eb27
                         push               0x000016f8                                    // 0x0047e459    68f8160000
                         push               0x009cf9e0                                    // 0x0047e45e    68e0f99c00
                         push               0x64                                          // 0x0047e463    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e465    e8a6002600
                         add                esp, 0x0c                                     // 0x0047e46a    83c40c
                         cmp                eax, 0x32                                     // 0x0047e46d    83f832
                         mov                edi, 0x004d1100                               // 0x0047e470    bf00114d00
                         {disp8} jbe        _jmp_addr_0x0047e4a2                          // 0x0047e475    762b
                         xor.s              ebx, ebx                                      // 0x0047e477    33db
                         xor.s              ebp, ebp                                      // 0x0047e479    33ed
                         push               0x000016fa                                    // 0x0047e47b    68fa160000
_jmp_addr_0x0047e480:    push               0x009cf9e0                                    // 0x0047e480    68e0f99c00
                         push               0x8                                           // 0x0047e485    6a08
                         call               ___nw__FUl                                    // 0x0047e487    e804d33500
                         add                esp, 0x0c                                     // 0x0047e48c    83c40c
                         test               eax, eax                                      // 0x0047e48f    85c0
                         {disp8} je         _jmp_addr_0x0047e4cd                          // 0x0047e491    743a
                         mov                dword ptr [eax], 0x008cf064                   // 0x0047e493    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x0000003f            // 0x0047e499    c740043f000000
                         {disp8} jmp        _jmp_addr_0x0047e4cf                          // 0x0047e4a0    eb2d
_jmp_addr_0x0047e4a2:    push               0x00001700                                    // 0x0047e4a2    6800170000
                         push               0x009cf9e0                                    // 0x0047e4a7    68e0f99c00
                         push               0x8                                           // 0x0047e4ac    6a08
                         xor.s              ebx, ebx                                      // 0x0047e4ae    33db
                         xor.s              ebp, ebp                                      // 0x0047e4b0    33ed
                         call               ___nw__FUl                                    // 0x0047e4b2    e8d9d23500
                         add                esp, 0x0c                                     // 0x0047e4b7    83c40c
                         test               eax, eax                                      // 0x0047e4ba    85c0
                         {disp8} je         _jmp_addr_0x0047e4cd                          // 0x0047e4bc    740f
                         mov                dword ptr [eax], 0x008cf064                   // 0x0047e4be    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x0000003c            // 0x0047e4c4    c740043c000000
                         {disp8} jmp        _jmp_addr_0x0047e4cf                          // 0x0047e4cb    eb02
_jmp_addr_0x0047e4cd:    xor.s              eax, eax                                      // 0x0047e4cd    33c0
_jmp_addr_0x0047e4cf:    sub                esp, 0x10                                     // 0x0047e4cf    83ec10
                         mov.s              edx, esp                                      // 0x0047e4d2    8bd4
                         mov                ecx, 0x004c8660                               // 0x0047e4d4    b960864c00
                         mov                dword ptr [edx], ecx                          // 0x0047e4d9    890a
                         xor.s              ecx, ecx                                      // 0x0047e4db    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0047e4dd    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0047e4e0    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e4e3    894a0c
                         sub                esp, 0x10                                     // 0x0047e4e6    83ec10
                         mov.s              edx, esp                                      // 0x0047e4e9    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e4eb    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e4ed    895a04
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e4f0    896a08
_jmp_addr_0x0047e4f3:    push               eax                                           // 0x0047e4f3    50
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e4f4    894a0c
                         push               0xa                                           // 0x0047e4f7    6a0a
_jmp_addr_0x0047e4f9:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e4f9    8b8e64010000
                         add                ecx, 0x00000fa8                               // 0x0047e4ff    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e505    e8360d0800
_jmp_addr_0x0047e50a:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0047e50a    8b5c2410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047e50e    8b442414
                         inc                ebx                                           // 0x0047e512    43
                         cmp.s              ebx, eax                                      // 0x0047e513    3bd8
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0047e515    895c2410
                         {disp32} jb        _jmp_addr_0x0047e200                          // 0x0047e519    0f82e1fcffff
_jmp_addr_0x0047e51f:    push               0x00001706                                    // 0x0047e51f    6806170000
                         push               0x009cf9e0                                    // 0x0047e524    68e0f99c00
                         push               0xc                                           // 0x0047e529    6a0c
                         mov                ebx, 0x004d1100                               // 0x0047e52b    bb00114d00
                         xor.s              ebp, ebp                                      // 0x0047e530    33ed
                         call               ___nw__FUl                                    // 0x0047e532    e859d23500
                         mov.s              edi, eax                                      // 0x0047e537    8bf8
                         add                esp, 0x0c                                     // 0x0047e539    83c40c
                         test               edi, edi                                      // 0x0047e53c    85ff
                         {disp8} je         _jmp_addr_0x0047e56f                          // 0x0047e53e    742f
                         push               0x00001706                                    // 0x0047e540    6806170000
                         push               0x009cf9e0                                    // 0x0047e545    68e0f99c00
                         push               0x41700000                                    // 0x0047e54a    6800007041
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x0047e54f    e8dcff2500
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x0047e554    d80558768c00
                         add                esp, 0x0c                                     // 0x0047e55a    83c40c
                         mov                dword ptr [edi], 0x008cf050                   // 0x0047e55d    c70750f08c00
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x0047e563    d95f08
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000026            // 0x0047e566    c7470426000000
                         {disp8} jmp        _jmp_addr_0x0047e571                          // 0x0047e56d    eb02
_jmp_addr_0x0047e56f:    xor.s              edi, edi                                      // 0x0047e56f    33ff
_jmp_addr_0x0047e571:    {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0047e571    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0047e575    8b542428
                         sub                esp, 0x10                                     // 0x0047e579    83ec10
                         mov.s              eax, esp                                      // 0x0047e57c    8bc4
                         mov                dword ptr [eax], ecx                          // 0x0047e57e    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0047e580    8b4c243c
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0047e584    895004
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x0047e587    8b542440
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0047e58b    894808
                         sub                esp, 0x10                                     // 0x0047e58e    83ec10
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x0047e591    89500c
                         mov.s              ecx, esp                                      // 0x0047e594    8bcc
                         mov                dword ptr [ecx], ebx                          // 0x0047e596    8919
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x0047e598    896904
                         xor.s              eax, eax                                      // 0x0047e59b    33c0
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0047e59d    894108
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x0047e5a0    89410c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e5a3    8b8e64010000
                         push               edi                                           // 0x0047e5a9    57
                         push               0x4                                           // 0x0047e5aa    6a04
                         add                ecx, 0x00000fa8                               // 0x0047e5ac    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e5b2    e8890c0800
                         mov.s              ecx, esi                                      // 0x0047e5b7    8bce
                         call               _jmp_addr_0x0047d640                          // 0x0047e5b9    e882f0ffff
                         test               eax, eax                                      // 0x0047e5be    85c0
                         {disp32} je        _jmp_addr_0x0047e673                          // 0x0047e5c0    0f84ad000000
                         {disp32} mov       edx, dword ptr [eax + 0x000000b0]             // 0x0047e5c6    8b90b0000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b4]             // 0x0047e5cc    8b88b4000000
                         push               0x0000170b                                    // 0x0047e5d2    680b170000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0047e5d7    8954241c
                         {disp32} mov       edx, dword ptr [eax + 0x000000b8]             // 0x0047e5db    8b90b8000000
                         push               0x009cf9e0                                    // 0x0047e5e1    68e0f99c00
                         push               0x14                                          // 0x0047e5e6    6a14
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x0047e5e8    894c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0047e5ec    8954242c
                         mov                edi, 0x004d1460                               // 0x0047e5f0    bf60144d00
                         xor.s              ebx, ebx                                      // 0x0047e5f5    33db
                         xor.s              ebp, ebp                                      // 0x0047e5f7    33ed
                         call               ___nw__FUl                                    // 0x0047e5f9    e892d13500
                         add                esp, 0x0c                                     // 0x0047e5fe    83c40c
                         test               eax, eax                                      // 0x0047e601    85c0
                         {disp8} je         _jmp_addr_0x0047e62b                          // 0x0047e603    7426
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0047e605    8b542418
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                   // 0x0047e609    8d4804
                         mov                dword ptr [ecx], edx                          // 0x0047e60c    8911
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0047e60e    8b54241c
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0047e612    895104
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0047e615    8b542420
                         mov                dword ptr [eax], 0x008cefec                   // 0x0047e619    c700ecef8c00
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0047e61f    895108
                         {disp8} mov        dword ptr [eax + 0x10], 0x3f800000            // 0x0047e622    c740100000803f
                         {disp8} jmp        _jmp_addr_0x0047e62d                          // 0x0047e629    eb02
_jmp_addr_0x0047e62b:    xor.s              eax, eax                                      // 0x0047e62b    33c0
_jmp_addr_0x0047e62d:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0047e62d    8b542424
                         sub                esp, 0x10                                     // 0x0047e631    83ec10
                         mov.s              ecx, esp                                      // 0x0047e634    8bcc
                         mov                dword ptr [ecx], edx                          // 0x0047e636    8911
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0047e638    8b542438
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0047e63c    895104
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0047e63f    8b54243c
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0047e643    895108
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x0047e646    8b542440
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x0047e64a    89510c
                         sub                esp, 0x10                                     // 0x0047e64d    83ec10
                         mov.s              edx, esp                                      // 0x0047e650    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e652    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e654    895a04
                         xor.s              ecx, ecx                                      // 0x0047e657    33c9
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e659    896a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e65c    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e65f    8b8e64010000
                         push               eax                                           // 0x0047e665    50
                         push               0x50                                          // 0x0047e666    6a50
                         add                ecx, 0x00000fa8                               // 0x0047e668    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e66e    e8cd0b0800
_jmp_addr_0x0047e673:    push               0x0000170d                                    // 0x0047e673    680d170000
                         push               0x009cf9e0                                    // 0x0047e678    68e0f99c00
                         push               0x64                                          // 0x0047e67d    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0047e67f    e88cfe2500
                         add                esp, 0x0c                                     // 0x0047e684    83c40c
                         cmp                eax, 0x32                                     // 0x0047e687    83f832
                         {disp8} jbe        _jmp_addr_0x0047e702                          // 0x0047e68a    7676
                         push               0x0000170f                                    // 0x0047e68c    680f170000
                         push               0x009cf9e0                                    // 0x0047e691    68e0f99c00
                         push               0x8                                           // 0x0047e696    6a08
                         xor.s              edi, edi                                      // 0x0047e698    33ff
                         xor.s              ebx, ebx                                      // 0x0047e69a    33db
                         xor.s              ebp, ebp                                      // 0x0047e69c    33ed
                         call               ___nw__FUl                                    // 0x0047e69e    e8edd03500
                         add                esp, 0x0c                                     // 0x0047e6a3    83c40c
                         test               eax, eax                                      // 0x0047e6a6    85c0
                         {disp8} je         _jmp_addr_0x0047e6b9                          // 0x0047e6a8    740f
                         mov                dword ptr [eax], 0x008cf03c                   // 0x0047e6aa    c7003cf08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x3f800000            // 0x0047e6b0    c740040000803f
                         {disp8} jmp        _jmp_addr_0x0047e6bb                          // 0x0047e6b7    eb02
_jmp_addr_0x0047e6b9:    xor.s              eax, eax                                      // 0x0047e6b9    33c0
_jmp_addr_0x0047e6bb:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0047e6bb    8b542424
                         sub                esp, 0x10                                     // 0x0047e6bf    83ec10
                         mov.s              ecx, esp                                      // 0x0047e6c2    8bcc
                         mov                dword ptr [ecx], edx                          // 0x0047e6c4    8911
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0047e6c6    8b542438
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0047e6ca    895104
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0047e6cd    8b54243c
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0047e6d1    895108
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x0047e6d4    8b542440
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x0047e6d8    89510c
                         sub                esp, 0x10                                     // 0x0047e6db    83ec10
                         mov.s              edx, esp                                      // 0x0047e6de    8bd4
                         mov                dword ptr [edx], edi                          // 0x0047e6e0    893a
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0047e6e2    895a04
                         or                 ecx, 0xffffffff                               // 0x0047e6e5    83c9ff
                         {disp8} mov        dword ptr [edx + 0x08], ebp                   // 0x0047e6e8    896a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x0047e6eb    894a0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e6ee    8b8e64010000
                         push               eax                                           // 0x0047e6f4    50
                         push               0x5e                                          // 0x0047e6f5    6a5e
                         add                ecx, 0x00000fa8                               // 0x0047e6f7    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z                          // 0x0047e6fd    e83e0b0800
_jmp_addr_0x0047e702:    {disp32} mov       ebx, dword ptr [esi + 0x00000164]             // 0x0047e702    8b9e64010000
                         add                ebx, 0x000021d0                               // 0x0047e708    81c3d0210000
                         mov                eax, 0x00509050                               // 0x0047e70e    b850905000
                         mov                dword ptr [ebx], eax                          // 0x0047e713    8903
                         xor.s              ecx, ecx                                      // 0x0047e715    33c9
                         {disp8} mov        dword ptr [ebx + 0x04], ecx                   // 0x0047e717    894b04
                         xor.s              edx, edx                                      // 0x0047e71a    33d2
                         push               0x1                                           // 0x0047e71c    6a01
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x0047e71e    895308
                         xor.s              edi, edi                                      // 0x0047e721    33ff
                         push               0x41700000                                    // 0x0047e723    6800007041
                         {disp8} mov        dword ptr [ebx + 0x0c], edi                   // 0x0047e728    897b0c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0047e72b    8b8e64010000
                         push               0x9                                           // 0x0047e731    6a09
                         call               _jmp_addr_0x004dce20                          // 0x0047e733    e8e8e60500
                         pop                edi                                           // 0x0047e738    5f
                         pop                esi                                           // 0x0047e739    5e
                         pop                ebp                                           // 0x0047e73a    5d
                         pop                ebx                                           // 0x0047e73b    5b
                         add                esp, 0x24                                     // 0x0047e73c    83c424
                         ret                                                              // 0x0047e73f    c3

// Snippet: jmptbl, [0x0047e740, 0x0047e754)
.byte 0x87, 0xe2, 0x47, 0x00      // 0x0047e740
.byte 0x68, 0xe3, 0x47, 0x00      // 0x0047e744
.byte 0x0d, 0xe4, 0x47, 0x00      // 0x0047e748
.byte 0x49, 0xe4, 0x47, 0x00      // 0x0047e74c
.byte 0x59, 0xe4, 0x47, 0x00      // 0x0047e750

// Snippet: db, [0x0047e754, 0x0047e760)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047e754
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047e758
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047e75c

