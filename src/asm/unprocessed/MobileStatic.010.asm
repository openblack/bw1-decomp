.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _globl_ct_0x00608470
.globl _globl_ct_0x006084a0

.globl _jmp_addr_0x00609340
.globl _jmp_addr_0x006094e0
.globl _jmp_addr_0x00608750
.globl _jmp_addr_0x00608770
.globl _jmp_addr_0x00608840
.globl ?GetScriptObjectType@MobileStatic@@UAEIXZ
.globl ?Load@MobileStatic@@UAEIAAVGameOSFile@@@Z
.globl ?Save@MobileStatic@@UAEIAAVGameOSFile@@@Z
.globl @__ct__12MobileStaticFRC9MapCoordsPC17GMobileStaticInfoP6Objectff@28
.globl ?ToBeDeleted@MobileStatic@@UAEXH@Z
.globl ?ApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.globl ?GetMesh@GMobileStaticInfo@@UBEIXZ
.globl ?GetBaseInfo@GMobileStaticInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGMobileStaticInfo@@UAEPAXI@Z
.globl ?GetPlayer@MobileStatic@@UAEPAVGPlayer@@XZ
.globl ?SaveObject@MobileStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?AddToRoutePlan@MobileStatic@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.globl ?GetCreatureBeliefType@MobileStatic@@UAEIXZ
.globl ?ValidToApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z
.globl ?ApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z
.globl ?SetXYZAngles@MobileStatic@@UAEXMMM@Z
.globl ?SetXYZAnglesAndScale@MobileStatic@@UAEXMMMM@Z
.globl ?GetWorldMatrix@MobileStatic@@UAEXPAULHMatrix@@@Z
.globl ?GetBoundingSphere@MobileStatic@@UAEXAAULHPoint@@AAM@Z
.globl ?ReactToPhysicsImpact@MobileStatic@@UAEXPAVPhysicsObject@@_N@Z
.globl ?CreatureMustAvoid@MobileStatic@@UAE_NPAVCreature@@@Z
.globl ?IsToy@MobileStatic@@UAEIPAVCreature@@@Z
.globl ?IsToyBall@MobileStatic@@UAEIPAVCreature@@@Z
.globl ?IsToyDie@MobileStatic@@UAEIPAVCreature@@@Z
.globl ?IsToyCuddly@MobileStatic@@UAEIPAVCreature@@@Z
.globl ?InteractsWithPhysicsObjects@MobileStatic@@UAEIXZ
.globl ?IsFence@MobileStatic@@UAEIXZ
.globl ?GetHoldType@MobileStatic@@UAE?AW4HOLD_TYPE@@XZ
.globl ?PhysicallyDestroysAbodes@MobileStatic@@UAEIXZ
.globl ?GetHoldLoweringMultiplier@MobileStatic@@UAEMXZ
.globl ?ChecksVerticesVObjects@MobileStatic@@UAEIXZ
.globl ?GetPhysicsConstantsType@MobileStatic@@UAEIXZ
.globl ?CanBecomeAPhysicsObject@MobileStatic@@UAEIXZ
.globl ?CallVirtualFunctionsForCreation@GBaseOnly@@UAEXABUMapCoords@@@Z
.globl ?Draw@GBaseOnly@@UAEXXZ
.globl ?ToBeDeleted@GBaseOnly@@UAEXH@Z
.globl ?SaveObject@GBaseOnly@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?BlocksTownClearArea@MobileStatic@@UBE_NXZ
.globl ?GetResourceType@MobileStatic@@UAE?AW4RESOURCE_TYPE@@XZ
.globl ?GetDefaultResource@MobileStatic@@UAEHXZ
.globl ?CallVirtualFunctionsForCreation@MobileStatic@@UAEXABUMapCoords@@@Z

_globl_ct_0x00608470:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00608470    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00608476    b001
                         test               al, cl                                        // 0x00608478    84c8
                         {disp8} jne        .Lbl_addr_0x00608484                          // 0x0060847a    7508
                         or.s               cl, al                                        // 0x0060847c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0060847e    880d34c9fa00
.Lbl_addr_0x00608484:    {disp32} jmp       .Lbl_addr_0x00608490                          // 0x00608484    e907000000
                         nop                                                              // 0x00608489    90
                         nop                                                              // 0x0060848a    90
                         nop                                                              // 0x0060848b    90
                         nop                                                              // 0x0060848c    90
                         nop                                                              // 0x0060848d    90
                         nop                                                              // 0x0060848e    90
                         nop                                                              // 0x0060848f    90
.Lbl_addr_0x00608490:    push               0x00407870                                    // 0x00608490    6870784000
                         call               _atexit                                       // 0x00608495    e8f7d21b00
                         pop                ecx                                           // 0x0060849a    59
                         ret                                                              // 0x0060849b    c3
                         nop                                                              // 0x0060849c    90
                         nop                                                              // 0x0060849d    90
                         nop                                                              // 0x0060849e    90
                         nop                                                              // 0x0060849f    90
_globl_ct_0x006084a0:    call               .Lbl_addr_0x006084b0                          // 0x006084a0    e80b000000
                         {disp32} jmp       .Lbl_addr_0x00608510                          // 0x006084a5    e966000000
                         nop                                                              // 0x006084aa    90
                         nop                                                              // 0x006084ab    90
                         nop                                                              // 0x006084ac    90
                         nop                                                              // 0x006084ad    90
                         nop                                                              // 0x006084ae    90
                         nop                                                              // 0x006084af    90
.Lbl_addr_0x006084b0:    mov                eax, 0x00d3a6d8                               // 0x006084b0    b8d8a6d300
                         mov                ecx, 0x0000003d                               // 0x006084b5    b93d000000
                         xor.s              edx, edx                                      // 0x006084ba    33d2
.att_syntax
.Lbl_addr_0x006084bc:    movl               $??_7Base@@6B@, (%eax)                        // 0x006084bc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x006084c2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x006084c5    895008
                         mov                dword ptr [eax], 0x0093060c                   // 0x006084c8    c7000c069300
                         add                eax, 0x0000012c                               // 0x006084ce    052c010000
                         dec                ecx                                           // 0x006084d3    49
                         {disp8} jne        .Lbl_addr_0x006084bc                          // 0x006084d4    75e6
                         ret                                                              // 0x006084d6    c3
                         nop                                                              // 0x006084d7    90
                         nop                                                              // 0x006084d8    90
                         nop                                                              // 0x006084d9    90
                         nop                                                              // 0x006084da    90
                         nop                                                              // 0x006084db    90
                         nop                                                              // 0x006084dc    90
                         nop                                                              // 0x006084dd    90
                         nop                                                              // 0x006084de    90
                         nop                                                              // 0x006084df    90
?GetMesh@GMobileStaticInfo@@UBEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000120]             // 0x006084e0    8b8120010000
                         ret                                                              // 0x006084e6    c3
                         nop                                                              // 0x006084e7    90
                         nop                                                              // 0x006084e8    90
                         nop                                                              // 0x006084e9    90
                         nop                                                              // 0x006084ea    90
                         nop                                                              // 0x006084eb    90
                         nop                                                              // 0x006084ec    90
                         nop                                                              // 0x006084ed    90
                         nop                                                              // 0x006084ee    90
                         nop                                                              // 0x006084ef    90
?GetBaseInfo@GMobileStaticInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006084f0    8b442404
                         mov                dword ptr [eax], 0x0000003d                   // 0x006084f4    c7003d000000
                         mov                eax, 0x00d3a6d8                               // 0x006084fa    b8d8a6d300
                         ret                0x0004                                        // 0x006084ff    c20400
                         nop                                                              // 0x00608502    90
                         nop                                                              // 0x00608503    90
                         nop                                                              // 0x00608504    90
                         nop                                                              // 0x00608505    90
                         nop                                                              // 0x00608506    90
                         nop                                                              // 0x00608507    90
                         nop                                                              // 0x00608508    90
                         nop                                                              // 0x00608509    90
                         nop                                                              // 0x0060850a    90
                         nop                                                              // 0x0060850b    90
                         nop                                                              // 0x0060850c    90
                         nop                                                              // 0x0060850d    90
                         nop                                                              // 0x0060850e    90
                         nop                                                              // 0x0060850f    90
.Lbl_addr_0x00608510:    push               0x00608520                                    // 0x00608510    6820856000
                         call               _atexit                                       // 0x00608515    e877d21b00
                         pop                ecx                                           // 0x0060851a    59
                         ret                                                              // 0x0060851b    c3
                         nop                                                              // 0x0060851c    90
                         nop                                                              // 0x0060851d    90
                         nop                                                              // 0x0060851e    90
                         nop                                                              // 0x0060851f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3746d0]          // 0x00608520    8a0dd0a6d300
                         mov                al, 0x01                                      // 0x00608526    b001
                         test               al, cl                                        // 0x00608528    84c8
                         {disp8} jne        .Lbl_addr_0x00608552                          // 0x0060852a    7526
                         push               esi                                           // 0x0060852c    56
                         or.s               cl, al                                        // 0x0060852d    0ac8
                         push               edi                                           // 0x0060852f    57
                         {disp32} mov       byte ptr [data_bytes + 0x3746d0], cl          // 0x00608530    880dd0a6d300
                         mov                esi, 0x00d3ee54                               // 0x00608536    be54eed300
                         mov                edi, 0x0000003d                               // 0x0060853b    bf3d000000
.Lbl_addr_0x00608540:    sub                esi, 0x0000012c                               // 0x00608540    81ee2c010000
                         mov.s              ecx, esi                                      // 0x00608546    8bce
                         call               ??1Base@@UAE@XZ                               // 0x00608548    e813e4e2ff
                         dec                edi                                           // 0x0060854d    4f
                         {disp8} jne        .Lbl_addr_0x00608540                          // 0x0060854e    75f0
                         pop                edi                                           // 0x00608550    5f
                         pop                esi                                           // 0x00608551    5e
.Lbl_addr_0x00608552:    ret                                                              // 0x00608552    c3
                         nop                                                              // 0x00608553    90
                         nop                                                              // 0x00608554    90
                         nop                                                              // 0x00608555    90
                         nop                                                              // 0x00608556    90
                         nop                                                              // 0x00608557    90
                         nop                                                              // 0x00608558    90
                         nop                                                              // 0x00608559    90
                         nop                                                              // 0x0060855a    90
                         nop                                                              // 0x0060855b    90
                         nop                                                              // 0x0060855c    90
                         nop                                                              // 0x0060855d    90
                         nop                                                              // 0x0060855e    90
                         nop                                                              // 0x0060855f    90
??_GGMobileStaticInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x00608560    56
                         mov.s              esi, ecx                                      // 0x00608561    8bf1
                         call               ??1Base@@UAE@XZ                               // 0x00608563    e8f8e3e2ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00608568    f644240801
                         {disp8} je         .Lbl_addr_0x0060857d                          // 0x0060856d    740e
                         push               0x0000012c                                    // 0x0060856f    682c010000
                         push               esi                                           // 0x00608574    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00608575    e8f6e3e2ff
                         add                esp, 0x08                                     // 0x0060857a    83c408
.Lbl_addr_0x0060857d:    mov.s              eax, esi                                      // 0x0060857d    8bc6
                         pop                esi                                           // 0x0060857f    5e
                         ret                0x0004                                        // 0x00608580    c20400
                         nop                                                              // 0x00608583    90
                         nop                                                              // 0x00608584    90
                         nop                                                              // 0x00608585    90
                         nop                                                              // 0x00608586    90
                         nop                                                              // 0x00608587    90
                         nop                                                              // 0x00608588    90
                         nop                                                              // 0x00608589    90
                         nop                                                              // 0x0060858a    90
                         nop                                                              // 0x0060858b    90
                         nop                                                              // 0x0060858c    90
                         nop                                                              // 0x0060858d    90
                         nop                                                              // 0x0060858e    90
                         nop                                                              // 0x0060858f    90
?Load@MobileStatic@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00608590    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00608591    8b742408
                         push               edi                                           // 0x00608595    57
                         mov.s              edi, ecx                                      // 0x00608596    8bf9
                         push               esi                                           // 0x00608598    56
                         call               ?Load@MultiMapFixed@@UAEIAAVGameOSFile@@@Z       // 0x00608599    e8726df2ff
                         test               eax, eax                                      // 0x0060859e    85c0
                         {disp32} je        .Lbl_addr_0x0060863b                          // 0x006085a0    0f8495000000
                         push               ebx                                           // 0x006085a6    53
                         {disp8} lea        eax, dword ptr [edi + 0x7c]                   // 0x006085a7    8d477c
                         push               eax                                           // 0x006085aa    50
                         mov.s              ecx, esi                                      // 0x006085ab    8bce
                         call               ?ReadPtr@GameOSFile@@QAEXPAPAVGameThing@@@Z        // 0x006085ad    e8ce9bf5ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x006085b2    a194c9be00
                         test               eax, eax                                      // 0x006085b7    85c0
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x006085b9    8d9f80000000
                         {disp8} je         .Lbl_addr_0x006085f1                          // 0x006085bf    7430
                         push               0x0                                           // 0x006085c1    6a00
                         push               0x4                                           // 0x006085c3    6a04
                         push               ebx                                           // 0x006085c5    53
                         mov.s              ecx, esi                                      // 0x006085c6    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x006085c8    e813431b00
                         cmp                eax, 0x03                                     // 0x006085cd    83f803
                         {disp8} jne        .Lbl_addr_0x006085dc                          // 0x006085d0    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006085d2    c70594c9be0000000000
.Lbl_addr_0x006085dc:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x006085dc    8b8614020000
                         xor.s              ecx, ecx                                      // 0x006085e2    33c9
                         mov                cl, byte ptr [ebx]                            // 0x006085e4    8a0b
                         add                ecx, 0x4                                      // 0x006085e6    83c104
                         add.s              eax, ecx                                      // 0x006085e9    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x006085eb    898614020000
.Lbl_addr_0x006085f1:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x006085f1    a194c9be00
                         add                edi, 0x00000084                               // 0x006085f6    81c784000000
                         test               eax, eax                                      // 0x006085fc    85c0
                         pop                ebx                                           // 0x006085fe    5b
                         {disp8} je         .Lbl_addr_0x00608631                          // 0x006085ff    7430
                         push               0x0                                           // 0x00608601    6a00
                         push               0x4                                           // 0x00608603    6a04
                         push               edi                                           // 0x00608605    57
                         mov.s              ecx, esi                                      // 0x00608606    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00608608    e8d3421b00
                         cmp                eax, 0x03                                     // 0x0060860d    83f803
                         {disp8} jne        .Lbl_addr_0x0060861c                          // 0x00608610    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00608612    c70594c9be0000000000
.Lbl_addr_0x0060861c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0060861c    8b8614020000
                         xor.s              edx, edx                                      // 0x00608622    33d2
                         mov                dl, byte ptr [edi]                            // 0x00608624    8a17
                         add                edx, 0x04                                     // 0x00608626    83c204
                         add.s              eax, edx                                      // 0x00608629    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0060862b    898614020000
.Lbl_addr_0x00608631:    pop                edi                                           // 0x00608631    5f
                         mov                eax, 0x00000001                               // 0x00608632    b801000000
                         pop                esi                                           // 0x00608637    5e
                         ret                0x0004                                        // 0x00608638    c20400
.Lbl_addr_0x0060863b:    pop                edi                                           // 0x0060863b    5f
                         xor.s              eax, eax                                      // 0x0060863c    33c0
                         pop                esi                                           // 0x0060863e    5e
                         ret                0x0004                                        // 0x0060863f    c20400
                         nop                                                              // 0x00608642    90
                         nop                                                              // 0x00608643    90
                         nop                                                              // 0x00608644    90
                         nop                                                              // 0x00608645    90
                         nop                                                              // 0x00608646    90
                         nop                                                              // 0x00608647    90
                         nop                                                              // 0x00608648    90
                         nop                                                              // 0x00608649    90
                         nop                                                              // 0x0060864a    90
                         nop                                                              // 0x0060864b    90
                         nop                                                              // 0x0060864c    90
                         nop                                                              // 0x0060864d    90
                         nop                                                              // 0x0060864e    90
                         nop                                                              // 0x0060864f    90
