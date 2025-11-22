.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern _jmp_addr_0x005f04c0
.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.extern ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.extern ?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z
.extern ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z
.extern _atexit
.extern ___nw__FUl
.extern _jmp_addr_0x007fb810
.extern _jmp_addr_0x007fb880
.extern _jmp_addr_0x007fc760

.globl _globl_ct_0x005efd50
.globl ?InitialisePhysicsFromHand@Villager@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z
.globl ?InitialisePhysics@Villager@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z
.globl ?GetPhysicsConstantsType@Villager@@UAEIXZ
.globl ?SetUpPhysOb@Villager@@UAEXPAUPhysOb@@@Z
.globl ?InitialisePhysicsFromHand@Living@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z
.globl ?InitialisePhysics@Living@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z

start_0x005efd50_0x005f04c0:
// Snippet: asm, [0x005efd50, 0x005f0482)
_globl_ct_0x005efd50:    {disp32} mov       cl, byte ptr [_DAT_00fac934]             // 0x005efd50    8a0d34c9fa00
                         mov                al, 0x01                                 // 0x005efd56    b001
                         test               al, cl                                   // 0x005efd58    84c8
                         {disp8} jne        _jmp_addr_0x005efd64                     // 0x005efd5a    7508
                         or.s               cl, al                                   // 0x005efd5c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl             // 0x005efd5e    880d34c9fa00
_jmp_addr_0x005efd64:    {disp32} jmp       _jmp_addr_0x005efd70                     // 0x005efd64    e907000000
                         nop                                                         // 0x005efd69    90
                         nop                                                         // 0x005efd6a    90
                         nop                                                         // 0x005efd6b    90
                         nop                                                         // 0x005efd6c    90
                         nop                                                         // 0x005efd6d    90
                         nop                                                         // 0x005efd6e    90
                         nop                                                         // 0x005efd6f    90
_jmp_addr_0x005efd70:    push               0x00407870                               // 0x005efd70    6870784000
                         call               _atexit                                  // 0x005efd75    e8175a1d00
                         pop                ecx                                      // 0x005efd7a    59
                         ret                                                         // 0x005efd7b    c3
                         nop                                                         // 0x005efd7c    90
                         nop                                                         // 0x005efd7d    90
                         nop                                                         // 0x005efd7e    90
                         nop                                                         // 0x005efd7f    90
?InitialisePhysicsFromHand@Living@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z:
                         push               esi                                      // 0x005efd80    56
                         mov.s              esi, ecx                                 // 0x005efd81    8bf1
                         mov                eax, dword ptr [esi]                     // 0x005efd83    8b06
                         push               edi                                      // 0x005efd85    57
                         call               dword ptr [eax + 0x978]                  // 0x005efd86    ff9078090000
                         test               eax, eax                                 // 0x005efd8c    85c0
                         {disp8} je         _jmp_addr_0x005efd9c                     // 0x005efd8e    740c
                         mov                edx, dword ptr [esi]                     // 0x005efd90    8b16
                         push               0x1                                      // 0x005efd92    6a01
                         mov.s              ecx, esi                                 // 0x005efd94    8bce
                         call               dword ptr [edx + 0xb08]                  // 0x005efd96    ff92080b0000
_jmp_addr_0x005efd9c:    mov.s              ecx, esi                                 // 0x005efd9c    8bce
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ               // 0x005efd9e    e84d2a0000
                         cmp                al, 0x18                                 // 0x005efda3    3c18
                         {disp8} je         _jmp_addr_0x005efdb1                     // 0x005efda5    740a
                         mov                eax, dword ptr [esi]                     // 0x005efda7    8b06
                         mov.s              ecx, esi                                 // 0x005efda9    8bce
                         call               dword ptr [eax + 0x8ec]                  // 0x005efdab    ff90ec080000
