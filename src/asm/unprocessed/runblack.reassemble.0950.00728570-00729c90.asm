.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern _jmp_addr_0x0046e7b0
.extern _jmp_addr_0x0046e890
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z
.extern _jmp_addr_0x005c9c60
.extern _jmp_addr_0x005cd170
.extern _jmp_addr_0x005cee30
.extern _jmp_addr_0x005d1260
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x005dc610
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005dca20
.extern _jmp_addr_0x005fb490
.extern _jmp_addr_0x005fb520
.extern _jmp_addr_0x005fb5d0
.extern ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ
.extern _jmp_addr_0x005fb710
.extern _jmp_addr_0x005fb7a0
.extern _jmp_addr_0x005fb830
.extern _jmp_addr_0x006022c0
.extern _jmp_addr_0x00602460
.extern _jmp_addr_0x00603720
.extern ?ProcessInHand@Object@@UAE_NXZ
.extern _jmp_addr_0x0063b5d0
.extern _jmp_addr_0x0063e540
.extern _jmp_addr_0x0064ab20
.extern ?IsNeutral@GPlayer@@QAE_NXZ
.extern ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ
.extern _jmp_addr_0x00682e10
.extern ?CreateTribalPowerColumn@PSysHandFX@@SAXW4TRIBE_TYPE@@ABULHPoint@@K@Z
.extern _jmp_addr_0x0068f240
.extern _jmp_addr_0x0071fa10
.extern _jmp_addr_0x007201d0
.extern _jmp_addr_0x007201f0
.extern _jmp_addr_0x00720f90
.extern _jmp_addr_0x00720fa0
.extern _jmp_addr_0x00722b30
.extern _jmp_addr_0x007281a0
.extern _jmp_addr_0x007281f0
.extern _jmp_addr_0x00728200
.extern _jmp_addr_0x0072a2f0
.extern _jmp_addr_0x0072afe0
.extern _jmp_addr_0x0072b200
.extern _jmp_addr_0x0077c2b0
.extern _jmp_addr_0x0077f8f0
.extern _jmp_addr_0x0077f950
.extern _jmp_addr_0x0077f9a0
.extern ___RTDynamicCast
.extern ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z

.globl _jmp_addr_0x007285e0
.globl _jmp_addr_0x00728620
.globl _jmp_addr_0x00728f70
.globl _jmp_addr_0x00729020
.globl _jmp_addr_0x007290e0
.globl _jmp_addr_0x007290f0
.globl _jmp_addr_0x00729800
.globl _jmp_addr_0x00729810
.globl _jmp_addr_0x00729860
.globl _jmp_addr_0x00729890
.globl _jmp_addr_0x00729900
.globl _jmp_addr_0x00729a30
.globl _jmp_addr_0x00729a70
.globl _jmp_addr_0x00729a80
.globl _jmp_addr_0x00729ac0
.globl _jmp_addr_0x00729af0
.globl _jmp_addr_0x00729b30
.globl ?InteractsWithPhysicsObjects@SpellSeed@@UAE_NXZ
.globl ?ValidForPlaceInHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?IsG3DObjectDrawnInHand@SpellSeed@@UAE_NXZ
.globl ?GetHoldRadius@SpellSeed@@UAEMXZ
.globl ?GetHoldLoweringMultiplier@SpellSeed@@UAEMXZ
.globl ?GetHoldYRotate@SpellSeed@@UAEMXZ
.globl ?GetHoldType@SpellSeed@@UAE?AW4HOLD_TYPE@@XZ
.globl ?IsInterfacePowerUpWhenInHand@SpellSeed@@UBEIXZ
.globl ?ApplyOnlyAfterRecSystem@SpellSeed@@UAEIXZ
.globl ?ValidToApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z
.globl ?ValidToApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z
.globl ?ValidForLockedApplyProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?ValidToRemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.globl ?InterfaceSetInMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?InterfaceSetOutMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?GetWorshipSite@SpellSeed@@UAEPAVWorshipSite@@XZ
.globl ?ApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z
.globl ?ApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.globl ?ApplyUnlockProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?RemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.globl ?InsertMapObject@SpellSeed@@UAEXXZ
.globl ?RemoveMapObject@SpellSeed@@UAEXXZ
.globl ?IsEffectReceiver@SpellSeed@@UAEIPAVEffectValues@@@Z
.globl ?GetMesh@SpellSeed@@UBEHXZ
.globl ?GetPower@SpellSeed@@UBEMXZ
.globl ?GetPSysPower@SpellSeed@@UBEMXZ
.globl ?ProcessInHand@SpellSeed@@UAE_NXZ

start_0x00728570_0x00729c90:
// Snippet: asm, [0x00728570, 0x00729c7f)
?InteractsWithPhysicsObjects@SpellSeed@@UAE_NXZ:
                         xor.s              al, al                                   // 0x00728570    32c0
                         ret                                                         // 0x00728572    c3
                         nop                                                         // 0x00728573    90
                         nop                                                         // 0x00728574    90
                         nop                                                         // 0x00728575    90
                         nop                                                         // 0x00728576    90
                         nop                                                         // 0x00728577    90
                         nop                                                         // 0x00728578    90
                         nop                                                         // 0x00728579    90
                         nop                                                         // 0x0072857a    90
                         nop                                                         // 0x0072857b    90
                         nop                                                         // 0x0072857c    90
                         nop                                                         // 0x0072857d    90
                         nop                                                         // 0x0072857e    90
                         nop                                                         // 0x0072857f    90
?ValidForPlaceInHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         {disp32} mov       eax, dword ptr [_game]                   // 0x00728580    a15c19d000
                         push               esi                                      // 0x00728585    56
                         mov.s              esi, ecx                                 // 0x00728586    8bf1
                         {disp8} mov        ecx, dword ptr [eax + 0x14]              // 0x00728588    8b4814
                         test               ch, 0x20                                 // 0x0072858b    f6c520
                         {disp8} je         _jmp_addr_0x007285ab                     // 0x0072858e    741b
                         mov.s              ecx, esi                                 // 0x00728590    8bce
                         call               _jmp_addr_0x00729800                     // 0x00728592    e869120000
                         mov.s              ecx, eax                                 // 0x00728597    8bc8
                         call               ?IsNeutral@GPlayer@@QAE_NXZ              // 0x00728599    e86226f2ff
                         test               eax, eax                                 // 0x0072859e    85c0
                         {disp8} je         _jmp_addr_0x007285ab                     // 0x007285a0    7409
                         mov                eax, 0x00000001                          // 0x007285a2    b801000000
                         pop                esi                                      // 0x007285a7    5e
                         ret                0x0004                                   // 0x007285a8    c20400