?Save@MobileStatic@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00608650    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00608651    8b742408
                         push               edi                                           // 0x00608655    57
                         mov.s              edi, ecx                                      // 0x00608656    8bf9
                         push               esi                                           // 0x00608658    56
                         call               ?Save@MultiMapFixed@@UAEIAAVGameOSFile@@@Z    // 0x00608659    e8f26bf2ff
                         test               eax, eax                                      // 0x0060865e    85c0
                         {disp32} je        .Lbl_addr_0x006086fb                          // 0x00608660    0f8495000000
                         {disp8} mov        eax, dword ptr [edi + 0x7c]                   // 0x00608666    8b477c
                         push               eax                                           // 0x00608669    50
                         mov.s              ecx, esi                                      // 0x0060866a    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0060866c    e89f97f5ff
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00608671    a190c9be00
                         test               eax, eax                                      // 0x00608676    85c0
                         {disp8} je         .Lbl_addr_0x006086f1                          // 0x00608678    7477
                         push               ebx                                           // 0x0060867a    53
                         push               0x0                                           // 0x0060867b    6a00
                         push               0x4                                           // 0x0060867d    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x0060867f    8d9f80000000
                         push               ebx                                           // 0x00608685    53
                         mov.s              ecx, esi                                      // 0x00608686    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x00608688    e893421b00
                         cmp                eax, 0x03                                     // 0x0060868d    83f803
                         {disp8} jne        .Lbl_addr_0x0060869c                          // 0x00608690    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00608692    c70590c9be0000000000
.Lbl_addr_0x0060869c:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060869c    8b9614020000
                         xor.s              ecx, ecx                                      // 0x006086a2    33c9
                         mov                cl, byte ptr [ebx]                            // 0x006086a4    8a0b
                         pop                ebx                                           // 0x006086a6    5b
                         add                ecx, 0x4                                      // 0x006086a7    83c104
                         add.s              edx, ecx                                      // 0x006086aa    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x006086ac    899614020000
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x006086b2    a190c9be00
                         test               eax, eax                                      // 0x006086b7    85c0
                         {disp8} je         .Lbl_addr_0x006086f1                          // 0x006086b9    7436
                         push               0x0                                           // 0x006086bb    6a00
                         push               0x4                                           // 0x006086bd    6a04
                         add                edi, 0x00000084                               // 0x006086bf    81c784000000
                         push               edi                                           // 0x006086c5    57
                         mov.s              ecx, esi                                      // 0x006086c6    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x006086c8    e853421b00
                         cmp                eax, 0x03                                     // 0x006086cd    83f803
                         {disp8} jne        .Lbl_addr_0x006086dc                          // 0x006086d0    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x006086d2    c70590c9be0000000000
.Lbl_addr_0x006086dc:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x006086dc    8b8614020000
                         xor.s              edx, edx                                      // 0x006086e2    33d2
                         mov                dl, byte ptr [edi]                            // 0x006086e4    8a17
                         add                edx, 0x04                                     // 0x006086e6    83c204
                         add.s              eax, edx                                      // 0x006086e9    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x006086eb    898614020000
.Lbl_addr_0x006086f1:    pop                edi                                           // 0x006086f1    5f
                         mov                eax, 0x00000001                               // 0x006086f2    b801000000
                         pop                esi                                           // 0x006086f7    5e
                         ret                0x0004                                        // 0x006086f8    c20400
.Lbl_addr_0x006086fb:    pop                edi                                           // 0x006086fb    5f
                         xor.s              eax, eax                                      // 0x006086fc    33c0
                         pop                esi                                           // 0x006086fe    5e
                         ret                0x0004                                        // 0x006086ff    c20400
                         nop                                                              // 0x00608702    90
                         nop                                                              // 0x00608703    90
                         nop                                                              // 0x00608704    90
                         nop                                                              // 0x00608705    90
                         nop                                                              // 0x00608706    90
                         nop                                                              // 0x00608707    90
                         nop                                                              // 0x00608708    90
                         nop                                                              // 0x00608709    90
                         nop                                                              // 0x0060870a    90
                         nop                                                              // 0x0060870b    90
                         nop                                                              // 0x0060870c    90
                         nop                                                              // 0x0060870d    90
                         nop                                                              // 0x0060870e    90
                         nop                                                              // 0x0060870f    90
@__ct__12MobileStaticFRC9MapCoordsPC17GMobileStaticInfoP6Objectff@28:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00608710    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00608714    8b542408
                         push               esi                                           // 0x00608718    56
                         push               0x0                                           // 0x00608719    6a00
                         push               0x0                                           // 0x0060871b    6a00
                         push               eax                                           // 0x0060871d    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0060871e    8b442414
                         mov.s              esi, ecx                                      // 0x00608722    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00608724    8b4c2420
                         push               ecx                                           // 0x00608728    51
                         push               edx                                           // 0x00608729    52
                         push               eax                                           // 0x0060872a    50
                         mov.s              ecx, esi                                      // 0x0060872b    8bce
                         call               @__ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi@32                          // 0x0060872d    e8ae5af2ff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00608732    8b4c2410
                         mov                dword ptr [esi], 0x008e80b4                   // 0x00608736    c706b4808e00
                         {disp8} mov        dword ptr [esi + 0x7c], ecx                   // 0x0060873c    894e7c
                         mov.s              eax, esi                                      // 0x0060873f    8bc6
                         pop                esi                                           // 0x00608741    5e
                         ret                0x0014                                        // 0x00608742    c21400
                         nop                                                              // 0x00608745    90
                         nop                                                              // 0x00608746    90
                         nop                                                              // 0x00608747    90
                         nop                                                              // 0x00608748    90
                         nop                                                              // 0x00608749    90
                         nop                                                              // 0x0060874a    90
                         nop                                                              // 0x0060874b    90
                         nop                                                              // 0x0060874c    90
                         nop                                                              // 0x0060874d    90
                         nop                                                              // 0x0060874e    90
                         nop                                                              // 0x0060874f    90
_jmp_addr_0x00608750:    mov                dword ptr [ecx], 0x008e80b4                   // 0x00608750    c701b4808e00
                         {disp32} jmp       _jmp_addr_0x0052e280                          // 0x00608756    e9255bf2ff
                         nop                                                              // 0x0060875b    90
                         nop                                                              // 0x0060875c    90
                         nop                                                              // 0x0060875d    90
                         nop                                                              // 0x0060875e    90
                         nop                                                              // 0x0060875f    90
?ToBeDeleted@MobileStatic@@UAEXH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00608760    8b442404
                         push               eax                                           // 0x00608764    50
                         call               ?ToBeDeleted@MultiMapFixed@@UAEXH@Z           // 0x00608765    e8465bf2ff
                         ret                0x0004                                        // 0x0060876a    c20400
                         nop                                                              // 0x0060876d    90
                         nop                                                              // 0x0060876e    90
                         nop                                                              // 0x0060876f    90
_jmp_addr_0x00608770:    push               esi                                           // 0x00608770    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00608771    8b74240c
                         cmp                esi, 0x00d3b038                               // 0x00608775    81fe38b0d300
                         push               edi                                           // 0x0060877b    57
                         {disp8} jne        .Lbl_addr_0x0060879d                          // 0x0060877c    751f
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0060877e    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00608782    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00608786    8b54240c
                         push               eax                                           // 0x0060878a    50
                         push               ecx                                           // 0x0060878b    51
                         push               0x42c80000                                    // 0x0060878c    680000c842
                         push               edx                                           // 0x00608791    52
                         call               _jmp_addr_0x00439850                          // 0x00608792    e8b910e3ff
                         add                esp, 0x10                                     // 0x00608797    83c410
                         pop                edi                                           // 0x0060879a    5f
                         pop                esi                                           // 0x0060879b    5e
                         ret                                                              // 0x0060879c    c3
.Lbl_addr_0x0060879d:    cmp                dword ptr [esi + 0x00000128], 0x02            // 0x0060879d    83be2801000002
                         {disp8} jne        .Lbl_addr_0x006087e1                          // 0x006087a4    753b
                         push               0x58                                          // 0x006087a6    6a58
                         push               0x00bf4280                                    // 0x006087a8    688042bf00
                         push               0x00000094                                    // 0x006087ad    6894000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x006087b2    e839dfe2ff
                         add                esp, 0x0c                                     // 0x006087b7    83c40c
                         test               eax, eax                                      // 0x006087ba    85c0
                         {disp8} je         .Lbl_addr_0x006087e9                          // 0x006087bc    742b
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x006087be    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006087c2    8b54241c
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006087c6    8b7c240c
                         push               ecx                                           // 0x006087ca    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006087cb    8b4c241c
                         push               edx                                           // 0x006087cf    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006087d0    8b54241c
                         push               ecx                                           // 0x006087d4    51
                         push               edx                                           // 0x006087d5    52
                         push               esi                                           // 0x006087d6    56
                         push               edi                                           // 0x006087d7    57
                         mov.s              ecx, eax                                      // 0x006087d8    8bc8
                         call               @__ct__4RockFRC9MapCoordsPC17GMobileStaticInfoP6ObjectP7GPlayerff@32                          // 0x006087da    e891e70d00
                         {disp8} jmp        .Lbl_addr_0x00608822                          // 0x006087df    eb41
.Lbl_addr_0x006087e1:    cmp                esi, 0x00d3ade0                               // 0x006087e1    81fee0add300
                         {disp8} jne        .Lbl_addr_0x006087ee                          // 0x006087e7    7505
.Lbl_addr_0x006087e9:    pop                edi                                           // 0x006087e9    5f
                         xor.s              eax, eax                                      // 0x006087ea    33c0
                         pop                esi                                           // 0x006087ec    5e
                         ret                                                              // 0x006087ed    c3
.Lbl_addr_0x006087ee:    push               0x61                                          // 0x006087ee    6a61
                         push               0x00bf4280                                    // 0x006087f0    688042bf00
                         push               0x00000088                                    // 0x006087f5    6888000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x006087fa    e8f1dee2ff
                         add                esp, 0x0c                                     // 0x006087ff    83c40c
                         test               eax, eax                                      // 0x00608802    85c0
                         {disp8} je         .Lbl_addr_0x006087e9                          // 0x00608804    74e3
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00608806    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0060880a    8b54241c
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0060880e    8b7c240c
                         push               ecx                                           // 0x00608812    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00608813    8b4c2418
                         push               edx                                           // 0x00608817    52
                         push               ecx                                           // 0x00608818    51
                         push               esi                                           // 0x00608819    56
                         push               edi                                           // 0x0060881a    57
                         mov.s              ecx, eax                                      // 0x0060881b    8bc8
                         call               @__ct__12MobileStaticFRC9MapCoordsPC17GMobileStaticInfoP6Objectff@28                          // 0x0060881d    e8eefeffff
.Lbl_addr_0x00608822:    mov.s              esi, eax                                      // 0x00608822    8bf0
                         test               esi, esi                                      // 0x00608824    85f6
                         {disp8} je         .Lbl_addr_0x00608833                          // 0x00608826    740b
                         mov                edx, dword ptr [esi]                          // 0x00608828    8b16
                         push               edi                                           // 0x0060882a    57
                         mov.s              ecx, esi                                      // 0x0060882b    8bce
                         call               dword ptr [edx + 0x658]                       // 0x0060882d    ff9258060000
.Lbl_addr_0x00608833:    pop                edi                                           // 0x00608833    5f
                         mov.s              eax, esi                                      // 0x00608834    8bc6
                         pop                esi                                           // 0x00608836    5e
                         ret                                                              // 0x00608837    c3
                         nop                                                              // 0x00608838    90
                         nop                                                              // 0x00608839    90
                         nop                                                              // 0x0060883a    90
                         nop                                                              // 0x0060883b    90
                         nop                                                              // 0x0060883c    90
                         nop                                                              // 0x0060883d    90
                         nop                                                              // 0x0060883e    90
                         nop                                                              // 0x0060883f    90
_jmp_addr_0x00608840:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00608840    8b4c2408
                         push               ebx                                           // 0x00608844    53
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00608845    8b5c241c
                         push               esi                                           // 0x00608849    56
                         xor.s              eax, eax                                      // 0x0060884a    33c0
                         cmp                ecx, 0x00d3ade0                               // 0x0060884c    81f9e0add300
                         push               edi                                           // 0x00608852    57
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x00608853    8b7c242c
                         {disp8} jne        .Lbl_addr_0x00608869                          // 0x00608857    7510
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00608859    8b442410
                         push               ecx                                           // 0x0060885d    51
                         push               eax                                           // 0x0060885e    50
                         call               _jmp_addr_0x00609340                          // 0x0060885f    e8dc0a0000
                         add                esp, 0x08                                     // 0x00608864    83c408
                         {disp8} jmp        .Lbl_addr_0x0060888b                          // 0x00608867    eb22
.Lbl_addr_0x00608869:    cmp                ecx, 0x00d3af0c                               // 0x00608869    81f90cafd300
                         {disp8} je         .Lbl_addr_0x006088a9                          // 0x0060886f    7438
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00608871    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00608875    8b442418
                         push               edi                                           // 0x00608879    57
                         push               ebx                                           // 0x0060887a    53
                         push               edx                                           // 0x0060887b    52
                         push               eax                                           // 0x0060887c    50
                         push               ecx                                           // 0x0060887d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0060887e    8b4c2424
                         push               ecx                                           // 0x00608882    51
                         call               _jmp_addr_0x00608770                          // 0x00608883    e8e8feffff
                         add                esp, 0x18                                     // 0x00608888    83c418
.Lbl_addr_0x0060888b:    mov.s              esi, eax                                      // 0x0060888b    8bf0
                         test               esi, esi                                      // 0x0060888d    85f6
                         {disp8} je         .Lbl_addr_0x006088a7                          // 0x0060888f    7416
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00608891    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00608895    8b4c2420
                         mov                edx, dword ptr [esi]                          // 0x00608899    8b16
                         push               edi                                           // 0x0060889b    57
                         push               eax                                           // 0x0060889c    50
                         push               ebx                                           // 0x0060889d    53
                         push               ecx                                           // 0x0060889e    51
                         mov.s              ecx, esi                                      // 0x0060889f    8bce
                         call               dword ptr [edx + 0x518]                       // 0x006088a1    ff9218050000
.Lbl_addr_0x006088a7:    mov.s              eax, esi                                      // 0x006088a7    8bc6
.Lbl_addr_0x006088a9:    pop                edi                                           // 0x006088a9    5f
                         pop                esi                                           // 0x006088aa    5e
                         pop                ebx                                           // 0x006088ab    5b
                         ret                                                              // 0x006088ac    c3
                         nop                                                              // 0x006088ad    90
                         nop                                                              // 0x006088ae    90
                         nop                                                              // 0x006088af    90
?GetPlayer@MobileStatic@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x7c]                   // 0x006088b0    8b497c
                         test               ecx, ecx                                      // 0x006088b3    85c9
                         {disp8} je         .Lbl_addr_0x006088bc                          // 0x006088b5    7405
                         mov                eax, dword ptr [ecx]                          // 0x006088b7    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                        // 0x006088b9    ff601c
.Lbl_addr_0x006088bc:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006088bc    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006088c2    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x006088c4    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006088ca    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006088cd    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006088d0    8d0450
                         shl                eax, 5                                        // 0x006088d3    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x006088d6    8d440818
                         ret                                                              // 0x006088da    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x006088db    e8198fdfff