_jmp_addr_0x005efdb1:    {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x005efdb1    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x005efdb5    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005efdb9    8b442414
                         push               ecx                                      // 0x005efdbd    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x005efdbe    8b4c2414
                         push               edx                                      // 0x005efdc2    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x005efdc3    8b542414
                         push               eax                                      // 0x005efdc7    50
                         push               ecx                                      // 0x005efdc8    51
                         push               edx                                      // 0x005efdc9    52
                         mov.s              ecx, esi                                 // 0x005efdca    8bce
                         call               ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z                     // 0x005efdcc    e82f710400
                         mov.s              edi, eax                                 // 0x005efdd1    8bf8
                         test               edi, edi                                 // 0x005efdd3    85ff
                         {disp8} je         _jmp_addr_0x005efdf8                     // 0x005efdd5    7421
                         test               byte ptr [edi + 0x000001d8], 0x08        // 0x005efdd7    f687d801000008
                         {disp8} jne        _jmp_addr_0x005efe06                     // 0x005efdde    7526
                         cmp                dword ptr [edi + 0x18], esi              // 0x005efde0    397718
                         {disp8} jne        _jmp_addr_0x005efe06                     // 0x005efde3    7521
                         mov                eax, dword ptr [esi]                     // 0x005efde5    8b06
                         push               0xa                                      // 0x005efde7    6a0a
                         mov.s              ecx, esi                                 // 0x005efde9    8bce
                         call               dword ptr [eax + 0x8e8]                  // 0x005efdeb    ff90e8080000
                         mov.s              eax, edi                                 // 0x005efdf1    8bc7
                         pop                edi                                      // 0x005efdf3    5f
                         pop                esi                                      // 0x005efdf4    5e
                         ret                0x0014                                   // 0x005efdf5    c21400
_jmp_addr_0x005efdf8:    mov                edx, dword ptr [esi]                     // 0x005efdf8    8b16
                         push               0x1                                      // 0x005efdfa    6a01
                         push               0x0                                      // 0x005efdfc    6a00
                         mov.s              ecx, esi                                 // 0x005efdfe    8bce
                         call               dword ptr [edx + 0x790]                  // 0x005efe00    ff9290070000
_jmp_addr_0x005efe06:    mov.s              eax, edi                                 // 0x005efe06    8bc7
                         pop                edi                                      // 0x005efe08    5f
                         pop                esi                                      // 0x005efe09    5e
                         ret                0x0014                                   // 0x005efe0a    c21400
                         nop                                                         // 0x005efe0d    90
                         nop                                                         // 0x005efe0e    90
                         nop                                                         // 0x005efe0f    90
?InitialisePhysics@Living@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z:
                         push               esi                                      // 0x005efe10    56
                         mov.s              esi, ecx                                 // 0x005efe11    8bf1
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ               // 0x005efe13    e8d8290000
                         cmp                al, 0x0a                                 // 0x005efe18    3c0a
                         {disp8} je         _jmp_addr_0x005efe57                     // 0x005efe1a    743b
                         mov.s              ecx, esi                                 // 0x005efe1c    8bce
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ               // 0x005efe1e    e8cd290000
                         cmp                al, 0x18                                 // 0x005efe23    3c18
                         {disp8} je         _jmp_addr_0x005efe31                     // 0x005efe25    740a
                         mov                eax, dword ptr [esi]                     // 0x005efe27    8b06
                         mov.s              ecx, esi                                 // 0x005efe29    8bce
                         call               dword ptr [eax + 0x8ec]                  // 0x005efe2b    ff90ec080000
_jmp_addr_0x005efe31:    mov                edx, dword ptr [esi]                     // 0x005efe31    8b16
                         push               0xa                                      // 0x005efe33    6a0a
                         mov.s              ecx, esi                                 // 0x005efe35    8bce
                         call               dword ptr [edx + 0x8e8]                  // 0x005efe37    ff92e8080000
                         cmp                eax, 0x01                                // 0x005efe3d    83f801
                         {disp8} je         _jmp_addr_0x005efe57                     // 0x005efe40    7415
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x005efe42    8b442408
                         mov                dword ptr [eax], 0x00000000              // 0x005efe46    c70000000000
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000       // 0x005efe4c    c7400400000000
                         pop                esi                                      // 0x005efe53    5e
                         ret                0x0018                                   // 0x005efe54    c21800
_jmp_addr_0x005efe57:    {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005efe57    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x005efe5b    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x005efe5f    8b542414
                         push               edi                                      // 0x005efe63    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x005efe64    8b7c240c
                         push               eax                                      // 0x005efe68    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x005efe69    8b442418
                         push               ecx                                      // 0x005efe6d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x005efe6e    8b4c2418
                         push               edx                                      // 0x005efe72    52
                         push               eax                                      // 0x005efe73    50
                         push               ecx                                      // 0x005efe74    51
                         push               edi                                      // 0x005efe75    57
                         mov.s              ecx, esi                                 // 0x005efe76    8bce
                         call               ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z                     // 0x005efe78    e803760400
                         mov.s              eax, edi                                 // 0x005efe7d    8bc7
                         pop                edi                                      // 0x005efe7f    5f
                         pop                esi                                      // 0x005efe80    5e
                         ret                0x0018                                   // 0x005efe81    c21800
                         nop                                                         // 0x005efe84    90
                         nop                                                         // 0x005efe85    90
                         nop                                                         // 0x005efe86    90
                         nop                                                         // 0x005efe87    90
                         nop                                                         // 0x005efe88    90
                         nop                                                         // 0x005efe89    90
                         nop                                                         // 0x005efe8a    90
                         nop                                                         // 0x005efe8b    90
                         nop                                                         // 0x005efe8c    90
                         nop                                                         // 0x005efe8d    90
                         nop                                                         // 0x005efe8e    90
                         nop                                                         // 0x005efe8f    90
?InitialisePhysicsFromHand@Villager@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005efe90    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x005efe94    8b54240c
                         push               esi                                      // 0x005efe98    56
                         push               edi                                      // 0x005efe99    57
                         push               eax                                      // 0x005efe9a    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005efe9b    8b442414
                         mov.s              edi, ecx                                 // 0x005efe9f    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x005efea1    8b4c241c
                         push               ecx                                      // 0x005efea5    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x005efea6    8b4c2414
                         push               edx                                      // 0x005efeaa    52
                         push               eax                                      // 0x005efeab    50
                         push               ecx                                      // 0x005efeac    51
                         mov.s              ecx, edi                                 // 0x005efead    8bcf
                         call               ?InitialisePhysicsFromHand@Living@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z                     // 0x005efeaf    e8ccfeffff
                         mov.s              esi, eax                                 // 0x005efeb4    8bf0
                         test               esi, esi                                 // 0x005efeb6    85f6
                         {disp8} je         _jmp_addr_0x005efec8                     // 0x005efeb8    740e
                         test               byte ptr [esi + 0x000001d8], 0x08        // 0x005efeba    f686d801000008
                         {disp8} jne        _jmp_addr_0x005efeda                     // 0x005efec1    7517
                         cmp                dword ptr [esi + 0x18], edi              // 0x005efec3    397e18
                         {disp8} jne        _jmp_addr_0x005efeda                     // 0x005efec6    7512
_jmp_addr_0x005efec8:    {disp32} mov       edx, dword ptr [edi + 0x0000010c]        // 0x005efec8    8b970c010000
                         push               0x0                                      // 0x005efece    6a00
                         push               edx                                      // 0x005efed0    52
                         push               0x0                                      // 0x005efed1    6a00
                         mov.s              ecx, edi                                 // 0x005efed3    8bcf
                         call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z                     // 0x005efed5    e826611600
_jmp_addr_0x005efeda:    pop                edi                                      // 0x005efeda    5f
                         mov.s              eax, esi                                 // 0x005efedb    8bc6
                         pop                esi                                      // 0x005efedd    5e
                         ret                0x0014                                   // 0x005efede    c21400
                         nop                                                         // 0x005efee1    90
                         nop                                                         // 0x005efee2    90
                         nop                                                         // 0x005efee3    90
                         nop                                                         // 0x005efee4    90
                         nop                                                         // 0x005efee5    90
                         nop                                                         // 0x005efee6    90
                         nop                                                         // 0x005efee7    90
                         nop                                                         // 0x005efee8    90
                         nop                                                         // 0x005efee9    90
                         nop                                                         // 0x005efeea    90
                         nop                                                         // 0x005efeeb    90
                         nop                                                         // 0x005efeec    90
                         nop                                                         // 0x005efeed    90
                         nop                                                         // 0x005efeee    90
                         nop                                                         // 0x005efeef    90
?InitialisePhysics@Villager@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z:
                         push               ebx                                      // 0x005efef0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]              // 0x005efef1    8b5c240c
                         push               esi                                      // 0x005efef5    56
                         push               edi                                      // 0x005efef6    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]              // 0x005efef7    8b7c2418
                         push               0x0                                      // 0x005efefb    6a00
                         push               edi                                      // 0x005efefd    57
                         mov.s              esi, ecx                                 // 0x005efefe    8bf1
                         push               ebx                                      // 0x005eff00    53
                         call               ?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z                     // 0x005eff01    e83a0a1600
                         {disp8} mov        eax, dword ptr [esp + 0x24]              // 0x005eff06    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x005eff0a    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x005eff0e    8b54241c
                         push               eax                                      // 0x005eff12    50
                         push               ecx                                      // 0x005eff13    51
                         push               edx                                      // 0x005eff14    52
                         push               edi                                      // 0x005eff15    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]              // 0x005eff16    8b7c2420
                         push               ebx                                      // 0x005eff1a    53
                         push               edi                                      // 0x005eff1b    57
                         mov.s              ecx, esi                                 // 0x005eff1c    8bce
                         call               ?InitialisePhysics@Living@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z                     // 0x005eff1e    e8edfeffff
                         mov.s              eax, edi                                 // 0x005eff23    8bc7
                         pop                edi                                      // 0x005eff25    5f
                         pop                esi                                      // 0x005eff26    5e
                         pop                ebx                                      // 0x005eff27    5b
                         ret                0x0018                                   // 0x005eff28    c21800
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                     // 0x005eff2b    e8c918e1ff
?GetPhysicsConstantsType@Villager@@UAEIXZ:
                         mov                eax, 0x00000007                          // 0x005eff30    b807000000
                         ret                                                         // 0x005eff35    c3
                         nop                                                         // 0x005eff36    90
                         nop                                                         // 0x005eff37    90
                         nop                                                         // 0x005eff38    90
                         nop                                                         // 0x005eff39    90
                         nop                                                         // 0x005eff3a    90
                         nop                                                         // 0x005eff3b    90
                         nop                                                         // 0x005eff3c    90
                         nop                                                         // 0x005eff3d    90
                         nop                                                         // 0x005eff3e    90
                         nop                                                         // 0x005eff3f    90
?SetUpPhysOb@Villager@@UAEXPAUPhysOb@@@Z:
                         sub                esp, 0x40                                // 0x005eff40    83ec40
                         push               ebx                                      // 0x005eff43    53
                         push               ebp                                      // 0x005eff44    55
                         push               esi                                      // 0x005eff45    56
                         push               edi                                      // 0x005eff46    57
                         mov.s              edi, ecx                                 // 0x005eff47    8bf9
                         mov                eax, dword ptr [edi]                     // 0x005eff49    8b07
                         call               dword ptr [eax + 0x638]                  // 0x005eff4b    ff9038060000
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x005eff51    d954241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]        // 0x005eff55    d81d40588c00
                         fnstsw             ax                                       // 0x005eff5b    dfe0
                         test               ah, 0x01                                 // 0x005eff5d    f6c401
                         {disp8} je         _jmp_addr_0x005eff6a                     // 0x005eff60    7408
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3c23d70a       // 0x005eff62    c744241c0ad7233c
_jmp_addr_0x005eff6a:    mov                edx, dword ptr [edi]                     // 0x005eff6a    8b17
                         push               0x1                                      // 0x005eff6c    6a01
                         mov.s              ecx, edi                                 // 0x005eff6e    8bcf
                         call               dword ptr [edx + 0x788]                  // 0x005eff70    ff9288070000
                         {disp8} mov        edx, dword ptr [esp + 0x20]              // 0x005eff76    8b542420
                         {disp8} mov        esi, dword ptr [esp + 0x58]              // 0x005eff7a    8b742458
                         lea                eax, dword ptr [eax + eax * 0x2]         // 0x005eff7e    8d0440
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00cc63e0]  // 0x005eff81    8d0cc5e063cc00
                         push               ecx                                      // 0x005eff88    51
                         push               edx                                      // 0x005eff89    52
                         mov.s              ecx, esi                                 // 0x005eff8a    8bce
                         call               _jmp_addr_0x007fb810                     // 0x005eff8c    e87fb82000
                         push               0x00000086                               // 0x005eff91    6886000000
                         push               0x00bf3b14                               // 0x005eff96    68143bbf00
                         push               0x000003c0                               // 0x005eff9b    68c0030000
                         {disp32} mov       dword ptr [esi + 0x00000154], 0x0000000c // 0x005effa0    c786540100000c000000
                         call               ___nw__FUl                               // 0x005effaa    e8e1b71e00
                         mov.s              ebx, eax                                 // 0x005effaf    8bd8
                         xor.s              ebp, ebp                                 // 0x005effb1    33ed
                         add                esp, 0x0c                                // 0x005effb3    83c40c
                         cmp.s              ebx, ebp                                 // 0x005effb6    3bdd
                         {disp8} je         _jmp_addr_0x005effe7                     // 0x005effb8    742d
                         {disp8} mov        dword ptr [esp + 0x54], ebx              // 0x005effba    895c2454
                         {disp8} mov        dword ptr [esp + 0x1c], 0x0000000c       // 0x005effbe    c744241c0c000000