_jmp_addr_0x007285ab:    {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x007285ab    8b4c2408
                         mov                edx, dword ptr [ecx]                     // 0x007285af    8b11
                         push               edi                                      // 0x007285b1    57
                         call               dword ptr [edx + 0x1c]                   // 0x007285b2    ff521c
                         mov.s              ecx, esi                                 // 0x007285b5    8bce
                         mov.s              edi, eax                                 // 0x007285b7    8bf8
                         call               _jmp_addr_0x00729800                     // 0x007285b9    e842120000
                         cmp.s              eax, edi                                 // 0x007285be    3bc7
                         pop                edi                                      // 0x007285c0    5f
                         {disp8} jne        _jmp_addr_0x007285d7                     // 0x007285c1    7514
                         mov                eax, dword ptr [esi]                     // 0x007285c3    8b06
                         mov.s              ecx, esi                                 // 0x007285c5    8bce
                         call               dword ptr [eax + 0x2c]                   // 0x007285c7    ff502c
                         test               eax, eax                                 // 0x007285ca    85c0
                         {disp8} je         _jmp_addr_0x007285d7                     // 0x007285cc    7409
                         mov                eax, 0x00000001                          // 0x007285ce    b801000000
                         pop                esi                                      // 0x007285d3    5e
                         ret                0x0004                                   // 0x007285d4    c20400
_jmp_addr_0x007285d7:    xor.s              eax, eax                                 // 0x007285d7    33c0
                         pop                esi                                      // 0x007285d9    5e
                         ret                0x0004                                   // 0x007285da    c20400
                         nop                                                         // 0x007285dd    90
                         nop                                                         // 0x007285de    90
                         nop                                                         // 0x007285df    90
_jmp_addr_0x007285e0:    {disp8} mov        eax, dword ptr [ecx + 0x6c]              // 0x007285e0    8b416c
                         push               eax                                      // 0x007285e3    50
                         call               _jmp_addr_0x007290e0                     // 0x007285e4    e8f70a0000
                         mov.s              ecx, eax                                 // 0x007285e9    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x007285eb    e8f0290000
                         {disp8} mov        eax, dword ptr [eax + 0x54]              // 0x007285f0    8b4054
                         ret                                                         // 0x007285f3    c3
                         nop                                                         // 0x007285f4    90
                         nop                                                         // 0x007285f5    90
                         nop                                                         // 0x007285f6    90
                         nop                                                         // 0x007285f7    90
                         nop                                                         // 0x007285f8    90
                         nop                                                         // 0x007285f9    90
                         nop                                                         // 0x007285fa    90
                         nop                                                         // 0x007285fb    90
                         nop                                                         // 0x007285fc    90
                         nop                                                         // 0x007285fd    90
                         nop                                                         // 0x007285fe    90
                         nop                                                         // 0x007285ff    90
?IsG3DObjectDrawnInHand@SpellSeed@@UAE_NXZ:
                         call               _jmp_addr_0x007290f0                     // 0x00728600    e8eb0a0000
                         {disp8} mov        edx, dword ptr [eax + 0x38]              // 0x00728605    8b5038
                         xor.s              ecx, ecx                                 // 0x00728608    33c9
                         cmp                edx, 0x01                                // 0x0072860a    83fa01
                         sete               cl                                       // 0x0072860d    0f94c1
                         mov.s              al, cl                                   // 0x00728610    8ac1
                         ret                                                         // 0x00728612    c3
                         nop                                                         // 0x00728613    90
                         nop                                                         // 0x00728614    90
                         nop                                                         // 0x00728615    90
                         nop                                                         // 0x00728616    90
                         nop                                                         // 0x00728617    90
                         nop                                                         // 0x00728618    90
                         nop                                                         // 0x00728619    90
                         nop                                                         // 0x0072861a    90
                         nop                                                         // 0x0072861b    90
                         nop                                                         // 0x0072861c    90
                         nop                                                         // 0x0072861d    90
                         nop                                                         // 0x0072861e    90
                         nop                                                         // 0x0072861f    90
_jmp_addr_0x00728620:    {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00728620    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x0000015c]        // 0x00728623    8b905c010000
                         xor.s              ecx, ecx                                 // 0x00728629    33c9
                         cmp                edx, 0x01                                // 0x0072862b    83fa01
                         sete               cl                                       // 0x0072862e    0f94c1
                         mov.s              al, cl                                   // 0x00728631    8ac1
                         ret                                                         // 0x00728633    c3
                         nop                                                         // 0x00728634    90
                         nop                                                         // 0x00728635    90
                         nop                                                         // 0x00728636    90
                         nop                                                         // 0x00728637    90
                         nop                                                         // 0x00728638    90
                         nop                                                         // 0x00728639    90
                         nop                                                         // 0x0072863a    90
                         nop                                                         // 0x0072863b    90
                         nop                                                         // 0x0072863c    90
                         nop                                                         // 0x0072863d    90
                         nop                                                         // 0x0072863e    90
                         nop                                                         // 0x0072863f    90
?GetHoldRadius@SpellSeed@@UAEMXZ:
                         mov                eax, dword ptr [ecx]                     // 0x00728640    8b01
                         push               esi                                      // 0x00728642    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]              // 0x00728643    8b7128
                         call               dword ptr [eax + 0x120]                  // 0x00728646    ff9020010000
                         {disp32} fmul      dword ptr [esi + 0x00000150]             // 0x0072864c    d88e50010000
                         pop                esi                                      // 0x00728652    5e
                         ret                                                         // 0x00728653    c3
                         nop                                                         // 0x00728654    90
                         nop                                                         // 0x00728655    90
                         nop                                                         // 0x00728656    90
                         nop                                                         // 0x00728657    90
                         nop                                                         // 0x00728658    90
                         nop                                                         // 0x00728659    90
                         nop                                                         // 0x0072865a    90
                         nop                                                         // 0x0072865b    90
                         nop                                                         // 0x0072865c    90
                         nop                                                         // 0x0072865d    90
                         nop                                                         // 0x0072865e    90
                         nop                                                         // 0x0072865f    90
?GetHoldLoweringMultiplier@SpellSeed@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00728660    8b4128
                         {disp32} fld       dword ptr [eax + 0x0000014c]             // 0x00728663    d9804c010000
                         ret                                                         // 0x00728669    c3
                         nop                                                         // 0x0072866a    90
                         nop                                                         // 0x0072866b    90
                         nop                                                         // 0x0072866c    90
                         nop                                                         // 0x0072866d    90
                         nop                                                         // 0x0072866e    90
                         nop                                                         // 0x0072866f    90
?GetHoldYRotate@SpellSeed@@UAEMXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00728670    8b4128
                         {disp32} fld       dword ptr [eax + 0x00000154]             // 0x00728673    d98054010000
                         ret                                                         // 0x00728679    c3
                         nop                                                         // 0x0072867a    90
                         nop                                                         // 0x0072867b    90
                         nop                                                         // 0x0072867c    90
                         nop                                                         // 0x0072867d    90
                         nop                                                         // 0x0072867e    90
                         nop                                                         // 0x0072867f    90
?GetHoldType@SpellSeed@@UAE?AW4HOLD_TYPE@@XZ:
                         {disp32} mov       al, byte ptr [ecx + 0x00000090]          // 0x00728680    8a8190000000
                         test               al, al                                   // 0x00728686    84c0
                         {disp8} jne        _jmp_addr_0x00728690                     // 0x00728688    7506
                         mov                eax, 0x00000002                          // 0x0072868a    b802000000
                         ret                                                         // 0x0072868f    c3
_jmp_addr_0x00728690:    {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00728690    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000158]        // 0x00728693    8b8058010000
                         ret                                                         // 0x00728699    c3
                         nop                                                         // 0x0072869a    90
                         nop                                                         // 0x0072869b    90
                         nop                                                         // 0x0072869c    90
                         nop                                                         // 0x0072869d    90
                         nop                                                         // 0x0072869e    90
                         nop                                                         // 0x0072869f    90
?IsInterfacePowerUpWhenInHand@SpellSeed@@UBEIXZ:
                         mov                eax, 0x00000001                          // 0x007286a0    b801000000
                         ret                                                         // 0x007286a5    c3
                         nop                                                         // 0x007286a6    90
                         nop                                                         // 0x007286a7    90
                         nop                                                         // 0x007286a8    90
                         nop                                                         // 0x007286a9    90
                         nop                                                         // 0x007286aa    90
                         nop                                                         // 0x007286ab    90
                         nop                                                         // 0x007286ac    90
                         nop                                                         // 0x007286ad    90
                         nop                                                         // 0x007286ae    90
                         nop                                                         // 0x007286af    90
?ApplyOnlyAfterRecSystem@SpellSeed@@UAEIXZ:
                         call               _jmp_addr_0x007290e0                     // 0x007286b0    e82b0a0000
                         {disp32} mov       edx, dword ptr [eax + 0x00000110]        // 0x007286b5    8b9010010000
                         xor.s              ecx, ecx                                 // 0x007286bb    33c9
                         cmp                edx, 0x01                                // 0x007286bd    83fa01
                         sete               cl                                       // 0x007286c0    0f94c1
                         mov.s              eax, ecx                                 // 0x007286c3    8bc1
                         ret                                                         // 0x007286c5    c3
                         nop                                                         // 0x007286c6    90
                         nop                                                         // 0x007286c7    90
                         nop                                                         // 0x007286c8    90
                         nop                                                         // 0x007286c9    90
                         nop                                                         // 0x007286ca    90
                         nop                                                         // 0x007286cb    90
                         nop                                                         // 0x007286cc    90
                         nop                                                         // 0x007286cd    90
                         nop                                                         // 0x007286ce    90
                         nop                                                         // 0x007286cf    90
?ValidToApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z:
                         push               esi                                      // 0x007286d0    56
                         push               edi                                      // 0x007286d1    57
                         mov.s              edi, ecx                                 // 0x007286d2    8bf9
                         {disp32} mov       al, byte ptr [edi + 0x00000090]          // 0x007286d4    8a8790000000
                         test               al, al                                   // 0x007286da    84c0
                         {disp8} jne        _jmp_addr_0x007286e5                     // 0x007286dc    7507
                         pop                edi                                      // 0x007286de    5f
                         xor.s              eax, eax                                 // 0x007286df    33c0
                         pop                esi                                      // 0x007286e1    5e
                         ret                0x0008                                   // 0x007286e2    c20800
_jmp_addr_0x007286e5:    {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x007286e5    8b742410
                         mov                eax, dword ptr [esi]                     // 0x007286e9    8b06
                         mov.s              ecx, esi                                 // 0x007286eb    8bce
                         call               dword ptr [eax + 0x48c]                  // 0x007286ed    ff908c040000
                         test               eax, eax                                 // 0x007286f3    85c0
                         {disp8} je         _jmp_addr_0x007286fe                     // 0x007286f5    7407
                         pop                edi                                      // 0x007286f7    5f
                         xor.s              eax, eax                                 // 0x007286f8    33c0
                         pop                esi                                      // 0x007286fa    5e
                         ret                0x0008                                   // 0x007286fb    c20800
_jmp_addr_0x007286fe:    {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x007286fe    8b4c240c
                         mov                edx, dword ptr [ecx]                     // 0x00728702    8b11
                         call               dword ptr [edx + 0x1c]                   // 0x00728704    ff521c
                         push               eax                                      // 0x00728707    50
                         push               esi                                      // 0x00728708    56
                         mov.s              ecx, edi                                 // 0x00728709    8bcf
                         call               _jmp_addr_0x00729190                     // 0x0072870b    e8800a0000
                         pop                edi                                      // 0x00728710    5f
                         pop                esi                                      // 0x00728711    5e
                         ret                0x0008                                   // 0x00728712    c20800
                         nop                                                         // 0x00728715    90
                         nop                                                         // 0x00728716    90
                         nop                                                         // 0x00728717    90
                         nop                                                         // 0x00728718    90
                         nop                                                         // 0x00728719    90
                         nop                                                         // 0x0072871a    90
                         nop                                                         // 0x0072871b    90
                         nop                                                         // 0x0072871c    90
                         nop                                                         // 0x0072871d    90
                         nop                                                         // 0x0072871e    90
                         nop                                                         // 0x0072871f    90
?ValidToApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z:
                         push               esi                                      // 0x00728720    56
                         mov.s              esi, ecx                                 // 0x00728721    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000090]          // 0x00728723    8a8690000000
                         test               al, al                                   // 0x00728729    84c0
                         {disp8} jne        _jmp_addr_0x00728733                     // 0x0072872b    7506
                         xor.s              eax, eax                                 // 0x0072872d    33c0
                         pop                esi                                      // 0x0072872f    5e
                         ret                0x0008                                   // 0x00728730    c20800
_jmp_addr_0x00728733:    {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x00728733    8b4c2408
                         mov                eax, dword ptr [ecx]                     // 0x00728737    8b01
                         call               dword ptr [eax + 0x1c]                   // 0x00728739    ff501c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x0072873c    8b4c240c
                         push               eax                                      // 0x00728740    50
                         push               ecx                                      // 0x00728741    51
                         mov.s              ecx, esi                                 // 0x00728742    8bce
                         call               _jmp_addr_0x00729150                     // 0x00728744    e8070a0000
                         pop                esi                                      // 0x00728749    5e
                         ret                0x0008                                   // 0x0072874a    c20800
                         nop                                                         // 0x0072874d    90
                         nop                                                         // 0x0072874e    90
                         nop                                                         // 0x0072874f    90
?ValidForLockedApplyProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         call               _jmp_addr_0x00729820                     // 0x00728750    e8cb100000
                         neg                eax                                      // 0x00728755    f7d8
                         sbb.s              eax, eax                                 // 0x00728757    1bc0
                         neg                eax                                      // 0x00728759    f7d8
                         ret                0x0004                                   // 0x0072875b    c20400
                         nop                                                         // 0x0072875e    90
                         nop                                                         // 0x0072875f    90
?ValidToRemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x00728760    8b4c2408
                         call               _jmp_addr_0x00603720                     // 0x00728764    e8b7afedff
                         neg                eax                                      // 0x00728769    f7d8
                         sbb.s              eax, eax                                 // 0x0072876b    1bc0
                         neg                eax                                      // 0x0072876d    f7d8
                         ret                0x0008                                   // 0x0072876f    c20800
                         nop                                                         // 0x00728772    90
                         nop                                                         // 0x00728773    90
                         nop                                                         // 0x00728774    90
                         nop                                                         // 0x00728775    90
                         nop                                                         // 0x00728776    90
                         nop                                                         // 0x00728777    90
                         nop                                                         // 0x00728778    90
                         nop                                                         // 0x00728779    90
                         nop                                                         // 0x0072877a    90
                         nop                                                         // 0x0072877b    90
                         nop                                                         // 0x0072877c    90
                         nop                                                         // 0x0072877d    90
                         nop                                                         // 0x0072877e    90
                         nop                                                         // 0x0072877f    90
_jmp_addr_0x00728780:    push               ecx                                      // 0x00728780    51
                         push               esi                                      // 0x00728781    56
                         mov.s              esi, ecx                                 // 0x00728782    8bf1
                         push               edi                                      // 0x00728784    57
                         {disp8} mov        edi, dword ptr [esi + 0x60]              // 0x00728785    8b7e60
                         test               edi, edi                                 // 0x00728788    85ff
                         {disp8} je         _jmp_addr_0x007287dd                     // 0x0072878a    7451
                         {disp8} fld        dword ptr [edi + 0x38]                   // 0x0072878c    d94738
                         {disp8} fst        dword ptr [esp + 0x08]                   // 0x0072878f    d9542408
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00728793    8b442408
                         {disp8} fstp       dword ptr [esi + 0x7c]                   // 0x00728797    d95e7c
                         push               eax                                      // 0x0072879a    50
                         call               _jmp_addr_0x00729a50                     // 0x0072879b    e8b0120000
                         fstp               st(0)                                    // 0x007287a0    ddd8
                         {disp32} fld       dword ptr [edi + 0x000000b8]             // 0x007287a2    d987b8000000
                         mov.s              ecx, edi                                 // 0x007287a8    8bcf
                         {disp32} fstp      dword ptr [esi + 0x00000084]             // 0x007287aa    d99e84000000
                         mov                edx, dword ptr [edi]                     // 0x007287b0    8b17
                         call               dword ptr [edx + 0x550]                  // 0x007287b2    ff9250050000
                         mov.s              ecx, esi                                 // 0x007287b8    8bce
                         {disp32} mov       dword ptr [esi + 0x00000080], eax        // 0x007287ba    898680000000
                         call               _jmp_addr_0x00728200                     // 0x007287c0    e83bfaffff
                         {disp8} mov        byte ptr [esi + 0x70], 0x00              // 0x007287c5    c6467000
                         mov                eax, dword ptr [edi]                     // 0x007287c9    8b07
                         mov.s              ecx, edi                                 // 0x007287cb    8bcf
                         call               dword ptr [eax + 0x518]                  // 0x007287cd    ff9018050000
                         neg                al                                       // 0x007287d3    f6d8
                         pop                edi                                      // 0x007287d5    5f
                         pop                esi                                      // 0x007287d6    5e
                         sbb.s              eax, eax                                 // 0x007287d7    1bc0
                         neg                eax                                      // 0x007287d9    f7d8
                         pop                ecx                                      // 0x007287db    59
                         ret                                                         // 0x007287dc    c3
_jmp_addr_0x007287dd:    pop                edi                                      // 0x007287dd    5f
                         {disp8} mov        dword ptr [esi + 0x7c], 0xbf800000       // 0x007287de    c7467c000080bf
                         {disp32} mov       dword ptr [esi + 0x00000084], 0x00000000 // 0x007287e5    c7868400000000000000
                         {disp32} mov       dword ptr [esi + 0x00000080], 0xffffffff // 0x007287ef    c78680000000ffffffff
                         mov                eax, 0x00000001                          // 0x007287f9    b801000000
                         pop                esi                                      // 0x007287fe    5e
                         pop                ecx                                      // 0x007287ff    59
                         ret                                                         // 0x00728800    c3
                         nop                                                         // 0x00728801    90
                         nop                                                         // 0x00728802    90
                         nop                                                         // 0x00728803    90
                         nop                                                         // 0x00728804    90
                         nop                                                         // 0x00728805    90
                         nop                                                         // 0x00728806    90
                         nop                                                         // 0x00728807    90
                         nop                                                         // 0x00728808    90
                         nop                                                         // 0x00728809    90
                         nop                                                         // 0x0072880a    90
                         nop                                                         // 0x0072880b    90
                         nop                                                         // 0x0072880c    90
                         nop                                                         // 0x0072880d    90
                         nop                                                         // 0x0072880e    90
                         nop                                                         // 0x0072880f    90
?InterfaceSetInMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         push               esi                                      // 0x00728810    56
                         mov.s              esi, ecx                                 // 0x00728811    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x6c]              // 0x00728813    8b466c
                         push               edi                                      // 0x00728816    57
                         push               eax                                      // 0x00728817    50
                         call               _jmp_addr_0x00729b30                     // 0x00728818    e813130000
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x0072881d    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x00728823    e828d0e2ff
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00728828    8b7c240c
                         cmp                edi, dword ptr [eax + 0x0000039c]        // 0x0072882c    3bb89c030000
                         {disp8} jne        _jmp_addr_0x0072885e                     // 0x00728832    752a
                         {disp8} mov        eax, dword ptr [esi + 0x60]              // 0x00728834    8b4660
                         test               eax, eax                                 // 0x00728837    85c0
                         {disp8} je         _jmp_addr_0x0072884b                     // 0x00728839    7410
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x0072883b    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250060]        // 0x00728841    8b8960002500
                         push               0xd                                      // 0x00728847    6a0d
                         {disp8} jmp        _jmp_addr_0x00728859                     // 0x00728849    eb0e
_jmp_addr_0x0072884b:    {disp32} mov       edx, dword ptr [_game]                   // 0x0072884b    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250060]        // 0x00728851    8b8a60002500
                         push               0xc                                      // 0x00728857    6a0c
_jmp_addr_0x00728859:    call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z                     // 0x00728859    e882bee9ff
_jmp_addr_0x0072885e:    mov.s              ecx, esi                                 // 0x0072885e    8bce
                         call               _jmp_addr_0x00728780                     // 0x00728860    e81bffffff
                         test               eax, eax                                 // 0x00728865    85c0
                         {disp32} je        _jmp_addr_0x00728921                     // 0x00728867    0f84b4000000
                         test               byte ptr [esi + 0x54], 0x02              // 0x0072886d    f6465402
                         {disp32} jne       _jmp_addr_0x00728921                     // 0x00728871    0f85aa000000
                         mov.s              ecx, esi                                 // 0x00728877    8bce
                         call               _jmp_addr_0x00729a70                     // 0x00728879    e8f2110000
                         push               eax                                      // 0x0072887e    50
                         mov.s              ecx, edi                                 // 0x0072887f    8bcf
                         call               _jmp_addr_0x005dca20                     // 0x00728881    e89a41ebff
                         and                byte ptr [esi + 0x54], -0x02             // 0x00728886    806654fe
                         mov.s              ecx, esi                                 // 0x0072888a    8bce
                         {disp32} mov       dword ptr [esi + 0x00000098], 0x00000000 // 0x0072888c    c7869800000000000000
                         {disp8} mov        byte ptr [esi + 0x70], 0x00              // 0x00728896    c6467000
                         {disp32} mov       dword ptr [esi + 0x00000094], 0x00000000 // 0x0072889a    c7869400000000000000
                         {disp32} mov       byte ptr [esi + 0x00000090], 0x01        // 0x007288a4    c6869000000001
                         call               _jmp_addr_0x00728200                     // 0x007288ab    e850f9ffff
                         {disp8} mov        eax, dword ptr [esi + 0x5c]              // 0x007288b0    8b465c
                         test               eax, eax                                 // 0x007288b3    85c0
                         {disp8} je         _jmp_addr_0x007288c6                     // 0x007288b5    740f
                         {disp8} mov        al, byte ptr [esi + 0x54]                // 0x007288b7    8a4654
                         and                al, -0x02                                // 0x007288ba    24fe
                         mov.s              ecx, esi                                 // 0x007288bc    8bce
                         {disp8} mov        byte ptr [esi + 0x54], al                // 0x007288be    884654
                         call               _jmp_addr_0x00728200                     // 0x007288c1    e83af9ffff
_jmp_addr_0x007288c6:    {disp32} mov       ecx, dword ptr [_game]                   // 0x007288c6    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x007288cc    e87fcfe2ff
                         cmp                edi, dword ptr [eax + 0x0000039c]        // 0x007288d1    3bb89c030000
                         {disp8} jne        _jmp_addr_0x00728917                     // 0x007288d7    753e
                         mov.s              ecx, esi                                 // 0x007288d9    8bce
                         call               _jmp_addr_0x007290f0                     // 0x007288db    e810080000
                         {disp8} mov        eax, dword ptr [eax + 0x20]              // 0x007288e0    8b4020
                         push               eax                                      // 0x007288e3    50
                         call               _jmp_addr_0x0068f240                     // 0x007288e4    e85769f6ff
                         add                esp, 0x04                                // 0x007288e9    83c404
                         mov.s              ecx, esi                                 // 0x007288ec    8bce
                         call               _jmp_addr_0x00729ad0                     // 0x007288ee    e8dd110000
                         mov.s              esi, eax                                 // 0x007288f3    8bf0
                         cmp                esi, -0x01                               // 0x007288f5    83feff
                         {disp8} je         _jmp_addr_0x00728917                     // 0x007288f8    741d
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x007288fa    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x00728900    e84bcfe2ff
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]        // 0x00728905    8b88a0030000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00004948]        // 0x0072890b    8b8948490000
                         mov                edx, dword ptr [ecx]                     // 0x00728911    8b11
                         push               esi                                      // 0x00728913    56
                         call               dword ptr [edx + 0x18]                   // 0x00728914    ff5218
_jmp_addr_0x00728917:    pop                edi                                      // 0x00728917    5f
                         mov                eax, 0x00000001                          // 0x00728918    b801000000
                         pop                esi                                      // 0x0072891d    5e
                         ret                0x0004                                   // 0x0072891e    c20400
_jmp_addr_0x00728921:    mov                eax, dword ptr [esi]                     // 0x00728921    8b06
                         push               0x0                                      // 0x00728923    6a00
                         mov.s              ecx, esi                                 // 0x00728925    8bce
                         call               dword ptr [eax + 0xc]                    // 0x00728927    ff500c
                         pop                edi                                      // 0x0072892a    5f
                         mov                eax, 0x00000003                          // 0x0072892b    b803000000
                         pop                esi                                      // 0x00728930    5e
                         ret                0x0004                                   // 0x00728931    c20400
                         nop                                                         // 0x00728934    90
                         nop                                                         // 0x00728935    90
                         nop                                                         // 0x00728936    90
                         nop                                                         // 0x00728937    90
                         nop                                                         // 0x00728938    90
                         nop                                                         // 0x00728939    90
                         nop                                                         // 0x0072893a    90
                         nop                                                         // 0x0072893b    90
                         nop                                                         // 0x0072893c    90
                         nop                                                         // 0x0072893d    90
                         nop                                                         // 0x0072893e    90
                         nop                                                         // 0x0072893f    90
?InterfaceSetOutMagicHand@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         push               esi                                      // 0x00728940    56
                         push               edi                                      // 0x00728941    57
                         mov.s              esi, ecx                                 // 0x00728942    8bf1
                         call               _jmp_addr_0x00729a70                     // 0x00728944    e827110000
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00728949    8b7c240c
                         push               eax                                      // 0x0072894d    50
                         mov.s              ecx, edi                                 // 0x0072894e    8bcf
                         call               _jmp_addr_0x005dca20                     // 0x00728950    e8cb40ebff
                         {disp8} mov        ecx, dword ptr [esi + 0x5c]              // 0x00728955    8b4e5c
                         test               ecx, ecx                                 // 0x00728958    85c9
                         {disp8} je         _jmp_addr_0x00728962                     // 0x0072895a    7406
                         push               edi                                      // 0x0072895c    57
                         call               _jmp_addr_0x0077f9a0                     // 0x0072895d    e83e700500
_jmp_addr_0x00728962:    {disp32} mov       ecx, dword ptr [_game]                   // 0x00728962    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x00728968    e8e3cee2ff
                         cmp                edi, dword ptr [eax + 0x0000039c]        // 0x0072896d    3bb89c030000
                         {disp8} jne        _jmp_addr_0x007289a7                     // 0x00728973    7532
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00728975    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x0072897b    e8d0cee2ff
                         {disp32} mov       esi, dword ptr [eax + 0x000003a0]        // 0x00728980    8bb0a0030000
                         mov.s              ecx, esi                                 // 0x00728986    8bce
                         call               _jmp_addr_0x0046e890                     // 0x00728988    e8035fd4ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00004948]        // 0x0072898d    8b8e48490000
                         mov                eax, dword ptr [ecx]                     // 0x00728993    8b01
                         push               0x0                                      // 0x00728995    6a00
                         push               0x0                                      // 0x00728997    6a00
                         call               dword ptr [eax + 0xc]                    // 0x00728999    ff500c
                         {disp32} mov       ecx, dword ptr [esi + 0x00004948]        // 0x0072899c    8b8e48490000
                         mov                edx, dword ptr [ecx]                     // 0x007289a2    8b11
                         call               dword ptr [edx + 0x1c]                   // 0x007289a4    ff521c
_jmp_addr_0x007289a7:    pop                edi                                      // 0x007289a7    5f
                         mov                eax, 0x00000001                          // 0x007289a8    b801000000
                         pop                esi                                      // 0x007289ad    5e
                         ret                0x0004                                   // 0x007289ae    c20400
                         nop                                                         // 0x007289b1    90
                         nop                                                         // 0x007289b2    90
                         nop                                                         // 0x007289b3    90
                         nop                                                         // 0x007289b4    90
                         nop                                                         // 0x007289b5    90
                         nop                                                         // 0x007289b6    90
                         nop                                                         // 0x007289b7    90
                         nop                                                         // 0x007289b8    90
                         nop                                                         // 0x007289b9    90
                         nop                                                         // 0x007289ba    90
                         nop                                                         // 0x007289bb    90
                         nop                                                         // 0x007289bc    90
                         nop                                                         // 0x007289bd    90
                         nop                                                         // 0x007289be    90
                         nop                                                         // 0x007289bf    90
_jmp_addr_0x007289c0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x007289c0    8b442404
                         push               esi                                      // 0x007289c4    56
                         mov.s              esi, ecx                                 // 0x007289c5    8bf1
                         {disp8} fld        dword ptr [esi + 0x74]                   // 0x007289c7    d94674
                         push               0x0                                      // 0x007289ca    6a00
                         {disp32} fadd      dword ptr [eax + 0x000000f0]             // 0x007289cc    d880f0000000
                         {disp32} fstp      dword ptr [eax + 0x000000f0]             // 0x007289d2    d998f0000000
                         call               _jmp_addr_0x00729a50                     // 0x007289d8    e873100000
                         mov                eax, dword ptr [esi]                     // 0x007289dd    8b06
                         fstp               st(0)                                    // 0x007289df    ddd8
                         push               0x0                                      // 0x007289e1    6a00
                         mov.s              ecx, esi                                 // 0x007289e3    8bce
                         call               dword ptr [eax + 0xc]                    // 0x007289e5    ff500c
                         mov                eax, 0x00000003                          // 0x007289e8    b803000000
                         pop                esi                                      // 0x007289ed    5e
                         ret                0x0004                                   // 0x007289ee    c20400
                         nop                                                         // 0x007289f1    90
                         nop                                                         // 0x007289f2    90
                         nop                                                         // 0x007289f3    90
                         nop                                                         // 0x007289f4    90
                         nop                                                         // 0x007289f5    90
                         nop                                                         // 0x007289f6    90
                         nop                                                         // 0x007289f7    90
                         nop                                                         // 0x007289f8    90
                         nop                                                         // 0x007289f9    90
                         nop                                                         // 0x007289fa    90
                         nop                                                         // 0x007289fb    90
                         nop                                                         // 0x007289fc    90
                         nop                                                         // 0x007289fd    90
                         nop                                                         // 0x007289fe    90
                         nop                                                         // 0x007289ff    90
?GetWorshipSite@SpellSeed@@UAEPAVWorshipSite@@XZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x5c]              // 0x00728a00    8b495c
                         test               ecx, ecx                                 // 0x00728a03    85c9
                         {disp8} je         _jmp_addr_0x00728a0f                     // 0x00728a05    7408
                         mov                eax, dword ptr [ecx]                     // 0x00728a07    8b01
                         jmp                dword ptr [eax + 0x30c]                  // 0x00728a09    ffa00c030000
_jmp_addr_0x00728a0f:    xor.s              eax, eax                                 // 0x00728a0f    33c0
                         ret                                                         // 0x00728a11    c3
                         nop                                                         // 0x00728a12    90
                         nop                                                         // 0x00728a13    90
                         nop                                                         // 0x00728a14    90
                         nop                                                         // 0x00728a15    90
                         nop                                                         // 0x00728a16    90
                         nop                                                         // 0x00728a17    90
                         nop                                                         // 0x00728a18    90
                         nop                                                         // 0x00728a19    90
                         nop                                                         // 0x00728a1a    90
                         nop                                                         // 0x00728a1b    90
                         nop                                                         // 0x00728a1c    90
                         nop                                                         // 0x00728a1d    90
                         nop                                                         // 0x00728a1e    90
                         nop                                                         // 0x00728a1f    90
_jmp_addr_0x00728a20:    call               _jmp_addr_0x00729a70                     // 0x00728a20    e84b100000
                         cmp                eax, 0x02                                // 0x00728a25    83f802
                         {disp8} jne        _jmp_addr_0x00728a42                     // 0x00728a28    7518
                         {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x00728a2a    8b4c2408
                         mov                eax, dword ptr [ecx]                     // 0x00728a2e    8b01
                         call               dword ptr [eax + 0x218]                  // 0x00728a30    ff9018020000
                         test               eax, eax                                 // 0x00728a36    85c0
                         {disp8} je         _jmp_addr_0x00728a42                     // 0x00728a38    7408
                         mov                eax, 0x00000001                          // 0x00728a3a    b801000000
                         ret                0x0008                                   // 0x00728a3f    c20800
_jmp_addr_0x00728a42:    xor.s              eax, eax                                 // 0x00728a42    33c0
                         ret                0x0008                                   // 0x00728a44    c20800
                         nop                                                         // 0x00728a47    90
                         nop                                                         // 0x00728a48    90
                         nop                                                         // 0x00728a49    90
                         nop                                                         // 0x00728a4a    90
                         nop                                                         // 0x00728a4b    90
                         nop                                                         // 0x00728a4c    90
                         nop                                                         // 0x00728a4d    90
                         nop                                                         // 0x00728a4e    90
                         nop                                                         // 0x00728a4f    90
_jmp_addr_0x00728a50:    push               esi                                      // 0x00728a50    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]              // 0x00728a51    8b74240c
                         mov                eax, dword ptr [esi]                     // 0x00728a55    8b06
                         push               edi                                      // 0x00728a57    57
                         mov.s              edi, ecx                                 // 0x00728a58    8bf9
                         mov.s              ecx, esi                                 // 0x00728a5a    8bce
                         call               dword ptr [eax + 0x670]                  // 0x00728a5c    ff9070060000
                         test               eax, eax                                 // 0x00728a62    85c0
                         {disp8} je         _jmp_addr_0x00728ad1                     // 0x00728a64    746b
                         push               0x0                                      // 0x00728a66    6a00
                         push               0x009c8ee8                               // 0x00728a68    68e88e9c00
                         push               0x009c7f50                               // 0x00728a6d    68507f9c00
                         push               0x0                                      // 0x00728a72    6a00
                         push               esi                                      // 0x00728a74    56
                         call               ___RTDynamicCast                         // 0x00728a75    e89fcf0900
                         add                esp, 0x14                                // 0x00728a7a    83c414
                         test               eax, eax                                 // 0x00728a7d    85c0
                         {disp8} je         _jmp_addr_0x00728a89                     // 0x00728a7f    7408
                         {disp32} mov       esi, dword ptr [eax + 0x00000100]        // 0x00728a81    8bb000010000
                         {disp8} jmp        _jmp_addr_0x00728ab0                     // 0x00728a87    eb27
_jmp_addr_0x00728a89:    push               0x0                                      // 0x00728a89    6a00
                         push               0x00beceb0                               // 0x00728a8b    68b0cebe00
                         push               0x009c7f50                               // 0x00728a90    68507f9c00
                         push               0x0                                      // 0x00728a95    6a00
                         push               esi                                      // 0x00728a97    56
                         call               ___RTDynamicCast                         // 0x00728a98    e87ccf0900
                         add                esp, 0x14                                // 0x00728a9d    83c414
                         test               eax, eax                                 // 0x00728aa0    85c0
                         {disp8} je         _jmp_addr_0x00728ad1                     // 0x00728aa2    742d
                         mov                edx, dword ptr [eax]                     // 0x00728aa4    8b10
                         mov.s              ecx, eax                                 // 0x00728aa6    8bc8
                         call               dword ptr [edx + 0x30c]                  // 0x00728aa8    ff920c030000
                         mov.s              esi, eax                                 // 0x00728aae    8bf0
_jmp_addr_0x00728ab0:    test               esi, esi                                 // 0x00728ab0    85f6
                         {disp8} je         _jmp_addr_0x00728ad1                     // 0x00728ab2    741d
                         mov.s              ecx, edi                                 // 0x00728ab4    8bcf
                         call               _jmp_addr_0x007290e0                     // 0x00728ab6    e825060000
                         push               eax                                      // 0x00728abb    50
                         mov.s              ecx, esi                                 // 0x00728abc    8bce
                         call               _jmp_addr_0x0077c2b0                     // 0x00728abe    e8ed370500
                         test               eax, eax                                 // 0x00728ac3    85c0
                         {disp8} je         _jmp_addr_0x00728ad1                     // 0x00728ac5    740a
                         pop                edi                                      // 0x00728ac7    5f
                         mov                eax, 0x00000001                          // 0x00728ac8    b801000000
                         pop                esi                                      // 0x00728acd    5e
                         ret                0x0008                                   // 0x00728ace    c20800
_jmp_addr_0x00728ad1:    pop                edi                                      // 0x00728ad1    5f
                         xor.s              eax, eax                                 // 0x00728ad2    33c0
                         pop                esi                                      // 0x00728ad4    5e
                         ret                0x0008                                   // 0x00728ad5    c20800
                         nop                                                         // 0x00728ad8    90
                         nop                                                         // 0x00728ad9    90
                         nop                                                         // 0x00728ada    90
                         nop                                                         // 0x00728adb    90
                         nop                                                         // 0x00728adc    90
                         nop                                                         // 0x00728add    90
                         nop                                                         // 0x00728ade    90
                         nop                                                         // 0x00728adf    90
_jmp_addr_0x00728ae0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00728ae0    8b442404
                         push               esi                                      // 0x00728ae4    56
                         push               edi                                      // 0x00728ae5    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]              // 0x00728ae6    8b7c2410
                         push               edi                                      // 0x00728aea    57
                         mov.s              esi, ecx                                 // 0x00728aeb    8bf1
                         push               eax                                      // 0x00728aed    50
                         call               _jmp_addr_0x00728a20                     // 0x00728aee    e82dffffff
                         test               eax, eax                                 // 0x00728af3    85c0
                         {disp8} jne        _jmp_addr_0x00728afc                     // 0x00728af5    7505
                         pop                edi                                      // 0x00728af7    5f
                         pop                esi                                      // 0x00728af8    5e
                         ret                0x0008                                   // 0x00728af9    c20800
_jmp_addr_0x00728afc:    push               0x0                                      // 0x00728afc    6a00
                         push               0x00c02408                               // 0x00728afe    680824c000
                         push               0x009c7f50                               // 0x00728b03    68507f9c00
                         push               0x0                                      // 0x00728b08    6a00
                         push               edi                                      // 0x00728b0a    57
                         call               ___RTDynamicCast                         // 0x00728b0b    e809cf0900
                         add                esp, 0x14                                // 0x00728b10    83c414
                         push               esi                                      // 0x00728b13    56
                         mov.s              ecx, eax                                 // 0x00728b14    8bc8
                         call               _jmp_addr_0x00682e10                     // 0x00728b16    e8f5a2f5ff
                         neg                eax                                      // 0x00728b1b    f7d8
                         sbb.s              eax, eax                                 // 0x00728b1d    1bc0
                         pop                edi                                      // 0x00728b1f    5f
                         neg                eax                                      // 0x00728b20    f7d8
                         pop                esi                                      // 0x00728b22    5e
                         ret                0x0008                                   // 0x00728b23    c20800
                         nop                                                         // 0x00728b26    90
                         nop                                                         // 0x00728b27    90
                         nop                                                         // 0x00728b28    90
                         nop                                                         // 0x00728b29    90
                         nop                                                         // 0x00728b2a    90
                         nop                                                         // 0x00728b2b    90
                         nop                                                         // 0x00728b2c    90
                         nop                                                         // 0x00728b2d    90
                         nop                                                         // 0x00728b2e    90
                         nop                                                         // 0x00728b2f    90
_jmp_addr_0x00728b30:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00728b30    8b442404
                         push               esi                                      // 0x00728b34    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]              // 0x00728b35    8b74240c
                         push               edi                                      // 0x00728b39    57
                         push               esi                                      // 0x00728b3a    56
                         mov.s              edi, ecx                                 // 0x00728b3b    8bf9
                         push               eax                                      // 0x00728b3d    50
                         call               _jmp_addr_0x00728a50                     // 0x00728b3e    e80dffffff
                         test               eax, eax                                 // 0x00728b43    85c0
                         {disp32} je        _jmp_addr_0x00728c46                     // 0x00728b45    0f84fb000000
                         push               0x0                                      // 0x00728b4b    6a00
                         push               0x009c8ee8                               // 0x00728b4d    68e88e9c00
                         push               0x009c7f50                               // 0x00728b52    68507f9c00
                         push               0x0                                      // 0x00728b57    6a00
                         push               esi                                      // 0x00728b59    56
                         call               ___RTDynamicCast                         // 0x00728b5a    e8bace0900
                         add                esp, 0x14                                // 0x00728b5f    83c414
                         test               eax, eax                                 // 0x00728b62    85c0
                         {disp8} je         _jmp_addr_0x00728b81                     // 0x00728b64    741b
                         {disp32} mov       eax, dword ptr [eax + 0x00000100]        // 0x00728b66    8b8000010000
                         test               eax, eax                                 // 0x00728b6c    85c0
                         {disp32} je        _jmp_addr_0x00728c46                     // 0x00728b6e    0f84d2000000
                         push               eax                                      // 0x00728b74    50
                         mov.s              ecx, edi                                 // 0x00728b75    8bcf
                         call               _jmp_addr_0x007289c0                     // 0x00728b77    e844feffff
                         pop                edi                                      // 0x00728b7c    5f
                         pop                esi                                      // 0x00728b7d    5e
                         ret                0x0008                                   // 0x00728b7e    c20800
_jmp_addr_0x00728b81:    push               0x0                                      // 0x00728b81    6a00
                         push               0x00beceb0                               // 0x00728b83    68b0cebe00
                         push               0x009c7f50                               // 0x00728b88    68507f9c00
                         push               0x0                                      // 0x00728b8d    6a00
                         push               esi                                      // 0x00728b8f    56
                         call               ___RTDynamicCast                         // 0x00728b90    e884ce0900
                         mov.s              esi, eax                                 // 0x00728b95    8bf0
                         add                esp, 0x14                                // 0x00728b97    83c414
                         test               esi, esi                                 // 0x00728b9a    85f6
                         {disp32} je        _jmp_addr_0x00728c46                     // 0x00728b9c    0f84a4000000
                         push               ebx                                      // 0x00728ba2    53
                         {disp32} mov       ebx, dword ptr [esi + 0x00000080]        // 0x00728ba3    8b9e80000000
                         push               ebp                                      // 0x00728ba9    55
                         mov.s              ecx, edi                                 // 0x00728baa    8bcf
                         call               _jmp_addr_0x007290e0                     // 0x00728bac    e82f050000
                         mov                edx, dword ptr [esi]                     // 0x00728bb1    8b16
                         cmp.s              ebx, eax                                 // 0x00728bb3    3bd8
                         mov.s              ecx, esi                                 // 0x00728bb5    8bce
                         setne              byte ptr [esp + 0x18]                    // 0x00728bb7    0f95442418
                         call               dword ptr [edx + 0x30c]                  // 0x00728bbc    ff920c030000
                         test               eax, eax                                 // 0x00728bc2    85c0
                         {disp8} je         _jmp_addr_0x00728bd5                     // 0x00728bc4    740f
                         {disp8} fld        dword ptr [edi + 0x74]                   // 0x00728bc6    d94774
                         {disp32} fadd      dword ptr [eax + 0x000000f0]             // 0x00728bc9    d880f0000000
                         {disp32} fstp      dword ptr [eax + 0x000000f0]             // 0x00728bcf    d998f0000000
_jmp_addr_0x00728bd5:    push               0x0                                      // 0x00728bd5    6a00
                         mov.s              ecx, edi                                 // 0x00728bd7    8bcf
                         call               _jmp_addr_0x00729a50                     // 0x00728bd9    e8720e0000
                         fstp               st(0)                                    // 0x00728bde    ddd8
                         mov                eax, dword ptr [edi]                     // 0x00728be0    8b07
                         push               0x0                                      // 0x00728be2    6a00
                         mov.s              ecx, edi                                 // 0x00728be4    8bcf
                         call               dword ptr [eax + 0xc]                    // 0x00728be6    ff500c
                         mov.s              ecx, edi                                 // 0x00728be9    8bcf
                         call               _jmp_addr_0x00729810                     // 0x00728beb    e8200c0000
                         mov.s              ebp, eax                                 // 0x00728bf0    8be8
                         mov.s              ecx, ebp                                 // 0x00728bf2    8bcd
                         call               _jmp_addr_0x005dc610                     // 0x00728bf4    e8173aebff
                         mov                edx, dword ptr [esi]                     // 0x00728bf9    8b16
                         mov.s              ecx, esi                                 // 0x00728bfb    8bce
                         call               dword ptr [edx + 0x914]                  // 0x00728bfd    ff9214090000
                         mov.s              ebx, eax                                 // 0x00728c03    8bd8
                         {disp8} mov        al, byte ptr [esp + 0x18]                // 0x00728c05    8a442418
                         test               al, al                                   // 0x00728c09    84c0
                         {disp8} je         _jmp_addr_0x00728c3a                     // 0x00728c0b    742d
                         mov                eax, dword ptr [esi]                     // 0x00728c0d    8b06
                         mov.s              ecx, esi                                 // 0x00728c0f    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x00728c11    ff501c
                         mov.s              ecx, edi                                 // 0x00728c14    8bcf
                         mov.s              esi, eax                                 // 0x00728c16    8bf0
                         call               _jmp_addr_0x00729800                     // 0x00728c18    e8e30b0000
                         cmp.s              esi, eax                                 // 0x00728c1d    3bf0
                         {disp8} jne        _jmp_addr_0x00728c3a                     // 0x00728c1f    7519
                         test               ebx, ebx                                 // 0x00728c21    85db
                         {disp8} je         _jmp_addr_0x00728c3a                     // 0x00728c23    7415
                         push               ebp                                      // 0x00728c25    55
                         mov.s              ecx, ebx                                 // 0x00728c26    8bcb
                         call               _jmp_addr_0x0077f950                     // 0x00728c28    e8236d0500
                         cmp                eax, 0x01                                // 0x00728c2d    83f801
                         {disp8} jne        _jmp_addr_0x00728c3a                     // 0x00728c30    7508
                         push               ebp                                      // 0x00728c32    55
                         mov.s              ecx, ebx                                 // 0x00728c33    8bcb
                         call               _jmp_addr_0x0077f8f0                     // 0x00728c35    e8b66c0500
_jmp_addr_0x00728c3a:    pop                ebp                                      // 0x00728c3a    5d
                         pop                ebx                                      // 0x00728c3b    5b
                         pop                edi                                      // 0x00728c3c    5f
                         mov                eax, 0x00000003                          // 0x00728c3d    b803000000
                         pop                esi                                      // 0x00728c42    5e
                         ret                0x0008                                   // 0x00728c43    c20800
_jmp_addr_0x00728c46:    pop                edi                                      // 0x00728c46    5f
                         xor.s              eax, eax                                 // 0x00728c47    33c0
                         pop                esi                                      // 0x00728c49    5e
                         ret                0x0008                                   // 0x00728c4a    c20800
                         nop                                                         // 0x00728c4d    90
                         nop                                                         // 0x00728c4e    90
                         nop                                                         // 0x00728c4f    90
_jmp_addr_0x00728c50:    {disp32} mov       eax, dword ptr [ecx + 0x00000098]        // 0x00728c50    8b8198000000
                         test               eax, eax                                 // 0x00728c56    85c0
                         {disp8} jne        _jmp_addr_0x00728c72                     // 0x00728c58    7518
                         {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x00728c5a    8b4c2408
                         mov                eax, dword ptr [ecx]                     // 0x00728c5e    8b01
                         call               dword ptr [eax + 0x1f4]                  // 0x00728c60    ff90f4010000
                         test               eax, eax                                 // 0x00728c66    85c0
                         {disp8} je         _jmp_addr_0x00728c72                     // 0x00728c68    7408
                         mov                eax, 0x00000001                          // 0x00728c6a    b801000000
                         ret                0x0008                                   // 0x00728c6f    c20800
_jmp_addr_0x00728c72:    xor.s              eax, eax                                 // 0x00728c72    33c0
                         ret                0x0008                                   // 0x00728c74    c20800
                         nop                                                         // 0x00728c77    90
                         nop                                                         // 0x00728c78    90
                         nop                                                         // 0x00728c79    90
                         nop                                                         // 0x00728c7a    90
                         nop                                                         // 0x00728c7b    90
                         nop                                                         // 0x00728c7c    90
                         nop                                                         // 0x00728c7d    90
                         nop                                                         // 0x00728c7e    90
                         nop                                                         // 0x00728c7f    90
_jmp_addr_0x00728c80:    sub                esp, 0x0c                                // 0x00728c80    83ec0c
                         push               esi                                      // 0x00728c83    56
                         push               edi                                      // 0x00728c84    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]              // 0x00728c85    8b7c241c
                         mov                eax, dword ptr [edi]                     // 0x00728c89    8b07
                         mov.s              esi, ecx                                 // 0x00728c8b    8bf1
                         mov.s              ecx, edi                                 // 0x00728c8d    8bcf
                         call               dword ptr [eax + 0x1f4]                  // 0x00728c8f    ff90f4010000
                         test               eax, eax                                 // 0x00728c95    85c0
                         {disp8} jne        _jmp_addr_0x00728ca1                     // 0x00728c97    7508
                         pop                edi                                      // 0x00728c99    5f
                         pop                esi                                      // 0x00728c9a    5e
                         add                esp, 0x0c                                // 0x00728c9b    83c40c
                         ret                0x0008                                   // 0x00728c9e    c20800
_jmp_addr_0x00728ca1:    {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x00728ca1    8d4c2408
                         push               ecx                                      // 0x00728ca5    51
                         mov.s              ecx, edi                                 // 0x00728ca6    8bcf
                         call               _jmp_addr_0x00722b30                     // 0x00728ca8    e8839effff
                         {disp8} mov        eax, dword ptr [esi + 0x6c]              // 0x00728cad    8b466c
                         push               0x3f800000                               // 0x00728cb0    680000803f
                         push               eax                                      // 0x00728cb5    50
                         mov.s              ecx, esi                                 // 0x00728cb6    8bce
                         call               _jmp_addr_0x00729a70                     // 0x00728cb8    e8b30d0000
                         push               eax                                      // 0x00728cbd    50
                         {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x00728cbe    8d542414
                         push               edx                                      // 0x00728cc2    52
                         call               _jmp_addr_0x0072a2f0                     // 0x00728cc3    e828160000
                         add                esp, 0x10                                // 0x00728cc8    83c410
                         push               0x0                                      // 0x00728ccb    6a00
                         mov.s              ecx, esi                                 // 0x00728ccd    8bce
                         call               _jmp_addr_0x00729a50                     // 0x00728ccf    e87c0d0000
                         fstp               st(0)                                    // 0x00728cd4    ddd8
                         mov                eax, dword ptr [esi]                     // 0x00728cd6    8b06
                         push               0x0                                      // 0x00728cd8    6a00
                         mov.s              ecx, esi                                 // 0x00728cda    8bce
                         call               dword ptr [eax + 0xc]                    // 0x00728cdc    ff500c
                         push               0x0                                      // 0x00728cdf    6a00
                         push               0x3f800000                               // 0x00728ce1    680000803f
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x00728ce6    8d4c2410
                         push               0x1b                                     // 0x00728cea    6a1b
                         push               ecx                                      // 0x00728cec    51
                         call               _jmp_addr_0x0063e540                     // 0x00728ced    e84e58f1ff
                         add                esp, 0x10                                // 0x00728cf2    83c410
                         pop                edi                                      // 0x00728cf5    5f
                         mov                eax, 0x00000001                          // 0x00728cf6    b801000000
                         pop                esi                                      // 0x00728cfb    5e
                         add                esp, 0x0c                                // 0x00728cfc    83c40c
                         ret                0x0008                                   // 0x00728cff    c20800
                         nop                                                         // 0x00728d02    90
                         nop                                                         // 0x00728d03    90
                         nop                                                         // 0x00728d04    90
                         nop                                                         // 0x00728d05    90
                         nop                                                         // 0x00728d06    90
                         nop                                                         // 0x00728d07    90
                         nop                                                         // 0x00728d08    90
                         nop                                                         // 0x00728d09    90
                         nop                                                         // 0x00728d0a    90
                         nop                                                         // 0x00728d0b    90
                         nop                                                         // 0x00728d0c    90
                         nop                                                         // 0x00728d0d    90
                         nop                                                         // 0x00728d0e    90
                         nop                                                         // 0x00728d0f    90
?ApplyThisToObject@SpellSeed@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z:
                         push               ecx                                      // 0x00728d10    51
                         push               ebx                                      // 0x00728d11    53
                         push               esi                                      // 0x00728d12    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x00728d13    8b742410
                         mov                eax, dword ptr [esi]                     // 0x00728d17    8b06
                         push               edi                                      // 0x00728d19    57
                         mov.s              edi, ecx                                 // 0x00728d1a    8bf9
                         mov.s              ecx, esi                                 // 0x00728d1c    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00728d1e    c744240c00000000
                         call               dword ptr [eax + 0x1c]                   // 0x00728d26    ff501c
                         {disp8} mov        ebx, dword ptr [esp + 0x18]              // 0x00728d29    8b5c2418
                         push               eax                                      // 0x00728d2d    50
                         push               ebx                                      // 0x00728d2e    53
                         mov.s              ecx, edi                                 // 0x00728d2f    8bcf
                         call               _jmp_addr_0x00729190                     // 0x00728d31    e85a040000
                         test               eax, eax                                 // 0x00728d36    85c0
                         {disp8} jne        _jmp_addr_0x00728d41                     // 0x00728d38    7507
                         pop                edi                                      // 0x00728d3a    5f
                         pop                esi                                      // 0x00728d3b    5e
                         pop                ebx                                      // 0x00728d3c    5b
                         pop                ecx                                      // 0x00728d3d    59
                         ret                0x000c                                   // 0x00728d3e    c20c00
_jmp_addr_0x00728d41:    mov                edx, dword ptr [ebx]                     // 0x00728d41    8b13
                         mov.s              ecx, ebx                                 // 0x00728d43    8bcb
                         call               dword ptr [edx + 0x1f4]                  // 0x00728d45    ff92f4010000
                         test               eax, eax                                 // 0x00728d4b    85c0
                         push               ebx                                      // 0x00728d4d    53
                         {disp8} je         _jmp_addr_0x00728d66                     // 0x00728d4e    7416
                         mov                eax, dword ptr [esi]                     // 0x00728d50    8b06
                         mov.s              ecx, esi                                 // 0x00728d52    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x00728d54    ff501c
                         push               eax                                      // 0x00728d57    50
                         mov.s              ecx, edi                                 // 0x00728d58    8bcf
                         call               _jmp_addr_0x00728c80                     // 0x00728d5a    e821ffffff
                         pop                edi                                      // 0x00728d5f    5f
                         pop                esi                                      // 0x00728d60    5e
                         pop                ebx                                      // 0x00728d61    5b
                         pop                ecx                                      // 0x00728d62    59
                         ret                0x000c                                   // 0x00728d63    c20c00
_jmp_addr_0x00728d66:    mov                edx, dword ptr [esi]                     // 0x00728d66    8b16
                         mov.s              ecx, esi                                 // 0x00728d68    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00728d6a    ff521c
                         push               eax                                      // 0x00728d6d    50
                         mov.s              ecx, edi                                 // 0x00728d6e    8bcf
                         call               _jmp_addr_0x00728a50                     // 0x00728d70    e8dbfcffff
                         test               eax, eax                                 // 0x00728d75    85c0
                         push               ebx                                      // 0x00728d77    53
                         {disp8} je         _jmp_addr_0x00728d90                     // 0x00728d78    7416
                         mov                eax, dword ptr [esi]                     // 0x00728d7a    8b06
                         mov.s              ecx, esi                                 // 0x00728d7c    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x00728d7e    ff501c
                         push               eax                                      // 0x00728d81    50
                         mov.s              ecx, edi                                 // 0x00728d82    8bcf
                         call               _jmp_addr_0x00728b30                     // 0x00728d84    e8a7fdffff
                         pop                edi                                      // 0x00728d89    5f
                         pop                esi                                      // 0x00728d8a    5e
                         pop                ebx                                      // 0x00728d8b    5b
                         pop                ecx                                      // 0x00728d8c    59
                         ret                0x000c                                   // 0x00728d8d    c20c00
_jmp_addr_0x00728d90:    mov                edx, dword ptr [esi]                     // 0x00728d90    8b16
                         mov.s              ecx, esi                                 // 0x00728d92    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00728d94    ff521c
                         push               eax                                      // 0x00728d97    50
                         mov.s              ecx, edi                                 // 0x00728d98    8bcf
                         call               _jmp_addr_0x00728a20                     // 0x00728d9a    e881fcffff
                         test               eax, eax                                 // 0x00728d9f    85c0
                         {disp8} je         _jmp_addr_0x00728dba                     // 0x00728da1    7417
                         mov                eax, dword ptr [esi]                     // 0x00728da3    8b06
                         push               ebx                                      // 0x00728da5    53
                         mov.s              ecx, esi                                 // 0x00728da6    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x00728da8    ff501c
                         push               eax                                      // 0x00728dab    50
                         mov.s              ecx, edi                                 // 0x00728dac    8bcf
                         call               _jmp_addr_0x00728ae0                     // 0x00728dae    e82dfdffff
                         pop                edi                                      // 0x00728db3    5f
                         pop                esi                                      // 0x00728db4    5e
                         pop                ebx                                      // 0x00728db5    5b
                         pop                ecx                                      // 0x00728db6    59
                         ret                0x000c                                   // 0x00728db7    c20c00
_jmp_addr_0x00728dba:    {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00728dba    8b4c241c
                         push               ecx                                      // 0x00728dbe    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x00728dbf    8d542410
                         push               edx                                      // 0x00728dc3    52
                         push               ebx                                      // 0x00728dc4    53
                         mov.s              ecx, edi                                 // 0x00728dc5    8bcf
                         call               _jmp_addr_0x00729690                     // 0x00728dc7    e8c4080000
                         test               eax, eax                                 // 0x00728dcc    85c0
                         {disp8} je         _jmp_addr_0x00728e0c                     // 0x00728dce    743c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00728dd0    8b44240c
                         test               eax, eax                                 // 0x00728dd4    85c0
                         {disp8} je         _jmp_addr_0x00728def                     // 0x00728dd6    7417
                         mov.s              ecx, edi                                 // 0x00728dd8    8bcf
                         call               _jmp_addr_0x00729840                     // 0x00728dda    e8610a0000
                         test               eax, eax                                 // 0x00728ddf    85c0
                         {disp8} je         _jmp_addr_0x00728def                     // 0x00728de1    740c
                         pop                edi                                      // 0x00728de3    5f
                         pop                esi                                      // 0x00728de4    5e
                         mov                eax, 0x00000001                          // 0x00728de5    b801000000
                         pop                ebx                                      // 0x00728dea    5b
                         pop                ecx                                      // 0x00728deb    59
                         ret                0x000c                                   // 0x00728dec    c20c00
_jmp_addr_0x00728def:    {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00728def    8b44240c
                         push               eax                                      // 0x00728df3    50
                         push               0x3f800000                               // 0x00728df4    680000803f
                         push               0x3                                      // 0x00728df9    6a03
                         add                ebx, 0x14                                // 0x00728dfb    83c314
                         push               ebx                                      // 0x00728dfe    53
                         call               _jmp_addr_0x0063e540                     // 0x00728dff    e83c57f1ff
                         add                esp, 0x10                                // 0x00728e04    83c410
                         mov                eax, 0x00000016                          // 0x00728e07    b816000000
_jmp_addr_0x00728e0c:    pop                edi                                      // 0x00728e0c    5f
                         pop                esi                                      // 0x00728e0d    5e
                         pop                ebx                                      // 0x00728e0e    5b
                         pop                ecx                                      // 0x00728e0f    59
                         ret                0x000c                                   // 0x00728e10    c20c00
                         nop                                                         // 0x00728e13    90
                         nop                                                         // 0x00728e14    90
                         nop                                                         // 0x00728e15    90
                         nop                                                         // 0x00728e16    90
                         nop                                                         // 0x00728e17    90
                         nop                                                         // 0x00728e18    90
                         nop                                                         // 0x00728e19    90
                         nop                                                         // 0x00728e1a    90
                         nop                                                         // 0x00728e1b    90
                         nop                                                         // 0x00728e1c    90
                         nop                                                         // 0x00728e1d    90
                         nop                                                         // 0x00728e1e    90
                         nop                                                         // 0x00728e1f    90
?ApplyThisToMapCoord@SpellSeed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z:
                         push               ecx                                      // 0x00728e20    51
                         push               esi                                      // 0x00728e21    56
                         mov.s              esi, ecx                                 // 0x00728e22    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x00728e24    8b4c240c
                         mov                eax, dword ptr [ecx]                     // 0x00728e28    8b01
                         push               edi                                      // 0x00728e2a    57
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00728e2b    c744240800000000
                         call               dword ptr [eax + 0x1c]                   // 0x00728e33    ff501c
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x00728e36    8b7c2414
                         push               eax                                      // 0x00728e3a    50
                         push               edi                                      // 0x00728e3b    57
                         mov.s              ecx, esi                                 // 0x00728e3c    8bce
                         call               _jmp_addr_0x00729150                     // 0x00728e3e    e80d030000
                         test               eax, eax                                 // 0x00728e43    85c0
                         {disp8} je         _jmp_addr_0x00728e9e                     // 0x00728e45    7457
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x00728e47    8b4c2418
                         push               ecx                                      // 0x00728e4b    51
                         {disp8} lea        edx, dword ptr [esp + 0x0c]              // 0x00728e4c    8d54240c
                         push               edx                                      // 0x00728e50    52
                         push               edi                                      // 0x00728e51    57
                         mov.s              ecx, esi                                 // 0x00728e52    8bce
                         call               _jmp_addr_0x00729520                     // 0x00728e54    e8c7060000
                         test               eax, eax                                 // 0x00728e59    85c0
                         {disp8} je         _jmp_addr_0x00728e9e                     // 0x00728e5b    7441
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00728e5d    8b442408
                         test               eax, eax                                 // 0x00728e61    85c0
                         {disp8} je         _jmp_addr_0x00728e7f                     // 0x00728e63    741a
                         mov.s              ecx, esi                                 // 0x00728e65    8bce
                         call               _jmp_addr_0x00729840                     // 0x00728e67    e8d4090000
                         test               eax, eax                                 // 0x00728e6c    85c0
                         {disp8} je         _jmp_addr_0x00728e7b                     // 0x00728e6e    740b
                         pop                edi                                      // 0x00728e70    5f
                         mov                eax, 0x00000001                          // 0x00728e71    b801000000
                         pop                esi                                      // 0x00728e76    5e
                         pop                ecx                                      // 0x00728e77    59
                         ret                0x000c                                   // 0x00728e78    c20c00
_jmp_addr_0x00728e7b:    {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00728e7b    8b442408
_jmp_addr_0x00728e7f:    push               eax                                      // 0x00728e7f    50
                         push               0x3f800000                               // 0x00728e80    680000803f
                         add                eax, 0x14                                // 0x00728e85    83c014
                         push               0x3                                      // 0x00728e88    6a03
                         push               eax                                      // 0x00728e8a    50
                         call               _jmp_addr_0x0063e540                     // 0x00728e8b    e8b056f1ff
                         add                esp, 0x10                                // 0x00728e90    83c410
                         pop                edi                                      // 0x00728e93    5f
                         mov                eax, 0x00000016                          // 0x00728e94    b816000000
                         pop                esi                                      // 0x00728e99    5e
                         pop                ecx                                      // 0x00728e9a    59
                         ret                0x000c                                   // 0x00728e9b    c20c00
_jmp_addr_0x00728e9e:    pop                edi                                      // 0x00728e9e    5f
                         xor.s              eax, eax                                 // 0x00728e9f    33c0
                         pop                esi                                      // 0x00728ea1    5e
                         pop                ecx                                      // 0x00728ea2    59
                         ret                0x000c                                   // 0x00728ea3    c20c00
                         nop                                                         // 0x00728ea6    90
                         nop                                                         // 0x00728ea7    90
                         nop                                                         // 0x00728ea8    90
                         nop                                                         // 0x00728ea9    90
                         nop                                                         // 0x00728eaa    90
                         nop                                                         // 0x00728eab    90
                         nop                                                         // 0x00728eac    90
                         nop                                                         // 0x00728ead    90
                         nop                                                         // 0x00728eae    90
                         nop                                                         // 0x00728eaf    90
?ApplyUnlockProcess@SpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         push               esi                                      // 0x00728eb0    56
                         mov.s              esi, ecx                                 // 0x00728eb1    8bf1
                         call               _jmp_addr_0x007281f0                     // 0x00728eb3    e838f3ffff
                         test               eax, eax                                 // 0x00728eb8    85c0
                         {disp8} je         _jmp_addr_0x00728ece                     // 0x00728eba    7412
                         mov                eax, dword ptr [esi]                     // 0x00728ebc    8b06
                         push               0x0                                      // 0x00728ebe    6a00
                         mov.s              ecx, esi                                 // 0x00728ec0    8bce
                         call               dword ptr [eax + 0xc]                    // 0x00728ec2    ff500c
                         mov                eax, 0x00000003                          // 0x00728ec5    b803000000
                         pop                esi                                      // 0x00728eca    5e
                         ret                0x0004                                   // 0x00728ecb    c20400
_jmp_addr_0x00728ece:    mov.s              ecx, esi                                 // 0x00728ece    8bce
                         call               _jmp_addr_0x00728780                     // 0x00728ed0    e8abf8ffff
                         test               eax, eax                                 // 0x00728ed5    85c0
                         {disp8} jne        _jmp_addr_0x00728eea                     // 0x00728ed7    7511
                         mov                edx, dword ptr [esi]                     // 0x00728ed9    8b16
                         push               eax                                      // 0x00728edb    50
                         mov.s              ecx, esi                                 // 0x00728edc    8bce
                         call               dword ptr [edx + 0xc]                    // 0x00728ede    ff520c
                         mov                eax, 0x00000003                          // 0x00728ee1    b803000000
                         pop                esi                                      // 0x00728ee6    5e
                         ret                0x0004                                   // 0x00728ee7    c20400
_jmp_addr_0x00728eea:    mov                eax, 0x00000001                          // 0x00728eea    b801000000
                         pop                esi                                      // 0x00728eef    5e
                         ret                0x0004                                   // 0x00728ef0    c20400
                         nop                                                         // 0x00728ef3    90
                         nop                                                         // 0x00728ef4    90
                         nop                                                         // 0x00728ef5    90
                         nop                                                         // 0x00728ef6    90
                         nop                                                         // 0x00728ef7    90
                         nop                                                         // 0x00728ef8    90
                         nop                                                         // 0x00728ef9    90
                         nop                                                         // 0x00728efa    90
                         nop                                                         // 0x00728efb    90
                         nop                                                         // 0x00728efc    90
                         nop                                                         // 0x00728efd    90
                         nop                                                         // 0x00728efe    90
                         nop                                                         // 0x00728eff    90
?RemoveFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z:
                         push               esi                                      // 0x00728f00    56
                         mov.s              esi, ecx                                 // 0x00728f01    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x00728f03    8b4c240c
                         call               _jmp_addr_0x00602460                     // 0x00728f07    e85495edff
                         test               eax, eax                                 // 0x00728f0c    85c0
                         {disp8} je         _jmp_addr_0x00728f1c                     // 0x00728f0e    740c
                         push               eax                                      // 0x00728f10    50
                         mov.s              ecx, esi                                 // 0x00728f11    8bce
                         call               _jmp_addr_0x007289c0                     // 0x00728f13    e8a8faffff
                         pop                esi                                      // 0x00728f18    5e
                         ret                0x0008                                   // 0x00728f19    c20800
_jmp_addr_0x00728f1c:    mov                eax, 0x00000017                          // 0x00728f1c    b817000000
                         pop                esi                                      // 0x00728f21    5e
                         ret                0x0008                                   // 0x00728f22    c20800
                         nop                                                         // 0x00728f25    90
                         nop                                                         // 0x00728f26    90
                         nop                                                         // 0x00728f27    90
                         nop                                                         // 0x00728f28    90
                         nop                                                         // 0x00728f29    90
                         nop                                                         // 0x00728f2a    90
                         nop                                                         // 0x00728f2b    90
                         nop                                                         // 0x00728f2c    90
                         nop                                                         // 0x00728f2d    90
                         nop                                                         // 0x00728f2e    90
                         nop                                                         // 0x00728f2f    90
?InsertMapObject@SpellSeed@@UAEXXZ:
                         ret                                                         // 0x00728f30    c3
                         nop                                                         // 0x00728f31    90
                         nop                                                         // 0x00728f32    90
                         nop                                                         // 0x00728f33    90
                         nop                                                         // 0x00728f34    90
                         nop                                                         // 0x00728f35    90
                         nop                                                         // 0x00728f36    90
                         nop                                                         // 0x00728f37    90
                         nop                                                         // 0x00728f38    90
                         nop                                                         // 0x00728f39    90
                         nop                                                         // 0x00728f3a    90
                         nop                                                         // 0x00728f3b    90
                         nop                                                         // 0x00728f3c    90
                         nop                                                         // 0x00728f3d    90
                         nop                                                         // 0x00728f3e    90
                         nop                                                         // 0x00728f3f    90
?RemoveMapObject@SpellSeed@@UAEXXZ:
                         ret                                                         // 0x00728f40    c3
                         nop                                                         // 0x00728f41    90
                         nop                                                         // 0x00728f42    90
                         nop                                                         // 0x00728f43    90
                         nop                                                         // 0x00728f44    90
                         nop                                                         // 0x00728f45    90
                         nop                                                         // 0x00728f46    90
                         nop                                                         // 0x00728f47    90
                         nop                                                         // 0x00728f48    90
                         nop                                                         // 0x00728f49    90
                         nop                                                         // 0x00728f4a    90
                         nop                                                         // 0x00728f4b    90
                         nop                                                         // 0x00728f4c    90
                         nop                                                         // 0x00728f4d    90
                         nop                                                         // 0x00728f4e    90
                         nop                                                         // 0x00728f4f    90
?IsEffectReceiver@SpellSeed@@UAEIPAVEffectValues@@@Z:
                         xor.s              eax, eax                                 // 0x00728f50    33c0
                         ret                0x0004                                   // 0x00728f52    c20400
                         nop                                                         // 0x00728f55    90
                         nop                                                         // 0x00728f56    90
                         nop                                                         // 0x00728f57    90
                         nop                                                         // 0x00728f58    90
                         nop                                                         // 0x00728f59    90
                         nop                                                         // 0x00728f5a    90
                         nop                                                         // 0x00728f5b    90
                         nop                                                         // 0x00728f5c    90
                         nop                                                         // 0x00728f5d    90
                         nop                                                         // 0x00728f5e    90
                         nop                                                         // 0x00728f5f    90
                         {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00728f60    d90598a38a00
                         ret                0x0004                                   // 0x00728f66    c20400
                         nop                                                         // 0x00728f69    90
                         nop                                                         // 0x00728f6a    90
                         nop                                                         // 0x00728f6b    90
                         nop                                                         // 0x00728f6c    90
                         nop                                                         // 0x00728f6d    90
                         nop                                                         // 0x00728f6e    90
                         nop                                                         // 0x00728f6f    90
_jmp_addr_0x00728f70:    push               esi                                      // 0x00728f70    56
                         mov.s              esi, ecx                                 // 0x00728f71    8bf1
                         call               _jmp_addr_0x00728fc0                     // 0x00728f73    e848000000
                         test               al, al                                   // 0x00728f78    84c0
                         {disp8} je         _jmp_addr_0x00728fb9                     // 0x00728f7a    743d
                         mov.s              ecx, esi                                 // 0x00728f7c    8bce
                         call               _jmp_addr_0x00729800                     // 0x00728f7e    e87d080000
                         push               0x1                                      // 0x00728f83    6a01
                         push               0x0                                      // 0x00728f85    6a00
                         push               0x0                                      // 0x00728f87    6a00
                         push               eax                                      // 0x00728f89    50
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x00728f8a    8d4614
                         push               eax                                      // 0x00728f8d    50
                         call               _jmp_addr_0x005cd170                     // 0x00728f8e    e8dd41eaff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00728f93    d81d98a38a00
                         add                esp, 0x14                                // 0x00728f99    83c414
                         fnstsw             ax                                       // 0x00728f9c    dfe0
                         test               ah, 0x41                                 // 0x00728f9e    f6c441
                         {disp8} je         _jmp_addr_0x00728fb9                     // 0x00728fa1    7416
                         {disp8} mov        ecx, dword ptr [esi + 0x60]              // 0x00728fa3    8b4e60
                         test               ecx, ecx                                 // 0x00728fa6    85c9
                         {disp8} je         _jmp_addr_0x00728fb9                     // 0x00728fa8    740f
                         {disp8} mov        eax, dword ptr [ecx + 0x40]              // 0x00728faa    8b4140
                         test               eax, eax                                 // 0x00728fad    85c0
                         {disp8} jne        _jmp_addr_0x00728fb9                     // 0x00728faf    7508
                         mov                edx, dword ptr [ecx]                     // 0x00728fb1    8b11
                         call               dword ptr [edx + 0x530]                  // 0x00728fb3    ff9230050000
_jmp_addr_0x00728fb9:    mov                eax, 0x00000001                          // 0x00728fb9    b801000000
                         pop                esi                                      // 0x00728fbe    5e
                         ret                                                         // 0x00728fbf    c3
_jmp_addr_0x00728fc0:    push               esi                                      // 0x00728fc0    56
                         mov.s              esi, ecx                                 // 0x00728fc1    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00728fc3    8b06
                         call               dword ptr [eax + 0x178]                  // 0x00728fc5    ff9078010000
                         test               eax, eax                                 // 0x00728fcb    85c0
                         {disp8} jne        _jmp_addr_0x00729012                     // 0x00728fcd    7543
                         mov.s              ecx, esi                                 // 0x00728fcf    8bce
                         call               _jmp_addr_0x00729820                     // 0x00728fd1    e84a080000
                         test               eax, eax                                 // 0x00728fd6    85c0
                         {disp8} jne        _jmp_addr_0x00729012                     // 0x00728fd8    7538
                         mov.s              ecx, esi                                 // 0x00728fda    8bce
                         call               _jmp_addr_0x00729840                     // 0x00728fdc    e85f080000
                         test               eax, eax                                 // 0x00728fe1    85c0
                         {disp8} jne        _jmp_addr_0x00729012                     // 0x00728fe3    752d
                         mov.s              ecx, esi                                 // 0x00728fe5    8bce
                         call               _jmp_addr_0x007290e0                     // 0x00728fe7    e8f4000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000120]        // 0x00728fec    8b8820010000
                         test               ecx, ecx                                 // 0x00728ff2    85c9
                         {disp8} je         _jmp_addr_0x00729012                     // 0x00728ff4    741c
                         {disp8} mov        eax, dword ptr [esi + 0x60]              // 0x00728ff6    8b4660
                         test               eax, eax                                 // 0x00728ff9    85c0
                         {disp8} je         _jmp_addr_0x00729004                     // 0x00728ffb    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x40]              // 0x00728ffd    8b4840
                         test               ecx, ecx                                 // 0x00729000    85c9
                         {disp8} jne        _jmp_addr_0x00729012                     // 0x00729002    750e
_jmp_addr_0x00729004:    {disp8} mov        eax, dword ptr [esi + 0x5c]              // 0x00729004    8b465c
                         test               eax, eax                                 // 0x00729007    85c0
                         {disp8} je         _jmp_addr_0x00729012                     // 0x00729009    7407
                         mov                eax, 0x00000001                          // 0x0072900b    b801000000
                         pop                esi                                      // 0x00729010    5e
                         ret                                                         // 0x00729011    c3
_jmp_addr_0x00729012:    xor.s              eax, eax                                 // 0x00729012    33c0
                         pop                esi                                      // 0x00729014    5e
                         ret                                                         // 0x00729015    c3
                         nop                                                         // 0x00729016    90
                         nop                                                         // 0x00729017    90
                         nop                                                         // 0x00729018    90
                         nop                                                         // 0x00729019    90
                         nop                                                         // 0x0072901a    90
                         nop                                                         // 0x0072901b    90
                         nop                                                         // 0x0072901c    90
                         nop                                                         // 0x0072901d    90
                         nop                                                         // 0x0072901e    90
                         nop                                                         // 0x0072901f    90
_jmp_addr_0x00729020:    sub                esp, 0x18                                // 0x00729020    83ec18
                         push               edi                                      // 0x00729023    57
                         mov.s              edi, ecx                                 // 0x00729024    8bf9
                         call               _jmp_addr_0x00728fc0                     // 0x00729026    e895ffffff
                         test               al, al                                   // 0x0072902b    84c0
                         {disp32} je        _jmp_addr_0x007290d7                     // 0x0072902d    0f84a4000000
                         {disp8} mov        eax, dword ptr [edi + 0x60]              // 0x00729033    8b4760
                         test               eax, eax                                 // 0x00729036    85c0
                         {disp32} je        _jmp_addr_0x007290d7                     // 0x00729038    0f8499000000
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x0072903e    8d4f14
                         mov.s              eax, ecx                                 // 0x00729041    8bc1
                         mov                edx, dword ptr [eax]                     // 0x00729043    8b10
                         push               esi                                      // 0x00729045    56
                         {disp8} mov        dword ptr [esp + 0x08], edx              // 0x00729046    89542408
                         {disp8} mov        edx, dword ptr [eax + 0x04]              // 0x0072904a    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]              // 0x0072904d    8b4008
                         push               0x1                                      // 0x00729050    6a01
                         push               edi                                      // 0x00729052    57
                         {disp8} mov        dword ptr [esp + 0x14], edx              // 0x00729053    89542414
                         {disp8} mov        dword ptr [esp + 0x18], eax              // 0x00729057    89442418
                         call               _jmp_addr_0x006022c0                     // 0x0072905b    e86092edff
                         {disp8} mov        ecx, dword ptr [edi + 0x60]              // 0x00729060    8b4f60
                         {disp8} lea        eax, dword ptr [esp + 0x08]              // 0x00729063    8d442408
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00729067    d95c2410
                         mov                edx, dword ptr [ecx]                     // 0x0072906b    8b11
                         push               eax                                      // 0x0072906d    50
                         call               dword ptr [edx + 0x540]                  // 0x0072906e    ff9240050000
                         {disp8} fild       dword ptr [esp + 0x08]                   // 0x00729074    db442408
                         {disp8} mov        esi, dword ptr [edi + 0x40]              // 0x00729078    8b7740
                         {disp8} lea        ecx, dword ptr [esi + 0x50]              // 0x0072907b    8d4e50
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x0072907e    d80da4a38a00
                         push               ecx                                      // 0x00729084    51
                         {disp8} lea        edx, dword ptr [esi + 0x4c]              // 0x00729085    8d564c
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x00729088    8d4c240c
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x0072908c    d95c2418
                         {disp8} fild       dword ptr [esp + 0x10]                   // 0x00729090    db442410
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x00729094    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x0072909a    d95c2420
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x0072909e    d9442414
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x007290a2    d95c241c
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                      // 0x007290a6    e895a20d00
                         {disp8} fadd       dword ptr [esp + 0x18]                   // 0x007290ab    d8442418
                         {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x007290af    8d542414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x007290b3    8d4e14
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x007290b6    d95c2418
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z// 0x007290ba    e871a4cdff
                         mov.s              edx, edi                                 // 0x007290bf    8bd7
                         mov.s              ecx, esi                                 // 0x007290c1    8bce
                         {disp8} mov        dword ptr [esi + 0x44], 0x3f800000       // 0x007290c3    c746440000803f
                         {disp8} mov        dword ptr [esi + 0x48], 0x00000000       // 0x007290ca    c7464800000000
                         call               _jmp_addr_0x0063b5d0                     // 0x007290d1    e8fa24f1ff
                         pop                esi                                      // 0x007290d6    5e
_jmp_addr_0x007290d7:    pop                edi                                      // 0x007290d7    5f
                         add                esp, 0x18                                // 0x007290d8    83c418
                         ret                                                         // 0x007290db    c3
                         nop                                                         // 0x007290dc    90
                         nop                                                         // 0x007290dd    90
                         nop                                                         // 0x007290de    90
                         nop                                                         // 0x007290df    90
_jmp_addr_0x007290e0:    {disp8} mov        eax, dword ptr [ecx + 0x58]              // 0x007290e0    8b4158
                         ret                                                         // 0x007290e3    c3
                         nop                                                         // 0x007290e4    90
                         nop                                                         // 0x007290e5    90
                         nop                                                         // 0x007290e6    90
                         nop                                                         // 0x007290e7    90
                         nop                                                         // 0x007290e8    90
                         nop                                                         // 0x007290e9    90
                         nop                                                         // 0x007290ea    90
                         nop                                                         // 0x007290eb    90
                         nop                                                         // 0x007290ec    90
                         nop                                                         // 0x007290ed    90
                         nop                                                         // 0x007290ee    90
                         nop                                                         // 0x007290ef    90
_jmp_addr_0x007290f0:    {disp8} mov        eax, dword ptr [ecx + 0x6c]              // 0x007290f0    8b416c
                         push               eax                                      // 0x007290f3    50
                         call               _jmp_addr_0x007290e0                     // 0x007290f4    e8e7ffffff
                         mov.s              ecx, eax                                 // 0x007290f9    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x007290fb    e8e01e0000
                         ret                                                         // 0x00729100    c3
                         nop                                                         // 0x00729101    90
                         nop                                                         // 0x00729102    90
                         nop                                                         // 0x00729103    90
                         nop                                                         // 0x00729104    90
                         nop                                                         // 0x00729105    90
                         nop                                                         // 0x00729106    90
                         nop                                                         // 0x00729107    90
                         nop                                                         // 0x00729108    90
                         nop                                                         // 0x00729109    90
                         nop                                                         // 0x0072910a    90
                         nop                                                         // 0x0072910b    90
                         nop                                                         // 0x0072910c    90
                         nop                                                         // 0x0072910d    90
                         nop                                                         // 0x0072910e    90
                         nop                                                         // 0x0072910f    90
_jmp_addr_0x00729110:    {disp8} mov        eax, dword ptr [ecx + 0x68]              // 0x00729110    8b4168
                         ret                                                         // 0x00729113    c3
                         nop                                                         // 0x00729114    90
                         nop                                                         // 0x00729115    90
                         nop                                                         // 0x00729116    90
                         nop                                                         // 0x00729117    90
                         nop                                                         // 0x00729118    90
                         nop                                                         // 0x00729119    90
                         nop                                                         // 0x0072911a    90
                         nop                                                         // 0x0072911b    90
                         nop                                                         // 0x0072911c    90
                         nop                                                         // 0x0072911d    90
                         nop                                                         // 0x0072911e    90
                         nop                                                         // 0x0072911f    90
_jmp_addr_0x00729120:    push               esi                                      // 0x00729120    56
                         mov.s              esi, ecx                                 // 0x00729121    8bf1
                         call               _jmp_addr_0x00729800                     // 0x00729123    e8d8060000
                         push               eax                                      // 0x00729128    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00729129    8b44240c
                         push               eax                                      // 0x0072912d    50
                         mov.s              ecx, esi                                 // 0x0072912e    8bce
                         call               _jmp_addr_0x007290f0                     // 0x00729130    e8bbffffff
                         mov.s              ecx, eax                                 // 0x00729135    8bc8
                         call               _jmp_addr_0x005fb5d0                     // 0x00729137    e89424edff
                         neg                eax                                      // 0x0072913c    f7d8
                         sbb.s              eax, eax                                 // 0x0072913e    1bc0
                         neg                eax                                      // 0x00729140    f7d8
                         pop                esi                                      // 0x00729142    5e
                         ret                0x0004                                   // 0x00729143    c20400
                         nop                                                         // 0x00729146    90
                         nop                                                         // 0x00729147    90
                         nop                                                         // 0x00729148    90
                         nop                                                         // 0x00729149    90
                         nop                                                         // 0x0072914a    90
                         nop                                                         // 0x0072914b    90
                         nop                                                         // 0x0072914c    90
                         nop                                                         // 0x0072914d    90
                         nop                                                         // 0x0072914e    90
                         nop                                                         // 0x0072914f    90
_jmp_addr_0x00729150:    push               ebx                                      // 0x00729150    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00729151    8b5c2408
                         push               esi                                      // 0x00729155    56
                         push               edi                                      // 0x00729156    57
                         mov.s              esi, ecx                                 // 0x00729157    8bf1
                         push               ebx                                      // 0x00729159    53
                         xor.s              edi, edi                                 // 0x0072915a    33ff
                         call               _jmp_addr_0x00729120                     // 0x0072915c    e8bfffffff
                         test               eax, eax                                 // 0x00729161    85c0
                         {disp8} je         _jmp_addr_0x00729186                     // 0x00729163    7421
                         push               ebp                                      // 0x00729165    55
                         mov.s              ecx, esi                                 // 0x00729166    8bce
                         call               _jmp_addr_0x007290f0                     // 0x00729168    e883ffffff
                         mov.s              edi, eax                                 // 0x0072916d    8bf8
                         mov                ebp, dword ptr [edi]                     // 0x0072916f    8b2f
                         mov.s              ecx, esi                                 // 0x00729171    8bce
                         call               _jmp_addr_0x00729110                     // 0x00729173    e898ffffff
                         push               eax                                      // 0x00729178    50
                         push               ebx                                      // 0x00729179    53
                         mov.s              ecx, edi                                 // 0x0072917a    8bcf
                         call               dword ptr [ebp + 0x30]                   // 0x0072917c    ff5530
                         pop                ebp                                      // 0x0072917f    5d
                         pop                edi                                      // 0x00729180    5f
                         pop                esi                                      // 0x00729181    5e
                         pop                ebx                                      // 0x00729182    5b
                         ret                0x0008                                   // 0x00729183    c20800
_jmp_addr_0x00729186:    mov.s              eax, edi                                 // 0x00729186    8bc7
                         pop                edi                                      // 0x00729188    5f
                         pop                esi                                      // 0x00729189    5e
                         pop                ebx                                      // 0x0072918a    5b
                         ret                0x0008                                   // 0x0072918b    c20800
                         nop                                                         // 0x0072918e    90
                         nop                                                         // 0x0072918f    90
_jmp_addr_0x00729190:    push               ebx                                      // 0x00729190    53
                         push               ebp                                      // 0x00729191    55
                         push               esi                                      // 0x00729192    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x00729193    8b742410
                         mov                eax, dword ptr [esi]                     // 0x00729197    8b06
                         push               edi                                      // 0x00729199    57
                         mov.s              edi, ecx                                 // 0x0072919a    8bf9
                         mov.s              ecx, esi                                 // 0x0072919c    8bce
                         xor.s              ebp, ebp                                 // 0x0072919e    33ed
                         call               dword ptr [eax + 0x1c]                   // 0x007291a0    ff501c
                         {disp8} mov        ebx, dword ptr [esp + 0x18]              // 0x007291a3    8b5c2418
                         cmp.s              eax, ebx                                 // 0x007291a7    3bc3
                         {disp8} jne        _jmp_addr_0x007291ef                     // 0x007291a9    7544
                         mov                edx, dword ptr [esi]                     // 0x007291ab    8b16
                         mov.s              ecx, esi                                 // 0x007291ad    8bce
                         call               dword ptr [edx + 0x670]                  // 0x007291af    ff9270060000
                         test               eax, eax                                 // 0x007291b5    85c0
                         {disp8} je         _jmp_addr_0x007291ef                     // 0x007291b7    7436
                         mov                eax, dword ptr [esi]                     // 0x007291b9    8b06
                         mov.s              ecx, esi                                 // 0x007291bb    8bce
                         call               dword ptr [eax + 0x1f4]                  // 0x007291bd    ff90f4010000
                         test               eax, eax                                 // 0x007291c3    85c0
                         push               esi                                      // 0x007291c5    56
                         push               ebx                                      // 0x007291c6    53
                         mov.s              ecx, edi                                 // 0x007291c7    8bcf
                         {disp8} je         _jmp_addr_0x007291dd                     // 0x007291c9    7412
                         call               _jmp_addr_0x00728c50                     // 0x007291cb    e880faffff
                         pop                edi                                      // 0x007291d0    5f
                         neg                eax                                      // 0x007291d1    f7d8
                         pop                esi                                      // 0x007291d3    5e
                         sbb.s              eax, eax                                 // 0x007291d4    1bc0
                         pop                ebp                                      // 0x007291d6    5d
                         neg                eax                                      // 0x007291d7    f7d8
                         pop                ebx                                      // 0x007291d9    5b
                         ret                0x0008                                   // 0x007291da    c20800
_jmp_addr_0x007291dd:    call               _jmp_addr_0x00728a50                     // 0x007291dd    e86ef8ffff
                         pop                edi                                      // 0x007291e2    5f
                         neg                eax                                      // 0x007291e3    f7d8
                         pop                esi                                      // 0x007291e5    5e
                         sbb.s              eax, eax                                 // 0x007291e6    1bc0
                         pop                ebp                                      // 0x007291e8    5d
                         neg                eax                                      // 0x007291e9    f7d8
                         pop                ebx                                      // 0x007291eb    5b
                         ret                0x0008                                   // 0x007291ec    c20800
_jmp_addr_0x007291ef:    mov                edx, dword ptr [esi]                     // 0x007291ef    8b16
                         mov.s              ecx, esi                                 // 0x007291f1    8bce
                         call               dword ptr [edx + 0x218]                  // 0x007291f3    ff9218020000
                         test               eax, eax                                 // 0x007291f9    85c0
                         {disp8} je         _jmp_addr_0x00729213                     // 0x007291fb    7416
                         push               esi                                      // 0x007291fd    56
                         push               ebx                                      // 0x007291fe    53
                         mov.s              ecx, edi                                 // 0x007291ff    8bcf
                         call               _jmp_addr_0x00728a20                     // 0x00729201    e81af8ffff
                         pop                edi                                      // 0x00729206    5f
                         neg                eax                                      // 0x00729207    f7d8
                         pop                esi                                      // 0x00729209    5e
                         sbb.s              eax, eax                                 // 0x0072920a    1bc0
                         pop                ebp                                      // 0x0072920c    5d
                         neg                eax                                      // 0x0072920d    f7d8
                         pop                ebx                                      // 0x0072920f    5b
                         ret                0x0008                                   // 0x00729210    c20800
_jmp_addr_0x00729213:    mov.s              ecx, edi                                 // 0x00729213    8bcf
                         call               _jmp_addr_0x007290e0                     // 0x00729215    e8c6feffff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000118]        // 0x0072921a    8b8818010000
                         test               ecx, ecx                                 // 0x00729220    85c9
                         {disp8} je         _jmp_addr_0x0072924e                     // 0x00729222    742a
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x00729224    8d4614
                         push               eax                                      // 0x00729227    50
                         mov.s              ecx, edi                                 // 0x00729228    8bcf
                         call               _jmp_addr_0x00729120                     // 0x0072922a    e8f1feffff
                         test               eax, eax                                 // 0x0072922f    85c0
                         {disp8} je         _jmp_addr_0x0072924e                     // 0x00729231    741b
                         mov.s              ecx, edi                                 // 0x00729233    8bcf
                         call               _jmp_addr_0x007290f0                     // 0x00729235    e8b6feffff
                         mov.s              ebx, eax                                 // 0x0072923a    8bd8
                         mov                ebp, dword ptr [ebx]                     // 0x0072923c    8b2b
                         mov.s              ecx, edi                                 // 0x0072923e    8bcf
                         call               _jmp_addr_0x00729110                     // 0x00729240    e8cbfeffff
                         push               eax                                      // 0x00729245    50
                         push               esi                                      // 0x00729246    56
                         mov.s              ecx, ebx                                 // 0x00729247    8bcb
                         call               dword ptr [ebp + 0x2c]                   // 0x00729249    ff552c
                         mov.s              ebp, eax                                 // 0x0072924c    8be8
_jmp_addr_0x0072924e:    pop                edi                                      // 0x0072924e    5f
                         pop                esi                                      // 0x0072924f    5e
                         mov.s              eax, ebp                                 // 0x00729250    8bc5
                         pop                ebp                                      // 0x00729252    5d
                         pop                ebx                                      // 0x00729253    5b
                         ret                0x0008                                   // 0x00729254    c20800
                         nop                                                         // 0x00729257    90
                         nop                                                         // 0x00729258    90
                         nop                                                         // 0x00729259    90
                         nop                                                         // 0x0072925a    90
                         nop                                                         // 0x0072925b    90
                         nop                                                         // 0x0072925c    90
                         nop                                                         // 0x0072925d    90
                         nop                                                         // 0x0072925e    90
                         nop                                                         // 0x0072925f    90
_jmp_addr_0x00729260:    sub                esp, 0x0c                                // 0x00729260    83ec0c
                         push               ebx                                      // 0x00729263    53
                         push               esi                                      // 0x00729264    56
                         push               edi                                      // 0x00729265    57
                         mov.s              esi, ecx                                 // 0x00729266    8bf1
                         call               _jmp_addr_0x00729ad0                     // 0x00729268    e863080000
                         mov.s              edi, eax                                 // 0x0072926d    8bf8
                         cmp                edi, -0x01                               // 0x0072926f    83ffff
                         {disp32} je        _jmp_addr_0x0072930f                     // 0x00729272    0f8497000000
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00729278    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x0072927e    e8cdc5e2ff
                         {disp32} mov       ebx, dword ptr [eax + 0x0000039c]        // 0x00729283    8b989c030000
                         mov.s              ecx, esi                                 // 0x00729289    8bce
                         call               _jmp_addr_0x00729810                     // 0x0072928b    e880050000
                         cmp.s              eax, ebx                                 // 0x00729290    3bc3
                         {disp8} jne        _jmp_addr_0x007292b3                     // 0x00729292    751f
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00729294    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x0072929a    e8b1c5e2ff
                         {disp32} mov       eax, dword ptr [eax + 0x000003a0]        // 0x0072929f    8b80a0030000
                         {disp32} mov       ecx, dword ptr [eax + 0x00004948]        // 0x007292a5    8b8848490000
                         mov                edx, dword ptr [ecx]                     // 0x007292ab    8b11
                         push               edi                                      // 0x007292ad    57
                         call               dword ptr [edx + 0x20]                   // 0x007292ae    ff5220
                         {disp8} jmp        _jmp_addr_0x007292f4                     // 0x007292b1    eb41
_jmp_addr_0x007292b3:    {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x007292b3    8b44241c
                         fild               dword ptr [eax]                          // 0x007292b7    db00
                         mov.s              ecx, esi                                 // 0x007292b9    8bce
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x007292bb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x007292c1    d95c240c
                         {disp8} fild       dword ptr [eax + 0x04]                   // 0x007292c5    db4004
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x007292c8    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x007292ce    d95c2414
                         {disp8} fld        dword ptr [eax + 0x08]                   // 0x007292d2    d94008
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x007292d5    d95c2410
                         call               _jmp_addr_0x00729800                     // 0x007292d9    e822050000
                         mov.s              ecx, eax                                 // 0x007292de    8bc8
                         call               ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ          // 0x007292e0    e81b45f2ff
                         push               eax                                      // 0x007292e5    50
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x007292e6    8d442410
                         push               eax                                      // 0x007292ea    50
                         push               edi                                      // 0x007292eb    57
                         call               ?CreateTribalPowerColumn@PSysHandFX@@SAXW4TRIBE_TYPE@@ABULHPoint@@K@Z               // 0x007292ec    e8ff4bf6ff
                         add                esp, 0x0c                                // 0x007292f1    83c40c
_jmp_addr_0x007292f4:    {disp32} mov       ecx, dword ptr [_global]                 // 0x007292f4    8b0d203bcd00
                         push               0x9                                      // 0x007292fa    6a09
                         push               0x0                                      // 0x007292fc    6a00
                         push               0x0                                      // 0x007292fe    6a00
                         push               0x0                                      // 0x00729300    6a00
                         push               0x2                                      // 0x00729302    6a02
                         add                edi, 0x1b                                // 0x00729304    83c71b
                         push               edi                                      // 0x00729307    57
                         push               0x0                                      // 0x00729308    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                     // 0x0072930a    e8510ad0ff
_jmp_addr_0x0072930f:    {disp8} mov        edi, dword ptr [esi + 0x5c]              // 0x0072930f    8b7e5c
                         test               edi, edi                                 // 0x00729312    85ff
                         {disp8} je         _jmp_addr_0x00729325                     // 0x00729314    740f
                         mov.s              ecx, esi                                 // 0x00729316    8bce
                         call               _jmp_addr_0x00729810                     // 0x00729318    e8f3040000
                         push               eax                                      // 0x0072931d    50
                         mov.s              ecx, edi                                 // 0x0072931e    8bcf
                         call               _jmp_addr_0x0077f9a0                     // 0x00729320    e87b660500
_jmp_addr_0x00729325:    {disp8} mov        edi, dword ptr [esp + 0x20]              // 0x00729325    8b7c2420
                         test               edi, edi                                 // 0x00729329    85ff
                         {disp32} je        _jmp_addr_0x0072944c                     // 0x0072932b    0f841b010000
                         mov.s              ecx, esi                                 // 0x00729331    8bce
                         call               _jmp_addr_0x00729810                     // 0x00729333    e8d8040000
                         push               eax                                      // 0x00729338    50
                         mov.s              ecx, edi                                 // 0x00729339    8bcf
                         call               _jmp_addr_0x007201f0                     // 0x0072933b    e8b06effff
                         {disp8} fld        dword ptr [esi + 0x7c]                   // 0x00729340    d9467c
                         {disp32} mov       ecx, dword ptr [edi + 0x000000b4]        // 0x00729343    8b8fb4000000
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x00729349    d954241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x0072934d    d81d98a38a00
                         {disp32} mov       dword ptr [esi + 0x00000098], ecx        // 0x00729353    898e98000000
                         fnstsw             ax                                       // 0x00729359    dfe0
                         test               ah, 0x01                                 // 0x0072935b    f6c401
                         {disp8} jne        _jmp_addr_0x0072937a                     // 0x0072935e    751a
                         {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00729360    8b54241c
                         push               edx                                      // 0x00729364    52
                         mov.s              ecx, edi                                 // 0x00729365    8bcf
                         call               _jmp_addr_0x00720fa0                     // 0x00729367    e8347cffff
                         {disp32} mov       eax, dword ptr [esi + 0x00000084]        // 0x0072936c    8b8684000000
                         push               eax                                      // 0x00729372    50
                         mov.s              ecx, edi                                 // 0x00729373    8bcf
                         call               _jmp_addr_0x00720f90                     // 0x00729375    e8167cffff
_jmp_addr_0x0072937a:    push               0x0                                      // 0x0072937a    6a00
                         mov.s              ecx, esi                                 // 0x0072937c    8bce
                         call               _jmp_addr_0x00729a50                     // 0x0072937e    e8cd060000
                         fstp               st(0)                                    // 0x00729383    ddd8
                         mov.s              ecx, edi                                 // 0x00729385    8bcf
                         call               _jmp_addr_0x007201d0                     // 0x00729387    e8446effff
                         mov                edx, dword ptr [eax]                     // 0x0072938c    8b10
                         mov.s              ecx, eax                                 // 0x0072938e    8bc8
                         call               dword ptr [edx + 0x38]                   // 0x00729390    ff5238
                         test               eax, eax                                 // 0x00729393    85c0
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00729395    8b0d5c19d000
                         {disp8} je         _jmp_addr_0x007293c2                     // 0x0072939b    7425
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x0072939d    e8aec4e2ff
                         {disp32} mov       ebx, dword ptr [eax + 0x0000039c]        // 0x007293a2    8b989c030000
                         mov.s              ecx, esi                                 // 0x007293a8    8bce
                         call               _jmp_addr_0x00729810                     // 0x007293aa    e861040000
                         cmp.s              eax, ebx                                 // 0x007293af    3bc3
                         {disp8} jne        _jmp_addr_0x007293eb                     // 0x007293b1    7538
                         {disp32} mov       eax, dword ptr [_game]                   // 0x007293b3    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250060]        // 0x007293b8    8b8860002500
                         push               0xa                                      // 0x007293be    6a0a
                         {disp8} jmp        _jmp_addr_0x007293e6                     // 0x007293c0    eb24
_jmp_addr_0x007293c2:    call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x007293c2    e889c4e2ff
                         {disp32} mov       ebx, dword ptr [eax + 0x0000039c]        // 0x007293c7    8b989c030000
                         mov.s              ecx, esi                                 // 0x007293cd    8bce
                         call               _jmp_addr_0x00729810                     // 0x007293cf    e83c040000
                         cmp.s              eax, ebx                                 // 0x007293d4    3bc3
                         {disp8} jne        _jmp_addr_0x007293eb                     // 0x007293d6    7513
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x007293d8    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250060]        // 0x007293de    8b8960002500
                         push               0x9                                      // 0x007293e4    6a09
_jmp_addr_0x007293e6:    call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z                     // 0x007293e6    e8f5b2e9ff
_jmp_addr_0x007293eb:    mov.s              ecx, esi                                 // 0x007293eb    8bce
                         call               _jmp_addr_0x00729820                     // 0x007293ed    e82e040000
                         test               eax, eax                                 // 0x007293f2    85c0
                         {disp8} jne        _jmp_addr_0x0072940f                     // 0x007293f4    7519
                         {disp32} lea       edx, dword ptr [edi + 0x000000cc]        // 0x007293f6    8d97cc000000
                         mov                ecx, dword ptr [edx]                     // 0x007293fc    8b0a
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x007293fe    8d4614
                         mov                dword ptr [eax], ecx                     // 0x00729401    8908
                         {disp8} mov        ecx, dword ptr [edx + 0x04]              // 0x00729403    8b4a04
                         {disp8} mov        dword ptr [eax + 0x04], ecx              // 0x00729406    894804
                         {disp8} mov        edx, dword ptr [edx + 0x08]              // 0x00729409    8b5208
                         {disp8} mov        dword ptr [eax + 0x08], edx              // 0x0072940c    895008
_jmp_addr_0x0072940f:    {disp32} mov       eax, dword ptr [edi + 0x000000ac]        // 0x0072940f    8b87ac000000
                         test               eax, eax                                 // 0x00729415    85c0
                         {disp8} jne        _jmp_addr_0x0072941f                     // 0x00729417    7506
                         {disp32} mov       dword ptr [edi + 0x000000ac], esi        // 0x00729419    89b7ac000000
_jmp_addr_0x0072941f:    push               edi                                      // 0x0072941f    57
                         mov.s              ecx, esi                                 // 0x00729420    8bce
                         call               _jmp_addr_0x007281a0                     // 0x00729422    e879edffff
                         mov.s              ecx, edi                                 // 0x00729427    8bcf
                         call               _jmp_addr_0x007201d0                     // 0x00729429    e8a26dffff
                         {disp8} mov        eax, dword ptr [eax + 0x14]              // 0x0072942e    8b4014
                         push               0x80000000                               // 0x00729431    6800000080
                         push               eax                                      // 0x00729436    50
                         mov.s              ecx, esi                                 // 0x00729437    8bce
                         call               _jmp_addr_0x00729810                     // 0x00729439    e8d2030000
                         mov.s              ecx, eax                                 // 0x0072943e    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                     // 0x00729440    e86b34ebff
                         mov.s              ecx, eax                                 // 0x00729445    8bc8
                         call               _jmp_addr_0x005d8a10                     // 0x00729447    e8c4f5eaff
_jmp_addr_0x0072944c:    pop                edi                                      // 0x0072944c    5f
                         pop                esi                                      // 0x0072944d    5e
                         pop                ebx                                      // 0x0072944e    5b
                         add                esp, 0x0c                                // 0x0072944f    83c40c
                         ret                0x0008                                   // 0x00729452    c20800
                         nop                                                         // 0x00729455    90
                         nop                                                         // 0x00729456    90
                         nop                                                         // 0x00729457    90
                         nop                                                         // 0x00729458    90
                         nop                                                         // 0x00729459    90
                         nop                                                         // 0x0072945a    90
                         nop                                                         // 0x0072945b    90
                         nop                                                         // 0x0072945c    90
                         nop                                                         // 0x0072945d    90
                         nop                                                         // 0x0072945e    90
                         nop                                                         // 0x0072945f    90
_jmp_addr_0x00729460:    push               ebx                                      // 0x00729460    53
                         push               esi                                      // 0x00729461    56
                         mov.s              esi, ecx                                 // 0x00729462    8bf1
                         {disp8} mov        cl, byte ptr [esi + 0x54]                // 0x00729464    8a4e54
                         mov                bl, -0x02                                // 0x00729467    b3fe
                         and.s              cl, bl                                   // 0x00729469    22cb
                         {disp8} mov        byte ptr [esi + 0x54], cl                // 0x0072946b    884e54
                         mov.s              ecx, esi                                 // 0x0072946e    8bce
                         call               _jmp_addr_0x00728200                     // 0x00729470    e88bedffff
                         {disp8} mov        eax, dword ptr [esi + 0x5c]              // 0x00729475    8b465c
                         test               eax, eax                                 // 0x00729478    85c0
                         {disp8} je         _jmp_addr_0x0072948b                     // 0x0072947a    740f
                         {disp8} mov        al, byte ptr [esi + 0x54]                // 0x0072947c    8a4654
                         and.s              al, bl                                   // 0x0072947f    22c3
                         mov.s              ecx, esi                                 // 0x00729481    8bce
                         {disp8} mov        byte ptr [esi + 0x54], al                // 0x00729483    884654
                         call               _jmp_addr_0x00728200                     // 0x00729486    e875edffff
_jmp_addr_0x0072948b:    push               edi                                      // 0x0072948b    57
                         mov.s              ecx, esi                                 // 0x0072948c    8bce
                         call               _jmp_addr_0x00729810                     // 0x0072948e    e87d030000
                         {disp8} mov        ebx, dword ptr [esp + 0x14]              // 0x00729493    8b5c2414
                         mov.s              edi, eax                                 // 0x00729497    8bf8
                         mov                eax, dword ptr [edi]                     // 0x00729499    8b07
                         push               ebx                                      // 0x0072949b    53
                         push               0x0                                      // 0x0072949c    6a00
                         mov.s              ecx, edi                                 // 0x0072949e    8bcf
                         call               dword ptr [eax + 0x5c]                   // 0x007294a0    ff505c
                         {disp8} lea        eax, dword ptr [edi + 0x44]              // 0x007294a3    8d4744
                         {disp8} lea        ecx, dword ptr [eax + 0x18]              // 0x007294a6    8d4818
                         mov                edi, dword ptr [ecx]                     // 0x007294a9    8b39
                         {disp8} lea        edx, dword ptr [ebx + 0x0c]              // 0x007294ab    8d530c
                         mov                dword ptr [edx], edi                     // 0x007294ae    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]              // 0x007294b0    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi              // 0x007294b3    897a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x007294b6    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x007294b9    894a08
                         mov.s              ecx, eax                                 // 0x007294bc    8bc8
                         mov                edi, dword ptr [ecx]                     // 0x007294be    8b39
                         {disp8} lea        edx, dword ptr [ebx + 0x24]              // 0x007294c0    8d5324
                         mov                dword ptr [edx], edi                     // 0x007294c3    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]              // 0x007294c5    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi              // 0x007294c8    897a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]              // 0x007294cb    8b4908
                         {disp8} mov        edi, dword ptr [esp + 0x10]              // 0x007294ce    8b7c2410
                         {disp8} mov        dword ptr [edx + 0x08], ecx              // 0x007294d2    894a08
                         {disp8} mov        edx, dword ptr [eax + 0x10]              // 0x007294d5    8b5010
                         mov.s              ecx, edi                                 // 0x007294d8    8bcf
                         {disp8} mov        dword ptr [ebx + 0x34], edx              // 0x007294da    895334
                         call               _jmp_addr_0x005fb7a0                     // 0x007294dd    e8be22edff
                         {disp32} fmul      dword ptr [esi + 0x00000088]             // 0x007294e2    d88e88000000
                         {disp8} mov        ebx, dword ptr [esp + 0x18]              // 0x007294e8    8b5c2418
                         mov.s              ecx, edi                                 // 0x007294ec    8bcf
                         {disp8} fstp       dword ptr [ebx + 0x08]                   // 0x007294ee    d95b08
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ   // 0x007294f1    e88a21edff
                         {disp8} fld        dword ptr [eax + 0x74]                   // 0x007294f6    d94074
                         {disp32} fmul      dword ptr [esi + 0x00000088]             // 0x007294f9    d88e88000000
                         {disp8} fstp       dword ptr [ebx + 0x04]                   // 0x007294ff    d95b04
                         {disp8} mov        eax, dword ptr [edi + 0x28]              // 0x00729502    8b4728
                         cmp                eax, 0x02                                // 0x00729505    83f802
                         pop                edi                                      // 0x00729508    5f
                         {disp8} jne        _jmp_addr_0x00729511                     // 0x00729509    7506
                         mov                dword ptr [ebx], 0x3f800000              // 0x0072950b    c7030000803f
_jmp_addr_0x00729511:    pop                esi                                      // 0x00729511    5e
                         pop                ebx                                      // 0x00729512    5b
                         ret                0x000c                                   // 0x00729513    c20c00
                         nop                                                         // 0x00729516    90
                         nop                                                         // 0x00729517    90
                         nop                                                         // 0x00729518    90
                         nop                                                         // 0x00729519    90
                         nop                                                         // 0x0072951a    90
                         nop                                                         // 0x0072951b    90
                         nop                                                         // 0x0072951c    90
                         nop                                                         // 0x0072951d    90
                         nop                                                         // 0x0072951e    90
                         nop                                                         // 0x0072951f    90
_jmp_addr_0x00729520:    sub                esp, 0x50                                // 0x00729520    83ec50
                         push               ebx                                      // 0x00729523    53
                         push               esi                                      // 0x00729524    56
                         mov.s              esi, ecx                                 // 0x00729525    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]        // 0x00729527    8b8698000000
                         test               eax, eax                                 // 0x0072952d    85c0
                         {disp8} mov        ecx, dword ptr [esi + 0x60]              // 0x0072952f    8b4e60
                         push               edi                                      // 0x00729532    57
                         mov                ebx, 0x00000001                          // 0x00729533    bb01000000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x00729538    894c240c
                         {disp8} je         _jmp_addr_0x00729547                     // 0x0072953c    7409
                         {disp32} mov       edi, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0072953e    8b3c85107dd300
                         {disp8} jmp        _jmp_addr_0x00729554                     // 0x00729545    eb0d
_jmp_addr_0x00729547:    mov.s              ecx, esi                                 // 0x00729547    8bce
                         call               _jmp_addr_0x007290f0                     // 0x00729549    e8a2fbffff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x0072954e    8b4c240c
                         mov.s              edi, eax                                 // 0x00729552    8bf8
_jmp_addr_0x00729554:    test               ecx, ecx                                 // 0x00729554    85c9
                         {disp8} jne        _jmp_addr_0x0072956e                     // 0x00729556    7516
                         cmp                byte ptr [esi + 0x70], bl                // 0x00729558    385e70
                         {disp8} jne        _jmp_addr_0x0072957d                     // 0x0072955b    7520
                         {disp8} mov        edx, dword ptr [esp + 0x64]              // 0x0072955d    8b542464
                         pop                edi                                      // 0x00729561    5f
                         pop                esi                                      // 0x00729562    5e
                         xor.s              eax, eax                                 // 0x00729563    33c0
                         mov                dword ptr [edx], ecx                     // 0x00729565    890a
                         pop                ebx                                      // 0x00729567    5b
                         add                esp, 0x50                                // 0x00729568    83c450
                         ret                0x000c                                   // 0x0072956b    c20c00
_jmp_addr_0x0072956e:    mov.s              ecx, esi                                 // 0x0072956e    8bce
                         call               _jmp_addr_0x00729820                     // 0x00729570    e8ab020000
                         test               eax, eax                                 // 0x00729575    85c0
                         {disp32} jne       _jmp_addr_0x00729678                     // 0x00729577    0f85fb000000
_jmp_addr_0x0072957d:    {disp32} mov       eax, dword ptr [esi + 0x00000080]        // 0x0072957d    8b8680000000
                         {disp8} mov        ecx, dword ptr [esp + 0x68]              // 0x00729583    8b4c2468
                         push               eax                                      // 0x00729587    50
                         push               ecx                                      // 0x00729588    51
                         {disp8} lea        ecx, dword ptr [esp + 0x18]              // 0x00729589    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000       // 0x0072958d    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000       // 0x00729595    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000       // 0x0072959d    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000       // 0x007295a5    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000       // 0x007295ad    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000       // 0x007295b5    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000       // 0x007295bd    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000       // 0x007295c5    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000       // 0x007295cd    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000       // 0x007295d5    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000       // 0x007295dd    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000       // 0x007295e5    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x3f800000       // 0x007295ed    c74424580000803f
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000       // 0x007295f5    c744245c00000000
                         {disp8} mov        byte ptr [esp + 0x60], bl                // 0x007295fd    885c2460
                         call               _jmp_addr_0x0071fa10                     // 0x00729601    e80a64ffff
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x00729606    8d542410
                         push               edx                                      // 0x0072960a    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]              // 0x0072960b    8d442424
                         push               eax                                      // 0x0072960f    50
                         push               edi                                      // 0x00729610    57
                         mov.s              ecx, esi                                 // 0x00729611    8bce
                         call               _jmp_addr_0x00729460                     // 0x00729613    e848feffff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x00729618    8d4c2420
                         push               ecx                                      // 0x0072961c    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x0072961d    8d542410
                         push               edx                                      // 0x00729621    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]              // 0x00729622    8d442418
                         push               eax                                      // 0x00729626    50
                         mov.s              ecx, esi                                 // 0x00729627    8bce
                         call               _jmp_addr_0x00729110                     // 0x00729629    e8e2faffff
                         {disp8} mov        ebx, dword ptr [esp + 0x6c]              // 0x0072962e    8b5c246c
                         push               eax                                      // 0x00729632    50
                         push               ebx                                      // 0x00729633    53
                         mov.s              ecx, edi                                 // 0x00729634    8bcf
                         call               _jmp_addr_0x005fb490                     // 0x00729636    e8551eedff
                         mov.s              edi, eax                                 // 0x0072963b    8bf8
                         test               edi, edi                                 // 0x0072963d    85ff
                         {disp8} je         _jmp_addr_0x00729663                     // 0x0072963f    7422
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x00729641    8b4c240c
                         push               ecx                                      // 0x00729645    51
                         push               ebx                                      // 0x00729646    53
                         mov.s              ecx, esi                                 // 0x00729647    8bce
                         call               _jmp_addr_0x00729260                     // 0x00729649    e812fcffff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x0072964e    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x64]              // 0x00729652    8b542464
                         mov                dword ptr [edx], eax                     // 0x00729656    8902
                         mov.s              eax, edi                                 // 0x00729658    8bc7
                         pop                edi                                      // 0x0072965a    5f
                         pop                esi                                      // 0x0072965b    5e
                         pop                ebx                                      // 0x0072965c    5b
                         add                esp, 0x50                                // 0x0072965d    83c450
                         ret                0x000c                                   // 0x00729660    c20c00
_jmp_addr_0x00729663:    {disp8} mov        ecx, dword ptr [esp + 0x64]              // 0x00729663    8b4c2464
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x00729667    8b54240c
                         mov.s              eax, edi                                 // 0x0072966b    8bc7
                         pop                edi                                      // 0x0072966d    5f
                         pop                esi                                      // 0x0072966e    5e
                         mov                dword ptr [ecx], edx                     // 0x0072966f    8911
                         pop                ebx                                      // 0x00729671    5b
                         add                esp, 0x50                                // 0x00729672    83c450
                         ret                0x000c                                   // 0x00729675    c20c00
_jmp_addr_0x00729678:    {disp8} mov        eax, dword ptr [esp + 0x64]              // 0x00729678    8b442464
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x0072967c    8b4c240c
                         pop                edi                                      // 0x00729680    5f
                         mov                dword ptr [eax], ecx                     // 0x00729681    8908
                         pop                esi                                      // 0x00729683    5e
                         mov.s              eax, ebx                                 // 0x00729684    8bc3
                         pop                ebx                                      // 0x00729686    5b
                         add                esp, 0x50                                // 0x00729687    83c450
                         ret                0x000c                                   // 0x0072968a    c20c00
                         nop                                                         // 0x0072968d    90
                         nop                                                         // 0x0072968e    90
                         nop                                                         // 0x0072968f    90
_jmp_addr_0x00729690:    sub                esp, 0x50                                // 0x00729690    83ec50
                         push               ebx                                      // 0x00729693    53
                         push               esi                                      // 0x00729694    56
                         mov.s              esi, ecx                                 // 0x00729695    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]        // 0x00729697    8b8698000000
                         test               eax, eax                                 // 0x0072969d    85c0
                         {disp8} mov        ecx, dword ptr [esi + 0x60]              // 0x0072969f    8b4e60
                         push               edi                                      // 0x007296a2    57
                         mov                ebx, 0x00000001                          // 0x007296a3    bb01000000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x007296a8    894c240c
                         {disp8} je         _jmp_addr_0x007296b7                     // 0x007296ac    7409
                         {disp32} mov       edi, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x007296ae    8b3c85107dd300
                         {disp8} jmp        _jmp_addr_0x007296c4                     // 0x007296b5    eb0d
_jmp_addr_0x007296b7:    mov.s              ecx, esi                                 // 0x007296b7    8bce
                         call               _jmp_addr_0x007290f0                     // 0x007296b9    e832faffff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x007296be    8b4c240c
                         mov.s              edi, eax                                 // 0x007296c2    8bf8
_jmp_addr_0x007296c4:    test               ecx, ecx                                 // 0x007296c4    85c9
                         {disp8} jne        _jmp_addr_0x007296de                     // 0x007296c6    7516
                         cmp                byte ptr [esi + 0x70], bl                // 0x007296c8    385e70
                         {disp8} jne        _jmp_addr_0x007296ed                     // 0x007296cb    7520
                         {disp8} mov        edx, dword ptr [esp + 0x64]              // 0x007296cd    8b542464
                         pop                edi                                      // 0x007296d1    5f
                         pop                esi                                      // 0x007296d2    5e
                         xor.s              eax, eax                                 // 0x007296d3    33c0
                         mov                dword ptr [edx], ecx                     // 0x007296d5    890a
                         pop                ebx                                      // 0x007296d7    5b
                         add                esp, 0x50                                // 0x007296d8    83c450
                         ret                0x000c                                   // 0x007296db    c20c00
_jmp_addr_0x007296de:    mov.s              ecx, esi                                 // 0x007296de    8bce
                         call               _jmp_addr_0x00729820                     // 0x007296e0    e83b010000
                         test               eax, eax                                 // 0x007296e5    85c0
                         {disp32} jne       _jmp_addr_0x007297eb                     // 0x007296e7    0f85fe000000
_jmp_addr_0x007296ed:    {disp32} mov       eax, dword ptr [esi + 0x00000080]        // 0x007296ed    8b8680000000
                         {disp8} mov        ecx, dword ptr [esp + 0x68]              // 0x007296f3    8b4c2468
                         push               eax                                      // 0x007296f7    50
                         push               ecx                                      // 0x007296f8    51
                         {disp8} lea        ecx, dword ptr [esp + 0x18]              // 0x007296f9    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000       // 0x007296fd    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000       // 0x00729705    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000       // 0x0072970d    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000       // 0x00729715    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000       // 0x0072971d    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000       // 0x00729725    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000       // 0x0072972d    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000       // 0x00729735    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000       // 0x0072973d    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000       // 0x00729745    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000       // 0x0072974d    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000       // 0x00729755    c744245400000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x3f800000       // 0x0072975d    c74424580000803f
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000       // 0x00729765    c744245c00000000
                         {disp8} mov        byte ptr [esp + 0x60], bl                // 0x0072976d    885c2460
                         call               _jmp_addr_0x0071fa10                     // 0x00729771    e89a62ffff
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x00729776    8d542410
                         push               edx                                      // 0x0072977a    52
                         {disp8} lea        eax, dword ptr [esp + 0x24]              // 0x0072977b    8d442424
                         push               eax                                      // 0x0072977f    50
                         push               edi                                      // 0x00729780    57
                         mov.s              ecx, esi                                 // 0x00729781    8bce
                         call               _jmp_addr_0x00729460                     // 0x00729783    e8d8fcffff
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x00729788    8d4c2420
                         push               ecx                                      // 0x0072978c    51
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x0072978d    8d542410
                         push               edx                                      // 0x00729791    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]              // 0x00729792    8d442418
                         push               eax                                      // 0x00729796    50
                         mov.s              ecx, esi                                 // 0x00729797    8bce
                         call               _jmp_addr_0x00729110                     // 0x00729799    e872f9ffff
                         {disp8} mov        ebx, dword ptr [esp + 0x6c]              // 0x0072979e    8b5c246c
                         push               eax                                      // 0x007297a2    50
                         push               ebx                                      // 0x007297a3    53
                         mov.s              ecx, edi                                 // 0x007297a4    8bcf
                         call               _jmp_addr_0x005fb520                     // 0x007297a6    e8751dedff
                         mov.s              edi, eax                                 // 0x007297ab    8bf8
                         test               edi, edi                                 // 0x007297ad    85ff
                         {disp8} je         _jmp_addr_0x007297d6                     // 0x007297af    7425
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x007297b1    8b4c240c
                         push               ecx                                      // 0x007297b5    51
                         add                ebx, 0x14                                // 0x007297b6    83c314
                         push               ebx                                      // 0x007297b9    53
                         mov.s              ecx, esi                                 // 0x007297ba    8bce
                         call               _jmp_addr_0x00729260                     // 0x007297bc    e89ffaffff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x007297c1    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x64]              // 0x007297c5    8b542464
                         mov                dword ptr [edx], eax                     // 0x007297c9    8902
                         mov.s              eax, edi                                 // 0x007297cb    8bc7
                         pop                edi                                      // 0x007297cd    5f
                         pop                esi                                      // 0x007297ce    5e
                         pop                ebx                                      // 0x007297cf    5b
                         add                esp, 0x50                                // 0x007297d0    83c450
                         ret                0x000c                                   // 0x007297d3    c20c00
_jmp_addr_0x007297d6:    {disp8} mov        ecx, dword ptr [esp + 0x64]              // 0x007297d6    8b4c2464
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x007297da    8b54240c
                         mov.s              eax, edi                                 // 0x007297de    8bc7
                         pop                edi                                      // 0x007297e0    5f
                         pop                esi                                      // 0x007297e1    5e
                         mov                dword ptr [ecx], edx                     // 0x007297e2    8911
                         pop                ebx                                      // 0x007297e4    5b
                         add                esp, 0x50                                // 0x007297e5    83c450
                         ret                0x000c                                   // 0x007297e8    c20c00
_jmp_addr_0x007297eb:    {disp8} mov        eax, dword ptr [esp + 0x64]              // 0x007297eb    8b442464
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x007297ef    8b4c240c
                         pop                edi                                      // 0x007297f3    5f
                         mov                dword ptr [eax], ecx                     // 0x007297f4    8908
                         pop                esi                                      // 0x007297f6    5e
                         mov.s              eax, ebx                                 // 0x007297f7    8bc3
                         pop                ebx                                      // 0x007297f9    5b
                         add                esp, 0x50                                // 0x007297fa    83c450
                         ret                0x000c                                   // 0x007297fd    c20c00
_jmp_addr_0x00729800:    {disp8} mov        ecx, dword ptr [ecx + 0x64]              // 0x00729800    8b4964
                         test               ecx, ecx                                 // 0x00729803    85c9
                         {disp8} je         _jmp_addr_0x0072980c                     // 0x00729805    7405
                         mov                eax, dword ptr [ecx]                     // 0x00729807    8b01
                         {disp8} jmp        dword ptr [eax + 0x1c]                   // 0x00729809    ff601c
_jmp_addr_0x0072980c:    xor.s              eax, eax                                 // 0x0072980c    33c0
                         ret                                                         // 0x0072980e    c3
                         nop                                                         // 0x0072980f    90
_jmp_addr_0x00729810:    {disp8} mov        eax, dword ptr [ecx + 0x64]              // 0x00729810    8b4164
                         ret                                                         // 0x00729813    c3
                         nop                                                         // 0x00729814    90
                         nop                                                         // 0x00729815    90
                         nop                                                         // 0x00729816    90
                         nop                                                         // 0x00729817    90
                         nop                                                         // 0x00729818    90
                         nop                                                         // 0x00729819    90
                         nop                                                         // 0x0072981a    90
                         nop                                                         // 0x0072981b    90
                         nop                                                         // 0x0072981c    90
                         nop                                                         // 0x0072981d    90
                         nop                                                         // 0x0072981e    90
                         nop                                                         // 0x0072981f    90
_jmp_addr_0x00729820:    call               _jmp_addr_0x007290e0                     // 0x00729820    e8bbf8ffff
                         {disp32} mov       edx, dword ptr [eax + 0x00000110]        // 0x00729825    8b9010010000
                         xor.s              ecx, ecx                                 // 0x0072982b    33c9
                         test               edx, edx                                 // 0x0072982d    85d2
                         sete               cl                                       // 0x0072982f    0f94c1
                         mov.s              eax, ecx                                 // 0x00729832    8bc1
                         ret                                                         // 0x00729834    c3
                         nop                                                         // 0x00729835    90
                         nop                                                         // 0x00729836    90
                         nop                                                         // 0x00729837    90
                         nop                                                         // 0x00729838    90
                         nop                                                         // 0x00729839    90
                         nop                                                         // 0x0072983a    90
                         nop                                                         // 0x0072983b    90
                         nop                                                         // 0x0072983c    90
                         nop                                                         // 0x0072983d    90
                         nop                                                         // 0x0072983e    90
                         nop                                                         // 0x0072983f    90
_jmp_addr_0x00729840:    call               _jmp_addr_0x007290e0                     // 0x00729840    e89bf8ffff
                         {disp32} mov       eax, dword ptr [eax + 0x00000114]        // 0x00729845    8b8014010000
                         ret                                                         // 0x0072984b    c3
                         nop                                                         // 0x0072984c    90
                         nop                                                         // 0x0072984d    90
                         nop                                                         // 0x0072984e    90
                         nop                                                         // 0x0072984f    90
?GetMesh@SpellSeed@@UBEHXZ:
                         call               _jmp_addr_0x007290e0                     // 0x00729850    e88bf8ffff
                         {disp32} mov       eax, dword ptr [eax + 0x00000140]        // 0x00729855    8b8040010000
                         ret                                                         // 0x0072985b    c3
                         nop                                                         // 0x0072985c    90
                         nop                                                         // 0x0072985d    90
                         nop                                                         // 0x0072985e    90
                         nop                                                         // 0x0072985f    90
_jmp_addr_0x00729860:    push               ecx                                      // 0x00729860    51
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00729861    8b542408
                         {disp8} mov        eax, dword ptr [ecx + 0x74]              // 0x00729865    8b4174
                         push               edx                                      // 0x00729868    52
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x00729869    89442404
                         call               _jmp_addr_0x007290e0                     // 0x0072986d    e86ef8ffff
                         mov.s              ecx, eax                                 // 0x00729872    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x00729874    e867170000
                         mov.s              ecx, eax                                 // 0x00729879    8bc8
                         call               _jmp_addr_0x005fb830                     // 0x0072987b    e8b01fedff
                         {disp8} fsub       dword ptr [esp + 0x00]                   // 0x00729880    d8642400
                         pop                ecx                                      // 0x00729884    59
                         ret                0x0004                                   // 0x00729885    c20400
                         nop                                                         // 0x00729888    90
                         nop                                                         // 0x00729889    90
                         nop                                                         // 0x0072988a    90
                         nop                                                         // 0x0072988b    90
                         nop                                                         // 0x0072988c    90
                         nop                                                         // 0x0072988d    90
                         nop                                                         // 0x0072988e    90
                         nop                                                         // 0x0072988f    90
_jmp_addr_0x00729890:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00729890    8b442404
                         push               eax                                      // 0x00729894    50
                         call               _jmp_addr_0x007290e0                     // 0x00729895    e846f8ffff
                         mov.s              ecx, eax                                 // 0x0072989a    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x0072989c    e83f170000
                         mov.s              ecx, eax                                 // 0x007298a1    8bc8
                         call               _jmp_addr_0x005fb830                     // 0x007298a3    e8881fedff
                         ret                0x0004                                   // 0x007298a8    c20400
                         nop                                                         // 0x007298ab    90
                         nop                                                         // 0x007298ac    90
                         nop                                                         // 0x007298ad    90
                         nop                                                         // 0x007298ae    90
                         nop                                                         // 0x007298af    90
?GetPower@SpellSeed@@UBEMXZ:
                         push               ecx                                      // 0x007298b0    51
                         {disp8} mov        edx, dword ptr [ecx + 0x6c]              // 0x007298b1    8b516c
                         {disp8} mov        eax, dword ptr [ecx + 0x74]              // 0x007298b4    8b4174
                         push               edx                                      // 0x007298b7    52
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x007298b8    89442404
                         call               _jmp_addr_0x007290e0                     // 0x007298bc    e81ff8ffff
                         mov.s              ecx, eax                                 // 0x007298c1    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x007298c3    e818170000
                         mov.s              ecx, eax                                 // 0x007298c8    8bc8
                         call               _jmp_addr_0x005fb830                     // 0x007298ca    e8611fedff
                         {disp8} fdivr      dword ptr [esp + 0x00]                   // 0x007298cf    d87c2400
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x007298d3    d90590a38a00
                         fcomp              st(1)                                    // 0x007298d9    d8d9
                         fnstsw             ax                                       // 0x007298db    dfe0
                         test               ah, 0x01                                 // 0x007298dd    f6c401
                         {disp8} je         _jmp_addr_0x007298ea                     // 0x007298e0    7408
                         fstp               st(0)                                    // 0x007298e2    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x007298e4    d90590a38a00
_jmp_addr_0x007298ea:    pop                ecx                                      // 0x007298ea    59
                         ret                                                         // 0x007298eb    c3
                         nop                                                         // 0x007298ec    90
                         nop                                                         // 0x007298ed    90
                         nop                                                         // 0x007298ee    90
                         nop                                                         // 0x007298ef    90
?GetPSysPower@SpellSeed@@UBEMXZ:
                         {disp32} fld       dword ptr [ecx + 0x0000008c]             // 0x007298f0    d9818c000000
                         ret                                                         // 0x007298f6    c3
                         nop                                                         // 0x007298f7    90
                         nop                                                         // 0x007298f8    90
                         nop                                                         // 0x007298f9    90
                         nop                                                         // 0x007298fa    90
                         nop                                                         // 0x007298fb    90
                         nop                                                         // 0x007298fc    90
                         nop                                                         // 0x007298fd    90
                         nop                                                         // 0x007298fe    90
                         nop                                                         // 0x007298ff    90
_jmp_addr_0x00729900:    {disp8} mov        dl, byte ptr [esp + 0x04]                // 0x00729900    8a542404
                         xor.s              eax, eax                                 // 0x00729904    33c0
                         cmp.s              dl, al                                   // 0x00729906    3ad0
                         {disp8} je         _jmp_addr_0x00729919                     // 0x00729908    740f
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x0072990a    898194000000
                         {disp32} mov       byte ptr [ecx + 0x00000090], al          // 0x00729910    888190000000
                         ret                0x0004                                   // 0x00729916    c20400
_jmp_addr_0x00729919:    {disp32} mov       byte ptr [ecx + 0x00000090], 0x01        // 0x00729919    c6819000000001
                         ret                0x0004                                   // 0x00729920    c20400
                         nop                                                         // 0x00729923    90
                         nop                                                         // 0x00729924    90
                         nop                                                         // 0x00729925    90
                         nop                                                         // 0x00729926    90
                         nop                                                         // 0x00729927    90
                         nop                                                         // 0x00729928    90
                         nop                                                         // 0x00729929    90
                         nop                                                         // 0x0072992a    90
                         nop                                                         // 0x0072992b    90
                         nop                                                         // 0x0072992c    90
                         nop                                                         // 0x0072992d    90
                         nop                                                         // 0x0072992e    90
                         nop                                                         // 0x0072992f    90
?ProcessInHand@SpellSeed@@UAE_NXZ:
                         sub                esp, 0x08                                // 0x00729930    83ec08
                         push               esi                                      // 0x00729933    56
                         mov.s              esi, ecx                                 // 0x00729934    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000094]        // 0x00729936    8b8694000000
                         test               eax, eax                                 // 0x0072993c    85c0
                         push               edi                                      // 0x0072993e    57
                         {disp8} jne        _jmp_addr_0x00729980                     // 0x0072993f    753f
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00729941    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x00729947    e804bfe2ff
                         {disp32} mov       edi, dword ptr [eax + 0x0000039c]        // 0x0072994c    8bb89c030000
                         mov.s              ecx, esi                                 // 0x00729952    8bce
                         call               _jmp_addr_0x00729810                     // 0x00729954    e8b7feffff
                         cmp.s              eax, edi                                 // 0x00729959    3bc7
                         {disp8} jne        _jmp_addr_0x00729980                     // 0x0072995b    7523
                         mov                eax, dword ptr [esi]                     // 0x0072995d    8b06
                         mov.s              ecx, esi                                 // 0x0072995f    8bce
                         call               dword ptr [eax + 0x734]                  // 0x00729961    ff9034070000
                         test               eax, eax                                 // 0x00729967    85c0
                         {disp8} je         _jmp_addr_0x00729980                     // 0x00729969    7415
                         mov.s              ecx, esi                                 // 0x0072996b    8bce
                         call               _jmp_addr_0x00729810                     // 0x0072996d    e89efeffff
                         mov.s              ecx, eax                                 // 0x00729972    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                     // 0x00729974    e8372febff
                         mov.s              ecx, eax                                 // 0x00729979    8bc8
                         call               _jmp_addr_0x005cee30                     // 0x0072997b    e8b054eaff
_jmp_addr_0x00729980:    {disp32} mov       ecx, dword ptr [esi + 0x00000094]        // 0x00729980    8b8e94000000
                         {disp32} mov       al, byte ptr [esi + 0x00000090]          // 0x00729986    8a8690000000
                         inc                ecx                                      // 0x0072998c    41
                         test               al, al                                   // 0x0072998d    84c0
                         {disp32} mov       dword ptr [esi + 0x00000094], ecx        // 0x0072998f    898e94000000
                         {disp8} mov        dword ptr [esp + 0x08], ecx              // 0x00729995    894c2408
                         {disp8} jne        _jmp_addr_0x00729a00                     // 0x00729999    7565
                         {disp8} fild       dword ptr [esp + 0x08]                   // 0x0072999b    db442408
                         {disp32} mov       edx, dword ptr [data_bytes + 0x33ba38]   // 0x0072999f    8b15381ad000
                         {disp8} mov        dword ptr [esp + 0x08], edx              // 0x007299a5    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x007299a9    c744240c00000000
                         {disp8} fimul      dword ptr [esp + 0x08]                   // 0x007299b1    da4c2408
                         {disp32} fmul      dword ptr [_rdata_float0p001]            // 0x007299b5    d80db0a38a00
                         {disp32} fcomp     dword ptr [data_bytes + 0x3da584]        // 0x007299bb    d81d8405da00
                         fnstsw             ax                                       // 0x007299c1    dfe0
                         test               ah, 0x41                                 // 0x007299c3    f6c441
                         {disp8} jne        _jmp_addr_0x00729a00                     // 0x007299c6    7538
                         {disp32} mov       byte ptr [esi + 0x00000090], 0x01        // 0x007299c8    c6869000000001
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x007299cf    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x007299d5    e876bee2ff
                         {disp32} mov       edi, dword ptr [eax + 0x0000039c]        // 0x007299da    8bb89c030000
                         mov.s              ecx, esi                                 // 0x007299e0    8bce
                         call               _jmp_addr_0x00729810                     // 0x007299e2    e829feffff
                         cmp.s              eax, edi                                 // 0x007299e7    3bc7
                         {disp8} jne        _jmp_addr_0x00729a00                     // 0x007299e9    7515
                         mov.s              ecx, esi                                 // 0x007299eb    8bce
                         call               _jmp_addr_0x00729810                     // 0x007299ed    e81efeffff
                         mov.s              ecx, eax                                 // 0x007299f2    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                     // 0x007299f4    e8b72eebff
                         mov.s              ecx, eax                                 // 0x007299f9    8bc8
                         call               _jmp_addr_0x005d1260                     // 0x007299fb    e86078eaff
_jmp_addr_0x00729a00:    {disp8} mov        eax, dword ptr [esi + 0x60]              // 0x00729a00    8b4660
                         test               eax, eax                                 // 0x00729a03    85c0
                         {disp8} je         _jmp_addr_0x00729a17                     // 0x00729a05    7410
                         {disp8} mov        ecx, dword ptr [eax + 0x40]              // 0x00729a07    8b4840
                         test               ecx, ecx                                 // 0x00729a0a    85c9
                         {disp8} je         _jmp_addr_0x00729a17                     // 0x00729a0c    7409
                         mov                eax, dword ptr [esi]                     // 0x00729a0e    8b06
                         push               0x0                                      // 0x00729a10    6a00
                         mov.s              ecx, esi                                 // 0x00729a12    8bce
                         call               dword ptr [eax + 0xc]                    // 0x00729a14    ff500c
_jmp_addr_0x00729a17:    mov.s              ecx, esi                                 // 0x00729a17    8bce
                         call               ?ProcessInHand@Object@@UAE_NXZ           // 0x00729a19    e8b200f1ff
                         pop                edi                                      // 0x00729a1e    5f
                         pop                esi                                      // 0x00729a1f    5e
                         add                esp, 0x08                                // 0x00729a20    83c408
                         ret                                                         // 0x00729a23    c3
                         nop                                                         // 0x00729a24    90
                         nop                                                         // 0x00729a25    90
                         nop                                                         // 0x00729a26    90
                         nop                                                         // 0x00729a27    90
                         nop                                                         // 0x00729a28    90
                         nop                                                         // 0x00729a29    90
                         nop                                                         // 0x00729a2a    90
                         nop                                                         // 0x00729a2b    90
                         nop                                                         // 0x00729a2c    90
                         nop                                                         // 0x00729a2d    90
                         nop                                                         // 0x00729a2e    90
                         nop                                                         // 0x00729a2f    90
_jmp_addr_0x00729a30:    {disp8} fld        dword ptr [ecx + 0x74]                   // 0x00729a30    d94174
                         push               ecx                                      // 0x00729a33    51
                         {disp8} fadd       dword ptr [esp + 0x08]                   // 0x00729a34    d8442408
                         fstp               dword ptr [esp]                          // 0x00729a38    d91c24
                         call               _jmp_addr_0x00729a50                     // 0x00729a3b    e810000000
                         ret                0x0004                                   // 0x00729a40    c20400
                         nop                                                         // 0x00729a43    90
                         nop                                                         // 0x00729a44    90
                         nop                                                         // 0x00729a45    90
                         nop                                                         // 0x00729a46    90
                         nop                                                         // 0x00729a47    90
                         nop                                                         // 0x00729a48    90
                         nop                                                         // 0x00729a49    90
                         nop                                                         // 0x00729a4a    90
                         nop                                                         // 0x00729a4b    90
                         nop                                                         // 0x00729a4c    90
                         nop                                                         // 0x00729a4d    90
                         nop                                                         // 0x00729a4e    90
                         nop                                                         // 0x00729a4f    90
_jmp_addr_0x00729a50:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00729a50    8b442404
                         {disp8} fld        dword ptr [esp + 0x04]                   // 0x00729a54    d9442404
                         mov.s              edx, eax                                 // 0x00729a58    8bd0
                         {disp8} mov        dword ptr [ecx + 0x74], eax              // 0x00729a5a    894174
                         {disp8} mov        dword ptr [ecx + 0x78], edx              // 0x00729a5d    895178
                         ret                0x0004                                   // 0x00729a60    c20400
                         nop                                                         // 0x00729a63    90
                         nop                                                         // 0x00729a64    90
                         nop                                                         // 0x00729a65    90
                         nop                                                         // 0x00729a66    90
                         nop                                                         // 0x00729a67    90
                         nop                                                         // 0x00729a68    90
                         nop                                                         // 0x00729a69    90
                         nop                                                         // 0x00729a6a    90
                         nop                                                         // 0x00729a6b    90
                         nop                                                         // 0x00729a6c    90
                         nop                                                         // 0x00729a6d    90
                         nop                                                         // 0x00729a6e    90
                         nop                                                         // 0x00729a6f    90
_jmp_addr_0x00729a70:    call               _jmp_addr_0x007290e0                     // 0x00729a70    e86bf6ffff
                         push               eax                                      // 0x00729a75    50
                         call               _jmp_addr_0x0072b200                     // 0x00729a76    e885170000
                         add                esp, 0x04                                // 0x00729a7b    83c404
                         ret                                                         // 0x00729a7e    c3
                         nop                                                         // 0x00729a7f    90
_jmp_addr_0x00729a80:    push               esi                                      // 0x00729a80    56
                         push               edi                                      // 0x00729a81    57
                         mov.s              edi, ecx                                 // 0x00729a82    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x5c]              // 0x00729a84    8b775c
                         test               esi, esi                                 // 0x00729a87    85f6
                         {disp8} je         _jmp_addr_0x00729aae                     // 0x00729a89    7423
                         mov                eax, dword ptr [esi]                     // 0x00729a8b    8b06
                         mov.s              ecx, esi                                 // 0x00729a8d    8bce
                         call               dword ptr [eax + 0x30c]                  // 0x00729a8f    ff900c030000
                         test               eax, eax                                 // 0x00729a95    85c0
                         {disp8} je         _jmp_addr_0x00729aae                     // 0x00729a97    7415
                         mov                edx, dword ptr [esi]                     // 0x00729a99    8b16
                         mov.s              ecx, esi                                 // 0x00729a9b    8bce
                         call               dword ptr [edx + 0x30c]                  // 0x00729a9d    ff920c030000
                         push               eax                                      // 0x00729aa3    50
                         mov.s              ecx, edi                                 // 0x00729aa4    8bcf
                         call               _jmp_addr_0x007289c0                     // 0x00729aa6    e815efffff
                         pop                edi                                      // 0x00729aab    5f
                         pop                esi                                      // 0x00729aac    5e
                         ret                                                         // 0x00729aad    c3
_jmp_addr_0x00729aae:    mov                eax, dword ptr [edi]                     // 0x00729aae    8b07
                         push               0x0                                      // 0x00729ab0    6a00
                         mov.s              ecx, edi                                 // 0x00729ab2    8bcf
                         call               dword ptr [eax + 0xc]                    // 0x00729ab4    ff500c
                         pop                edi                                      // 0x00729ab7    5f
                         mov                eax, 0x00000003                          // 0x00729ab8    b803000000
                         pop                esi                                      // 0x00729abd    5e
                         ret                                                         // 0x00729abe    c3
                         nop                                                         // 0x00729abf    90
_jmp_addr_0x00729ac0:    call               _jmp_addr_0x007290e0                     // 0x00729ac0    e81bf6ffff
                         {disp32} mov       eax, dword ptr [eax + 0x0000010c]        // 0x00729ac5    8b800c010000
                         ret                                                         // 0x00729acb    c3
                         nop                                                         // 0x00729acc    90
                         nop                                                         // 0x00729acd    90
                         nop                                                         // 0x00729ace    90
                         nop                                                         // 0x00729acf    90
_jmp_addr_0x00729ad0:    push               esi                                      // 0x00729ad0    56
                         mov.s              esi, ecx                                 // 0x00729ad1    8bf1
                         call               _jmp_addr_0x00729800                     // 0x00729ad3    e828fdffff
                         push               eax                                      // 0x00729ad8    50
                         mov.s              ecx, esi                                 // 0x00729ad9    8bce
                         call               _jmp_addr_0x007290f0                     // 0x00729adb    e810f6ffff
                         mov.s              ecx, eax                                 // 0x00729ae0    8bc8
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ   // 0x00729ae2    e8991bedff
                         mov.s              ecx, eax                                 // 0x00729ae7    8bc8
                         call               _jmp_addr_0x005fb710                     // 0x00729ae9    e8221cedff
                         pop                esi                                      // 0x00729aee    5e
                         ret                                                         // 0x00729aef    c3
_jmp_addr_0x00729af0:    push               esi                                      // 0x00729af0    56
                         mov.s              esi, ecx                                 // 0x00729af1    8bf1
                         call               _jmp_addr_0x00729ac0                     // 0x00729af3    e8c8ffffff
                         test               eax, eax                                 // 0x00729af8    85c0
                         {disp8} je         _jmp_addr_0x00729b19                     // 0x00729afa    741d
                         mov.s              ecx, esi                                 // 0x00729afc    8bce
                         call               _jmp_addr_0x00729ac0                     // 0x00729afe    e8bdffffff
                         mov.s              ecx, eax                                 // 0x00729b03    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00729b05    8b442408
                         and                eax, 0x000000ff                          // 0x00729b09    25ff000000
                         sub.s              eax, ecx                                 // 0x00729b0e    2bc1
                         neg                eax                                      // 0x00729b10    f7d8
                         sbb.s              eax, eax                                 // 0x00729b12    1bc0
                         inc                eax                                      // 0x00729b14    40
                         pop                esi                                      // 0x00729b15    5e
                         ret                0x0004                                   // 0x00729b16    c20400
_jmp_addr_0x00729b19:    mov                eax, 0x00000001                          // 0x00729b19    b801000000
                         pop                esi                                      // 0x00729b1e    5e
                         ret                0x0004                                   // 0x00729b1f    c20400
                         nop                                                         // 0x00729b22    90
                         nop                                                         // 0x00729b23    90
                         nop                                                         // 0x00729b24    90
                         nop                                                         // 0x00729b25    90
                         nop                                                         // 0x00729b26    90
                         nop                                                         // 0x00729b27    90
                         nop                                                         // 0x00729b28    90
                         nop                                                         // 0x00729b29    90
                         nop                                                         // 0x00729b2a    90
                         nop                                                         // 0x00729b2b    90
                         nop                                                         // 0x00729b2c    90
                         nop                                                         // 0x00729b2d    90
                         nop                                                         // 0x00729b2e    90
                         nop                                                         // 0x00729b2f    90
_jmp_addr_0x00729b30:    push               ebx                                      // 0x00729b30    53
                         push               ebp                                      // 0x00729b31    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]              // 0x00729b32    8b6c240c
                         push               esi                                      // 0x00729b36    56
                         mov.s              esi, ecx                                 // 0x00729b37    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]              // 0x00729b39    8b4e6c
                         push               edi                                      // 0x00729b3c    57
                         cmp.s              ebp, ecx                                 // 0x00729b3d    3be9
                         push               ebp                                      // 0x00729b3f    55
                         mov.s              ecx, esi                                 // 0x00729b40    8bce
                         setl               bl                                       // 0x00729b42    0f9cc3
                         {disp8} mov        dword ptr [esi + 0x6c], ebp              // 0x00729b45    896e6c
                         call               _jmp_addr_0x00729860                     // 0x00729b48    e813fdffff
                         fchs                                                        // 0x00729b4d    d9e0
                         mov                eax, dword ptr [esi]                     // 0x00729b4f    8b06
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00729b51    d95c2414
                         mov.s              ecx, esi                                 // 0x00729b55    8bce
                         call               dword ptr [eax + 0x30c]                  // 0x00729b57    ff900c030000
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00729b5d    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00729b61    d81d98a38a00
                         mov.s              ecx, eax                                 // 0x00729b67    8bc8
                         fnstsw             ax                                       // 0x00729b69    dfe0
                         test               ah, 0x41                                 // 0x00729b6b    f6c441
                         {disp8} jne        _jmp_addr_0x00729b98                     // 0x00729b6e    7528
                         test               ecx, ecx                                 // 0x00729b70    85c9
                         {disp8} je         _jmp_addr_0x00729b98                     // 0x00729b72    7424
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00729b74    d9442414
                         push               ecx                                      // 0x00729b78    51
                         {disp32} fadd      dword ptr [ecx + 0x000000f0]             // 0x00729b79    d881f0000000
                         {disp32} fstp      dword ptr [ecx + 0x000000f0]             // 0x00729b7f    d999f0000000
                         mov.s              ecx, esi                                 // 0x00729b85    8bce
                         {disp8} fld        dword ptr [esi + 0x74]                   // 0x00729b87    d94674
                         {disp8} fsub       dword ptr [esp + 0x18]                   // 0x00729b8a    d8642418
                         fstp               dword ptr [esp]                          // 0x00729b8e    d91c24
                         call               _jmp_addr_0x00729a50                     // 0x00729b91    e8bafeffff
                         fstp               st(0)                                    // 0x00729b96    ddd8
_jmp_addr_0x00729b98:    {disp32} mov       ecx, dword ptr [_game]                   // 0x00729b98    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ // 0x00729b9e    e8adbce2ff
                         {disp32} mov       edi, dword ptr [eax + 0x0000039c]        // 0x00729ba3    8bb89c030000
                         mov.s              ecx, esi                                 // 0x00729ba9    8bce
                         call               _jmp_addr_0x00729810                     // 0x00729bab    e860fcffff
                         cmp.s              eax, edi                                 // 0x00729bb0    3bc7
                         {disp32} jne       _jmp_addr_0x00729c38                     // 0x00729bb2    0f8580000000
                         push               0x0                                      // 0x00729bb8    6a00
                         mov.s              ecx, esi                                 // 0x00729bba    8bce
                         call               _jmp_addr_0x007290f0                     // 0x00729bbc    e82ff5ffff
                         mov.s              ecx, eax                                 // 0x00729bc1    8bc8
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ   // 0x00729bc3    e8b81aedff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000110]        // 0x00729bc8    8b8810010000
                         push               ecx                                      // 0x00729bce    51
                         call               _jmp_addr_0x005c9c60                     // 0x00729bcf    e88c00eaff
                         add                esp, 0x08                                // 0x00729bd4    83c408
                         mov.s              ecx, esi                                 // 0x00729bd7    8bce
                         call               _jmp_addr_0x00729800                     // 0x00729bd9    e822fcffff
                         mov.s              ecx, eax                                 // 0x00729bde    8bc8
                         call               _jmp_addr_0x0064ab20                     // 0x00729be0    e83b0ff2ff
                         mov.s              edi, eax                                 // 0x00729be5    8bf8
                         push               esi                                      // 0x00729be7    56
                         mov.s              ecx, edi                                 // 0x00729be8    8bcf
                         call               _jmp_addr_0x0046e7b0                     // 0x00729bea    e8c14bd4ff
                         {disp8} mov        eax, dword ptr [esi + 0x6c]              // 0x00729bef    8b466c
                         {disp32} mov       ecx, dword ptr [edi + 0x00004948]        // 0x00729bf2    8b8f48490000
                         mov                edx, dword ptr [ecx]                     // 0x00729bf8    8b11
                         push               0x1                                      // 0x00729bfa    6a01
                         inc                eax                                      // 0x00729bfc    40
                         push               eax                                      // 0x00729bfd    50
                         call               dword ptr [edx + 0xc]                    // 0x00729bfe    ff520c
                         test               bl, bl                                   // 0x00729c01    84db
                         {disp8} jne        _jmp_addr_0x00729c12                     // 0x00729c03    750d
                         {disp32} mov       ecx, dword ptr [edi + 0x00004948]        // 0x00729c05    8b8f48490000
                         mov                edx, dword ptr [ecx]                     // 0x00729c0b    8b11
                         push               0x0                                      // 0x00729c0d    6a00
                         call               dword ptr [edx + 8]                      // 0x00729c0f    ff5208
_jmp_addr_0x00729c12:    push               ebp                                      // 0x00729c12    55
                         mov.s              ecx, esi                                 // 0x00729c13    8bce
                         call               _jmp_addr_0x007290e0                     // 0x00729c15    e8c6f4ffff
                         mov.s              ecx, eax                                 // 0x00729c1a    8bc8
                         call               _jmp_addr_0x0072afe0                     // 0x00729c1c    e8bf130000
                         {disp8} mov        eax, dword ptr [eax + 0x20]              // 0x00729c21    8b4020
                         push               eax                                      // 0x00729c24    50
                         call               _jmp_addr_0x0068f240                     // 0x00729c25    e81656f6ff
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]              // 0x00729c2a    8b4e6c
                         add                esp, 0x04                                // 0x00729c2d    83c404
                         push               ecx                                      // 0x00729c30    51
                         mov.s              ecx, esi                                 // 0x00729c31    8bce
                         call               _jmp_addr_0x00729c40                     // 0x00729c33    e808000000
_jmp_addr_0x00729c38:    pop                edi                                      // 0x00729c38    5f
                         pop                esi                                      // 0x00729c39    5e
                         pop                ebp                                      // 0x00729c3a    5d
                         pop                ebx                                      // 0x00729c3b    5b
                         ret                0x0004                                   // 0x00729c3c    c20400
                         nop                                                         // 0x00729c3f    90
_jmp_addr_0x00729c40:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00729c40    8b442404
                         inc                eax                                      // 0x00729c44    40
                         cmp                eax, 0x03                                // 0x00729c45    83f803
                         {disp8} ja         _jmp_addr_0x00729c7c                     // 0x00729c48    7732
                         jmp                dword ptr [eax*4 + 0x729c80]             // 0x00729c4a    ff2485809c7200
                         mov                eax, 0x0000000a                          // 0x00729c51    b80a000000
                         {disp8} jmp        _jmp_addr_0x00729c64                     // 0x00729c56    eb0c
                         mov                eax, 0x0000000b                          // 0x00729c58    b80b000000
                         {disp8} jmp        _jmp_addr_0x00729c64                     // 0x00729c5d    eb05
                         mov                eax, 0x0000000c                          // 0x00729c5f    b80c000000
_jmp_addr_0x00729c64:    {disp32} mov       ecx, dword ptr [_global]                 // 0x00729c64    8b0d203bcd00
                         push               0x9                                      // 0x00729c6a    6a09
                         push               0x0                                      // 0x00729c6c    6a00
                         push               0x0                                      // 0x00729c6e    6a00
                         push               0x0                                      // 0x00729c70    6a00
                         push               0x2                                      // 0x00729c72    6a02
                         push               eax                                      // 0x00729c74    50
                         push               0x0                                      // 0x00729c75    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                     // 0x00729c77    e8e400d0ff
_jmp_addr_0x00729c7c:    ret                0x0004                                   // 0x00729c7c    c20400

// Snippet: db, [0x00729c7f, 0x00729c80)
.byte 0x90                        // 0x00729c7f

// Snippet: jmptbl, [0x00729c80, 0x00729c90)
.byte 0x7c, 0x9c, 0x72, 0x00      // 0x00729c80
.byte 0x51, 0x9c, 0x72, 0x00      // 0x00729c84
.byte 0x58, 0x9c, 0x72, 0x00      // 0x00729c88
.byte 0x5f, 0x9c, 0x72, 0x00      // 0x00729c8c