?SaveObject@MobileStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         push               ebp                                           // 0x006088e0    55
                         mov.s              ebp, esp                                      // 0x006088e1    8bec
                         and                esp, 0xfffffff8                               // 0x006088e3    83e4f8
                         sub                esp, 0x0000014c                               // 0x006088e6    81ec4c010000
                         push               ebx                                           // 0x006088ec    53
                         push               esi                                           // 0x006088ed    56
                         push               edi                                           // 0x006088ee    57
                         mov.s              esi, ecx                                      // 0x006088ef    8bf1
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x006088f1    e8fa75f6ff
                         test               eax, eax                                      // 0x006088f6    85c0
                         {disp32} je        .Lbl_addr_0x00608ab2                          // 0x006088f8    0f84b4010000
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x006088fe    8b450c
                         test               eax, eax                                      // 0x00608901    85c0
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x00608903    8d5e14
                         {disp8} je         .Lbl_addr_0x00608917                          // 0x00608906    740f
                         push               eax                                           // 0x00608908    50
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00608909    8d442424
                         push               eax                                           // 0x0060890d    50
                         mov.s              ecx, ebx                                      // 0x0060890e    8bcb
                         call               _jmp_addr_0x006055c0                          // 0x00608910    e8abccffff
                         {disp8} jmp        .Lbl_addr_0x00608919                          // 0x00608915    eb02
.Lbl_addr_0x00608917:    mov.s              eax, ebx                                      // 0x00608917    8bc3
.Lbl_addr_0x00608919:    mov                ecx, dword ptr [eax]                          // 0x00608919    8b08
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0060891b    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060891f    8b5004
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00608922    89542418
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00608926    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00608929    8944241c
                         {disp8} mov        eax, dword ptr [esi + 0x7c]                   // 0x0060892d    8b467c
                         test               eax, eax                                      // 0x00608930    85c0
                         {disp32} jne       .Lbl_addr_0x00608ab0                          // 0x00608932    0f8578010000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00608938    8b4c241c
                         mov                edx, dword ptr [esi]                          // 0x0060893c    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x0060893e    8b7e28
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00608941    894c2410
                         mov.s              ecx, esi                                      // 0x00608945    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00608947    ff9220010000
                         mov                eax, dword ptr [esi]                          // 0x0060894d    8b06
                         sub                esp, 0x08                                     // 0x0060894f    83ec08
                         mov.s              ecx, esi                                      // 0x00608952    8bce
                         fstp               qword ptr [esp]                               // 0x00608954    dd1c24
                         call               dword ptr [eax + 0x50c]                       // 0x00608957    ff900c050000
                         mov                edx, dword ptr [esi]                          // 0x0060895d    8b16
                         sub                esp, 0x08                                     // 0x0060895f    83ec08
                         mov.s              ecx, esi                                      // 0x00608962    8bce
                         fstp               qword ptr [esp]                               // 0x00608964    dd1c24
                         call               dword ptr [edx + 0x508]                       // 0x00608967    ff9208050000
                         mov                eax, dword ptr [esi]                          // 0x0060896d    8b06
                         sub                esp, 0x08                                     // 0x0060896f    83ec08
                         mov.s              ecx, esi                                      // 0x00608972    8bce
                         fstp               qword ptr [esp]                               // 0x00608974    dd1c24
                         call               dword ptr [eax + 0x504]                       // 0x00608977    ff9004050000
                         sub                edi, 0x00d3a6d8                               // 0x0060897d    81efd8a6d300
                         mov                eax, 0x1b4e81b5                               // 0x00608983    b8b5814e1b
                         imul               edi                                           // 0x00608988    f7ef
                         sar                edx, 5                                        // 0x0060898a    c1fa05
                         sub                esp, 0x08                                     // 0x0060898d    83ec08
                         mov.s              ecx, edx                                      // 0x00608990    8bca
                         sub                esp, 0x08                                     // 0x00608992    83ec08
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x00608995    dd5c2408
                         shr                ecx, 0x1f                                     // 0x00608999    c1e91f
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0060899c    d9442438
                         add.s              edx, ecx                                      // 0x006089a0    03d1
                         fstp               qword ptr [esp]                               // 0x006089a2    dd1c24
                         push               edx                                           // 0x006089a5    52
                         {disp32} lea       edx, dword ptr [esp + 0x00000120]             // 0x006089a6    8d942420010000
                         push               edx                                           // 0x006089ad    52
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x006089ae    8d4c2444
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x006089b2    e8c99effff
                         push               eax                                           // 0x006089b7    50
                         push               0x2a                                          // 0x006089b8    6a2a
                         call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x006089ba    e871c71000
                         add                esp, 0x04                                     // 0x006089bf    83c404
                         push               eax                                           // 0x006089c2    50
                         {disp8} lea        eax, dword ptr [esp + 0x60]                   // 0x006089c3    8d442460
                         push               eax                                           // 0x006089c7    50
                         call               _sprintf                                      // 0x006089c8    e805ce1b00
                         or                 ecx, 0xffffffff                               // 0x006089cd    83c9ff
                         xor.s              eax, eax                                      // 0x006089d0    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x64]                   // 0x006089d2    8d7c2464
                         repne scasb                                                      // 0x006089d6    f2ae
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                   // 0x006089d8    8b7d08
                         not                ecx                                           // 0x006089db    f7d1
                         dec                ecx                                           // 0x006089dd    49
                         push               ecx                                           // 0x006089de    51
                         {disp8} lea        ecx, dword ptr [esp + 0x68]                   // 0x006089df    8d4c2468
                         push               ecx                                           // 0x006089e3    51
                         push               edi                                           // 0x006089e4    57
                         push               esi                                           // 0x006089e5    56
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x006089e6    e8250c1100
                         mov                edx, dword ptr [esi]                          // 0x006089eb    8b16
                         add                esp, 0x48                                     // 0x006089ed    83c448
                         mov.s              ecx, esi                                      // 0x006089f0    8bce
                         call               dword ptr [edx + 0x800]                       // 0x006089f2    ff9200080000
                         test               eax, eax                                      // 0x006089f8    85c0
                         {disp8} je         .Lbl_addr_0x00608a20                          // 0x006089fa    7424
                         mov                eax, dword ptr [esi]                          // 0x006089fc    8b06
                         mov.s              ecx, esi                                      // 0x006089fe    8bce
                         call               dword ptr [eax + 0x7fc]                       // 0x00608a00    ff90fc070000
                         test               eax, eax                                      // 0x00608a06    85c0
                         {disp8} je         .Lbl_addr_0x00608a20                          // 0x00608a08    7416
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x00608a0a    8b4d0c
                         mov                edx, dword ptr [esi]                          // 0x00608a0d    8b16
                         push               ecx                                           // 0x00608a0f    51
                         push               edi                                           // 0x00608a10    57
                         mov.s              ecx, esi                                      // 0x00608a11    8bce
                         call               dword ptr [edx + 0x7fc]                       // 0x00608a13    ff92fc070000
                         mov.s              ecx, eax                                      // 0x00608a19    8bc8
                         call               _jmp_addr_0x004269c0                          // 0x00608a1b    e8a0dfe1ff
.Lbl_addr_0x00608a20:    push               0x0                                           // 0x00608a20    6a00
                         push               0x009cd308                                    // 0x00608a22    6808d39c00
                         push               0x009c7f50                                    // 0x00608a27    68507f9c00
                         push               0x0                                           // 0x00608a2c    6a00
                         push               0x0                                           // 0x00608a2e    6a00
                         push               0x1c                                          // 0x00608a30    6a1c
                         mov.s              ecx, ebx                                      // 0x00608a32    8bcb
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00608a34    e887bbffff
                         push               eax                                           // 0x00608a39    50
                         call               ___RTDynamicCast                              // 0x00608a3a    e8dacf1b00
                         mov.s              edi, eax                                      // 0x00608a3f    8bf8
                         add                esp, 0x14                                     // 0x00608a41    83c414
                         test               edi, edi                                      // 0x00608a44    85ff
                         {disp8} je         .Lbl_addr_0x00608aa0                          // 0x00608a46    7458
.Lbl_addr_0x00608a48:    mov                eax, dword ptr [ebx]                          // 0x00608a48    8b03
                         cmp                eax, dword ptr [edi + 0x14]                   // 0x00608a4a    3b4714
                         {disp8} jne        .Lbl_addr_0x00608a79                          // 0x00608a4d    752a
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x00608a4f    8b4b04
                         cmp                ecx, dword ptr [edi + 0x18]                   // 0x00608a52    3b4f18
                         {disp8} jne        .Lbl_addr_0x00608a79                          // 0x00608a55    7522
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x00608a57    d94308
                         {disp8} fld        dword ptr [edi + 0x1c]                        // 0x00608a5a    d9471c
                         fcompp                                                           // 0x00608a5d    ded9
                         fnstsw             ax                                            // 0x00608a5f    dfe0
                         test               ah, 0x40                                      // 0x00608a61    f6c440
                         {disp8} je         .Lbl_addr_0x00608a79                          // 0x00608a64    7413
                         cmp.s              edi, esi                                      // 0x00608a66    3bfe
                         {disp8} je         .Lbl_addr_0x00608a79                          // 0x00608a68    740f
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x00608a6a    8b5628
                         cmp                edx, dword ptr [edi + 0x28]                   // 0x00608a6d    3b5728
                         {disp8} jne        .Lbl_addr_0x00608a79                          // 0x00608a70    7507
                         mov.s              ecx, edi                                      // 0x00608a72    8bcf
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x00608a74    e87774f6ff
.Lbl_addr_0x00608a79:    push               0x0                                           // 0x00608a79    6a00
                         push               0x009cd308                                    // 0x00608a7b    6808d39c00
                         push               0x009c7f50                                    // 0x00608a80    68507f9c00
                         push               0x0                                           // 0x00608a85    6a00
                         push               edi                                           // 0x00608a87    57
                         push               0x1c                                          // 0x00608a88    6a1c
                         mov.s              ecx, ebx                                      // 0x00608a8a    8bcb
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                          // 0x00608a8c    e82fbbffff
                         push               eax                                           // 0x00608a91    50
                         call               ___RTDynamicCast                              // 0x00608a92    e882cf1b00
                         mov.s              edi, eax                                      // 0x00608a97    8bf8
                         add                esp, 0x14                                     // 0x00608a99    83c414
                         test               edi, edi                                      // 0x00608a9c    85ff
                         {disp8} jne        .Lbl_addr_0x00608a48                          // 0x00608a9e    75a8
.Lbl_addr_0x00608aa0:    mov.s              ecx, esi                                      // 0x00608aa0    8bce
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x00608aa2    e84974f6ff
                         pop                edi                                           // 0x00608aa7    5f
                         pop                esi                                           // 0x00608aa8    5e
                         pop                ebx                                           // 0x00608aa9    5b
                         mov.s              esp, ebp                                      // 0x00608aaa    8be5
                         pop                ebp                                           // 0x00608aac    5d
                         ret                0x0008                                        // 0x00608aad    c20800
.Lbl_addr_0x00608ab0:    xor.s              eax, eax                                      // 0x00608ab0    33c0
.Lbl_addr_0x00608ab2:    pop                edi                                           // 0x00608ab2    5f
                         pop                esi                                           // 0x00608ab3    5e
                         pop                ebx                                           // 0x00608ab4    5b
                         mov.s              esp, ebp                                      // 0x00608ab5    8be5
                         pop                ebp                                           // 0x00608ab7    5d
                         ret                0x0008                                        // 0x00608ab8    c20800
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00608abb    e8398ddfff
?AddToRoutePlan@MobileStatic@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z:
                         push               esi                                           // 0x00608ac0    56
                         mov.s              esi, ecx                                      // 0x00608ac1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608ac3    8b06
                         call               dword ptr [eax + 0x3cc]                       // 0x00608ac5    ff90cc030000
                         test               eax, eax                                      // 0x00608acb    85c0
                         {disp8} je         .Lbl_addr_0x00608aee                          // 0x00608acd    741f
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00608acf    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00608ad3    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00608ad7    8b44240c
                         push               ecx                                           // 0x00608adb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00608adc    8b4c240c
                         push               edx                                           // 0x00608ae0    52
                         push               eax                                           // 0x00608ae1    50
                         push               ecx                                           // 0x00608ae2    51
                         mov.s              ecx, esi                                      // 0x00608ae3    8bce
                         call               ?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z                          // 0x00608ae5    e8a6fc0200
                         pop                esi                                           // 0x00608aea    5e
                         ret                0x0010                                        // 0x00608aeb    c21000
.Lbl_addr_0x00608aee:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00608aee    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00608af2    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00608af6    8b4c240c
                         push               edx                                           // 0x00608afa    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00608afb    8b54240c
                         push               eax                                           // 0x00608aff    50
                         push               ecx                                           // 0x00608b00    51
                         push               edx                                           // 0x00608b01    52
                         mov.s              ecx, esi                                      // 0x00608b02    8bce
                         call               _jmp_addr_0x00638b00                          // 0x00608b04    e8f7ff0200
                         pop                esi                                           // 0x00608b09    5e
                         ret                0x0010                                        // 0x00608b0a    c21000
                         nop                                                              // 0x00608b0d    90
                         nop                                                              // 0x00608b0e    90
                         nop                                                              // 0x00608b0f    90
?GetCreatureBeliefType@MobileStatic@@UAEIXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00608b10    8b01
                         call               dword ptr [eax + 0x1f0]                       // 0x00608b12    ff90f0010000
                         neg                eax                                           // 0x00608b18    f7d8
                         sbb.s              eax, eax                                      // 0x00608b1a    1bc0
                         and                eax, 0xfffffff9                               // 0x00608b1c    83e0f9
                         add                eax, 0x13                                     // 0x00608b1f    83c013
                         ret                                                              // 0x00608b22    c3
                         nop                                                              // 0x00608b23    90
                         nop                                                              // 0x00608b24    90
                         nop                                                              // 0x00608b25    90
                         nop                                                              // 0x00608b26    90
                         nop                                                              // 0x00608b27    90
                         nop                                                              // 0x00608b28    90
                         nop                                                              // 0x00608b29    90
                         nop                                                              // 0x00608b2a    90
                         nop                                                              // 0x00608b2b    90
                         nop                                                              // 0x00608b2c    90
                         nop                                                              // 0x00608b2d    90
                         nop                                                              // 0x00608b2e    90
                         nop                                                              // 0x00608b2f    90
?ApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z:
                         push               ebx                                           // 0x00608b30    53
                         push               esi                                           // 0x00608b31    56
                         mov.s              esi, ecx                                      // 0x00608b32    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608b34    8b06
                         push               edi                                           // 0x00608b36    57
                         call               dword ptr [eax + 0x3cc]                       // 0x00608b37    ff90cc030000
                         test               eax, eax                                      // 0x00608b3d    85c0
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00608b3f    8b5c2410
                         {disp8} je         .Lbl_addr_0x00608b89                          // 0x00608b43    7444
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00608b45    8d4e14
                         call               _jmp_addr_0x00605250                          // 0x00608b48    e803c7ffff
                         mov.s              edi, eax                                      // 0x00608b4d    8bf8
                         test               edi, edi                                      // 0x00608b4f    85ff
                         {disp8} je         .Lbl_addr_0x00608b89                          // 0x00608b51    7436
                         mov                edx, dword ptr [esi]                          // 0x00608b53    8b16
                         push               ebp                                           // 0x00608b55    55
                         mov                ebp, dword ptr [edi]                          // 0x00608b56    8b2f
                         mov.s              ecx, esi                                      // 0x00608b58    8bce
                         call               dword ptr [edx + 0x690]                       // 0x00608b5a    ff9290060000
                         push               eax                                           // 0x00608b60    50
                         mov.s              ecx, edi                                      // 0x00608b61    8bcf
                         call               dword ptr [ebp + 0x680]                       // 0x00608b63    ff9580060000
                         test               eax, eax                                      // 0x00608b69    85c0
                         pop                ebp                                           // 0x00608b6b    5d
                         {disp8} je         .Lbl_addr_0x00608b89                          // 0x00608b6c    741b
                         mov                eax, dword ptr [edi]                          // 0x00608b6e    8b07
                         push               ebx                                           // 0x00608b70    53
                         push               esi                                           // 0x00608b71    56
                         mov.s              ecx, edi                                      // 0x00608b72    8bcf
                         call               dword ptr [eax + 0x684]                       // 0x00608b74    ff9084060000
                         test               eax, eax                                      // 0x00608b7a    85c0
                         {disp8} je         .Lbl_addr_0x00608b89                          // 0x00608b7c    740b
                         pop                edi                                           // 0x00608b7e    5f
                         pop                esi                                           // 0x00608b7f    5e
                         mov                eax, 0x00000003                               // 0x00608b80    b803000000
                         pop                ebx                                           // 0x00608b85    5b
                         ret                0x000c                                        // 0x00608b86    c20c00