_jmp_addr_0x005effc6:    {disp8} mov        ecx, dword ptr [esp + 0x54]              // 0x005effc6    8b4c2454
                         call               _jmp_addr_0x005f04c0                     // 0x005effca    e8f1040000
                         {disp8} mov        ecx, dword ptr [esp + 0x54]              // 0x005effcf    8b4c2454
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005effd3    8b44241c
                         add                ecx, 0x50                                // 0x005effd7    83c150
                         dec                eax                                      // 0x005effda    48
                         {disp8} mov        dword ptr [esp + 0x54], ecx              // 0x005effdb    894c2454
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x005effdf    8944241c
                         {disp8} jne        _jmp_addr_0x005effc6                     // 0x005effe3    75e1
                         {disp8} jmp        _jmp_addr_0x005effe9                     // 0x005effe5    eb02
_jmp_addr_0x005effe7:    xor.s              ebx, ebx                                 // 0x005effe7    33db
_jmp_addr_0x005effe9:    {disp32} mov       dword ptr [esi + 0x0000015c], ebx        // 0x005effe9    899e5c010000
                         mov                eax, dword ptr [edi]                     // 0x005effef    8b07
                         mov.s              ecx, edi                                 // 0x005efff1    8bcf
                         call               dword ptr [eax + 0x120]                  // 0x005efff3    ff9020010000
                         {disp32} fdivr     dword ptr [_rdata_float0p5]              // 0x005efff9    d83db4a38a00
                         mov                edx, dword ptr [edi]                     // 0x005effff    8b17
                         mov.s              ecx, edi                                 // 0x005f0001    8bcf
                         {disp8} fstp       dword ptr [esp + 0x54]                   // 0x005f0003    d95c2454
                         call               dword ptr [edx + 0x42c]                  // 0x005f0007    ff922c040000
                         {disp8} fmul       dword ptr [esp + 0x54]                   // 0x005f000d    d84c2454
                         {disp32} mov       dword ptr [esi + 0x000000f8], ebp        // 0x005f0011    89aef8000000
                         {disp32} mov       dword ptr [esi + 0x00000100], ebp        // 0x005f0017    89ae00010000
                         {disp32} fstp      dword ptr [esi + 0x000000fc]             // 0x005f001d    d99efc000000
                         mov                eax, dword ptr [edi]                     // 0x005f0023    8b07
                         mov.s              ecx, edi                                 // 0x005f0025    8bcf
                         call               dword ptr [eax + 0x42c]                  // 0x005f0027    ff902c040000
                         {disp32} fmul      dword ptr [_rdata_float0p5]              // 0x005f002d    d80db4a38a00
                         mov                edx, dword ptr [edi]                     // 0x005f0033    8b17
                         mov.s              ecx, edi                                 // 0x005f0035    8bcf
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x005f0037    d95c2410
                         call               dword ptr [edx + 0x64]                   // 0x005f003b    ff5264
                         fld                st(0)                                    // 0x005f003e    d9c0
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x005f0040    8d4c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c844]        // 0x005f0044    d80d44588c00
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x005f004a    d95c2418
                         fld                st(0)                                    // 0x005f004e    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8262c]        // 0x005f0050    d80d2cb69200
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x005f0056    d954241c
                         fxch               st(1)                                    // 0x005f005a    d9c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]        // 0x005f005c    d80d044a8c00
                         {disp8} fstp       dword ptr [esp + 0x54]                   // 0x005f0062    d95c2454
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x005f0066    d95c2414
                         call               ?SetIdentity@LHMatrix@@QAEXXZ            // 0x005f006a    e89134e1ff
                         {disp32} fld       qword ptr [rdata_bytes + 0x1eb48]        // 0x005f006f    dd05487b8c00
                         {disp32} mov       eax, dword ptr [esi + 0x00000154]        // 0x005f0075    8b8654010000
                         fcos                                                        // 0x005f007b    d9ff
                         {disp32} mov       edi, dword ptr [esi + 0x0000015c]        // 0x005f007d    8bbe5c010000
                         xor.s              edx, edx                                 // 0x005f0083    33d2
                         cmp.s              eax, ebp                                 // 0x005f0085    3bc5
                         {disp8} fst        dword ptr [esp + 0x40]                   // 0x005f0087    d9542440
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x005f008b    d95c2420
                         {disp32} fld       qword ptr [rdata_bytes + 0x1eb48]        // 0x005f008f    dd05487b8c00
                         fsin                                                        // 0x005f0095    d9fe
                         {disp8} fst        dword ptr [esp + 0x28]                   // 0x005f0097    d9542428
                         fchs                                                        // 0x005f009b    d9e0
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x005f009d    d95c2438
                         {disp32} jle       _jmp_addr_0x005f0299                     // 0x005f00a1    0f8ef2010000
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x005f00a7    8d4f14
_jmp_addr_0x005f00aa:    cmp                edx, 0x0b                                // 0x005f00aa    83fa0b
                         mov                dword ptr [edi], ebp                     // 0x005f00ad    892f
                         {disp8} mov        dword ptr [ecx + -0x08], ebp             // 0x005f00af    8969f8
                         {disp8} mov        dword ptr [ecx + -0x0c], ebp             // 0x005f00b2    8969f4
                         {disp8} mov        dword ptr [ecx + -0x10], ebp             // 0x005f00b5    8969f0
                         {disp32} ja        _jmp_addr_0x005f01bd                     // 0x005f00b8    0f87ff000000
                         jmp                dword ptr [edx*4 + 0x5f0484]             // 0x005f00be    ff249584045f00
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f00c5    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f00c9    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f00cc    8b442410
                         mov                dword ptr [ecx], eax                     // 0x005f00d0    8901
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f00d2    8b442414
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f00d6    894104
                         {disp32} jmp       _jmp_addr_0x005f01bd                     // 0x005f00d9    e9df000000
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f00de    d9442454
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f00e2    8b442410
                         fchs                                                        // 0x005f00e6    d9e0
                         mov                dword ptr [ecx], eax                     // 0x005f00e8    8901
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f00ea    d959fc
                         {disp32} jmp       _jmp_addr_0x005f01b4                     // 0x005f00ed    e9c2000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f00f2    8b442410
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f00f6    d9442454
                         mov                dword ptr [ecx], eax                     // 0x005f00fa    8901
                         fchs                                                        // 0x005f00fc    d9e0
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f00fe    8b442414
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0102    d959fc
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f0105    894104
                         {disp32} jmp       _jmp_addr_0x005f01bd                     // 0x005f0108    e9b0000000
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f010d    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0111    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x005f0114    8b442410
                         mov                dword ptr [ecx], eax                     // 0x005f0118    8901
                         {disp32} jmp       _jmp_addr_0x005f01b4                     // 0x005f011a    e995000000
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x005f011f    8b442418
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0123    8941fc
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005f0126    8b44241c
                         mov                dword ptr [ecx], ebp                     // 0x005f012a    8929
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f012c    894104
                         {disp32} jmp       _jmp_addr_0x005f01bd                     // 0x005f012f    e989000000
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x005f0134    d9442418
                         mov                dword ptr [ecx], ebp                     // 0x005f0138    8929
                         fchs                                                        // 0x005f013a    d9e0
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f013c    d959fc
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x005f013f    d944241c
                         {disp8} jmp        _jmp_addr_0x005f01b8                     // 0x005f0143    eb73
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x005f0145    d9442418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x005f0149    8b44241c
                         fchs                                                        // 0x005f014d    d9e0
                         mov                dword ptr [ecx], ebp                     // 0x005f014f    8929
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0151    d959fc
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f0154    894104
                         {disp8} jmp        _jmp_addr_0x005f01bd                     // 0x005f0157    eb64
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x005f0159    8b442418
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x005f015d    d944241c
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0161    8941fc
                         mov                dword ptr [ecx], ebp                     // 0x005f0164    8929
                         {disp8} jmp        _jmp_addr_0x005f01b8                     // 0x005f0166    eb50
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f0168    8b442454
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f016c    d9442410
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f0170    8941fc
                         fchs                                                        // 0x005f0173    d9e0
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f0175    8b442414
                         fstp               dword ptr [ecx]                          // 0x005f0179    d919
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f017b    894104
                         {disp8} jmp        _jmp_addr_0x005f01bd                     // 0x005f017e    eb3d
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f0180    d9442454
                         fchs                                                        // 0x005f0184    d9e0
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0186    d959fc
                         {disp8} jmp        _jmp_addr_0x005f01ac                     // 0x005f0189    eb21
                         {disp8} fld        dword ptr [esp + 0x54]                   // 0x005f018b    d9442454
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x005f018f    8b442414
                         fchs                                                        // 0x005f0193    d9e0
                         {disp8} mov        dword ptr [ecx + 0x04], eax              // 0x005f0195    894104
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f0198    d959fc
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f019b    d9442410
                         fchs                                                        // 0x005f019f    d9e0
                         fstp               dword ptr [ecx]                          // 0x005f01a1    d919
                         {disp8} jmp        _jmp_addr_0x005f01bd                     // 0x005f01a3    eb18
                         {disp8} mov        eax, dword ptr [esp + 0x54]              // 0x005f01a5    8b442454
                         {disp8} mov        dword ptr [ecx + -0x04], eax             // 0x005f01a9    8941fc