.Lbl_addr_0x00608b89:    mov                edx, dword ptr [esi]                          // 0x00608b89    8b16
                         push               0x0                                           // 0x00608b8b    6a00
                         push               ebx                                           // 0x00608b8d    53
                         mov.s              ecx, esi                                      // 0x00608b8e    8bce
                         call               dword ptr [edx + 0x758]                       // 0x00608b90    ff9258070000
                         pop                edi                                           // 0x00608b96    5f
                         pop                esi                                           // 0x00608b97    5e
                         mov                eax, 0x00000016                               // 0x00608b98    b816000000
                         pop                ebx                                           // 0x00608b9d    5b
                         ret                0x000c                                        // 0x00608b9e    c20c00
                         nop                                                              // 0x00608ba1    90
                         nop                                                              // 0x00608ba2    90
                         nop                                                              // 0x00608ba3    90
                         nop                                                              // 0x00608ba4    90
                         nop                                                              // 0x00608ba5    90
                         nop                                                              // 0x00608ba6    90
                         nop                                                              // 0x00608ba7    90
                         nop                                                              // 0x00608ba8    90
                         nop                                                              // 0x00608ba9    90
                         nop                                                              // 0x00608baa    90
                         nop                                                              // 0x00608bab    90
                         nop                                                              // 0x00608bac    90
                         nop                                                              // 0x00608bad    90
                         nop                                                              // 0x00608bae    90
                         nop                                                              // 0x00608baf    90
?ValidToApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00608bb0    8b4128
                         cmp                dword ptr [eax + 0x00000128], 0x31            // 0x00608bb3    83b82801000031
                         {disp8} jne        .Lbl_addr_0x00608bff                          // 0x00608bba    7543
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00608bbc    8b4c2408
                         push               0x0                                           // 0x00608bc0    6a00
                         push               0x009c9560                                    // 0x00608bc2    6860959c00
                         push               0x009c7f50                                    // 0x00608bc7    68507f9c00
                         push               0x0                                           // 0x00608bcc    6a00
                         push               ecx                                           // 0x00608bce    51
                         call               ___RTDynamicCast                              // 0x00608bcf    e845ce1b00
                         add                esp, 0x14                                     // 0x00608bd4    83c414
                         test               eax, eax                                      // 0x00608bd7    85c0
                         {disp8} je         .Lbl_addr_0x00608c29                          // 0x00608bd9    744e
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x00608bdb    8b4828
                         sub                ecx, 0x00c54d30                               // 0x00608bde    81e9304dc500
                         mov                eax, 0x1b4e81b5                               // 0x00608be4    b8b5814e1b
                         imul               ecx                                           // 0x00608be9    f7e9
                         sar                edx, 5                                        // 0x00608beb    c1fa05
                         mov.s              eax, edx                                      // 0x00608bee    8bc2
                         shr                eax, 0x1f                                     // 0x00608bf0    c1e81f
                         add.s              edx, eax                                      // 0x00608bf3    03d0
                         cmp                edx, 0x01                                     // 0x00608bf5    83fa01
                         {disp8} jne        .Lbl_addr_0x00608c29                          // 0x00608bf8    752f
                         mov.s              eax, edx                                      // 0x00608bfa    8bc2
                         ret                0x0008                                        // 0x00608bfc    c20800
.Lbl_addr_0x00608bff:    mov                edx, dword ptr [ecx]                          // 0x00608bff    8b11
                         call               dword ptr [edx + 0x3cc]                       // 0x00608c01    ff92cc030000
                         test               eax, eax                                      // 0x00608c07    85c0
                         {disp8} je         .Lbl_addr_0x00608c29                          // 0x00608c09    741e
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00608c0b    8b4c2408
                         test               ecx, ecx                                      // 0x00608c0f    85c9
                         {disp8} je         .Lbl_addr_0x00608c29                          // 0x00608c11    7416
                         mov                eax, dword ptr [ecx]                          // 0x00608c13    8b01
                         push               0x1                                           // 0x00608c15    6a01
                         call               dword ptr [eax + 0x680]                       // 0x00608c17    ff9080060000
                         test               eax, eax                                      // 0x00608c1d    85c0
                         {disp8} je         .Lbl_addr_0x00608c29                          // 0x00608c1f    7408
                         mov                eax, 0x00000001                               // 0x00608c21    b801000000
                         ret                0x0008                                        // 0x00608c26    c20800
.Lbl_addr_0x00608c29:    xor.s              eax, eax                                      // 0x00608c29    33c0
                         ret                0x0008                                        // 0x00608c2b    c20800
                         nop                                                              // 0x00608c2e    90
                         nop                                                              // 0x00608c2f    90
?ApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z:
                         push               esi                                           // 0x00608c30    56
                         mov.s              esi, ecx                                      // 0x00608c31    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00608c33    8b4628
                         cmp                dword ptr [eax + 0x00000128], 0x31            // 0x00608c36    83b82801000031
                         push               edi                                           // 0x00608c3d    57
                         {disp8} jne        .Lbl_addr_0x00608c8d                          // 0x00608c3e    754d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00608c40    8b4c2410
                         push               0x0                                           // 0x00608c44    6a00
                         push               0x009c9560                                    // 0x00608c46    6860959c00
                         push               0x009c7f50                                    // 0x00608c4b    68507f9c00
                         push               0x0                                           // 0x00608c50    6a00
                         push               ecx                                           // 0x00608c52    51
                         call               ___RTDynamicCast                              // 0x00608c53    e8c1cd1b00
                         mov.s              edi, eax                                      // 0x00608c58    8bf8
                         add                esp, 0x14                                     // 0x00608c5a    83c414
                         test               edi, edi                                      // 0x00608c5d    85ff
                         {disp8} je         .Lbl_addr_0x00608cd7                          // 0x00608c5f    7476
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00608c61    8b4e28
                         mov                edx, dword ptr [ecx]                          // 0x00608c64    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x00608c66    ff522c
                         push               eax                                           // 0x00608c69    50
                         mov.s              ecx, edi                                      // 0x00608c6a    8bcf
                         call               _jmp_addr_0x00422d50                          // 0x00608c6c    e8dfa0e1ff
                         push               esi                                           // 0x00608c71    56
                         call               _jmp_addr_0x005e6540                          // 0x00608c72    e8c9d8fdff
                         mov                eax, dword ptr [esi]                          // 0x00608c77    8b06
                         add                esp, 0x04                                     // 0x00608c79    83c404
                         push               0x0                                           // 0x00608c7c    6a00
                         mov.s              ecx, esi                                      // 0x00608c7e    8bce
                         call               dword ptr [eax + 0xc]                         // 0x00608c80    ff500c
                         pop                edi                                           // 0x00608c83    5f
                         mov                eax, 0x00000003                               // 0x00608c84    b803000000
                         pop                esi                                           // 0x00608c89    5e
                         ret                0x000c                                        // 0x00608c8a    c20c00
.Lbl_addr_0x00608c8d:    mov                edx, dword ptr [esi]                          // 0x00608c8d    8b16
                         mov.s              ecx, esi                                      // 0x00608c8f    8bce
                         call               dword ptr [edx + 0x3cc]                       // 0x00608c91    ff92cc030000
                         test               eax, eax                                      // 0x00608c97    85c0
                         {disp8} je         .Lbl_addr_0x00608cd7                          // 0x00608c99    743c
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00608c9b    8b7c2410
                         test               edi, edi                                      // 0x00608c9f    85ff
                         {disp8} je         .Lbl_addr_0x00608cd7                          // 0x00608ca1    7434
                         mov                eax, dword ptr [edi]                          // 0x00608ca3    8b07
                         push               0x1                                           // 0x00608ca5    6a01
                         mov.s              ecx, edi                                      // 0x00608ca7    8bcf
                         call               dword ptr [eax + 0x680]                       // 0x00608ca9    ff9080060000
                         test               eax, eax                                      // 0x00608caf    85c0
                         {disp8} je         .Lbl_addr_0x00608cd7                          // 0x00608cb1    7424
                         test               byte ptr [esi + 0x25], 0x40                   // 0x00608cb3    f6462540
                         {disp8} jne        .Lbl_addr_0x00608cd7                          // 0x00608cb7    751e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00608cb9    8b44240c
                         mov                edx, dword ptr [edi]                          // 0x00608cbd    8b17
                         push               eax                                           // 0x00608cbf    50
                         push               esi                                           // 0x00608cc0    56
                         mov.s              ecx, edi                                      // 0x00608cc1    8bcf
                         call               dword ptr [edx + 0x684]                       // 0x00608cc3    ff9284060000
                         test               eax, eax                                      // 0x00608cc9    85c0
                         {disp8} je         .Lbl_addr_0x00608cd7                          // 0x00608ccb    740a
                         pop                edi                                           // 0x00608ccd    5f
                         mov                eax, 0x00000003                               // 0x00608cce    b803000000
                         pop                esi                                           // 0x00608cd3    5e
                         ret                0x000c                                        // 0x00608cd4    c20c00
.Lbl_addr_0x00608cd7:    pop                edi                                           // 0x00608cd7    5f
                         xor.s              eax, eax                                      // 0x00608cd8    33c0
                         pop                esi                                           // 0x00608cda    5e
                         ret                0x000c                                        // 0x00608cdb    c20c00
                         nop                                                              // 0x00608cde    90
                         nop                                                              // 0x00608cdf    90
?SetXYZAngles@MobileStatic@@UAEXMMM@Z:
                         push               ebx                                           // 0x00608ce0    53
                         push               esi                                           // 0x00608ce1    56
                         mov.s              esi, ecx                                      // 0x00608ce2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608ce4    8b06
                         push               edi                                           // 0x00608ce6    57
                         call               dword ptr [eax + 0x178]                       // 0x00608ce7    ff9078010000
                         mov.s              ebx, eax                                      // 0x00608ced    8bd8
                         test               ebx, ebx                                      // 0x00608cef    85db
                         {disp8} je         .Lbl_addr_0x00608cfd                          // 0x00608cf1    740a
                         mov                edx, dword ptr [esi]                          // 0x00608cf3    8b16
                         mov.s              ecx, esi                                      // 0x00608cf5    8bce
                         call               dword ptr [edx + 0x548]                       // 0x00608cf7    ff9248050000
.Lbl_addr_0x00608cfd:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00608cfd    8b442410
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00608d01    8b7c2414
                         mov                edx, dword ptr [esi]                          // 0x00608d05    8b16
                         push               edi                                           // 0x00608d07    57
                         mov.s              ecx, esi                                      // 0x00608d08    8bce
                         {disp32} mov       dword ptr [esi + 0x00000080], eax             // 0x00608d0a    898680000000
                         call               dword ptr [edx + 0x520]                       // 0x00608d10    ff9220050000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00608d16    8b442418
                         {disp32} mov       dword ptr [esi + 0x00000084], eax             // 0x00608d1a    898684000000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00608d20    8b4640
                         test               eax, eax                                      // 0x00608d23    85c0
                         {disp8} je         .Lbl_addr_0x00608d4b                          // 0x00608d25    7424
                         mov                edx, dword ptr [esi]                          // 0x00608d27    8b16
                         mov.s              ecx, esi                                      // 0x00608d29    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00608d2b    ff9220010000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00608d31    8b442418
                         push               ecx                                           // 0x00608d35    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00608d36    8b4c2414
                         fstp               dword ptr [esp]                               // 0x00608d3a    d91c24
                         push               eax                                           // 0x00608d3d    50
                         push               edi                                           // 0x00608d3e    57
                         push               ecx                                           // 0x00608d3f    51
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00608d40    8b4e40
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00608d43    8d5614
                         call               _jmp_addr_0x0063b680                          // 0x00608d46    e835290300
.Lbl_addr_0x00608d4b:    test               ebx, ebx                                      // 0x00608d4b    85db
                         {disp8} je         .Lbl_addr_0x00608d59                          // 0x00608d4d    740a
                         mov                edx, dword ptr [esi]                          // 0x00608d4f    8b16
                         mov.s              ecx, esi                                      // 0x00608d51    8bce
                         call               dword ptr [edx + 0x544]                       // 0x00608d53    ff9244050000
.Lbl_addr_0x00608d59:    pop                edi                                           // 0x00608d59    5f
                         pop                esi                                           // 0x00608d5a    5e
                         pop                ebx                                           // 0x00608d5b    5b
                         ret                0x000c                                        // 0x00608d5c    c20c00
                         nop                                                              // 0x00608d5f    90
?SetXYZAnglesAndScale@MobileStatic@@UAEXMMMM@Z:
                         push               ebx                                           // 0x00608d60    53
                         push               ebp                                           // 0x00608d61    55
                         push               esi                                           // 0x00608d62    56
                         mov.s              esi, ecx                                      // 0x00608d63    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608d65    8b06
                         push               edi                                           // 0x00608d67    57
                         call               dword ptr [eax + 0x178]                       // 0x00608d68    ff9078010000
                         mov.s              ebp, eax                                      // 0x00608d6e    8be8
                         test               ebp, ebp                                      // 0x00608d70    85ed
                         {disp8} je         .Lbl_addr_0x00608d7e                          // 0x00608d72    740a
                         mov                edx, dword ptr [esi]                          // 0x00608d74    8b16
                         mov.s              ecx, esi                                      // 0x00608d76    8bce
                         call               dword ptr [edx + 0x548]                       // 0x00608d78    ff9248050000
.Lbl_addr_0x00608d7e:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00608d7e    8b442414
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00608d82    8b7c2418
                         mov                edx, dword ptr [esi]                          // 0x00608d86    8b16
                         push               edi                                           // 0x00608d88    57
                         mov.s              ecx, esi                                      // 0x00608d89    8bce
                         {disp32} mov       dword ptr [esi + 0x00000080], eax             // 0x00608d8b    898680000000
                         call               dword ptr [edx + 0x520]                       // 0x00608d91    ff9220050000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00608d97    8b44241c
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x00608d9b    8b5c2420
                         mov                edx, dword ptr [esi]                          // 0x00608d9f    8b16
                         push               ebx                                           // 0x00608da1    53
                         mov.s              ecx, esi                                      // 0x00608da2    8bce
                         {disp32} mov       dword ptr [esi + 0x00000084], eax             // 0x00608da4    898684000000
                         call               dword ptr [edx + 0x51c]                       // 0x00608daa    ff921c050000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00608db0    8b4e40
                         test               ecx, ecx                                      // 0x00608db3    85c9
                         {disp8} je         .Lbl_addr_0x00608dcb                          // 0x00608db5    7414
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00608db7    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00608dbb    8b542414
                         push               ebx                                           // 0x00608dbf    53
                         push               eax                                           // 0x00608dc0    50
                         push               edi                                           // 0x00608dc1    57
                         push               edx                                           // 0x00608dc2    52
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00608dc3    8d5614
                         call               _jmp_addr_0x0063b680                          // 0x00608dc6    e8b5280300
.Lbl_addr_0x00608dcb:    test               ebp, ebp                                      // 0x00608dcb    85ed
                         {disp8} je         .Lbl_addr_0x00608dd9                          // 0x00608dcd    740a
                         mov                eax, dword ptr [esi]                          // 0x00608dcf    8b06
                         mov.s              ecx, esi                                      // 0x00608dd1    8bce
                         call               dword ptr [eax + 0x544]                       // 0x00608dd3    ff9044050000
.Lbl_addr_0x00608dd9:    pop                edi                                           // 0x00608dd9    5f
                         pop                esi                                           // 0x00608dda    5e
                         pop                ebp                                           // 0x00608ddb    5d
                         pop                ebx                                           // 0x00608ddc    5b
                         ret                0x0010                                        // 0x00608ddd    c21000
?GetWorldMatrix@MobileStatic@@UAEXPAULHMatrix@@@Z:
                         sub                esp, 0x10                                     // 0x00608de0    83ec10
                         push               esi                                           // 0x00608de3    56
                         mov.s              esi, ecx                                      // 0x00608de4    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00608de6    8b461c
                         push               edi                                           // 0x00608de9    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00608dea    8d7e14
                         mov.s              ecx, edi                                      // 0x00608ded    8bcf
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00608def    89442408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00608df3    e898a21f00
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x00608df8    d8442408
                         mov                edx, dword ptr [esi]                          // 0x00608dfc    8b16
                         mov.s              ecx, esi                                      // 0x00608dfe    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00608e00    d95c2410
                         fild               dword ptr [edi]                               // 0x00608e04    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00608e06    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00608e0c    d95c240c
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00608e10    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00608e13    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00608e19    d95c2414
                         call               dword ptr [edx + 0x120]                       // 0x00608e1d    ff9220010000
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00608e23    d9542408
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x00608e27    d81d90a38a00
                         fnstsw             ax                                            // 0x00608e2d    dfe0
                         test               ah, 0x40                                      // 0x00608e2f    f6c440
                         {disp32} jne       .Lbl_addr_0x00608ee2                          // 0x00608e32    0f85aa000000
                         mov                eax, dword ptr [esi]                          // 0x00608e38    8b06
                         mov.s              ecx, esi                                      // 0x00608e3a    8bce
                         call               dword ptr [eax + 0x50c]                       // 0x00608e3c    ff900c050000
                         mov                edx, dword ptr [esi]                          // 0x00608e42    8b16
                         push               ecx                                           // 0x00608e44    51
                         mov.s              ecx, esi                                      // 0x00608e45    8bce
                         fstp               dword ptr [esp]                               // 0x00608e47    d91c24
                         call               dword ptr [edx + 0x504]                       // 0x00608e4a    ff9204050000
                         mov                eax, dword ptr [esi]                          // 0x00608e50    8b06
                         push               ecx                                           // 0x00608e52    51
                         mov.s              ecx, esi                                      // 0x00608e53    8bce
                         fstp               dword ptr [esp]                               // 0x00608e55    d91c24
                         call               dword ptr [eax + 0x508]                       // 0x00608e58    ff9008050000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00608e5e    8b742424
                         push               ecx                                           // 0x00608e62    51
                         mov.s              ecx, esi                                      // 0x00608e63    8bce
                         fstp               dword ptr [esp]                               // 0x00608e65    d91c24
                         call               _jmp_addr_0x007fac10                          // 0x00608e68    e8a31d1f00
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00608e6d    d9442408
                         fmul               dword ptr [esi]                               // 0x00608e71    d80e
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00608e73    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00608e77    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00608e7b    8b442414
                         fstp               dword ptr [esi]                               // 0x00608e7f    d91e
                         pop                edi                                           // 0x00608e81    5f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608e82    d9442404
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x00608e86    894e24
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00608e89    d84e04
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x00608e8c    895628
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x00608e8f    89462c
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x00608e92    d95e04
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608e95    d9442404
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x00608e99    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x00608e9c    d95e08
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608e9f    d9442404
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x00608ea3    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00608ea6    d95e0c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608ea9    d9442404
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x00608ead    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x00608eb0    d95e10
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608eb3    d9442404
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00608eb7    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x00608eba    d95e14
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608ebd    d9442404
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00608ec1    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00608ec4    d95e18
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608ec7    d9442404
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00608ecb    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00608ece    d95e1c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608ed1    d9442404
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00608ed5    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x00608ed8    d95e20
                         pop                esi                                           // 0x00608edb    5e
                         add                esp, 0x10                                     // 0x00608edc    83c410
                         ret                0x0004                                        // 0x00608edf    c20400
.Lbl_addr_0x00608ee2:    mov                edx, dword ptr [esi]                          // 0x00608ee2    8b16
                         mov.s              ecx, esi                                      // 0x00608ee4    8bce
                         call               dword ptr [edx + 0x50c]                       // 0x00608ee6    ff920c050000
                         mov                eax, dword ptr [esi]                          // 0x00608eec    8b06
                         push               ecx                                           // 0x00608eee    51
                         mov.s              ecx, esi                                      // 0x00608eef    8bce
                         fstp               dword ptr [esp]                               // 0x00608ef1    d91c24
                         call               dword ptr [eax + 0x504]                       // 0x00608ef4    ff9004050000
                         mov                edx, dword ptr [esi]                          // 0x00608efa    8b16
                         push               ecx                                           // 0x00608efc    51
                         mov.s              ecx, esi                                      // 0x00608efd    8bce
                         fstp               dword ptr [esp]                               // 0x00608eff    d91c24
                         call               dword ptr [edx + 0x508]                       // 0x00608f02    ff9208050000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00608f08    8b742424
                         push               ecx                                           // 0x00608f0c    51
                         mov.s              ecx, esi                                      // 0x00608f0d    8bce
                         fstp               dword ptr [esp]                               // 0x00608f0f    d91c24
                         call               _jmp_addr_0x007fac10                          // 0x00608f12    e8f91c1f00
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00608f17    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00608f1b    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00608f1f    8b542414
                         pop                edi                                           // 0x00608f23    5f
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00608f24    894624
                         {disp8} mov        dword ptr [esi + 0x28], ecx                   // 0x00608f27    894e28
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x00608f2a    89562c
                         pop                esi                                           // 0x00608f2d    5e
                         add                esp, 0x10                                     // 0x00608f2e    83c410
                         ret                0x0004                                        // 0x00608f31    c20400
                         nop                                                              // 0x00608f34    90
                         nop                                                              // 0x00608f35    90
                         nop                                                              // 0x00608f36    90
                         nop                                                              // 0x00608f37    90
                         nop                                                              // 0x00608f38    90
                         nop                                                              // 0x00608f39    90
                         nop                                                              // 0x00608f3a    90
                         nop                                                              // 0x00608f3b    90
                         nop                                                              // 0x00608f3c    90
                         nop                                                              // 0x00608f3d    90
                         nop                                                              // 0x00608f3e    90
                         nop                                                              // 0x00608f3f    90
?GetBoundingSphere@MobileStatic@@UAEXAAULHPoint@@AAM@Z:
                         push               ecx                                           // 0x00608f40    51
                         push               esi                                           // 0x00608f41    56
                         mov.s              esi, ecx                                      // 0x00608f42    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608f44    8b06
                         call               dword ptr [eax + 0x42c]                       // 0x00608f46    ff902c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00608f4c    d80db4a38a00
                         mov                edx, dword ptr [esi]                          // 0x00608f52    8b16
                         mov.s              ecx, esi                                      // 0x00608f54    8bce
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00608f56    d95c2404
                         call               dword ptr [edx + 0x64]                        // 0x00608f5a    ff5264
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00608f5d    d80db4a38a00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00608f63    8b442410
                         add                esi, 0x14                                     // 0x00608f67    83c614
                         fld                st(0)                                         // 0x00608f6a    d9c0
                         fmul               st, st(1)                                     // 0x00608f6c    d8c9
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00608f6e    d9442404
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x00608f72    d84c2404
                         faddp              st(1), st                                     // 0x00608f76    dec1
                         fsqrt                                                            // 0x00608f78    d9fa
                         fstp               dword ptr [eax]                               // 0x00608f7a    d918
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00608f7c    8b4e08
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00608f7f    894c2410
                         mov.s              ecx, esi                                      // 0x00608f83    8bce
                         fstp               st(0)                                         // 0x00608f85    ddd8
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00608f87    e804a11f00
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00608f8c    d8442410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00608f90    8b44240c
                         {disp8} fst        dword ptr [eax + 0x04]                        // 0x00608f94    d95004
                         fild               dword ptr [esi]                               // 0x00608f97    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00608f99    d80da4a38a00
                         fstp               dword ptr [eax]                               // 0x00608f9f    d918
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x00608fa1    db4604
                         pop                esi                                           // 0x00608fa4    5e
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00608fa5    d80da4a38a00
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00608fab    d95808
                         {disp8} fadd       dword ptr [esp + 0x00]                        // 0x00608fae    d8442400
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00608fb2    d95804
                         pop                ecx                                           // 0x00608fb5    59
                         ret                0x0008                                        // 0x00608fb6    c20800
                         nop                                                              // 0x00608fb9    90
                         nop                                                              // 0x00608fba    90
                         nop                                                              // 0x00608fbb    90
                         nop                                                              // 0x00608fbc    90
                         nop                                                              // 0x00608fbd    90
                         nop                                                              // 0x00608fbe    90
                         nop                                                              // 0x00608fbf    90
?ReactToPhysicsImpact@MobileStatic@@UAEXPAVPhysicsObject@@_N@Z:
                         push               ebx                                           // 0x00608fc0    53
                         push               esi                                           // 0x00608fc1    56
                         push               edi                                           // 0x00608fc2    57
                         mov.s              edi, ecx                                      // 0x00608fc3    8bf9
                         mov                eax, dword ptr [edi]                          // 0x00608fc5    8b07
                         call               dword ptr [eax + 0x3cc]                       // 0x00608fc7    ff90cc030000
                         test               eax, eax                                      // 0x00608fcd    85c0
                         {disp8} je         .Lbl_addr_0x00609007                          // 0x00608fcf    7436
                         test               byte ptr [edi + 0x25], 0x40                   // 0x00608fd1    f6472540
                         {disp8} jne        .Lbl_addr_0x00609007                          // 0x00608fd5    7530
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00608fd7    8b5c2410
                         mov.s              ecx, ebx                                      // 0x00608fdb    8bcb
                         call               _jmp_addr_0x00644f00                          // 0x00608fdd    e81ebf0300
                         mov.s              esi, eax                                      // 0x00608fe2    8bf0
                         test               esi, esi                                      // 0x00608fe4    85f6
                         {disp8} je         .Lbl_addr_0x00609007                          // 0x00608fe6    741f
                         mov                edx, dword ptr [esi]                          // 0x00608fe8    8b16
                         push               0x1                                           // 0x00608fea    6a01
                         mov.s              ecx, esi                                      // 0x00608fec    8bce
                         call               dword ptr [edx + 0x680]                       // 0x00608fee    ff9280060000
                         test               eax, eax                                      // 0x00608ff4    85c0
                         {disp8} je         .Lbl_addr_0x00609007                          // 0x00608ff6    740f
                         {disp8} mov        ecx, dword ptr [ebx + 0x24]                   // 0x00608ff8    8b4b24
                         mov                eax, dword ptr [esi]                          // 0x00608ffb    8b06
                         push               ecx                                           // 0x00608ffd    51
                         push               edi                                           // 0x00608ffe    57
                         mov.s              ecx, esi                                      // 0x00608fff    8bce
                         call               dword ptr [eax + 0x684]                       // 0x00609001    ff9084060000
.Lbl_addr_0x00609007:    pop                edi                                           // 0x00609007    5f
                         pop                esi                                           // 0x00609008    5e
                         pop                ebx                                           // 0x00609009    5b
                         ret                0x0008                                        // 0x0060900a    c20800
                         nop                                                              // 0x0060900d    90
                         nop                                                              // 0x0060900e    90
                         nop                                                              // 0x0060900f    90
?CreatureMustAvoid@MobileStatic@@UAE_NPAVCreature@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00609010    8b442404
                         push               eax                                           // 0x00609014    50
                         call               ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z                          // 0x00609015    e826f70200
                         ret                0x0004                                        // 0x0060901a    c20400
                         nop                                                              // 0x0060901d    90
                         nop                                                              // 0x0060901e    90
                         nop                                                              // 0x0060901f    90
?IsToy@MobileStatic@@UAEIPAVCreature@@@Z:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609020    8b4928
                         mov                eax, dword ptr [ecx]                          // 0x00609023    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00609025    ff502c
                         cmp                eax, 0x0000018f                               // 0x00609028    3d8f010000
                         {disp8} jl         .Lbl_addr_0x0060903e                          // 0x0060902d    7c0f
                         cmp                eax, 0x00000193                               // 0x0060902f    3d93010000
                         {disp8} jg         .Lbl_addr_0x0060903e                          // 0x00609034    7f08
                         mov                eax, 0x00000001                               // 0x00609036    b801000000
                         ret                0x0004                                        // 0x0060903b    c20400
.Lbl_addr_0x0060903e:    xor.s              eax, eax                                      // 0x0060903e    33c0
                         ret                0x0004                                        // 0x00609040    c20400
                         nop                                                              // 0x00609043    90
                         nop                                                              // 0x00609044    90
                         nop                                                              // 0x00609045    90
                         nop                                                              // 0x00609046    90
                         nop                                                              // 0x00609047    90
                         nop                                                              // 0x00609048    90
                         nop                                                              // 0x00609049    90
                         nop                                                              // 0x0060904a    90
                         nop                                                              // 0x0060904b    90
                         nop                                                              // 0x0060904c    90
                         nop                                                              // 0x0060904d    90
                         nop                                                              // 0x0060904e    90
                         nop                                                              // 0x0060904f    90
?IsToyBall@MobileStatic@@UAEIPAVCreature@@@Z:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609050    8b4928
                         mov                eax, dword ptr [ecx]                          // 0x00609053    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00609055    ff502c
                         sub                eax, 0x0000018f                               // 0x00609058    2d8f010000
                         neg                eax                                           // 0x0060905d    f7d8
                         sbb.s              eax, eax                                      // 0x0060905f    1bc0
                         inc                eax                                           // 0x00609061    40
                         ret                0x0004                                        // 0x00609062    c20400
                         nop                                                              // 0x00609065    90
                         nop                                                              // 0x00609066    90
                         nop                                                              // 0x00609067    90
                         nop                                                              // 0x00609068    90
                         nop                                                              // 0x00609069    90
                         nop                                                              // 0x0060906a    90
                         nop                                                              // 0x0060906b    90
                         nop                                                              // 0x0060906c    90
                         nop                                                              // 0x0060906d    90
                         nop                                                              // 0x0060906e    90
                         nop                                                              // 0x0060906f    90
?IsToyDie@MobileStatic@@UAEIPAVCreature@@@Z:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609070    8b4928
                         mov                eax, dword ptr [ecx]                          // 0x00609073    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00609075    ff502c
                         sub                eax, 0x00000192                               // 0x00609078    2d92010000
                         neg                eax                                           // 0x0060907d    f7d8
                         sbb.s              eax, eax                                      // 0x0060907f    1bc0
                         inc                eax                                           // 0x00609081    40
                         ret                0x0004                                        // 0x00609082    c20400
                         nop                                                              // 0x00609085    90
                         nop                                                              // 0x00609086    90
                         nop                                                              // 0x00609087    90
                         nop                                                              // 0x00609088    90
                         nop                                                              // 0x00609089    90
                         nop                                                              // 0x0060908a    90
                         nop                                                              // 0x0060908b    90
                         nop                                                              // 0x0060908c    90
                         nop                                                              // 0x0060908d    90
                         nop                                                              // 0x0060908e    90
                         nop                                                              // 0x0060908f    90
?IsToyCuddly@MobileStatic@@UAEIPAVCreature@@@Z:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609090    8b4928
                         mov                eax, dword ptr [ecx]                          // 0x00609093    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00609095    ff502c
                         sub                eax, 0x00000191                               // 0x00609098    2d91010000
                         neg                eax                                           // 0x0060909d    f7d8
                         sbb.s              eax, eax                                      // 0x0060909f    1bc0
                         inc                eax                                           // 0x006090a1    40
                         ret                0x0004                                        // 0x006090a2    c20400
                         nop                                                              // 0x006090a5    90
                         nop                                                              // 0x006090a6    90
                         nop                                                              // 0x006090a7    90
                         nop                                                              // 0x006090a8    90
                         nop                                                              // 0x006090a9    90
                         nop                                                              // 0x006090aa    90
                         nop                                                              // 0x006090ab    90
                         nop                                                              // 0x006090ac    90
                         nop                                                              // 0x006090ad    90
                         nop                                                              // 0x006090ae    90
                         nop                                                              // 0x006090af    90