_jmp_addr_0x005f01ac:    {disp8} fld        dword ptr [esp + 0x10]                   // 0x005f01ac    d9442410
                         fchs                                                        // 0x005f01b0    d9e0
                         fstp               dword ptr [ecx]                          // 0x005f01b2    d919
_jmp_addr_0x005f01b4:    {disp8} fld        dword ptr [esp + 0x14]                   // 0x005f01b4    d9442414
_jmp_addr_0x005f01b8:    fchs                                                        // 0x005f01b8    d9e0
                         {disp8} fstp       dword ptr [ecx + 0x04]                   // 0x005f01ba    d95904
_jmp_addr_0x005f01bd:    {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f01bd    d941fc
                         fld                dword ptr [ecx]                          // 0x005f01c0    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f01c2    d94104
                         {disp8} fld        dword ptr [esp + 0x38]                   // 0x005f01c5    d9442438
                         fmul               st, st(1)                                // 0x005f01c9    d8c9
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x005f01cb    d944242c
                         fmul               st, st(3)                                // 0x005f01cf    d8cb
                         faddp              st(1), st                                // 0x005f01d1    dec1
                         fld                st(3)                                    // 0x005f01d3    d9c3
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x005f01d5    d84c2420
                         faddp              st(1), st                                // 0x005f01d9    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                   // 0x005f01db    d8442444
                         {disp8} fstp       dword ptr [ecx + -0x04]                  // 0x005f01df    d959fc
                         {disp8} fld        dword ptr [esp + 0x3c]                   // 0x005f01e2    d944243c
                         fmul               st, st(1)                                // 0x005f01e6    d8c9
                         {disp8} fld        dword ptr [esp + 0x30]                   // 0x005f01e8    d9442430
                         fmul               st, st(3)                                // 0x005f01ec    d8cb
                         faddp              st(1), st                                // 0x005f01ee    dec1
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x005f01f0    d9442424
                         fmul               st, st(4)                                // 0x005f01f4    d8cc
                         faddp              st(1), st                                // 0x005f01f6    dec1
                         {disp8} fadd       dword ptr [esp + 0x48]                   // 0x005f01f8    d8442448
                         fstp               dword ptr [ecx]                          // 0x005f01fc    d919
                         {disp8} fld        dword ptr [esp + 0x34]                   // 0x005f01fe    d9442434
                         fmul               st, st(2)                                // 0x005f0202    d8ca
                         {disp8} fld        dword ptr [esp + 0x40]                   // 0x005f0204    d9442440
                         fmul               st, st(2)                                // 0x005f0208    d8ca
                         faddp              st(1), st                                // 0x005f020a    dec1
                         {disp8} fld        dword ptr [esp + 0x28]                   // 0x005f020c    d9442428
                         fmul               st, st(4)                                // 0x005f0210    d8cc
                         faddp              st(1), st                                // 0x005f0212    dec1
                         {disp8} fadd       dword ptr [esp + 0x4c]                   // 0x005f0214    d844244c
                         {disp8} fstp       dword ptr [ecx + 0x04]                   // 0x005f0218    d95904
                         fstp               st(0)                                    // 0x005f021b    ddd8
                         fstp               st(0)                                    // 0x005f021d    ddd8
                         fstp               st(0)                                    // 0x005f021f    ddd8
                         {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f0221    d941fc
                         fld                dword ptr [ecx]                          // 0x005f0224    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f0226    d94104
                         {disp32} fld       dword ptr [esi + 0x00000150]             // 0x005f0229    d98650010000
                         fld                st(1)                                    // 0x005f022f    d9c1
                         fmul               st, st(2)                                // 0x005f0231    d8ca
                         fld                st(3)                                    // 0x005f0233    d9c3
                         fmul               st, st(4)                                // 0x005f0235    d8cc
                         faddp              st(1), st                                // 0x005f0237    dec1
                         fld                st(4)                                    // 0x005f0239    d9c4
                         fmul               st, st(5)                                // 0x005f023b    d8cd
                         faddp              st(1), st                                // 0x005f023d    dec1
                         fsqrt                                                       // 0x005f023f    d9fa
                         fstp               st(4)                                    // 0x005f0241    dddc
                         fxch               st(1)                                    // 0x005f0243    d9c9
                         fxch               st(3)                                    // 0x005f0245    d9cb
                         fcompp                                                      // 0x005f0247    ded9
                         fxch               st(1)                                    // 0x005f0249    d9c9
                         fstp               st(0)                                    // 0x005f024b    ddd8
                         fstp               st(0)                                    // 0x005f024d    ddd8
                         fnstsw             ax                                       // 0x005f024f    dfe0
                         test               ah, 0x01                                 // 0x005f0251    f6c401
                         {disp8} je         _jmp_addr_0x005f025e                     // 0x005f0254    7408
                         {disp32} fld       dword ptr [esi + 0x00000150]             // 0x005f0256    d98650010000
                         {disp8} jmp        _jmp_addr_0x005f027e                     // 0x005f025c    eb20
_jmp_addr_0x005f025e:    {disp8} fld        dword ptr [ecx + -0x04]                  // 0x005f025e    d941fc
                         fld                dword ptr [ecx]                          // 0x005f0261    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                   // 0x005f0263    d94104
                         fld                st(0)                                    // 0x005f0266    d9c0
                         fmul               st, st(1)                                // 0x005f0268    d8c9
                         fld                st(2)                                    // 0x005f026a    d9c2
                         fmul               st, st(3)                                // 0x005f026c    d8cb
                         faddp              st(1), st                                // 0x005f026e    dec1
                         fld                st(3)                                    // 0x005f0270    d9c3
                         fmul               st, st(4)                                // 0x005f0272    d8cc
                         faddp              st(1), st                                // 0x005f0274    dec1
                         fsqrt                                                       // 0x005f0276    d9fa
                         fstp               st(3)                                    // 0x005f0278    dddb
                         fstp               st(0)                                    // 0x005f027a    ddd8
                         fstp               st(0)                                    // 0x005f027c    ddd8
_jmp_addr_0x005f027e:    {disp32} mov       eax, dword ptr [esi + 0x00000154]        // 0x005f027e    8b8654010000
                         add                edi, 0x50                                // 0x005f0284    83c750
                         add                ecx, 0x50                                // 0x005f0287    83c150
                         inc                edx                                      // 0x005f028a    42
                         cmp.s              edx, eax                                 // 0x005f028b    3bd0
                         {disp32} fstp      dword ptr [esi + 0x00000150]             // 0x005f028d    d99e50010000
                         {disp32} jl        _jmp_addr_0x005f00aa                     // 0x005f0293    0f8c11feffff
_jmp_addr_0x005f0299:    push               0x000000cc                               // 0x005f0299    68cc000000
                         push               0x00bf3b14                               // 0x005f029e    68143bbf00
                         push               0x000002d0                               // 0x005f02a3    68d0020000
                         {disp32} mov       dword ptr [esi + 0x00000160], 0x00000014 // 0x005f02a8    c7866001000014000000
                         call               ___nw__FUl                               // 0x005f02b2    e8d9b41e00
                         {disp32} mov       dword ptr [esi + 0x00000164], eax        // 0x005f02b7    898664010000
                         {disp8} mov        dword ptr [eax + 0x08], ebp              // 0x005f02bd    896808
                         mov                dword ptr [eax], 0x00000001              // 0x005f02c0    c70001000000
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000002       // 0x005f02c6    c7400402000000
                         {disp8} mov        dword ptr [eax + 0x24], ebp              // 0x005f02cd    896824
                         {disp8} mov        dword ptr [eax + 0x2c], 0x00000001       // 0x005f02d0    c7402c01000000
                         mov                edx, 0x00000003                          // 0x005f02d7    ba03000000
                         {disp8} mov        dword ptr [eax + 0x28], edx              // 0x005f02dc    895028
                         {disp8} mov        dword ptr [eax + 0x50], edx              // 0x005f02df    895050
                         {disp8} mov        dword ptr [eax + 0x4c], 0x00000001       // 0x005f02e2    c7404c01000000
                         mov                ebx, 0x00000005                          // 0x005f02e9    bb05000000
                         {disp8} mov        dword ptr [eax + 0x48], ebx              // 0x005f02ee    895848
                         {disp8} mov        dword ptr [eax + 0x74], edx              // 0x005f02f1    895074
                         {disp8} mov        dword ptr [eax + 0x70], ebx              // 0x005f02f4    895870
                         mov                ecx, 0x00000007                          // 0x005f02f7    b907000000
                         {disp8} mov        dword ptr [eax + 0x6c], ecx              // 0x005f02fc    89486c
                         {disp32} mov       dword ptr [eax + 0x00000094], edx        // 0x005f02ff    899094000000
                         {disp32} mov       dword ptr [eax + 0x00000090], ecx        // 0x005f0305    898890000000
                         {disp32} mov       dword ptr [eax + 0x00000098], ebp        // 0x005f030b    89a898000000
                         {disp32} mov       dword ptr [eax + 0x000000b8], ecx        // 0x005f0311    8988b8000000
                         {disp32} mov       dword ptr [eax + 0x000000bc], ebp        // 0x005f0317    89a8bc000000
                         mov                edi, 0x00000004                          // 0x005f031d    bf04000000
                         {disp32} mov       dword ptr [eax + 0x000000b4], edi        // 0x005f0322    89b8b4000000
                         {disp32} mov       dword ptr [eax + 0x000000e0], ebp        // 0x005f0328    89a8e0000000
                         {disp32} mov       dword ptr [eax + 0x000000dc], edi        // 0x005f032e    89b8dc000000
                         mov                edx, 0x00000006                          // 0x005f0334    ba06000000
                         {disp32} mov       dword ptr [eax + 0x000000d8], edx        // 0x005f0339    8990d8000000
                         {disp32} mov       dword ptr [eax + 0x00000104], ebp        // 0x005f033f    89a804010000
                         {disp32} mov       dword ptr [eax + 0x00000100], edx        // 0x005f0345    899000010000
                         {disp32} mov       dword ptr [eax + 0x000000fc], 0x00000002 // 0x005f034b    c780fc00000002000000
                         {disp32} mov       dword ptr [eax + 0x00000120], edx        // 0x005f0355    899020010000
                         {disp32} mov       dword ptr [eax + 0x00000124], 0x00000002 // 0x005f035b    c7802401000002000000
                         mov                ebp, 0x00000001                          // 0x005f0365    bd01000000
                         {disp32} mov       dword ptr [eax + 0x00000128], ebp        // 0x005f036a    89a828010000
                         {disp32} mov       dword ptr [eax + 0x0000014c], ebp        // 0x005f0370    89a84c010000
                         {disp32} mov       dword ptr [eax + 0x00000148], edx        // 0x005f0376    899048010000
                         {disp32} mov       dword ptr [eax + 0x00000144], ebx        // 0x005f037c    899844010000
                         {disp32} mov       dword ptr [eax + 0x00000170], ecx        // 0x005f0382    898870010000
                         {disp32} mov       dword ptr [eax + 0x00000168], 0x00000009 // 0x005f0388    c7806801000009000000
                         {disp32} mov       dword ptr [eax + 0x0000016c], ebx        // 0x005f0392    89986c010000
                         {disp32} mov       dword ptr [eax + 0x00000194], ecx        // 0x005f0398    898894010000
                         {disp32} mov       dword ptr [eax + 0x00000190], 0x00000009 // 0x005f039e    c7809001000009000000
                         mov                ebp, 0x0000000b                          // 0x005f03a8    bd0b000000
                         {disp32} mov       dword ptr [eax + 0x0000018c], ebp        // 0x005f03ad    89a88c010000
                         {disp32} mov       dword ptr [eax + 0x000001b4], ecx        // 0x005f03b3    8988b4010000
                         {disp32} mov       dword ptr [eax + 0x000001b0], ebp        // 0x005f03b9    89a8b0010000
                         {disp32} mov       dword ptr [eax + 0x000001b8], edi        // 0x005f03bf    89b8b8010000
                         {disp32} mov       dword ptr [eax + 0x000001d4], 0x00000008 // 0x005f03c5    c780d401000008000000
                         {disp32} mov       dword ptr [eax + 0x000001d8], ebp        // 0x005f03cf    89a8d8010000
                         {disp32} mov       dword ptr [eax + 0x000001dc], edi        // 0x005f03d5    89b8dc010000
                         {disp32} mov       dword ptr [eax + 0x000001fc], 0x00000008 // 0x005f03db    c780fc01000008000000
                         {disp32} mov       dword ptr [eax + 0x00000200], edi        // 0x005f03e5    89b800020000
                         mov                ecx, 0x0000000a                          // 0x005f03eb    b90a000000
                         {disp32} mov       dword ptr [eax + 0x000001f8], ecx        // 0x005f03f0    8988f8010000
                         {disp32} mov       dword ptr [eax + 0x0000021c], edx        // 0x005f03f6    89901c020000
                         {disp32} mov       dword ptr [eax + 0x00000220], ecx        // 0x005f03fc    898820020000
                         {disp32} mov       dword ptr [eax + 0x00000224], edi        // 0x005f0402    89b824020000
                         {disp32} mov       dword ptr [eax + 0x00000244], edx        // 0x005f0408    899044020000
                         {disp32} mov       dword ptr [eax + 0x00000240], ecx        // 0x005f040e    898840020000
                         {disp32} mov       dword ptr [eax + 0x00000248], ebx        // 0x005f0414    899848020000
                         {disp32} mov       dword ptr [eax + 0x00000268], ecx        // 0x005f041a    898868020000
                         {disp32} mov       dword ptr [eax + 0x0000026c], ebx        // 0x005f0420    89986c020000
                         mov                edx, 0x00000009                          // 0x005f0426    ba09000000
                         {disp32} mov       dword ptr [eax + 0x00000264], edx        // 0x005f042b    899064020000
                         {disp32} mov       dword ptr [eax + 0x0000028c], ecx        // 0x005f0431    89888c020000
                         {disp32} mov       dword ptr [eax + 0x00000288], ebp        // 0x005f0437    89a888020000
                         {disp32} mov       dword ptr [eax + 0x00000290], edx        // 0x005f043d    899090020000
                         {disp32} mov       dword ptr [eax + 0x000002b0], ecx        // 0x005f0443    8988b0020000
                         add                esp, 0x0c                                // 0x005f0449    83c40c
                         mov.s              ecx, esi                                 // 0x005f044c    8bce
                         {disp32} mov       dword ptr [eax + 0x000002ac], 0x00000008 // 0x005f044e    c780ac02000008000000
                         {disp32} mov       dword ptr [eax + 0x000002b4], ebp        // 0x005f0458    89a8b4020000
                         call               _jmp_addr_0x007fb880                     // 0x005f045e    e81db42000
                         {disp32} fld       dword ptr [esi + 0x0000014c]             // 0x005f0463    d9864c010000
                         fadd.s             st(0), st(0)                             // 0x005f0469    dcc0
                         {disp32} fstp      dword ptr [esi + 0x0000014c]             // 0x005f046b    d99e4c010000
                         mov.s              ecx, esi                                 // 0x005f0471    8bce
                         call               _jmp_addr_0x007fc760                     // 0x005f0473    e8e8c22000
                         pop                edi                                      // 0x005f0478    5f
                         pop                esi                                      // 0x005f0479    5e
                         pop                ebp                                      // 0x005f047a    5d
                         pop                ebx                                      // 0x005f047b    5b
                         add                esp, 0x40                                // 0x005f047c    83c440
                         ret                0x0004                                   // 0x005f047f    c20400

// Snippet: db, [0x005f0482, 0x005f0484)
.byte 0x8b, 0xff                  // 0x005f0482

// Snippet: jmptbl, [0x005f0484, 0x005f04b4)
.byte 0xc5, 0x00, 0x5f, 0x00      // 0x005f0484
.byte 0xde, 0x00, 0x5f, 0x00      // 0x005f0488
.byte 0xf2, 0x00, 0x5f, 0x00      // 0x005f048c
.byte 0x0d, 0x01, 0x5f, 0x00      // 0x005f0490
.byte 0x1f, 0x01, 0x5f, 0x00      // 0x005f0494
.byte 0x34, 0x01, 0x5f, 0x00      // 0x005f0498
.byte 0x45, 0x01, 0x5f, 0x00      // 0x005f049c
.byte 0x59, 0x01, 0x5f, 0x00      // 0x005f04a0
.byte 0x68, 0x01, 0x5f, 0x00      // 0x005f04a4
.byte 0x80, 0x01, 0x5f, 0x00      // 0x005f04a8
.byte 0x8b, 0x01, 0x5f, 0x00      // 0x005f04ac
.byte 0xa5, 0x01, 0x5f, 0x00      // 0x005f04b0

// Snippet: db, [0x005f04b4, 0x005f04c0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f04b4
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f04b8
.byte 0x90, 0x90, 0x90, 0x90      // 0x005f04bc