?InteractsWithPhysicsObjects@MobileStatic@@UAEIXZ:
                         push               esi                                           // 0x006090b0    56
                         mov.s              esi, ecx                                      // 0x006090b1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x006090b3    8b06
                         push               0x0                                           // 0x006090b5    6a00
                         call               dword ptr [eax + 0x3b4]                       // 0x006090b7    ff90b4030000
                         test               eax, eax                                      // 0x006090bd    85c0
                         {disp8} jne        .Lbl_addr_0x00609101                          // 0x006090bf    7540
                         mov.s              ecx, esi                                      // 0x006090c1    8bce
                         call               .Lbl_addr_0x00609130                          // 0x006090c3    e868000000
                         test               eax, eax                                      // 0x006090c8    85c0
                         {disp8} jne        .Lbl_addr_0x00609101                          // 0x006090ca    7535
                         mov                edx, dword ptr [esi]                          // 0x006090cc    8b16
                         mov.s              ecx, esi                                      // 0x006090ce    8bce
                         call               dword ptr [edx + 0x3cc]                       // 0x006090d0    ff92cc030000
                         test               eax, eax                                      // 0x006090d6    85c0
                         {disp8} jne        .Lbl_addr_0x00609101                          // 0x006090d8    7527
                         mov.s              ecx, esi                                      // 0x006090da    8bce
                         call               .Lbl_addr_0x00609180                          // 0x006090dc    e89f000000
                         test               eax, eax                                      // 0x006090e1    85c0
                         {disp8} jne        .Lbl_addr_0x00609101                          // 0x006090e3    751c
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x006090e5    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x00000128]             // 0x006090e8    8b8028010000
                         cmp                eax, 0x02                                     // 0x006090ee    83f802
                         {disp8} je         .Lbl_addr_0x00609101                          // 0x006090f1    740e
                         cmp                eax, 0x0a                                     // 0x006090f3    83f80a
                         {disp8} je         .Lbl_addr_0x00609101                          // 0x006090f6    7409
                         mov.s              ecx, esi                                      // 0x006090f8    8bce
                         call               ?InteractsWithPhysicsObjects@MultiMapFixed@@UAEIXZ                          // 0x006090fa    e8d162f2ff
                         pop                esi                                           // 0x006090ff    5e
                         ret                                                              // 0x00609100    c3
.Lbl_addr_0x00609101:    mov                al, 0x01                                      // 0x00609101    b001
                         pop                esi                                           // 0x00609103    5e
                         ret                                                              // 0x00609104    c3
                         nop                                                              // 0x00609105    90
                         nop                                                              // 0x00609106    90
                         nop                                                              // 0x00609107    90
                         nop                                                              // 0x00609108    90
                         nop                                                              // 0x00609109    90
                         nop                                                              // 0x0060910a    90
                         nop                                                              // 0x0060910b    90
                         nop                                                              // 0x0060910c    90
                         nop                                                              // 0x0060910d    90
                         nop                                                              // 0x0060910e    90
                         nop                                                              // 0x0060910f    90
?IsFence@MobileStatic@@UAEIXZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609110    8b4928
                         mov                eax, dword ptr [ecx]                          // 0x00609113    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x00609115    ff502c
                         cmp                eax, 0x38                                     // 0x00609118    83f838
                         {disp8} je         .Lbl_addr_0x0060912a                          // 0x0060911b    740d
                         cmp                eax, 0x50                                     // 0x0060911d    83f850
                         {disp8} jle        .Lbl_addr_0x00609127                          // 0x00609120    7e05
                         cmp                eax, 0x52                                     // 0x00609122    83f852
                         {disp8} jle        .Lbl_addr_0x0060912a                          // 0x00609125    7e03
.Lbl_addr_0x00609127:    xor.s              eax, eax                                      // 0x00609127    33c0
                         ret                                                              // 0x00609129    c3
.Lbl_addr_0x0060912a:    mov                eax, 0x00000001                               // 0x0060912a    b801000000
                         ret                                                              // 0x0060912f    c3
.Lbl_addr_0x00609130:    {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609130    8b4928
                         sub                ecx, 0x00d3a6d8                               // 0x00609133    81e9d8a6d300
                         mov                eax, 0x1b4e81b5                               // 0x00609139    b8b5814e1b
                         imul               ecx                                           // 0x0060913e    f7e9
                         sar                edx, 5                                        // 0x00609140    c1fa05
                         mov.s              eax, edx                                      // 0x00609143    8bc2
                         shr                eax, 0x1f                                     // 0x00609145    c1e81f
                         add.s              edx, eax                                      // 0x00609148    03d0
                         cmp                edx, 0x31                                     // 0x0060914a    83fa31
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x0060914d    741c
                         cmp                edx, 0x32                                     // 0x0060914f    83fa32
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x00609152    7417
                         cmp                edx, 0x33                                     // 0x00609154    83fa33
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x00609157    7412
                         cmp                edx, 0x34                                     // 0x00609159    83fa34
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x0060915c    740d
                         cmp                edx, 0x0e                                     // 0x0060915e    83fa0e
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x00609161    7408
                         cmp                edx, 0x0f                                     // 0x00609163    83fa0f
                         {disp8} je         .Lbl_addr_0x0060916b                          // 0x00609166    7403
                         xor.s              eax, eax                                      // 0x00609168    33c0
                         ret                                                              // 0x0060916a    c3
.Lbl_addr_0x0060916b:    mov                eax, 0x00000001                               // 0x0060916b    b801000000
                         ret                                                              // 0x00609170    c3
                         nop                                                              // 0x00609171    90
                         nop                                                              // 0x00609172    90
                         nop                                                              // 0x00609173    90
                         nop                                                              // 0x00609174    90
                         nop                                                              // 0x00609175    90
                         nop                                                              // 0x00609176    90
                         nop                                                              // 0x00609177    90
                         nop                                                              // 0x00609178    90
                         nop                                                              // 0x00609179    90
                         nop                                                              // 0x0060917a    90
                         nop                                                              // 0x0060917b    90
                         nop                                                              // 0x0060917c    90
                         nop                                                              // 0x0060917d    90
                         nop                                                              // 0x0060917e    90
                         nop                                                              // 0x0060917f    90
.Lbl_addr_0x00609180:    {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00609180    8b4928
                         sub                ecx, 0x00d3a6d8                               // 0x00609183    81e9d8a6d300
                         mov                eax, 0x1b4e81b5                               // 0x00609189    b8b5814e1b
                         imul               ecx                                           // 0x0060918e    f7e9
                         mov.s              eax, edx                                      // 0x00609190    8bc2
                         sar                eax, 5                                        // 0x00609192    c1f805
                         mov.s              ecx, eax                                      // 0x00609195    8bc8
                         shr                ecx, 0x1f                                     // 0x00609197    c1e91f
                         add.s              eax, ecx                                      // 0x0060919a    03c1
                         sub                eax, 0x05                                     // 0x0060919c    83e805
                         neg                eax                                           // 0x0060919f    f7d8
                         sbb.s              eax, eax                                      // 0x006091a1    1bc0
                         inc                eax                                           // 0x006091a3    40
                         ret                                                              // 0x006091a4    c3
                         nop                                                              // 0x006091a5    90
                         nop                                                              // 0x006091a6    90
                         nop                                                              // 0x006091a7    90
                         nop                                                              // 0x006091a8    90
                         nop                                                              // 0x006091a9    90
                         nop                                                              // 0x006091aa    90
                         nop                                                              // 0x006091ab    90
                         nop                                                              // 0x006091ac    90
                         nop                                                              // 0x006091ad    90
                         nop                                                              // 0x006091ae    90
                         nop                                                              // 0x006091af    90
?GetHoldType@MobileStatic@@UAE?AW4HOLD_TYPE@@XZ:
                         push               esi                                           // 0x006091b0    56
                         mov.s              esi, ecx                                      // 0x006091b1    8bf1
                         call               .Lbl_addr_0x00609130                          // 0x006091b3    e878ffffff
                         test               eax, eax                                      // 0x006091b8    85c0
                         {disp8} jne        .Lbl_addr_0x006091fc                          // 0x006091ba    7540
                         mov.s              ecx, esi                                      // 0x006091bc    8bce
                         call               .Lbl_addr_0x00609180                          // 0x006091be    e8bdffffff
                         test               eax, eax                                      // 0x006091c3    85c0
                         {disp8} jne        .Lbl_addr_0x006091fc                          // 0x006091c5    7535
                         mov                eax, dword ptr [esi]                          // 0x006091c7    8b06
                         push               0x0                                           // 0x006091c9    6a00
                         mov.s              ecx, esi                                      // 0x006091cb    8bce
                         call               dword ptr [eax + 0x3b4]                       // 0x006091cd    ff90b4030000
                         test               eax, eax                                      // 0x006091d3    85c0
                         {disp8} je         .Lbl_addr_0x006091f5                          // 0x006091d5    741e
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006091d7    8b4e28
                         mov                edx, dword ptr [ecx]                          // 0x006091da    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006091dc    ff522c
                         cmp                eax, 0x00000191                               // 0x006091df    3d91010000
                         {disp8} je         .Lbl_addr_0x006091fc                          // 0x006091e4    7416
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006091e6    8b4e28
                         mov                eax, dword ptr [ecx]                          // 0x006091e9    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x006091eb    ff502c
                         cmp                eax, 0x00000193                               // 0x006091ee    3d93010000
                         {disp8} je         .Lbl_addr_0x006091fc                          // 0x006091f3    7407
.Lbl_addr_0x006091f5:    mov                eax, 0x00000001                               // 0x006091f5    b801000000
                         pop                esi                                           // 0x006091fa    5e
                         ret                                                              // 0x006091fb    c3
.Lbl_addr_0x006091fc:    mov                eax, 0x00000006                               // 0x006091fc    b806000000
                         pop                esi                                           // 0x00609201    5e
                         ret                                                              // 0x00609202    c3
                         nop                                                              // 0x00609203    90
                         nop                                                              // 0x00609204    90
                         nop                                                              // 0x00609205    90
                         nop                                                              // 0x00609206    90
                         nop                                                              // 0x00609207    90
                         nop                                                              // 0x00609208    90
                         nop                                                              // 0x00609209    90
                         nop                                                              // 0x0060920a    90
                         nop                                                              // 0x0060920b    90
                         nop                                                              // 0x0060920c    90
                         nop                                                              // 0x0060920d    90
                         nop                                                              // 0x0060920e    90
                         nop                                                              // 0x0060920f    90
?PhysicallyDestroysAbodes@MobileStatic@@UAEIXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00609210    8b01
                         call               dword ptr [eax + 0x788]                       // 0x00609212    ff9088070000
                         cmp                eax, 0x03                                     // 0x00609218    83f803
                         {disp8} je         .Lbl_addr_0x00609225                          // 0x0060921b    7408
                         cmp                eax, 0x14                                     // 0x0060921d    83f814
                         {disp8} je         .Lbl_addr_0x00609225                          // 0x00609220    7403
                         xor.s              eax, eax                                      // 0x00609222    33c0
                         ret                                                              // 0x00609224    c3
.Lbl_addr_0x00609225:    mov                eax, 0x00000001                               // 0x00609225    b801000000
                         ret                                                              // 0x0060922a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060922b    e8c985dfff
?GetHoldLoweringMultiplier@MobileStatic@@UAEMXZ:
                         push               esi                                           // 0x00609230    56
                         mov.s              esi, ecx                                      // 0x00609231    8bf1
                         call               .Lbl_addr_0x00609130                          // 0x00609233    e8f8feffff
                         test               eax, eax                                      // 0x00609238    85c0
                         {disp8} je         .Lbl_addr_0x00609244                          // 0x0060923a    7408
                         {disp32} fld       dword ptr [__real@3f333333]                   // 0x0060923c    d90538b28a00
                         pop                esi                                           // 0x00609242    5e
                         ret                                                              // 0x00609243    c3
.Lbl_addr_0x00609244:    mov.s              ecx, esi                                      // 0x00609244    8bce
                         call               .Lbl_addr_0x00609180                          // 0x00609246    e835ffffff
                         test               eax, eax                                      // 0x0060924b    85c0
                         {disp8} je         .Lbl_addr_0x00609257                          // 0x0060924d    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ea44]             // 0x0060924f    d905447a8c00
                         pop                esi                                           // 0x00609255    5e
                         ret                                                              // 0x00609256    c3
.Lbl_addr_0x00609257:    mov.s              ecx, esi                                      // 0x00609257    8bce
                         call               ?GetHoldLoweringMultiplier@Object@@UAEMXZ     // 0x00609259    e8d2f90200
                         pop                esi                                           // 0x0060925e    5e
                         ret                                                              // 0x0060925f    c3
?ChecksVerticesVObjects@MobileStatic@@UAEIXZ:
                         mov                al, 0x01                                      // 0x00609260    b001
                         ret                                                              // 0x00609262    c3
                         nop                                                              // 0x00609263    90
                         nop                                                              // 0x00609264    90
                         nop                                                              // 0x00609265    90
                         nop                                                              // 0x00609266    90
                         nop                                                              // 0x00609267    90
                         nop                                                              // 0x00609268    90
                         nop                                                              // 0x00609269    90
                         nop                                                              // 0x0060926a    90
                         nop                                                              // 0x0060926b    90
                         nop                                                              // 0x0060926c    90
                         nop                                                              // 0x0060926d    90
                         nop                                                              // 0x0060926e    90
                         nop                                                              // 0x0060926f    90
?GetPhysicsConstantsType@MobileStatic@@UAEIXZ:
                         push               esi                                           // 0x00609270    56
                         mov.s              esi, ecx                                      // 0x00609271    8bf1
                         call               .Lbl_addr_0x00609130                          // 0x00609273    e8b8feffff
                         test               eax, eax                                      // 0x00609278    85c0
                         {disp32} jne       .Lbl_addr_0x00609301                          // 0x0060927a    0f8581000000
                         mov.s              ecx, esi                                      // 0x00609280    8bce
                         call               .Lbl_addr_0x00609180                          // 0x00609282    e8f9feffff
                         test               eax, eax                                      // 0x00609287    85c0
                         {disp8} jne        .Lbl_addr_0x00609301                          // 0x00609289    7576
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0060928b    8b4628
                         cmp                dword ptr [eax + 0x00000128], 0x02            // 0x0060928e    83b82801000002
                         {disp8} je         .Lbl_addr_0x00609301                          // 0x00609295    746a
                         mov                edx, dword ptr [esi]                          // 0x00609297    8b16
                         mov.s              ecx, esi                                      // 0x00609299    8bce
                         call               dword ptr [edx + 0x3cc]                       // 0x0060929b    ff92cc030000
                         test               eax, eax                                      // 0x006092a1    85c0
                         {disp8} je         .Lbl_addr_0x006092ac                          // 0x006092a3    7407
                         mov                eax, 0x00000012                               // 0x006092a5    b812000000
                         pop                esi                                           // 0x006092aa    5e
                         ret                                                              // 0x006092ab    c3
.Lbl_addr_0x006092ac:    mov                eax, dword ptr [esi]                          // 0x006092ac    8b06
                         push               0x0                                           // 0x006092ae    6a00
                         mov.s              ecx, esi                                      // 0x006092b0    8bce
                         call               dword ptr [eax + 0x3b4]                       // 0x006092b2    ff90b4030000
                         test               eax, eax                                      // 0x006092b8    85c0
                         {disp8} je         .Lbl_addr_0x006092f8                          // 0x006092ba    743c
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006092bc    8b4e28
                         mov                edx, dword ptr [ecx]                          // 0x006092bf    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x006092c1    ff522c
                         add                eax, 0xfffffe71                               // 0x006092c4    0571feffff
                         cmp                eax, 0x04                                     // 0x006092c9    83f804
                         {disp8} ja         .Lbl_addr_0x00609301                          // 0x006092cc    7733
                         jmp                dword ptr [eax*4 + 0x609308]                  // 0x006092ce    ff248508936000
                         mov                eax, 0x0000000e                               // 0x006092d5    b80e000000
                         pop                esi                                           // 0x006092da    5e
                         ret                                                              // 0x006092db    c3
                         mov                eax, 0x0000000f                               // 0x006092dc    b80f000000
                         pop                esi                                           // 0x006092e1    5e
                         ret                                                              // 0x006092e2    c3
                         mov                eax, 0x00000010                               // 0x006092e3    b810000000
                         pop                esi                                           // 0x006092e8    5e
                         ret                                                              // 0x006092e9    c3
                         mov                eax, 0x00000014                               // 0x006092ea    b814000000
                         pop                esi                                           // 0x006092ef    5e
                         ret                                                              // 0x006092f0    c3
                         mov                eax, 0x00000013                               // 0x006092f1    b813000000
                         pop                esi                                           // 0x006092f6    5e
                         ret                                                              // 0x006092f7    c3
.Lbl_addr_0x006092f8:    mov.s              ecx, esi                                      // 0x006092f8    8bce
                         call               ?GetPhysicsConstantsType@Object@@UAEIXZ       // 0x006092fa    e8a1e30200
                         pop                esi                                           // 0x006092ff    5e
                         ret                                                              // 0x00609300    c3
.Lbl_addr_0x00609301:    mov                eax, 0x00000003                               // 0x00609301    b803000000
                         pop                esi                                           // 0x00609306    5e
                         ret                                                              // 0x00609307    c3

// Snippet: jmptbl, [0x00609308, 0x0060931c)
.byte 0xd5, 0x92, 0x60, 0x00      // 0x00609308
.byte 0xea, 0x92, 0x60, 0x00      // 0x0060930c
.byte 0xe3, 0x92, 0x60, 0x00      // 0x00609310
.byte 0xdc, 0x92, 0x60, 0x00      // 0x00609314
.byte 0xf1, 0x92, 0x60, 0x00      // 0x00609318

// Snippet: db, [0x0060931c, 0x00609320)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0060931c

?CanBecomeAPhysicsObject@MobileStatic@@UAEIXZ:
                         mov               eax, 0x00000001                               // 0x00609320    b801000000
                         ret                                                             // 0x00609325    c3
                         nop                                                             // 0x00609326    90
                         nop                                                             // 0x00609327    90
                         nop                                                             // 0x00609328    90
                         nop                                                             // 0x00609329    90
                         nop                                                             // 0x0060932a    90
                         nop                                                             // 0x0060932b    90
                         nop                                                             // 0x0060932c    90
                         nop                                                             // 0x0060932d    90
                         nop                                                             // 0x0060932e    90
                         nop                                                             // 0x0060932f    90
?GetScriptObjectType@MobileStatic@@UAEIXZ:
                         mov               eax, 0x00000008                               // 0x00609330    b808000000
                         ret                                                             // 0x00609335    c3
                         nop                                                             // 0x00609336    90
                         nop                                                             // 0x00609337    90
                         nop                                                             // 0x00609338    90
                         nop                                                             // 0x00609339    90
                         nop                                                             // 0x0060933a    90
                         nop                                                             // 0x0060933b    90
                         nop                                                             // 0x0060933c    90
                         nop                                                             // 0x0060933d    90
                         nop                                                             // 0x0060933e    90
                         nop                                                             // 0x0060933f    90
_jmp_addr_0x00609340:    push              esi                                           // 0x00609340    56
                         push              edi                                           // 0x00609341    57
                         push              0x00000247                                    // 0x00609342    6847020000
                         push              0x00bf4280                                    // 0x00609347    688042bf00
                         push              0x5c                                          // 0x0060934c    6a5c
                         call              ?__nw@Base@@SAPAXK@Z                          // 0x0060934e    e89dd3e2ff
                         {disp8} mov       edi, dword ptr [esp + 0x18]                   // 0x00609353    8b7c2418
                         mov.s             esi, eax                                      // 0x00609357    8bf0
                         add               esp, 0x0c                                     // 0x00609359    83c40c
                         test              esi, esi                                      // 0x0060935c    85f6
                         {disp8} je        .Lbl_addr_0x00609383                          // 0x0060935e    7423
                         {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x00609360    8b442410
                         push              eax                                           // 0x00609364    50
                         push              edi                                           // 0x00609365    57
                         mov.s             ecx, esi                                      // 0x00609366    8bce
                         call              @__ct__6ObjectFRC9MapCoordsPC11GObjectInfo@16 // 0x00609368    e8b3d10200
                         mov               dword ptr [esi], 0x008f963c                   // 0x0060936d    c7063c968f00
                         mov               edx, dword ptr [esi]                          // 0x00609373    8b16
                         push              edi                                           // 0x00609375    57
                         mov.s             ecx, esi                                      // 0x00609376    8bce
                         call              dword ptr [edx + 0x658]                       // 0x00609378    ff9258060000
                         pop               edi                                           // 0x0060937e    5f
                         mov.s             eax, esi                                      // 0x0060937f    8bc6
                         pop               esi                                           // 0x00609381    5e
                         ret                                                             // 0x00609382    c3
.Lbl_addr_0x00609383:    xor.s             esi, esi                                      // 0x00609383    33f6
                         mov               edx, dword ptr [esi]                          // 0x00609385    8b16
                         push              edi                                           // 0x00609387    57
                         mov.s             ecx, esi                                      // 0x00609388    8bce
                         call              dword ptr [edx + 0x658]                       // 0x0060938a    ff9258060000
                         pop               edi                                           // 0x00609390    5f
                         mov.s             eax, esi                                      // 0x00609391    8bc6
                         pop               esi                                           // 0x00609393    5e
                         ret                                                             // 0x00609394    c3
                         nop                                                             // 0x00609395    90
                         nop                                                             // 0x00609396    90
                         nop                                                             // 0x00609397    90
                         nop                                                             // 0x00609398    90
                         nop                                                             // 0x00609399    90
                         nop                                                             // 0x0060939a    90
                         nop                                                             // 0x0060939b    90
                         nop                                                             // 0x0060939c    90
                         nop                                                             // 0x0060939d    90
                         nop                                                             // 0x0060939e    90
                         nop                                                             // 0x0060939f    90
?CallVirtualFunctionsForCreation@GBaseOnly@@UAEXABUMapCoords@@@Z:
                         sub               esp, 0x0c                                     // 0x006093a0    83ec0c
                         push              ebx                                           // 0x006093a3    53
                         mov.s             ebx, ecx                                      // 0x006093a4    8bd9
                         mov               eax, dword ptr [ebx]                          // 0x006093a6    8b03
                         call              dword ptr [eax + 0x850]                       // 0x006093a8    ff9050080000
                         test              byte ptr [ebx + 0x0a], 0x01                   // 0x006093ae    f6430a01
                         {disp32} jne      .Lbl_addr_0x00609490                          // 0x006093b2    0f85d8000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x378e58]        // 0x006093b8    a158eed300
                         test              eax, eax                                      // 0x006093bd    85c0
                         {disp8} jne       .Lbl_addr_0x006093d0                          // 0x006093bf    750f
                         push              0x0                                           // 0x006093c1    6a00
                         call              ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z                          // 0x006093c3    e8e8170300
                         add               esp, 0x04                                     // 0x006093c8    83c404
                         {disp32} mov      dword ptr [data_bytes + 0x378e58], eax        // 0x006093cb    a358eed300
.Lbl_addr_0x006093d0:    {disp8} mov       ecx, dword ptr [ebx + 0x28]                   // 0x006093d0    8b4b28
                         mov               edx, dword ptr [ecx]                          // 0x006093d3    8b11
                         call              dword ptr [edx + 0x2c]                        // 0x006093d5    ff522c
                         test              eax, eax                                      // 0x006093d8    85c0
                         {disp32} mov      edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x006093da    8b1534fee900
                         {disp8} jl        .Lbl_addr_0x006093e6                          // 0x006093e0    7c04
                         cmp               eax, dword ptr [edx]                          // 0x006093e2    3b02
                         {disp8} jl        .Lbl_addr_0x006093e8                          // 0x006093e4    7c02
.Lbl_addr_0x006093e6:    xor.s             eax, eax                                      // 0x006093e6    33c0
.Lbl_addr_0x006093e8:    {disp32} mov      ecx, dword ptr [data_bytes + 0x378e58]        // 0x006093e8    8b0d58eed300
                         {disp8} mov       edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x006093ee    8b548204
                         push              esi                                           // 0x006093f2    56
                         mov               esi, dword ptr [ecx]                          // 0x006093f3    8b31
                         push              edi                                           // 0x006093f5    57
                         push              0x0                                           // 0x006093f6    6a00
                         push              0x0                                           // 0x006093f8    6a00
                         call              dword ptr [esi + 0xf4]                        // 0x006093fa    ff96f4000000
                         {disp8} mov       edi, dword ptr [esp + 0x1c]                   // 0x00609400    8b7c241c
                         {disp8} mov       eax, dword ptr [edi + 0x08]                   // 0x00609404    8b4708
                         {disp32} mov      esi, dword ptr [data_bytes + 0x378e58]        // 0x00609407    8b3558eed300
                         mov.s             ecx, edi                                      // 0x0060940d    8bcf
                         {disp8} mov       dword ptr [esp + 0x1c], eax                   // 0x0060940f    8944241c
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00609413    e8789c1f00
                         {disp8} fadd      dword ptr [esp + 0x1c]                        // 0x00609418    d844241c
                         {disp8} lea       edx, dword ptr [esp + 0x0c]                   // 0x0060941c    8d54240c
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x00609420    8d4e14
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x00609423    d95c2410
                         fild              dword ptr [edi]                               // 0x00609427    db07
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00609429    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x0060942f    d95c240c
                         {disp8} fild      dword ptr [edi + 0x04]                        // 0x00609433    db4704
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00609436    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x0060943c    d95c2414
                         call              ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x00609440    e8eba0dfff
                         {disp8} mov       dword ptr [esi + 0x44], 0x3f800000            // 0x00609445    c746440000803f
                         {disp8} mov       dword ptr [esi + 0x48], 0x00000000            // 0x0060944c    c7464800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x378e58]        // 0x00609453    8b0d58eed300
                         push              ecx                                           // 0x00609459    51
                         call              _jmp_addr_0x0081e9e0                          // 0x0060945a    e881552100
                         {disp8} mov       dword ptr [ebx + 0x58], eax                   // 0x0060945f    894358
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x378e58]        // 0x00609462    8b0d58eed300
                         {disp32} mov      edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x00609468    8b1534fee900
                         mov               eax, dword ptr [ecx]                          // 0x0060946e    8b01
                         {disp8} mov       edx, dword ptr [edx + 0x04]                   // 0x00609470    8b5204
                         add               esp, 0x04                                     // 0x00609473    83c404
                         push              0x0                                           // 0x00609476    6a00
                         push              0x0                                           // 0x00609478    6a00
                         call              dword ptr [eax + 0xf4]                        // 0x0060947a    ff90f4000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x378e54]        // 0x00609480    a154eed300
                         pop               edi                                           // 0x00609485    5f
                         {disp8} mov       dword ptr [ebx + 0x54], eax                   // 0x00609486    894354
                         {disp32} mov      dword ptr [data_bytes + 0x378e54], ebx        // 0x00609489    891d54eed300
                         pop               esi                                           // 0x0060948f    5e
.Lbl_addr_0x00609490:    pop               ebx                                           // 0x00609490    5b
                         add               esp, 0x0c                                     // 0x00609491    83c40c
                         ret               0x0004                                        // 0x00609494    c20400
                         nop                                                             // 0x00609497    90
                         nop                                                             // 0x00609498    90
                         nop                                                             // 0x00609499    90
                         nop                                                             // 0x0060949a    90
                         nop                                                             // 0x0060949b    90
                         nop                                                             // 0x0060949c    90
                         nop                                                             // 0x0060949d    90
                         nop                                                             // 0x0060949e    90
                         nop                                                             // 0x0060949f    90
.Lbl_addr_0x006094a0:    push              esi                                           // 0x006094a0    56
                         mov.s             esi, ecx                                      // 0x006094a1    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x58]                   // 0x006094a3    8b4e58
                         test              ecx, ecx                                      // 0x006094a6    85c9
                         {disp8} je        .Lbl_addr_0x006094b6                          // 0x006094a8    740c
                         call              _jmp_addr_0x0081edd0                          // 0x006094aa    e821592100
                         {disp8} mov       dword ptr [esi + 0x58], 0x00000000            // 0x006094af    c7465800000000
.Lbl_addr_0x006094b6:    {disp32} mov      eax, dword ptr [data_bytes + 0x378e54]        // 0x006094b6    a154eed300
                         cmp.s             eax, esi                                      // 0x006094bb    3bc6
                         {disp8} je        .Lbl_addr_0x006094d4                          // 0x006094bd    7415
.Lbl_addr_0x006094bf:    mov.s             ecx, eax                                      // 0x006094bf    8bc8
                         {disp8} mov       eax, dword ptr [eax + 0x54]                   // 0x006094c1    8b4054
                         cmp.s             eax, esi                                      // 0x006094c4    3bc6
                         {disp8} jne       .Lbl_addr_0x006094bf                          // 0x006094c6    75f7
                         test              ecx, ecx                                      // 0x006094c8    85c9
                         {disp8} je        .Lbl_addr_0x006094d4                          // 0x006094ca    7408
                         {disp8} mov       eax, dword ptr [esi + 0x54]                   // 0x006094cc    8b4654
                         {disp8} mov       dword ptr [ecx + 0x54], eax                   // 0x006094cf    894154
                         pop               esi                                           // 0x006094d2    5e
                         ret                                                             // 0x006094d3    c3
.Lbl_addr_0x006094d4:    {disp8} mov       ecx, dword ptr [esi + 0x54]                   // 0x006094d4    8b4e54
                         {disp32} mov      dword ptr [data_bytes + 0x378e54], ecx        // 0x006094d7    890d54eed300
                         pop               esi                                           // 0x006094dd    5e
                         ret                                                             // 0x006094de    c3
                         nop                                                             // 0x006094df    90
_jmp_addr_0x006094e0:    push              esi                                           // 0x006094e0    56
                         {disp32} mov      esi, dword ptr [data_bytes + 0x378e54]        // 0x006094e1    8b3554eed300
                         test              esi, esi                                      // 0x006094e7    85f6
                         {disp8} je        .Lbl_addr_0x006094f9                          // 0x006094e9    740e
.Lbl_addr_0x006094eb:    mov.s             ecx, esi                                      // 0x006094eb    8bce
                         call              .Lbl_addr_0x006094a0                          // 0x006094ed    e8aeffffff
                         {disp8} mov       esi, dword ptr [esi + 0x54]                   // 0x006094f2    8b7654
                         test              esi, esi                                      // 0x006094f5    85f6
                         {disp8} jne       .Lbl_addr_0x006094eb                          // 0x006094f7    75f2
.Lbl_addr_0x006094f9:    pop               esi                                           // 0x006094f9    5e
                         ret                                                             // 0x006094fa    c3
                         call              ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x006094fb    e8f982dfff
                         push              esi                                           // 0x00609500    56
                         {disp32} mov      esi, dword ptr [data_bytes + 0x378e54]        // 0x00609501    8b3554eed300
                         test              esi, esi                                      // 0x00609507    85f6
                         {disp8} je        .Lbl_addr_0x00609532                          // 0x00609509    7427
                         push              edi                                           // 0x0060950b    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0060950c    8b7c240c
.Lbl_addr_0x00609510:    test              edi, edi                                      // 0x00609510    85ff
                         {disp8} je        .Lbl_addr_0x00609520                          // 0x00609512    740c
                         mov               eax, dword ptr [esi]                          // 0x00609514    8b06
                         mov.s             ecx, esi                                      // 0x00609516    8bce
                         call              dword ptr [eax + 0x544]                       // 0x00609518    ff9044050000
                         {disp8} jmp       .Lbl_addr_0x0060952a                          // 0x0060951e    eb0a
.Lbl_addr_0x00609520:    mov               edx, dword ptr [esi]                          // 0x00609520    8b16
                         mov.s             ecx, esi                                      // 0x00609522    8bce
                         call              dword ptr [edx + 0x548]                       // 0x00609524    ff9248050000
.Lbl_addr_0x0060952a:    {disp8} mov       esi, dword ptr [esi + 0x54]                   // 0x0060952a    8b7654
                         test              esi, esi                                      // 0x0060952d    85f6
                         {disp8} jne       .Lbl_addr_0x00609510                          // 0x0060952f    75df
                         pop               edi                                           // 0x00609531    5f
.Lbl_addr_0x00609532:    pop               esi                                           // 0x00609532    5e
                         ret                                                             // 0x00609533    c3
                         nop                                                             // 0x00609534    90
                         nop                                                             // 0x00609535    90
                         nop                                                             // 0x00609536    90
                         nop                                                             // 0x00609537    90
                         nop                                                             // 0x00609538    90
                         nop                                                             // 0x00609539    90
                         nop                                                             // 0x0060953a    90
                         nop                                                             // 0x0060953b    90
                         nop                                                             // 0x0060953c    90
                         nop                                                             // 0x0060953d    90
                         nop                                                             // 0x0060953e    90
                         nop                                                             // 0x0060953f    90
?Draw@GBaseOnly@@UAEXXZ:
                         sub               esp, 0x10                                     // 0x00609540    83ec10
                         {disp32} mov      eax, dword ptr [data_bytes + 0x378e58]        // 0x00609543    a158eed300
                         push              ebx                                           // 0x00609548    53
                         push              esi                                           // 0x00609549    56
                         push              edi                                           // 0x0060954a    57
                         mov.s             edi, ecx                                      // 0x0060954b    8bf9
                         {disp8} mov       dword ptr [edi + 0x40], eax                   // 0x0060954d    894740
                         {disp8} mov       ecx, dword ptr [edi + 0x1c]                   // 0x00609550    8b4f1c
                         {disp32} mov      ebx, dword ptr [data_bytes + 0x378e58]        // 0x00609553    8b1d58eed300
                         {disp8} lea       esi, dword ptr [edi + 0x14]                   // 0x00609559    8d7714
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                   // 0x0060955c    894c240c
                         mov.s             ecx, esi                                      // 0x00609560    8bce
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00609562    e8299b1f00
                         {disp8} fadd      dword ptr [esp + 0x0c]                        // 0x00609567    d844240c
                         {disp8} lea       edx, dword ptr [esp + 0x10]                   // 0x0060956b    8d542410
                         {disp8} lea       ecx, dword ptr [ebx + 0x14]                   // 0x0060956f    8d4b14
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x00609572    d95c2414
                         fild              dword ptr [esi]                               // 0x00609576    db06
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00609578    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x0060957e    d95c2410
                         {disp8} fild      dword ptr [esi + 0x04]                        // 0x00609582    db4604
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00609585    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x0060958b    d95c2418
                         call              ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x0060958f    e89c9fdfff
                         {disp8} mov       dword ptr [ebx + 0x44], 0x3f800000            // 0x00609594    c743440000803f
                         {disp8} mov       dword ptr [ebx + 0x48], 0x00000000            // 0x0060959b    c7434800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x378e58]        // 0x006095a2    8b0d58eed300
                         mov.s             edx, edi                                      // 0x006095a8    8bd7
                         call              _jmp_addr_0x0063b5d0                          // 0x006095aa    e821200300
                         pop               edi                                           // 0x006095af    5f
                         pop               esi                                           // 0x006095b0    5e
                         pop               ebx                                           // 0x006095b1    5b
                         add               esp, 0x10                                     // 0x006095b2    83c410
                         ret                                                             // 0x006095b5    c3
                         nop                                                             // 0x006095b6    90
                         nop                                                             // 0x006095b7    90
                         nop                                                             // 0x006095b8    90
                         nop                                                             // 0x006095b9    90
                         nop                                                             // 0x006095ba    90
                         nop                                                             // 0x006095bb    90
                         nop                                                             // 0x006095bc    90
                         nop                                                             // 0x006095bd    90
                         nop                                                             // 0x006095be    90
                         nop                                                             // 0x006095bf    90
?ToBeDeleted@GBaseOnly@@UAEXH@Z:
                         push              esi                                           // 0x006095c0    56
                         mov.s             esi, ecx                                      // 0x006095c1    8bf1
                         call              .Lbl_addr_0x006094a0                          // 0x006095c3    e8d8feffff
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x006095c8    8b442408
                         push              eax                                           // 0x006095cc    50
                         mov.s             ecx, esi                                      // 0x006095cd    8bce
                         {disp8} mov       dword ptr [esi + 0x40], 0x00000000            // 0x006095cf    c7464000000000
                         call              ?ToBeDeleted@Object@@UAEXH@Z                  // 0x006095d6    e895d00200
                         pop               esi                                           // 0x006095db    5e
                         ret               0x0004                                        // 0x006095dc    c20400
                         nop                                                             // 0x006095df    90
?SaveObject@GBaseOnly@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         sub               esp, 0x00000144                               // 0x006095e0    81ec44010000
                         push              esi                                           // 0x006095e6    56
                         mov.s             esi, ecx                                      // 0x006095e7    8bf1
                         call              ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x006095e9    e80269f6ff
                         test              eax, eax                                      // 0x006095ee    85c0
                         {disp32} je       .Lbl_addr_0x00609693                          // 0x006095f0    0f849d000000
                         {disp32} mov      eax, dword ptr [esp + 0x00000150]             // 0x006095f6    8b842450010000
                         test              eax, eax                                      // 0x006095fd    85c0
                         {disp8} je        .Lbl_addr_0x00609611                          // 0x006095ff    7410
                         push              eax                                           // 0x00609601    50
                         {disp8} lea       eax, dword ptr [esp + 0x14]                   // 0x00609602    8d442414
                         push              eax                                           // 0x00609606    50
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x00609607    8d4e14
                         call              _jmp_addr_0x006055c0                          // 0x0060960a    e8b1bfffff
                         {disp8} jmp       .Lbl_addr_0x00609614                          // 0x0060960f    eb03
.Lbl_addr_0x00609611:    {disp8} lea       eax, dword ptr [esi + 0x14]                   // 0x00609611    8d4614
.Lbl_addr_0x00609614:    mov               ecx, dword ptr [eax]                          // 0x00609614    8b08
                         {disp8} mov       dword ptr [esp + 0x04], ecx                   // 0x00609616    894c2404
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0060961a    8b5004
                         {disp8} mov       dword ptr [esp + 0x08], edx                   // 0x0060961d    89542408
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00609621    8b4008
                         {disp8} mov       dword ptr [esp + 0x0c], eax                   // 0x00609624    8944240c
                         {disp8} mov       eax, dword ptr [esi + 0x28]                   // 0x00609628    8b4628
                         sub               eax, 0x00d3a6d8                               // 0x0060962b    2dd8a6d300
                         push              edi                                           // 0x00609630    57
                         sar               eax, 8                                        // 0x00609631    c1f808
                         push              eax                                           // 0x00609634    50
                         {disp32} lea      ecx, dword ptr [esp + 0x000000ec]             // 0x00609635    8d8c24ec000000
                         push              ecx                                           // 0x0060963c    51
                         {disp8} lea       ecx, dword ptr [esp + 0x10]                   // 0x0060963d    8d4c2410
                         call              ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x00609641    e83a92ffff
                         push              eax                                           // 0x00609646    50
                         push              0x4a                                          // 0x00609647    6a4a
                         call              ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x00609649    e8e2ba1000
                         add               esp, 0x04                                     // 0x0060964e    83c404
                         push              eax                                           // 0x00609651    50
                         {disp8} lea       edx, dword ptr [esp + 0x2c]                   // 0x00609652    8d54242c
                         push              edx                                           // 0x00609656    52
                         call              _sprintf                                      // 0x00609657    e876c11b00
                         or                ecx, 0xffffffff                               // 0x0060965c    83c9ff
                         xor.s             eax, eax                                      // 0x0060965f    33c0
                         {disp8} lea       edi, dword ptr [esp + 0x30]                   // 0x00609661    8d7c2430
                         repne scasb                                                     // 0x00609665    f2ae
                         not               ecx                                           // 0x00609667    f7d1
                         dec               ecx                                           // 0x00609669    49
                         push              ecx                                           // 0x0060966a    51
                         {disp32} mov      ecx, dword ptr [esp + 0x00000164]             // 0x0060966b    8b8c2464010000
                         {disp8} lea       eax, dword ptr [esp + 0x34]                   // 0x00609672    8d442434
                         push              eax                                           // 0x00609676    50
                         push              ecx                                           // 0x00609677    51
                         push              esi                                           // 0x00609678    56
                         call              ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x00609679    e892ff1000
                         add               esp, 0x20                                     // 0x0060967e    83c420
                         mov.s             ecx, esi                                      // 0x00609681    8bce
                         call              ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x00609683    e86868f6ff
                         pop               edi                                           // 0x00609688    5f
                         pop               esi                                           // 0x00609689    5e
                         add               esp, 0x00000144                               // 0x0060968a    81c444010000
                         ret               0x0008                                        // 0x00609690    c20800
.Lbl_addr_0x00609693:    xor.s             eax, eax                                      // 0x00609693    33c0
                         pop               esi                                           // 0x00609695    5e
                         add               esp, 0x00000144                               // 0x00609696    81c444010000
                         ret               0x0008                                        // 0x0060969c    c20800
                         nop                                                             // 0x0060969f    90
?BlocksTownClearArea@MobileStatic@@UBE_NXZ:
                         xor.s             eax, eax                                      // 0x006096a0    33c0
                         ret                                                             // 0x006096a2    c3
                         nop                                                             // 0x006096a3    90
                         nop                                                             // 0x006096a4    90
                         nop                                                             // 0x006096a5    90
                         nop                                                             // 0x006096a6    90
                         nop                                                             // 0x006096a7    90
                         nop                                                             // 0x006096a8    90
                         nop                                                             // 0x006096a9    90
                         nop                                                             // 0x006096aa    90
                         nop                                                             // 0x006096ab    90
                         nop                                                             // 0x006096ac    90
                         nop                                                             // 0x006096ad    90
                         nop                                                             // 0x006096ae    90
                         nop                                                             // 0x006096af    90
?GetResourceType@MobileStatic@@UAE?AW4RESOURCE_TYPE@@XZ:
                         mov               eax, dword ptr [ecx]                          // 0x006096b0    8b01
                         call              dword ptr [eax + 0x3cc]                       // 0x006096b2    ff90cc030000
                         neg               eax                                           // 0x006096b8    f7d8
                         sbb.s             eax, eax                                      // 0x006096ba    1bc0
                         and               eax, 0x02                                     // 0x006096bc    83e002
                         dec               eax                                           // 0x006096bf    48
                         ret                                                             // 0x006096c0    c3
                         nop                                                             // 0x006096c1    90
                         nop                                                             // 0x006096c2    90
                         nop                                                             // 0x006096c3    90
                         nop                                                             // 0x006096c4    90
                         nop                                                             // 0x006096c5    90
                         nop                                                             // 0x006096c6    90
                         nop                                                             // 0x006096c7    90
                         nop                                                             // 0x006096c8    90
                         nop                                                             // 0x006096c9    90
                         nop                                                             // 0x006096ca    90
                         nop                                                             // 0x006096cb    90
                         nop                                                             // 0x006096cc    90
                         nop                                                             // 0x006096cd    90
                         nop                                                             // 0x006096ce    90
                         nop                                                             // 0x006096cf    90
?GetDefaultResource@MobileStatic@@UAEHXZ:
                         push              esi                                           // 0x006096d0    56
                         mov.s             esi, ecx                                      // 0x006096d1    8bf1
                         mov               eax, dword ptr [esi]                          // 0x006096d3    8b06
                         call              dword ptr [eax + 0x3cc]                       // 0x006096d5    ff90cc030000
                         test              eax, eax                                      // 0x006096db    85c0
                         {disp8} je        .Lbl_addr_0x006096f0                          // 0x006096dd    7411
                         mov               edx, dword ptr [esi]                          // 0x006096df    8b16
                         mov.s             ecx, esi                                      // 0x006096e1    8bce
                         call              dword ptr [edx + 0x664]                       // 0x006096e3    ff9264060000
                         call              __ftol                                        // 0x006096e9    e8127d1900
                         pop               esi                                           // 0x006096ee    5e
                         ret                                                             // 0x006096ef    c3
.Lbl_addr_0x006096f0:    xor.s             eax, eax                                      // 0x006096f0    33c0
                         pop               esi                                           // 0x006096f2    5e
                         ret                                                             // 0x006096f3    c3
                         nop                                                             // 0x006096f4    90
                         nop                                                             // 0x006096f5    90
                         nop                                                             // 0x006096f6    90
                         nop                                                             // 0x006096f7    90
                         nop                                                             // 0x006096f8    90
                         nop                                                             // 0x006096f9    90
                         nop                                                             // 0x006096fa    90
                         nop                                                             // 0x006096fb    90
                         nop                                                             // 0x006096fc    90
                         nop                                                             // 0x006096fd    90
                         nop                                                             // 0x006096fe    90
                         nop                                                             // 0x006096ff    90
?CallVirtualFunctionsForCreation@MobileStatic@@UAEXABUMapCoords@@@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00609700    8b442404
                         push              esi                                           // 0x00609704    56
                         mov.s             esi, ecx                                      // 0x00609705    8bf1
                         push              eax                                           // 0x00609707    50
                         call              ?CallVirtualFunctionsForCreation@MultiMapFixed@@UAEXABUMapCoords@@@Z  // 0x00609708    e88351f2ff
                         {disp8} mov       eax, dword ptr [esi + 0x40]                   // 0x0060970d    8b4640
                         test              eax, eax                                      // 0x00609710    85c0
                         {disp8} je        .Lbl_addr_0x0060975a                          // 0x00609712    7446
                         mov               edx, dword ptr [esi]                          // 0x00609714    8b16
                         push              edi                                           // 0x00609716    57
                         mov.s             ecx, esi                                      // 0x00609717    8bce
                         mov.s             edi, eax                                      // 0x00609719    8bf8
                         call              dword ptr [edx + 0x120]                       // 0x0060971b    ff9220010000
                         mov               eax, dword ptr [esi]                          // 0x00609721    8b06
                         push              ecx                                           // 0x00609723    51
                         mov.s             ecx, esi                                      // 0x00609724    8bce
                         fstp              dword ptr [esp]                               // 0x00609726    d91c24
                         call              dword ptr [eax + 0x50c]                       // 0x00609729    ff900c050000
                         mov               edx, dword ptr [esi]                          // 0x0060972f    8b16
                         push              ecx                                           // 0x00609731    51
                         mov.s             ecx, esi                                      // 0x00609732    8bce
                         fstp              dword ptr [esp]                               // 0x00609734    d91c24
                         call              dword ptr [edx + 0x508]                       // 0x00609737    ff9208050000
                         mov               eax, dword ptr [esi]                          // 0x0060973d    8b06
                         push              ecx                                           // 0x0060973f    51
                         mov.s             ecx, esi                                      // 0x00609740    8bce
                         fstp              dword ptr [esp]                               // 0x00609742    d91c24
                         call              dword ptr [eax + 0x504]                       // 0x00609745    ff9004050000
                         push              ecx                                           // 0x0060974b    51
                         {disp8} lea       edx, dword ptr [edi + 0x38]                   // 0x0060974c    8d5738
                         fstp              dword ptr [esp]                               // 0x0060974f    d91c24
                         mov.s             ecx, edi                                      // 0x00609752    8bcf
                         call              _jmp_addr_0x0063b740                          // 0x00609754    e8e71f0300
                         pop               edi                                           // 0x00609759    5f
.Lbl_addr_0x0060975a:    pop               esi                                           // 0x0060975a    5e
                         ret               0x0004                                        // 0x0060975b    c20400
                         nop                                                             // 0x0060975e    90
                         nop                                                             // 0x0060975f    90
