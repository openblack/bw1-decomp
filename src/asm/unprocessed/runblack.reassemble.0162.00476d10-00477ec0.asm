.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x0047b1c0
.extern _jmp_addr_0x0047d640
.extern _jmp_addr_0x004806c0
.extern _jmp_addr_0x004806d0
.extern _jmp_addr_0x004806e0
.extern _jmp_addr_0x00480730
.extern _jmp_addr_0x00480c90
.extern _jmp_addr_0x00480d30
.extern _jmp_addr_0x004813b0
.extern _jmp_addr_0x00483750
.extern _jmp_addr_0x00484260
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x00484e10
.extern _jmp_addr_0x0048f750
.extern _jmp_addr_0x0048f7b0
.extern ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z
.extern _jmp_addr_0x004c7eb0
.extern _jmp_addr_0x004c9fe0
.extern _jmp_addr_0x004cf060
.extern _jmp_addr_0x004d7b80
.extern _jmp_addr_0x004dc3d0
.extern _jmp_addr_0x004e0410
.extern _jmp_addr_0x004e1b40
.extern _jmp_addr_0x004f02b0
.extern ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z
.extern _jmp_addr_0x004f12d0
.extern _jmp_addr_0x004f25d0
.extern _jmp_addr_0x004f25f0
.extern _jmp_addr_0x004f4b60
.extern _jmp_addr_0x004f51e0
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005e6f70
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?InBounds@MapCoords@@QBEIXZ
.extern ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z
.extern ?GetAngleFromDXDZ@GUtils@@SAGJJ@Z
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern _jmp_addr_0x0074d360
.extern _jmp_addr_0x0074d380
.extern ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z
.extern _jmp_addr_0x0074e290
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007faa50
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x00476fa0
.globl _jmp_addr_0x00477060
.globl _jmp_addr_0x00477130
.globl _jmp_addr_0x00477210
.globl _jmp_addr_0x00477370
.globl _jmp_addr_0x00477440
.globl _jmp_addr_0x004774d0
.globl _jmp_addr_0x004774f0
.globl _jmp_addr_0x00477520
.globl _jmp_addr_0x004775d0
.globl _jmp_addr_0x004777a0
.globl _jmp_addr_0x00477800
.globl ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.globl _jmp_addr_0x00477a00
.globl _jmp_addr_0x00477d00
.globl _jmp_addr_0x00477d70
.globl _jmp_addr_0x00477d80
.globl _jmp_addr_0x00477e00
.globl ?GetMovementDirection@Creature@@UAEXPAULHPoint@@@Z
.globl ?ValidToSelectFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.globl ?ValidToApplyFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.globl ?ValidToFightThisToObject@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.globl ?ValidForLockedSelectProcess@Creature@@UAE_NPAVGInterfaceStatus@@@Z
.globl ?NetworkFriendlyStartLockedSelect@Creature@@UAE_NPAVGInterfaceStatus@@@Z
.globl ?NetworkFriendlyEndLockedSelect@Creature@@UAEIPAVGInterfaceStatus@@@Z
.globl ?IsReadyForNetworkUnfriendlyLockedSelect@Creature@@UAEIXZ
.globl ?NetworkUnfriendlyLockedSelect@Creature@@UAEIPAUControlHandUpdateInfo@@@Z
.globl ?GetReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ
.globl ?IsReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ
.globl ?NetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ
.globl ?DestroyedByEffect@Creature@@UAEIPAVGPlayer@@M@Z
.globl ?SetHeadPos@Creature@@UAEXPAUMapCoords@@@Z
.globl ?GetNearestEdgeOfObject@Creature@@UAEXPAVObject@@@Z
.globl ?GetCreatureBeliefListType@Creature@@UAEIXZ
.globl ?GetImpressiveType@Creature@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.globl ?IsObjectTurningTooFastForCameraToFollowSmoothly@Creature@@UAEIXZ

start_0x00476d10_0x00477ec0:
// Snippet: asm, [0x00476d10, 0x00477e5c)
                         sub                esp, 0x08                                // 0x00476d10    83ec08
                         push               esi                                      // 0x00476d13    56
                         {disp32} lea       esi, dword ptr [ecx + 0x00002ae0]        // 0x00476d14    8db1e02a0000
                         mov.s              ecx, esi                                 // 0x00476d1a    8bce
                         call               _jmp_addr_0x004f25f0                     // 0x00476d1c    e8cfb80700
                         cmp                eax, 0x01                                // 0x00476d21    83f801
                         {disp32} jbe       _jmp_addr_0x00476db1                     // 0x00476d24    0f8687000000
                         push               0x1                                      // 0x00476d2a    6a01
                         mov.s              ecx, esi                                 // 0x00476d2c    8bce
                         call               _jmp_addr_0x004f25d0                     // 0x00476d2e    e89db80700
                         {disp8} mov        esi, dword ptr [eax + 0x4c]              // 0x00476d33    8b704c
                         {disp8} mov        eax, dword ptr [eax + 0x20]              // 0x00476d36    8b4020
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00476d39    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]        // 0x00476d3f    8b91405a2000
                         mov.s              ecx, eax                                 // 0x00476d45    8bc8
                         sub.s              edx, esi                                 // 0x00476d47    2bd6
                         {disp8} mov        dword ptr [esp + 0x04], edx              // 0x00476d49    89542404
                         shl                ecx, 4                                   // 0x00476d4d    c1e104
                         add.s              ecx, eax                                 // 0x00476d50    03c8
                         xor.s              edx, edx                                 // 0x00476d52    33d2
                         mov                eax, 0x000003e8                          // 0x00476d54    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]        // 0x00476d59    f735381ad000
                         xor.s              esi, esi                                 // 0x00476d5f    33f6
                         {disp8} mov        dword ptr [esp + 0x08], esi              // 0x00476d61    89742408
                         shl                ecx, 4                                   // 0x00476d65    c1e104
                         {disp8} fild       qword ptr [esp + 0x04]                   // 0x00476d68    df6c2404
                         {disp8} mov        dword ptr [esp + 0x08], esi              // 0x00476d6c    89742408
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x00476d70    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                   // 0x00476d74    df6c2404
                         {disp32} fmul      dword ptr [ecx + 0x00c6c570]             // 0x00476d78    d88970c5c600
                         call               _jmp_addr_0x007a1400                     // 0x00476d7e    e87da63200
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x00476d83    89442404
                         {disp8} mov        dword ptr [esp + 0x08], esi              // 0x00476d87    89742408
                         {disp8} fild       qword ptr [esp + 0x04]                   // 0x00476d8b    df6c2404
                         fld                st(1)                                    // 0x00476d8f    d9c1
                         fcomp              st(1)                                    // 0x00476d91    d8d9
                         fnstsw             ax                                       // 0x00476d93    dfe0
                         test               ah, 0x01                                 // 0x00476d95    f6c401
                         {disp8} je         _jmp_addr_0x00476dad                     // 0x00476d98    7413
                         fxch               st(1)                                    // 0x00476d9a    d9c9
                         pop                esi                                      // 0x00476d9c    5e
                         fdiv               st, st(1)                                // 0x00476d9d    d8f1
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x00476d9f    d82d90a38a00
                         fxch               st(1)                                    // 0x00476da5    d9c9
                         fstp               st(0)                                    // 0x00476da7    ddd8
                         add                esp, 0x08                                // 0x00476da9    83c408
                         ret                                                         // 0x00476dac    c3
_jmp_addr_0x00476dad:    fstp               st(0)                                    // 0x00476dad    ddd8
                         fstp               st(0)                                    // 0x00476daf    ddd8
_jmp_addr_0x00476db1:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00476db1    d90598a38a00
                         pop                esi                                      // 0x00476db7    5e
                         add                esp, 0x08                                // 0x00476db8    83c408
                         ret                                                         // 0x00476dbb    c3
                         nop                                                         // 0x00476dbc    90
                         nop                                                         // 0x00476dbd    90
                         nop                                                         // 0x00476dbe    90
                         nop                                                         // 0x00476dbf    90
?ValidToSelectFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z:
                         call               _jmp_addr_0x0047b1c0                     // 0x00476dc0    e8fb430000
                         neg                eax                                      // 0x00476dc5    f7d8
                         sbb.s              eax, eax                                 // 0x00476dc7    1bc0
                         neg                eax                                      // 0x00476dc9    f7d8
                         ret                0x0008                                   // 0x00476dcb    c20800
                         nop                                                         // 0x00476dce    90
                         nop                                                         // 0x00476dcf    90
?ValidToApplyFightThisToMapCoord@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00476dd0    8b542408
                         mov                eax, dword ptr [ecx]                     // 0x00476dd4    8b01
                         push               edx                                      // 0x00476dd6    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00476dd7    8b542408
                         push               edx                                      // 0x00476ddb    52
                         call               dword ptr [eax + 0x75c]                  // 0x00476ddc    ff905c070000
                         ret                0x0008                                   // 0x00476de2    c20800
                         nop                                                         // 0x00476de5    90
                         nop                                                         // 0x00476de6    90
                         nop                                                         // 0x00476de7    90
                         nop                                                         // 0x00476de8    90
                         nop                                                         // 0x00476de9    90
                         nop                                                         // 0x00476dea    90
                         nop                                                         // 0x00476deb    90
                         nop                                                         // 0x00476dec    90
                         nop                                                         // 0x00476ded    90
                         nop                                                         // 0x00476dee    90
                         nop                                                         // 0x00476def    90
?ValidToFightThisToObject@Creature@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00476df0    8b542408
                         mov                eax, dword ptr [ecx]                     // 0x00476df4    8b01
                         push               edx                                      // 0x00476df6    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00476df7    8b542408
                         push               edx                                      // 0x00476dfb    52
                         call               dword ptr [eax + 0x75c]                  // 0x00476dfc    ff905c070000
                         ret                0x0008                                   // 0x00476e02    c20800
                         nop                                                         // 0x00476e05    90
                         nop                                                         // 0x00476e06    90
                         nop                                                         // 0x00476e07    90
                         nop                                                         // 0x00476e08    90
                         nop                                                         // 0x00476e09    90
                         nop                                                         // 0x00476e0a    90
                         nop                                                         // 0x00476e0b    90
                         nop                                                         // 0x00476e0c    90
                         nop                                                         // 0x00476e0d    90
                         nop                                                         // 0x00476e0e    90
                         nop                                                         // 0x00476e0f    90
?ValidForLockedSelectProcess@Creature@@UAE_NPAVGInterfaceStatus@@@Z:
                         push               esi                                      // 0x00476e10    56
                         mov.s              esi, ecx                                 // 0x00476e11    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]              // 0x00476e13    8b4628
                         cmp                dword ptr [eax + 0x000001f4], 0x0d       // 0x00476e16    83b8f40100000d
                         {disp8} je         _jmp_addr_0x00476e62                     // 0x00476e1d    7443
                         test               byte ptr [esi + 0x25], 0x04              // 0x00476e1f    f6462504
                         {disp8} jne        _jmp_addr_0x00476e62                     // 0x00476e23    753d
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]        // 0x00476e25    8b8664010000
                         cmp                dword ptr [eax + 0x00000f60], 0x09       // 0x00476e2b    83b8600f000009
                         {disp8} jne        _jmp_addr_0x00476e3d                     // 0x00476e32    7509
                         cmp                dword ptr [eax + 0x00000fb4], 0x02       // 0x00476e34    83b8b40f000002
                         {disp8} jbe        _jmp_addr_0x00476e62                     // 0x00476e3b    7625
_jmp_addr_0x00476e3d:    mov                edx, dword ptr [esi]                     // 0x00476e3d    8b16
                         mov.s              ecx, esi                                 // 0x00476e3f    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00476e41    ff521c
                         test               eax, eax                                 // 0x00476e44    85c0
                         {disp8} je         _jmp_addr_0x00476e62                     // 0x00476e46    741a
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x00476e48    8b8e70030000
                         push               0x0                                      // 0x00476e4e    6a00
                         call               _jmp_addr_0x004f51e0                     // 0x00476e50    e88be30700
                         test               eax, eax                                 // 0x00476e55    85c0
                         {disp8} jne        _jmp_addr_0x00476e62                     // 0x00476e57    7509
                         mov                eax, 0x00000001                          // 0x00476e59    b801000000
                         pop                esi                                      // 0x00476e5e    5e
                         ret                0x0004                                   // 0x00476e5f    c20400
_jmp_addr_0x00476e62:    xor.s              eax, eax                                 // 0x00476e62    33c0
                         pop                esi                                      // 0x00476e64    5e
                         ret                0x0004                                   // 0x00476e65    c20400
                         nop                                                         // 0x00476e68    90
                         nop                                                         // 0x00476e69    90
                         nop                                                         // 0x00476e6a    90
                         nop                                                         // 0x00476e6b    90
                         nop                                                         // 0x00476e6c    90
                         nop                                                         // 0x00476e6d    90
                         nop                                                         // 0x00476e6e    90
                         nop                                                         // 0x00476e6f    90
?NetworkFriendlyStartLockedSelect@Creature@@UAE_NPAVGInterfaceStatus@@@Z:
                         call               _jmp_addr_0x00477b20                     // 0x00476e70    e8ab0c0000
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00476e75    8b442404
                         or                 byte ptr [eax + 0x24], 0x20              // 0x00476e79    80482420
                         mov                eax, 0x00000001                          // 0x00476e7d    b801000000
                         ret                0x0004                                   // 0x00476e82    c20400
                         nop                                                         // 0x00476e85    90
                         nop                                                         // 0x00476e86    90
                         nop                                                         // 0x00476e87    90
                         nop                                                         // 0x00476e88    90
                         nop                                                         // 0x00476e89    90
                         nop                                                         // 0x00476e8a    90
                         nop                                                         // 0x00476e8b    90
                         nop                                                         // 0x00476e8c    90
                         nop                                                         // 0x00476e8d    90
                         nop                                                         // 0x00476e8e    90
                         nop                                                         // 0x00476e8f    90
?NetworkFriendlyEndLockedSelect@Creature@@UAEIPAVGInterfaceStatus@@@Z:
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ            // 0x00476e90    e8bb090000
                         mov.s              ecx, eax                                 // 0x00476e95    8bc8
                         call               _jmp_addr_0x00480730                     // 0x00476e97    e894980000
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00476e9c    8b442404
                         .byte              0x66, 0x81, 0x60, 0x24, 0xdf, 0xff// and word ptr [eax + 0x24], -0x0021 // 0x00476ea0    66816024dfff
                         mov                eax, 0x00000001                          // 0x00476ea6    b801000000
                         ret                0x0004                                   // 0x00476eab    c20400
                         nop                                                         // 0x00476eae    90
                         nop                                                         // 0x00476eaf    90
?IsReadyForNetworkUnfriendlyLockedSelect@Creature@@UAEIXZ:
                         {disp32} mov       edx, dword ptr [ecx + 0x000003cc]        // 0x00476eb0    8b91cc030000
                         xor.s              eax, eax                                 // 0x00476eb6    33c0
                         test               edx, edx                                 // 0x00476eb8    85d2
                         sete               al                                       // 0x00476eba    0f94c0
                         ret                                                         // 0x00476ebd    c3
                         nop                                                         // 0x00476ebe    90
                         nop                                                         // 0x00476ebf    90
?NetworkUnfriendlyLockedSelect@Creature@@UAEIPAUControlHandUpdateInfo@@@Z:
                         mov                eax, 0x00000001                          // 0x00476ec0    b801000000
                         ret                0x0004                                   // 0x00476ec5    c20400
                         nop                                                         // 0x00476ec8    90
                         nop                                                         // 0x00476ec9    90
                         nop                                                         // 0x00476eca    90
                         nop                                                         // 0x00476ecb    90
                         nop                                                         // 0x00476ecc    90
                         nop                                                         // 0x00476ecd    90
                         nop                                                         // 0x00476ece    90
                         nop                                                         // 0x00476ecf    90
?GetReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x00476ed0    8b8160010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]              // 0x00476ed6    8b4058
                         add                eax, 0x000048c0                          // 0x00476ed9    05c0480000
                         xor.s              edx, edx                                 // 0x00476ede    33d2
                         {disp8} mov        dword ptr [eax + 0x08], edx              // 0x00476ee0    895008
                         {disp8} mov        dword ptr [eax + 0x04], edx              // 0x00476ee3    895004
                         mov                dword ptr [eax], edx                     // 0x00476ee6    8910
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]        // 0x00476ee8    8b8960010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]              // 0x00476eee    8b4958
                         call               _jmp_addr_0x004806d0                     // 0x00476ef1    e8da970000
                         mov                eax, 0x00000001                          // 0x00476ef6    b801000000
                         ret                                                         // 0x00476efb    c3
                         nop                                                         // 0x00476efc    90
                         nop                                                         // 0x00476efd    90
                         nop                                                         // 0x00476efe    90
                         nop                                                         // 0x00476eff    90
?IsReadyForNetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ:
                         push               esi                                      // 0x00476f00    56
                         mov.s              esi, ecx                                 // 0x00476f01    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00476f03    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x00476f09    8b4858
                         call               _jmp_addr_0x00483750                     // 0x00476f0c    e83fc80000
                         test               eax, eax                                 // 0x00476f11    85c0
                         {disp8} je         _jmp_addr_0x00476f52                     // 0x00476f13    743d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]        // 0x00476f15    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]              // 0x00476f1b    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00476f1e    e8add30000
                         test               eax, eax                                 // 0x00476f23    85c0
                         {disp8} je         _jmp_addr_0x00476f39                     // 0x00476f25    7412
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]        // 0x00476f27    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]              // 0x00476f2d    8b4a58
                         call               _jmp_addr_0x00484e10                     // 0x00476f30    e8dbde0000
                         test               eax, eax                                 // 0x00476f35    85c0
                         {disp8} je         _jmp_addr_0x00476f52                     // 0x00476f37    7419
_jmp_addr_0x00476f39:    {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00476f39    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x00476f3f    8b4858
                         call               _jmp_addr_0x00480d30                     // 0x00476f42    e8e99d0000
                         test               eax, eax                                 // 0x00476f47    85c0
                         {disp8} jne        _jmp_addr_0x00476f52                     // 0x00476f49    7507
                         mov                eax, 0x00000001                          // 0x00476f4b    b801000000
                         pop                esi                                      // 0x00476f50    5e
                         ret                                                         // 0x00476f51    c3
_jmp_addr_0x00476f52:    xor.s              eax, eax                                 // 0x00476f52    33c0
                         pop                esi                                      // 0x00476f54    5e
                         ret                                                         // 0x00476f55    c3
                         nop                                                         // 0x00476f56    90
                         nop                                                         // 0x00476f57    90
                         nop                                                         // 0x00476f58    90
                         nop                                                         // 0x00476f59    90
                         nop                                                         // 0x00476f5a    90
                         nop                                                         // 0x00476f5b    90
                         nop                                                         // 0x00476f5c    90
                         nop                                                         // 0x00476f5d    90
                         nop                                                         // 0x00476f5e    90
                         nop                                                         // 0x00476f5f    90
?NetworkUnfriendlyEndLockedSelect@Creature@@UAEIXZ:
                         mov                eax, 0x00000001                          // 0x00476f60    b801000000
                         ret                                                         // 0x00476f65    c3
                         nop                                                         // 0x00476f66    90
                         nop                                                         // 0x00476f67    90
                         nop                                                         // 0x00476f68    90
                         nop                                                         // 0x00476f69    90
                         nop                                                         // 0x00476f6a    90
                         nop                                                         // 0x00476f6b    90
                         nop                                                         // 0x00476f6c    90
                         nop                                                         // 0x00476f6d    90
                         nop                                                         // 0x00476f6e    90
                         nop                                                         // 0x00476f6f    90
?DestroyedByEffect@Creature@@UAEIPAVGPlayer@@M@Z:
                         {disp32} mov       eax, dword ptr [ecx + 0x00001158]        // 0x00476f70    8b8158110000
                         test               eax, eax                                 // 0x00476f76    85c0
                         {disp8} je         _jmp_addr_0x00476f87                     // 0x00476f78    740d
                         call               _jmp_addr_0x00476fa0                     // 0x00476f7a    e821000000
                         mov                eax, 0x00000001                          // 0x00476f7f    b801000000
                         ret                0x0008                                   // 0x00476f84    c20800
_jmp_addr_0x00476f87:    mov                eax, dword ptr [ecx]                     // 0x00476f87    8b01
                         push               0x3f800000                               // 0x00476f89    680000803f
                         call               dword ptr [eax + 0x5b0]                  // 0x00476f8e    ff90b0050000
                         mov                eax, 0x00000001                          // 0x00476f94    b801000000
                         ret                0x0008                                   // 0x00476f99    c20800
                         nop                                                         // 0x00476f9c    90
                         nop                                                         // 0x00476f9d    90
                         nop                                                         // 0x00476f9e    90
                         nop                                                         // 0x00476f9f    90
_jmp_addr_0x00476fa0:    sub                esp, 0x30                                // 0x00476fa0    83ec30
                         push               esi                                      // 0x00476fa3    56
                         mov.s              esi, ecx                                 // 0x00476fa4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000384]        // 0x00476fa6    8b8684030000
                         test               eax, eax                                 // 0x00476fac    85c0
                         {disp32} jne       _jmp_addr_0x0047705b                     // 0x00476fae    0f85a7000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000370]        // 0x00476fb4    8b8e70030000
                         call               _jmp_addr_0x004f4b60                     // 0x00476fba    e8a1db0700
                         mov.s              ecx, esi                                 // 0x00476fbf    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ            // 0x00476fc1    e88a080000
                         mov.s              ecx, eax                                 // 0x00476fc6    8bc8
                         call               _jmp_addr_0x0048f750                     // 0x00476fc8    e883870100
                         mov.s              ecx, esi                                 // 0x00476fcd    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ            // 0x00476fcf    e87c080000
                         mov.s              ecx, eax                                 // 0x00476fd4    8bc8
                         call               _jmp_addr_0x00484260                     // 0x00476fd6    e885d20000
                         mov.s              ecx, esi                                 // 0x00476fdb    8bce
                         call               _jmp_addr_0x004cf060                     // 0x00476fdd    e87e800500
                         test               eax, eax                                 // 0x00476fe2    85c0
                         {disp8} je         _jmp_addr_0x00476ff4                     // 0x00476fe4    740e
                         {disp32} mov       ecx, dword ptr [eax + 0x0000012c]        // 0x00476fe6    8b882c010000
                         push               0x0                                      // 0x00476fec    6a00
                         push               esi                                      // 0x00476fee    56
                         call               _jmp_addr_0x005e6f70                     // 0x00476fef    e87cff1600
_jmp_addr_0x00476ff4:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00476ff4    8b8e64010000
                         push               0x3f800000                               // 0x00476ffa    680000803f
                         push               0x0                                      // 0x00476fff    6a00
                         push               esi                                      // 0x00477001    56
                         call               _jmp_addr_0x004d7b80                     // 0x00477002    e8790b0600
                         push               eax                                      // 0x00477007    50
                         push               0x0                                      // 0x00477008    6a00
                         push               0x9                                      // 0x0047700a    6a09
                         push               0x18                                     // 0x0047700c    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x0047700e    8d4c241c
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                     // 0x00477012    e819a20700
                         push               0x1                                      // 0x00477017    6a01
                         push               0x1                                      // 0x00477019    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x0c]              // 0x0047701b    8d44240c
                         push               eax                                      // 0x0047701f    50
                         mov.s              ecx, esi                                 // 0x00477020    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                     // 0x00477022    e889d40400
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477027    8b8e64010000
                         push               0x0                                      // 0x0047702d    6a00
                         push               0x0                                      // 0x0047702f    6a00
                         push               0x0                                      // 0x00477031    6a00
                         {disp32} mov       dword ptr [ecx + 0x00001c14], 0x00000001 // 0x00477033    c781141c000001000000
                         push               0x3                                      // 0x0047703d    6a03
                         push               0x25                                     // 0x0047703f    6a25
                         mov.s              ecx, esi                                 // 0x00477041    8bce
                         {disp32} mov       dword ptr [esi + 0x00000384], 0x00000001 // 0x00477043    c7868403000001000000
                         call               _jmp_addr_0x004c9fe0                     // 0x0047704d    e88e2f0500
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x00477052    8d4c2404
                         call               _jmp_addr_0x004f12d0                     // 0x00477056    e875a20700
_jmp_addr_0x0047705b:    pop                esi                                      // 0x0047705b    5e
                         add                esp, 0x30                                // 0x0047705c    83c430
                         ret                                                         // 0x0047705f    c3
_jmp_addr_0x00477060:    {disp32} jmp       _jmp_addr_0x00476fa0                     // 0x00477060    e93bffffff
                         nop                                                         // 0x00477065    90
                         nop                                                         // 0x00477066    90
                         nop                                                         // 0x00477067    90
                         nop                                                         // 0x00477068    90
                         nop                                                         // 0x00477069    90
                         nop                                                         // 0x0047706a    90
                         nop                                                         // 0x0047706b    90
                         nop                                                         // 0x0047706c    90
                         nop                                                         // 0x0047706d    90
                         nop                                                         // 0x0047706e    90
                         nop                                                         // 0x0047706f    90
                         sub                esp, 0x30                                // 0x00477070    83ec30
                         push               esi                                      // 0x00477073    56
                         push               0x3f800000                               // 0x00477074    680000803f
                         mov.s              esi, ecx                                 // 0x00477079    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x0047707b    8b8e64010000
                         push               0x0                                      // 0x00477081    6a00
                         push               esi                                      // 0x00477083    56
                         call               _jmp_addr_0x004d7b80                     // 0x00477084    e8f70a0600
                         push               eax                                      // 0x00477089    50
                         push               0x0                                      // 0x0047708a    6a00
                         push               0x5c                                     // 0x0047708c    6a5c
                         push               0x6                                      // 0x0047708e    6a06
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x00477090    8d4c241c
                         call               ??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z                     // 0x00477094    e897a10700
                         push               0x1                                      // 0x00477099    6a01
                         push               0x1                                      // 0x0047709b    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x0c]              // 0x0047709d    8d44240c
                         push               eax                                      // 0x004770a1    50
                         mov.s              ecx, esi                                 // 0x004770a2    8bce
                         call               ?ForceActivityAndForceAction@Creature@@QAEXAAVCreaturePlan@@HH@Z                     // 0x004770a4    e807d40400
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x004770a9    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c14], 0x00000001 // 0x004770af    c781141c000001000000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x004770b9    8d4c2404
                         call               _jmp_addr_0x004f12d0                     // 0x004770bd    e80ea20700
                         pop                esi                                      // 0x004770c2    5e
                         add                esp, 0x30                                // 0x004770c3    83c430
                         ret                0x0008                                   // 0x004770c6    c20800
                         nop                                                         // 0x004770c9    90
                         nop                                                         // 0x004770ca    90
                         nop                                                         // 0x004770cb    90
                         nop                                                         // 0x004770cc    90
                         nop                                                         // 0x004770cd    90
                         nop                                                         // 0x004770ce    90
                         nop                                                         // 0x004770cf    90
?SetHeadPos@Creature@@UAEXPAUMapCoords@@@Z:
                         push               ebx                                      // 0x004770d0    53
                         push               esi                                      // 0x004770d1    56
                         push               edi                                      // 0x004770d2    57
                         mov.s              edi, ecx                                 // 0x004770d3    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]        // 0x004770d5    8b8760010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x004770db    8b4858
                         call               _jmp_addr_0x004813b0                     // 0x004770de    e8cda20000
                         mov.s              ebx, eax                                 // 0x004770e3    8bd8
                         fld                dword ptr [ebx]                          // 0x004770e5    d903
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]         // 0x004770e7    d80d00c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004770ed    e80ea33200
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x004770f2    8b742410
                         mov                dword ptr [esi], eax                     // 0x004770f6    8906
                         {disp8} fld        dword ptr [ebx + 0x08]                   // 0x004770f8    d94308
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]         // 0x004770fb    d80d00c48a00
                         call               _jmp_addr_0x007a1400                     // 0x00477101    e8faa23200
                         {disp8} mov        dword ptr [esi + 0x04], eax              // 0x00477106    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000       // 0x00477109    c7460800000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]        // 0x00477110    8b8f60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]              // 0x00477116    8b4958
                         call               _jmp_addr_0x004813b0                     // 0x00477119    e892a20000
                         {disp8} fld        dword ptr [eax + 0x04]                   // 0x0047711e    d94004
                         pop                edi                                      // 0x00477121    5f
                         {disp8} fstp       dword ptr [esi + 0x08]                   // 0x00477122    d95e08
                         pop                esi                                      // 0x00477125    5e
                         pop                ebx                                      // 0x00477126    5b
                         ret                0x0004                                   // 0x00477127    c20400
                         call               dword ptr [__imp__BinkClose@4]           // 0x0047712a    ff1554998a00
_jmp_addr_0x00477130:    sub                esp, 0x24                                // 0x00477130    83ec24
                         push               esi                                      // 0x00477133    56
                         mov.s              esi, ecx                                 // 0x00477134    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477136    8b8660010000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000       // 0x0047713c    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00477144    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x0047714c    c744240c00000000
                         {disp8} mov        eax, dword ptr [eax + 0x58]              // 0x00477154    8b4058
                         {disp8} fld        dword ptr [eax + 0x78]                   // 0x00477157    d94078
                         {disp8} mov        ecx, dword ptr [eax + 0x7c]              // 0x0047715a    8b487c
                         {disp32} mov       edx, dword ptr [eax + 0x00000080]        // 0x0047715d    8b9080000000
                         fld                st(0)                                    // 0x00477163    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]         // 0x00477165    d80d00c48a00
                         add                eax, 0x78                                // 0x0047716b    83c078
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x0047716e    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x00477172    89542418
                         call               _jmp_addr_0x007a1400                     // 0x00477176    e885a23200
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x0047717b    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]         // 0x0047717f    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x00477185    89442404
                         call               _jmp_addr_0x007a1400                     // 0x00477189    e872a23200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x0047718e    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x00477194    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00477198    c744240c00000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004771a0    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004771a6    e855a23200
                         {disp8} fld        dword ptr [esp + 0x18]                   // 0x004771ab    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x004771af    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x004771b5    8944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x004771b9    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x004771bf    e83ca23200
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x004771c4    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x004771c8    89442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x004771cc    c744242400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x004771d4    e8b7be3800
                         {disp8} fsubr      dword ptr [esp + 0x14]                   // 0x004771d9    d86c2414
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x004771dd    8d4c2404
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x004771e1    d95c240c
                         call               ?InBounds@MapCoords@@QBEIXZ              // 0x004771e5    e8d6d01800
                         test               eax, eax                                 // 0x004771ea    85c0
                         {disp8} je         _jmp_addr_0x00477207                     // 0x004771ec    7419
                         {disp32} mov       eax, dword ptr [esi + 0x000010cc]        // 0x004771ee    8b86cc100000
                         test               eax, eax                                 // 0x004771f4    85c0
                         {disp8} jne        _jmp_addr_0x00477207                     // 0x004771f6    750f
                         mov                eax, dword ptr [esi]                     // 0x004771f8    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x004771fa    8d4c2404
                         push               ecx                                      // 0x004771fe    51
                         mov.s              ecx, esi                                 // 0x004771ff    8bce
                         call               dword ptr [eax + 0x55c]                  // 0x00477201    ff905c050000
_jmp_addr_0x00477207:    pop                esi                                      // 0x00477207    5e
                         add                esp, 0x24                                // 0x00477208    83c424
                         ret                                                         // 0x0047720b    c3
                         nop                                                         // 0x0047720c    90
                         nop                                                         // 0x0047720d    90
                         nop                                                         // 0x0047720e    90
                         nop                                                         // 0x0047720f    90
_jmp_addr_0x00477210:    push               ecx                                      // 0x00477210    51
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]        // 0x00477211    8b9160010000
                         {disp8} fld        dword ptr [edx + 0x14]                   // 0x00477217    d94214
                         {disp8} fsub       dword ptr [edx + 0x18]                   // 0x0047721a    d86218
                         {disp32} fcom      dword ptr [rdata_bytes + 0x25fc4]        // 0x0047721d    d815c4ef8c00
                         fnstsw             ax                                       // 0x00477223    dfe0
                         test               ah, 0x01                                 // 0x00477225    f6c401
                         {disp8} je         _jmp_addr_0x00477234                     // 0x00477228    740a
                         fstp               st(0)                                    // 0x0047722a    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc4]        // 0x0047722c    d905c4ef8c00
                         {disp8} jmp        _jmp_addr_0x00477249                     // 0x00477232    eb15
_jmp_addr_0x00477234:    {disp32} fcom      dword ptr [rdata_bytes + 0x1c840]        // 0x00477234    d81540588c00
                         fnstsw             ax                                       // 0x0047723a    dfe0
                         test               ah, 0x41                                 // 0x0047723c    f6c441
                         {disp8} jne        _jmp_addr_0x00477249                     // 0x0047723f    7508
                         fstp               st(0)                                    // 0x00477241    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c840]        // 0x00477243    d90540588c00
_jmp_addr_0x00477249:    {disp8} fadd       dword ptr [edx + 0x18]                   // 0x00477249    d84218
                         {disp32} fcom      dword ptr [_rdata_float0p0]              // 0x0047724c    d81598a38a00
                         fnstsw             ax                                       // 0x00477252    dfe0
                         test               ah, 0x01                                 // 0x00477254    f6c401
                         {disp8} je         _jmp_addr_0x00477263                     // 0x00477257    740a
                         fstp               st(0)                                    // 0x00477259    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0047725b    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x00477278                     // 0x00477261    eb15
_jmp_addr_0x00477263:    {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x00477263    d81590a38a00
                         fnstsw             ax                                       // 0x00477269    dfe0
                         test               ah, 0x41                                 // 0x0047726b    f6c441
                         {disp8} jne        _jmp_addr_0x00477278                     // 0x0047726e    7508
                         fstp               st(0)                                    // 0x00477270    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00477272    d90590a38a00
_jmp_addr_0x00477278:    {disp8} fst        dword ptr [edx + 0x18]                   // 0x00477278    d95218
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x0047727b    8b8160010000
                         {disp8} mov        edx, dword ptr [eax + 0x58]              // 0x00477281    8b5058
                         fadd.s             st(0), st(0)                             // 0x00477284    dcc0
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1390]         // 0x00477286    d82590a38a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]         // 0x0047728c    d81578b68a00
                         fnstsw             ax                                       // 0x00477292    dfe0
                         test               ah, 0x41                                 // 0x00477294    f6c441
                         {disp8} jne        _jmp_addr_0x004772b0                     // 0x00477297    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x00477299    d81590a38a00
                         fnstsw             ax                                       // 0x0047729f    dfe0
                         test               ah, 0x01                                 // 0x004772a1    f6c401
                         {disp8} jne        _jmp_addr_0x004772b8                     // 0x004772a4    7512
                         fstp               st(0)                                    // 0x004772a6    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004772a8    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x004772b8                     // 0x004772ae    eb08
_jmp_addr_0x004772b0:    fstp               st(0)                                    // 0x004772b0    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]         // 0x004772b2    d90578b68a00
_jmp_addr_0x004772b8:    {disp32} fstp      dword ptr [edx + 0x000000a4]             // 0x004772b8    d99aa4000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000168]        // 0x004772be    8b9168010000
                         {disp8} fld        dword ptr [edx + 0x08]                   // 0x004772c4    d94208
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x004772c7    8b8160010000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]         // 0x004772cd    d81578b68a00
                         {disp8} mov        edx, dword ptr [eax + 0x58]              // 0x004772d3    8b5058
                         fnstsw             ax                                       // 0x004772d6    dfe0
                         test               ah, 0x41                                 // 0x004772d8    f6c441
                         {disp8} jne        _jmp_addr_0x004772f4                     // 0x004772db    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x004772dd    d81590a38a00
                         fnstsw             ax                                       // 0x004772e3    dfe0
                         test               ah, 0x01                                 // 0x004772e5    f6c401
                         {disp8} jne        _jmp_addr_0x004772fc                     // 0x004772e8    7512
                         fstp               st(0)                                    // 0x004772ea    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004772ec    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x004772fc                     // 0x004772f2    eb08
_jmp_addr_0x004772f4:    fstp               st(0)                                    // 0x004772f4    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]         // 0x004772f6    d90578b68a00
_jmp_addr_0x004772fc:    {disp32} fstp      dword ptr [edx + 0x0000009c]             // 0x004772fc    d99a9c000000
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00477302    8b4128
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000160]        // 0x00477305    8b8960010000
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]              // 0x0047730b    8b510c
                         {disp32} mov       eax, dword ptr [eax + 0x000001f4]        // 0x0047730e    8b80f4010000
                         push               esi                                      // 0x00477314    56
                         {disp8} mov        esi, dword ptr [ecx + 0x58]              // 0x00477315    8b7158
                         push               eax                                      // 0x00477318    50
                         mov.s              ecx, edx                                 // 0x00477319    8bca
                         push               ecx                                      // 0x0047731b    51
                         {disp8} mov        dword ptr [esp + 0x0c], edx              // 0x0047731c    8954240c
                         call               _jmp_addr_0x004f02b0                     // 0x00477320    e88b8f0700
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]         // 0x00477325    d81578b68a00
                         add                esp, 0x08                                // 0x0047732b    83c408
                         fnstsw             ax                                       // 0x0047732e    dfe0
                         test               ah, 0x41                                 // 0x00477330    f6c441
                         {disp8} jne        _jmp_addr_0x0047735a                     // 0x00477333    7525
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x00477335    d81590a38a00
                         fnstsw             ax                                       // 0x0047733b    dfe0
                         test               ah, 0x01                                 // 0x0047733d    f6c401
                         {disp8} je         _jmp_addr_0x0047734b                     // 0x00477340    7409
                         {disp32} fstp      dword ptr [esi + 0x000000ac]             // 0x00477342    d99eac000000
                         pop                esi                                      // 0x00477348    5e
                         pop                ecx                                      // 0x00477349    59
                         ret                                                         // 0x0047734a    c3
_jmp_addr_0x0047734b:    {disp32} mov       dword ptr [esi + 0x000000ac], 0x3f800000 // 0x0047734b    c786ac0000000000803f
                         fstp               st(0)                                    // 0x00477355    ddd8
                         pop                esi                                      // 0x00477357    5e
                         pop                ecx                                      // 0x00477358    59
                         ret                                                         // 0x00477359    c3
_jmp_addr_0x0047735a:    {disp32} mov       dword ptr [esi + 0x000000ac], 0xbf800000 // 0x0047735a    c786ac000000000080bf
                         fstp               st(0)                                    // 0x00477364    ddd8
                         pop                esi                                      // 0x00477366    5e
                         pop                ecx                                      // 0x00477367    59
                         ret                                                         // 0x00477368    c3
                         nop                                                         // 0x00477369    90
                         nop                                                         // 0x0047736a    90
                         nop                                                         // 0x0047736b    90
                         nop                                                         // 0x0047736c    90
                         nop                                                         // 0x0047736d    90
                         nop                                                         // 0x0047736e    90
                         nop                                                         // 0x0047736f    90
_jmp_addr_0x00477370:    sub                esp, 0x18                                // 0x00477370    83ec18
                         push               ebx                                      // 0x00477373    53
                         {disp8} mov        ebx, dword ptr [esp + 0x20]              // 0x00477374    8b5c2420
                         push               esi                                      // 0x00477378    56
                         push               edi                                      // 0x00477379    57
                         mov.s              edi, ecx                                 // 0x0047737a    8bf9
                         {disp8} lea        esi, dword ptr [ebx + 0x14]              // 0x0047737c    8d7314
                         mov.s              ecx, esi                                 // 0x0047737f    8bce
                         call               ?InBounds@MapCoords@@QBEIXZ              // 0x00477381    e83acf1800
                         test               eax, eax                                 // 0x00477386    85c0
                         {disp8} jne        _jmp_addr_0x00477393                     // 0x00477388    7509
                         pop                edi                                      // 0x0047738a    5f
                         pop                esi                                      // 0x0047738b    5e
                         pop                ebx                                      // 0x0047738c    5b
                         add                esp, 0x18                                // 0x0047738d    83c418
                         ret                0x0004                                   // 0x00477390    c20400
_jmp_addr_0x00477393:    {disp8} mov        eax, dword ptr [esi + 0x08]              // 0x00477393    8b4608
                         mov.s              ecx, esi                                 // 0x00477396    8bce
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x00477398    89442428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x0047739c    e8efbc3800
                         {disp8} fadd       dword ptr [esp + 0x28]                   // 0x004773a1    d8442428
                         fild               dword ptr [esi]                          // 0x004773a5    db06
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]        // 0x004773a7    8b8f60010000
                         {disp8} mov        eax, dword ptr [ecx + 0x58]              // 0x004773ad    8b4158
                         add                eax, 0x78                                // 0x004773b0    83c078
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]           // 0x004773b3    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                   // 0x004773b9    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x004773bc    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x004773c2    d95c2420
                         fsub               dword ptr [eax]                          // 0x004773c6    d820
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x004773c8    d95c240c
                         {disp8} fsub       dword ptr [eax + 0x04]                   // 0x004773cc    d86004
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x004773cf    d9442420
                         {disp8} fsub       dword ptr [eax + 0x08]                   // 0x004773d3    d86008
                         fld                st(0)                                    // 0x004773d6    d9c0
                         fmul               st, st(1)                                // 0x004773d8    d8c9
                         fld                st(2)                                    // 0x004773da    d9c2
                         fmul               st, st(3)                                // 0x004773dc    d8cb
                         faddp              st(1), st                                // 0x004773de    dec1
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x004773e0    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                   // 0x004773e4    d84c240c
                         faddp              st(1), st                                // 0x004773e8    dec1
                         fsqrt                                                       // 0x004773ea    d9fa
                         {disp8} fst        dword ptr [esp + 0x28]                   // 0x004773ec    d9542428
                         fstp               st(2)                                    // 0x004773f0    ddda
                         fstp               st(0)                                    // 0x004773f2    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2414]         // 0x004773f4    d81d14b48a00
                         fnstsw             ax                                       // 0x004773fa    dfe0
                         test               ah, 0x01                                 // 0x004773fc    f6c401
                         {disp8} jne        _jmp_addr_0x00477427                     // 0x004773ff    7526
                         mov                edx, dword ptr [ebx]                     // 0x00477401    8b13
                         mov.s              ecx, ebx                                 // 0x00477403    8bcb
                         call               dword ptr [edx + 0x42c]                  // 0x00477405    ff922c040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x22f64]        // 0x0047740b    d80d64bf8c00
                         {disp8} fcomp      dword ptr [esp + 0x28]                   // 0x00477411    d85c2428
                         fnstsw             ax                                       // 0x00477415    dfe0
                         test               ah, 0x41                                 // 0x00477417    f6c441
                         {disp8} je         _jmp_addr_0x00477427                     // 0x0047741a    740b
                         pop                edi                                      // 0x0047741c    5f
                         pop                esi                                      // 0x0047741d    5e
                         xor.s              eax, eax                                 // 0x0047741e    33c0
                         pop                ebx                                      // 0x00477420    5b
                         add                esp, 0x18                                // 0x00477421    83c418
                         ret                0x0004                                   // 0x00477424    c20400
_jmp_addr_0x00477427:    pop                edi                                      // 0x00477427    5f
                         pop                esi                                      // 0x00477428    5e
                         mov                eax, 0x00000001                          // 0x00477429    b801000000
                         pop                ebx                                      // 0x0047742e    5b
                         add                esp, 0x18                                // 0x0047742f    83c418
                         ret                0x0004                                   // 0x00477432    c20400
                         nop                                                         // 0x00477435    90
                         nop                                                         // 0x00477436    90
                         nop                                                         // 0x00477437    90
                         nop                                                         // 0x00477438    90
                         nop                                                         // 0x00477439    90
                         nop                                                         // 0x0047743a    90
                         nop                                                         // 0x0047743b    90
                         nop                                                         // 0x0047743c    90
                         nop                                                         // 0x0047743d    90
                         nop                                                         // 0x0047743e    90
                         nop                                                         // 0x0047743f    90
_jmp_addr_0x00477440:    push               ebx                                      // 0x00477440    53
                         push               esi                                      // 0x00477441    56
                         mov.s              esi, ecx                                 // 0x00477442    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477444    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x0047744a    8b4858
                         push               edi                                      // 0x0047744d    57
                         call               _jmp_addr_0x00480c90                     // 0x0047744e    e83d980000
                         push               ecx                                      // 0x00477453    51
                         fstp               dword ptr [esp]                          // 0x00477454    d91c24
                         call               _jmp_addr_0x0074e290                     // 0x00477457    e8346e2d00
                         {disp8} mov        ebx, dword ptr [esp + 0x14]              // 0x0047745c    8b5c2414
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x00477460    8d4e14
                         push               ebx                                      // 0x00477463    53
                         push               ecx                                      // 0x00477464    51
                         mov.s              edi, eax                                 // 0x00477465    8bf8
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                          // 0x00477467    e8d45d2d00
                         mov.s              edx, eax                                 // 0x0047746c    8bd0
                         and                edx, 0x0000ffff                          // 0x0047746e    81e2ffff0000
                         mov.s              eax, edi                                 // 0x00477474    8bc7
                         and                eax, 0x0000ffff                          // 0x00477476    25ffff0000
                         sub.s              eax, edx                                 // 0x0047747b    2bc2
                         cdq                                                         // 0x0047747d    99
                         xor.s              eax, edx                                 // 0x0047747e    33c2
                         sub.s              eax, edx                                 // 0x00477480    2bc2
                         add                esp, 0x0c                                // 0x00477482    83c40c
                         cmp                eax, 0x00000400                          // 0x00477485    3d00040000
                         {disp8} jbe        _jmp_addr_0x00477495                     // 0x0047748a    7609
                         mov                ecx, 0x00000800                          // 0x0047748c    b900080000
                         sub.s              ecx, eax                                 // 0x00477491    2bc8
                         mov.s              eax, ecx                                 // 0x00477493    8bc1
_jmp_addr_0x00477495:    cmp                eax, 0x000002aa                          // 0x00477495    3daa020000
                         {disp8} jbe        _jmp_addr_0x004774b8                     // 0x0047749a    761c
                         {disp8} mov        dx, word ptr [ebx + 0x02]                // 0x0047749c    668b5302
                         cmp                dx, word ptr [esi + 0x16]                // 0x004774a0    663b5616
                         {disp8} jne        _jmp_addr_0x004774b0                     // 0x004774a4    750a
                         {disp8} mov        ax, word ptr [ebx + 0x06]                // 0x004774a6    668b4306
                         cmp                ax, word ptr [esi + 0x1a]                // 0x004774aa    663b461a
                         {disp8} je         _jmp_addr_0x004774b8                     // 0x004774ae    7408
_jmp_addr_0x004774b0:    pop                edi                                      // 0x004774b0    5f
                         pop                esi                                      // 0x004774b1    5e
                         xor.s              eax, eax                                 // 0x004774b2    33c0
                         pop                ebx                                      // 0x004774b4    5b
                         ret                0x0004                                   // 0x004774b5    c20400
_jmp_addr_0x004774b8:    pop                edi                                      // 0x004774b8    5f
                         pop                esi                                      // 0x004774b9    5e
                         mov                eax, 0x00000001                          // 0x004774ba    b801000000
                         pop                ebx                                      // 0x004774bf    5b
                         ret                0x0004                                   // 0x004774c0    c20400
                         nop                                                         // 0x004774c3    90
                         nop                                                         // 0x004774c4    90
                         nop                                                         // 0x004774c5    90
                         nop                                                         // 0x004774c6    90
                         nop                                                         // 0x004774c7    90
                         nop                                                         // 0x004774c8    90
                         nop                                                         // 0x004774c9    90
                         nop                                                         // 0x004774ca    90
                         nop                                                         // 0x004774cb    90
                         nop                                                         // 0x004774cc    90
                         nop                                                         // 0x004774cd    90
                         nop                                                         // 0x004774ce    90
                         nop                                                         // 0x004774cf    90
_jmp_addr_0x004774d0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x004774d0    8b442404
                         push               0x4                                      // 0x004774d4    6a04
                         add                eax, 0x14                                // 0x004774d6    83c014
                         push               eax                                      // 0x004774d9    50
                         call               _jmp_addr_0x00477520                     // 0x004774da    e841000000
                         ret                0x0004                                   // 0x004774df    c20400
                         nop                                                         // 0x004774e2    90
                         nop                                                         // 0x004774e3    90
                         nop                                                         // 0x004774e4    90
                         nop                                                         // 0x004774e5    90
                         nop                                                         // 0x004774e6    90
                         nop                                                         // 0x004774e7    90
                         nop                                                         // 0x004774e8    90
                         nop                                                         // 0x004774e9    90
                         nop                                                         // 0x004774ea    90
                         nop                                                         // 0x004774eb    90
                         nop                                                         // 0x004774ec    90
                         nop                                                         // 0x004774ed    90
                         nop                                                         // 0x004774ee    90
                         nop                                                         // 0x004774ef    90
_jmp_addr_0x004774f0:    push               ecx                                      // 0x004774f0    51
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x004774f1    8b8160010000
                         {disp8} mov        edx, dword ptr [eax + 0x58]              // 0x004774f7    8b5058
                         {disp32} mov       eax, dword ptr [edx + 0x00000084]        // 0x004774fa    8b8284000000
                         mov.s              edx, eax                                 // 0x00477500    8bd0
                         push               edx                                      // 0x00477502    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x00477503    8b54240c
                         {disp8} mov        dword ptr [esp + 0x04], eax              // 0x00477507    89442404
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x0047750b    8b442410
                         push               eax                                      // 0x0047750f    50
                         push               edx                                      // 0x00477510    52
                         call               _jmp_addr_0x00477550                     // 0x00477511    e83a000000
                         pop                ecx                                      // 0x00477516    59
                         ret                0x0008                                   // 0x00477517    c20800
                         call               dword ptr [__imp__GetOpenFileNameA@4]    // 0x0047751a    ff1570998a00
_jmp_addr_0x00477520:    push               esi                                      // 0x00477520    56
                         mov.s              esi, ecx                                 // 0x00477521    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477523    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x00477529    8b4858
                         call               _jmp_addr_0x00480c90                     // 0x0047752c    e85f970000
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00477531    8b542408
                         push               ecx                                      // 0x00477535    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00477536    8b4c2410
                         fstp               dword ptr [esp]                          // 0x0047753a    d91c24
                         push               ecx                                      // 0x0047753d    51
                         push               edx                                      // 0x0047753e    52
                         mov.s              ecx, esi                                 // 0x0047753f    8bce
                         call               _jmp_addr_0x00477550                     // 0x00477541    e80a000000
                         pop                esi                                      // 0x00477546    5e
                         ret                0x0008                                   // 0x00477547    c20800
                         call               dword ptr [__imp__DirectDrawCreate@4]    // 0x0047754a    ff152c908a00
_jmp_addr_0x00477550:    {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00477550    8b44240c
                         push               ebx                                      // 0x00477554    53
                         push               esi                                      // 0x00477555    56
                         push               edi                                      // 0x00477556    57
                         push               eax                                      // 0x00477557    50
                         mov.s              edi, ecx                                 // 0x00477558    8bf9
                         call               _jmp_addr_0x0074e290                     // 0x0047755a    e8316d2d00
                         {disp8} mov        ebx, dword ptr [esp + 0x14]              // 0x0047755f    8b5c2414
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x00477563    8d4f14
                         push               ebx                                      // 0x00477566    53
                         push               ecx                                      // 0x00477567    51
                         mov.s              esi, eax                                 // 0x00477568    8bf0
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                          // 0x0047756a    e8d15c2d00
                         add                esp, 0x0c                                // 0x0047756f    83c40c
                         cmp.s              si, ax                                   // 0x00477572    663bf0
                         {disp8} jbe        _jmp_addr_0x00477586                     // 0x00477575    760f
                         and                eax, 0x0000ffff                          // 0x00477577    25ffff0000
                         and                esi, 0x0000ffff                          // 0x0047757c    81e6ffff0000
                         sub.s              esi, eax                                 // 0x00477582    2bf0
                         {disp8} jmp        _jmp_addr_0x00477595                     // 0x00477584    eb0f
_jmp_addr_0x00477586:    and                esi, 0x0000ffff                          // 0x00477586    81e6ffff0000
                         and                eax, 0x0000ffff                          // 0x0047758c    25ffff0000
                         sub.s              eax, esi                                 // 0x00477591    2bc6
                         mov.s              esi, eax                                 // 0x00477593    8bf0
_jmp_addr_0x00477595:    xor.s              edx, edx                                 // 0x00477595    33d2
                         mov                eax, 0x00000800                          // 0x00477597    b800080000
                         div                dword ptr [esp + 0x14]                   // 0x0047759c    f7742414
                         cmp.s              esi, eax                                 // 0x004775a0    3bf0
                         {disp8} jl         _jmp_addr_0x004775c0                     // 0x004775a2    7c1c
                         {disp8} mov        dx, word ptr [ebx + 0x02]                // 0x004775a4    668b5302
                         cmp                dx, word ptr [edi + 0x16]                // 0x004775a8    663b5716
                         {disp8} jne        _jmp_addr_0x004775b8                     // 0x004775ac    750a
                         {disp8} mov        ax, word ptr [ebx + 0x06]                // 0x004775ae    668b4306
                         cmp                ax, word ptr [edi + 0x1a]                // 0x004775b2    663b471a
                         {disp8} je         _jmp_addr_0x004775c0                     // 0x004775b6    7408
_jmp_addr_0x004775b8:    pop                edi                                      // 0x004775b8    5f
                         pop                esi                                      // 0x004775b9    5e
                         xor.s              eax, eax                                 // 0x004775ba    33c0
                         pop                ebx                                      // 0x004775bc    5b
                         ret                0x000c                                   // 0x004775bd    c20c00
_jmp_addr_0x004775c0:    pop                edi                                      // 0x004775c0    5f
                         pop                esi                                      // 0x004775c1    5e
                         mov                eax, 0x00000001                          // 0x004775c2    b801000000
                         pop                ebx                                      // 0x004775c7    5b
                         ret                0x000c                                   // 0x004775c8    c20c00
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x004775cb    e8a9a2f8ff
_jmp_addr_0x004775d0:    sub                esp, 0x0c                                // 0x004775d0    83ec0c
                         push               esi                                      // 0x004775d3    56
                         mov.s              esi, ecx                                 // 0x004775d4    8bf1
                         mov                eax, dword ptr [esi]                     // 0x004775d6    8b06
                         call               dword ptr [eax + 0x1c]                   // 0x004775d8    ff501c
                         test               eax, eax                                 // 0x004775db    85c0
                         {disp32} je        _jmp_addr_0x00477799                     // 0x004775dd    0f84b6010000
                         mov                edx, dword ptr [esi]                     // 0x004775e3    8b16
                         push               edi                                      // 0x004775e5    57
                         xor.s              edi, edi                                 // 0x004775e6    33ff
                         push               edi                                      // 0x004775e8    57
                         mov.s              ecx, esi                                 // 0x004775e9    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edi              // 0x004775eb    897c2410
                         call               dword ptr [edx + 0x1c]                   // 0x004775ef    ff521c
                         mov.s              ecx, eax                                 // 0x004775f2    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x004775f4    e8c7341d00
                         mov.s              ecx, eax                                 // 0x004775f9    8bc8
                         test               ecx, ecx                                 // 0x004775fb    85c9
                         {disp32} je        _jmp_addr_0x00477791                     // 0x004775fd    0f848e010000
_jmp_addr_0x00477603:    {disp32} fld       dword ptr [ecx + 0x000000bc]             // 0x00477603    d981bc000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477609    8b8660010000
                         {disp32} fsub      dword ptr [ecx + 0x000000b0]             // 0x0047760f    d8a1b0000000
                         {disp8} mov        eax, dword ptr [eax + 0x58]              // 0x00477615    8b4058
                         {disp32} fld       dword ptr [ecx + 0x000000c0]             // 0x00477618    d981c0000000
                         add                eax, 0x78                                // 0x0047761e    83c078
                         {disp32} fsub      dword ptr [ecx + 0x000000b4]             // 0x00477621    d8a1b4000000
                         {disp32} fld       dword ptr [ecx + 0x000000c4]             // 0x00477627    d981c4000000
                         {disp32} fsub      dword ptr [ecx + 0x000000b8]             // 0x0047762d    d8a1b8000000
                         fld                dword ptr [eax]                          // 0x00477633    d900
                         {disp32} fsub      dword ptr [ecx + 0x000000b0]             // 0x00477635    d8a1b0000000
                         {disp8} fld        dword ptr [eax + 0x04]                   // 0x0047763b    d94004
                         {disp32} fsub      dword ptr [ecx + 0x000000b4]             // 0x0047763e    d8a1b4000000
                         {disp8} fld        dword ptr [eax + 0x08]                   // 0x00477644    d94008
                         {disp32} fsub      dword ptr [ecx + 0x000000b8]             // 0x00477647    d8a1b8000000
                         fld                st(5)                                    // 0x0047764d    d9c5
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x0047764f    d81d98a38a00
                         fnstsw             ax                                       // 0x00477655    dfe0
                         test               ah, 0x40                                 // 0x00477657    f6c440
                         {disp8} je         _jmp_addr_0x0047767a                     // 0x0047765a    741e
                         fld                st(4)                                    // 0x0047765c    d9c4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x0047765e    d81d98a38a00
                         fnstsw             ax                                       // 0x00477664    dfe0
                         test               ah, 0x40                                 // 0x00477666    f6c440
                         {disp8} je         _jmp_addr_0x0047767a                     // 0x00477669    740f
                         fld                st(3)                                    // 0x0047766b    d9c3
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x0047766d    d81d98a38a00
                         fnstsw             ax                                       // 0x00477673    dfe0
                         test               ah, 0x40                                 // 0x00477675    f6c440
                         {disp8} jne        _jmp_addr_0x004776a6                     // 0x00477678    752c
_jmp_addr_0x0047767a:    fld                st(3)                                    // 0x0047767a    d9c3
                         fmul               st, st(4)                                // 0x0047767c    d8cc
                         fld                st(5)                                    // 0x0047767e    d9c5
                         fmul               st, st(6)                                // 0x00477680    d8ce
                         faddp              st(1), st                                // 0x00477682    dec1
                         fld                st(6)                                    // 0x00477684    d9c6
                         fmul               st, st(7)                                // 0x00477686    d8cf
                         faddp              st(1), st                                // 0x00477688    dec1
                         fsqrt                                                       // 0x0047768a    d9fa
                         {disp8} fst        dword ptr [esp + 0x10]                   // 0x0047768c    d9542410
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x1390]         // 0x00477690    d83d90a38a00
                         fld                st(0)                                    // 0x00477696    d9c0
                         fmulp              st(7), st                                // 0x00477698    decf
                         fld                st(0)                                    // 0x0047769a    d9c0
                         fmulp              st(6), st                                // 0x0047769c    dece
                         fxch               st(4)                                    // 0x0047769e    d9cc
                         fmul               st, st(4)                                // 0x004776a0    d8cc
                         fxch               st(4)                                    // 0x004776a2    d9cc
                         fstp               st(0)                                    // 0x004776a4    ddd8
_jmp_addr_0x004776a6:    fld                st(2)                                    // 0x004776a6    d9c2
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x004776a8    d81d98a38a00
                         fnstsw             ax                                       // 0x004776ae    dfe0
                         test               ah, 0x40                                 // 0x004776b0    f6c440
                         {disp8} je         _jmp_addr_0x004776db                     // 0x004776b3    7426
                         fld                st(1)                                    // 0x004776b5    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x004776b7    d81d98a38a00
                         fnstsw             ax                                       // 0x004776bd    dfe0
                         test               ah, 0x40                                 // 0x004776bf    f6c440
                         {disp8} je         _jmp_addr_0x004776db                     // 0x004776c2    7417
                         {disp32} fcom      dword ptr [_rdata_float0p0]              // 0x004776c4    d81598a38a00
                         fnstsw             ax                                       // 0x004776ca    dfe0
                         test               ah, 0x40                                 // 0x004776cc    f6c440
                         {disp8} je         _jmp_addr_0x004776db                     // 0x004776cf    740a
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x004776d1    c744240800000000
                         {disp8} jmp        _jmp_addr_0x0047771e                     // 0x004776d9    eb43
_jmp_addr_0x004776db:    fld                st(0)                                    // 0x004776db    d9c0
                         fmul               st, st(1)                                // 0x004776dd    d8c9
                         fld                st(2)                                    // 0x004776df    d9c2
                         fmul               st, st(3)                                // 0x004776e1    d8cb
                         faddp              st(1), st                                // 0x004776e3    dec1
                         fld                st(3)                                    // 0x004776e5    d9c3
                         fmul               st, st(4)                                // 0x004776e7    d8cc
                         faddp              st(1), st                                // 0x004776e9    dec1
                         fsqrt                                                       // 0x004776eb    d9fa
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x004776ed    d95c2408
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004776f1    d90590a38a00
                         {disp8} fdiv       dword ptr [esp + 0x08]                   // 0x004776f7    d8742408
                         fld                st(0)                                    // 0x004776fb    d9c0
                         fmulp              st(4), st                                // 0x004776fd    decc
                         fxch               st(2)                                    // 0x004776ff    d9ca
                         fmul               st, st(2)                                // 0x00477701    d8ca
                         fxch               st(2)                                    // 0x00477703    d9ca
                         fxch               st(1)                                    // 0x00477705    d9c9
                         fmul               st, st(1)                                // 0x00477707    d8c9
                         fxch               st(1)                                    // 0x00477709    d9c9
                         fstp               st(0)                                    // 0x0047770b    ddd8
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x0047770d    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1e728]        // 0x00477711    d81d28778c00
                         fnstsw             ax                                       // 0x00477717    dfe0
                         test               ah, 0x01                                 // 0x00477719    f6c401
                         {disp8} je         _jmp_addr_0x0047776c                     // 0x0047771c    744e
_jmp_addr_0x0047771e:    fmul               st, st(3)                                // 0x0047771e    d8cb
                         fxch               st(1)                                    // 0x00477720    d9c9
                         fmul               st, st(4)                                // 0x00477722    d8cc
                         faddp              st(1), st                                // 0x00477724    dec1
                         fxch               st(1)                                    // 0x00477726    d9c9
                         fmul               st, st(4)                                // 0x00477728    d8cc
                         faddp              st(1), st                                // 0x0047772a    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x22d4d4]        // 0x0047772c    d905d434bf00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x24c8]         // 0x00477732    d80dc8b48a00
                         fcos                                                        // 0x00477738    d9ff
                         {disp8} fst        dword ptr [esp + 0x10]                   // 0x0047773a    d9542410
                         fcompp                                                      // 0x0047773e    ded9
                         fstp               st(0)                                    // 0x00477740    ddd8
                         fnstsw             ax                                       // 0x00477742    dfe0
                         fstp               st(0)                                    // 0x00477744    ddd8
                         test               ah, 0x01                                 // 0x00477746    f6c401
                         fstp               st(0)                                    // 0x00477749    ddd8
                         {disp8} je         _jmp_addr_0x00477778                     // 0x0047774b    742b
                         test               edi, edi                                 // 0x0047774d    85ff
                         {disp8} je         _jmp_addr_0x00477760                     // 0x0047774f    740f
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00477751    d9442408
                         {disp8} fcomp      dword ptr [esp + 0x0c]                   // 0x00477755    d85c240c
                         fnstsw             ax                                       // 0x00477759    dfe0
                         test               ah, 0x01                                 // 0x0047775b    f6c401
                         {disp8} je         _jmp_addr_0x00477778                     // 0x0047775e    7418
_jmp_addr_0x00477760:    {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00477760    8b542408
                         mov.s              edi, ecx                                 // 0x00477764    8bf9
                         {disp8} mov        dword ptr [esp + 0x0c], edx              // 0x00477766    8954240c
                         {disp8} jmp        _jmp_addr_0x00477778                     // 0x0047776a    eb0c
_jmp_addr_0x0047776c:    fstp               st(0)                                    // 0x0047776c    ddd8
                         fstp               st(0)                                    // 0x0047776e    ddd8
                         fstp               st(0)                                    // 0x00477770    ddd8
                         fstp               st(0)                                    // 0x00477772    ddd8
                         fstp               st(0)                                    // 0x00477774    ddd8
                         fstp               st(0)                                    // 0x00477776    ddd8
_jmp_addr_0x00477778:    mov                eax, dword ptr [esi]                     // 0x00477778    8b06
                         push               ecx                                      // 0x0047777a    51
                         mov.s              ecx, esi                                 // 0x0047777b    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x0047777d    ff501c
                         mov.s              ecx, eax                                 // 0x00477780    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x00477782    e839331d00
                         mov.s              ecx, eax                                 // 0x00477787    8bc8
                         test               ecx, ecx                                 // 0x00477789    85c9
                         {disp32} jne       _jmp_addr_0x00477603                     // 0x0047778b    0f8572feffff
_jmp_addr_0x00477791:    mov.s              eax, edi                                 // 0x00477791    8bc7
                         pop                edi                                      // 0x00477793    5f
                         pop                esi                                      // 0x00477794    5e
                         add                esp, 0x0c                                // 0x00477795    83c40c
                         ret                                                         // 0x00477798    c3
_jmp_addr_0x00477799:    xor.s              eax, eax                                 // 0x00477799    33c0
                         pop                esi                                      // 0x0047779b    5e
                         add                esp, 0x0c                                // 0x0047779c    83c40c
                         ret                                                         // 0x0047779f    c3
_jmp_addr_0x004777a0:    push               esi                                      // 0x004777a0    56
                         push               edi                                      // 0x004777a1    57
                         mov.s              edi, ecx                                 // 0x004777a2    8bf9
                         mov                eax, dword ptr [edi]                     // 0x004777a4    8b07
                         call               dword ptr [eax + 0x1c]                   // 0x004777a6    ff501c
                         test               eax, eax                                 // 0x004777a9    85c0
                         {disp8} je         _jmp_addr_0x004777e7                     // 0x004777ab    743a
                         mov                edx, dword ptr [edi]                     // 0x004777ad    8b17
                         push               0x0                                      // 0x004777af    6a00
                         mov.s              ecx, edi                                 // 0x004777b1    8bcf
                         call               dword ptr [edx + 0x1c]                   // 0x004777b3    ff521c
                         mov.s              ecx, eax                                 // 0x004777b6    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x004777b8    e803331d00
                         mov.s              esi, eax                                 // 0x004777bd    8bf0
                         test               esi, esi                                 // 0x004777bf    85f6
                         {disp8} je         _jmp_addr_0x004777e7                     // 0x004777c1    7424
_jmp_addr_0x004777c3:    mov.s              ecx, esi                                 // 0x004777c3    8bce
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                     // 0x004777c5    e8e6501600
                         cmp                dword ptr [eax + 0x000003c8], edi        // 0x004777ca    39b8c8030000
                         {disp8} je         _jmp_addr_0x004777ec                     // 0x004777d0    741a
                         mov                eax, dword ptr [edi]                     // 0x004777d2    8b07
                         push               esi                                      // 0x004777d4    56
                         mov.s              ecx, edi                                 // 0x004777d5    8bcf
                         call               dword ptr [eax + 0x1c]                   // 0x004777d7    ff501c
                         mov.s              ecx, eax                                 // 0x004777da    8bc8
                         call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                     // 0x004777dc    e8df321d00
                         mov.s              esi, eax                                 // 0x004777e1    8bf0
                         test               esi, esi                                 // 0x004777e3    85f6
                         {disp8} jne        _jmp_addr_0x004777c3                     // 0x004777e5    75dc
_jmp_addr_0x004777e7:    pop                edi                                      // 0x004777e7    5f
                         xor.s              eax, eax                                 // 0x004777e8    33c0
                         pop                esi                                      // 0x004777ea    5e
                         ret                                                         // 0x004777eb    c3
_jmp_addr_0x004777ec:    pop                edi                                      // 0x004777ec    5f
                         mov                eax, 0x00000001                          // 0x004777ed    b801000000
                         pop                esi                                      // 0x004777f2    5e
                         ret                                                         // 0x004777f3    c3
                         nop                                                         // 0x004777f4    90
                         nop                                                         // 0x004777f5    90
                         nop                                                         // 0x004777f6    90
                         nop                                                         // 0x004777f7    90
                         nop                                                         // 0x004777f8    90
                         nop                                                         // 0x004777f9    90
                         nop                                                         // 0x004777fa    90
                         nop                                                         // 0x004777fb    90
                         nop                                                         // 0x004777fc    90
                         nop                                                         // 0x004777fd    90
                         nop                                                         // 0x004777fe    90
                         nop                                                         // 0x004777ff    90
_jmp_addr_0x00477800:    sub                esp, 0x0c                                // 0x00477800    83ec0c
                         push               esi                                      // 0x00477803    56
                         mov.s              esi, ecx                                 // 0x00477804    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00477806    8b06
                         call               dword ptr [eax + 0x1c]                   // 0x00477808    ff501c
                         test               eax, eax                                 // 0x0047780b    85c0
                         {disp8} je         _jmp_addr_0x00477841                     // 0x0047780d    7432
                         mov.s              ecx, esi                                 // 0x0047780f    8bce
                         call               _jmp_addr_0x004775d0                     // 0x00477811    e8bafdffff
                         test               eax, eax                                 // 0x00477816    85c0
                         {disp8} je         _jmp_addr_0x00477841                     // 0x00477818    7427
                         push               0x3                                      // 0x0047781a    6a03
                         add                eax, 0x000000c8                          // 0x0047781c    05c8000000
                         push               eax                                      // 0x00477821    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x00477822    8d4c240c
                         call               @__ct__9MapCoordsFRC7LHPoint@12          // 0x00477826    e835b91800
                         push               eax                                      // 0x0047782b    50
                         mov.s              ecx, esi                                 // 0x0047782c    8bce
                         call               _jmp_addr_0x00477520                     // 0x0047782e    e8edfcffff
                         test               eax, eax                                 // 0x00477833    85c0
                         {disp8} je         _jmp_addr_0x00477841                     // 0x00477835    740a
                         mov                eax, 0x00000001                          // 0x00477837    b801000000
                         pop                esi                                      // 0x0047783c    5e
                         add                esp, 0x0c                                // 0x0047783d    83c40c
                         ret                                                         // 0x00477840    c3
_jmp_addr_0x00477841:    xor.s              eax, eax                                 // 0x00477841    33c0
                         pop                esi                                      // 0x00477843    5e
                         add                esp, 0x0c                                // 0x00477844    83c40c
                         ret                                                         // 0x00477847    c3
                         nop                                                         // 0x00477848    90
                         nop                                                         // 0x00477849    90
                         nop                                                         // 0x0047784a    90
                         nop                                                         // 0x0047784b    90
                         nop                                                         // 0x0047784c    90
                         nop                                                         // 0x0047784d    90
                         nop                                                         // 0x0047784e    90
                         nop                                                         // 0x0047784f    90
?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ:
                                  {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x00477850    8b8160010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]              // 0x00477856    8b4058
                         ret                                                         // 0x00477859    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]  // 0x0047785a    ff1534908a00
?GetNearestEdgeOfObject@Creature@@UAEXPAVObject@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00477860    8b442404
                         xor.s              ecx, ecx                                 // 0x00477864    33c9
                         mov                dword ptr [eax], ecx                     // 0x00477866    8908
                         {disp8} mov        dword ptr [eax + 0x04], ecx              // 0x00477868    894804
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x0047786b    894808
                         ret                0x0008                                   // 0x0047786e    c20800
                         nop                                                         // 0x00477871    90
                         nop                                                         // 0x00477872    90
                         nop                                                         // 0x00477873    90
                         nop                                                         // 0x00477874    90
                         nop                                                         // 0x00477875    90
                         nop                                                         // 0x00477876    90
                         nop                                                         // 0x00477877    90
                         nop                                                         // 0x00477878    90
                         nop                                                         // 0x00477879    90
                         nop                                                         // 0x0047787a    90
                         nop                                                         // 0x0047787b    90
                         nop                                                         // 0x0047787c    90
                         nop                                                         // 0x0047787d    90
                         nop                                                         // 0x0047787e    90
                         nop                                                         // 0x0047787f    90
                         sub                esp, 0x20                                // 0x00477880    83ec20
                         push               ebx                                      // 0x00477883    53
                         push               ebp                                      // 0x00477884    55
                         push               esi                                      // 0x00477885    56
                         {disp8} mov        esi, dword ptr [esp + 0x34]              // 0x00477886    8b742434
                         push               edi                                      // 0x0047788a    57
                         mov.s              ebx, ecx                                 // 0x0047788b    8bd9
                         {disp8} lea        edi, dword ptr [esi + 0x14]              // 0x0047788d    8d7e14
                         mov.s              ecx, edi                                 // 0x00477890    8bcf
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x00477892    e8f9b73800
                         fstp               st(0)                                    // 0x00477897    ddd8
                         fild               dword ptr [edi]                          // 0x00477899    db07
                         {disp8} mov        eax, dword ptr [ebx + 0x18]              // 0x0047789b    8b4318
                         {disp8} mov        edx, dword ptr [esi + 0x18]              // 0x0047789e    8b5618
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]              // 0x004778a1    8b4b14
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x004778a4    d80da4a38a00
                         sub.s              eax, edx                                 // 0x004778aa    2bc2
                         push               eax                                      // 0x004778ac    50
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x004778ad    d95c241c
                         {disp8} fild       dword ptr [edi + 0x04]                   // 0x004778b1    db4704
                         mov                edi, dword ptr [edi]                     // 0x004778b4    8b3f
                         sub.s              ecx, edi                                 // 0x004778b6    2bcf
                         push               ecx                                      // 0x004778b8    51
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x004778b9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x004778bf    d95c2428
                         call               ?GetAngleFromDXDZ@GUtils@@SAGJJ@Z        // 0x004778c3    e838592d00
                         {disp8} mov        edi, dword ptr [esi + 0x40]              // 0x004778c8    8b7e40
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x004778cb    8944241c
                         {disp32} mov       eax, dword ptr [ebx + 0x00000160]        // 0x004778cf    8b8360010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x004778d5    8b4858
                         {disp32} mov       edx, dword ptr [ecx + 0x00005228]        // 0x004778d8    8b9128520000
                         mov                eax, dword ptr [esi]                     // 0x004778de    8b06
                         add                esp, 0x08                                // 0x004778e0    83c408
                         mov.s              ecx, esi                                 // 0x004778e3    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edx              // 0x004778e5    89542410
                         call               dword ptr [eax + 0x120]                  // 0x004778e9    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x004778ef    d95c2438
                         mov                edx, dword ptr [edi]                     // 0x004778f3    8b17
                         mov.s              ecx, edi                                 // 0x004778f5    8bcf
                         call               dword ptr [edx + 0xf8]                   // 0x004778f7    ff92f8000000
                         mov.s              ebp, eax                                 // 0x004778fd    8be8
                         mov                eax, dword ptr [edi]                     // 0x004778ff    8b07
                         mov.s              ecx, edi                                 // 0x00477901    8bcf
                         call               dword ptr [eax + 0xf8]                   // 0x00477903    ff90f8000000
                         {disp8} fld        dword ptr [ebp + 0x24]                   // 0x00477909    d94524
                         {disp8} fld        dword ptr [eax + 0x2c]                   // 0x0047790c    d9402c
                         fcompp                                                      // 0x0047790f    ded9
                         fnstsw             ax                                       // 0x00477911    dfe0
                         test               ah, 0x01                                 // 0x00477913    f6c401
                         {disp8} je         _jmp_addr_0x00477927                     // 0x00477916    740f
                         mov                edx, dword ptr [edi]                     // 0x00477918    8b17
                         mov.s              ecx, edi                                 // 0x0047791a    8bcf
                         call               dword ptr [edx + 0xf8]                   // 0x0047791c    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                   // 0x00477922    d94024
                         {disp8} jmp        _jmp_addr_0x00477934                     // 0x00477925    eb0d
_jmp_addr_0x00477927:    mov                eax, dword ptr [edi]                     // 0x00477927    8b07
                         mov.s              ecx, edi                                 // 0x00477929    8bcf
                         call               dword ptr [eax + 0xf8]                   // 0x0047792b    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                   // 0x00477931    d9402c
_jmp_addr_0x00477934:    {disp8} mov        ebp, dword ptr [esp + 0x14]              // 0x00477934    8b6c2414
                         {disp8} fmul       dword ptr [esp + 0x38]                   // 0x00477938    d84c2438
                         push               ecx                                      // 0x0047793c    51
                         {disp8} fadd       dword ptr [esp + 0x14]                   // 0x0047793d    d8442414
                         fstp               dword ptr [esp]                          // 0x00477941    d91c24
                         push               ebp                                      // 0x00477944    55
                         call               _jmp_addr_0x0074d360                     // 0x00477945    e8165a2d00
                         {disp8} fsubr      dword ptr [esp + 0x20]                   // 0x0047794a    d86c2420
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000160]        // 0x0047794e    8b8b60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]              // 0x00477954    8b5158
                         {disp32} mov       eax, dword ptr [edx + 0x00005228]        // 0x00477957    8b8228520000
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x0047795d    d95c242c
                         mov                edx, dword ptr [esi]                     // 0x00477961    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x40]              // 0x00477963    8b7e40
                         add                esp, 0x08                                // 0x00477966    83c408
                         mov.s              ecx, esi                                 // 0x00477969    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x0047796b    89442414
                         call               dword ptr [edx + 0x120]                  // 0x0047796f    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x00477975    d95c2438
                         mov                eax, dword ptr [edi]                     // 0x00477979    8b07
                         mov.s              ecx, edi                                 // 0x0047797b    8bcf
                         call               dword ptr [eax + 0xf8]                   // 0x0047797d    ff90f8000000
                         mov                edx, dword ptr [edi]                     // 0x00477983    8b17
                         mov.s              ecx, edi                                 // 0x00477985    8bcf
                         mov.s              esi, eax                                 // 0x00477987    8bf0
                         call               dword ptr [edx + 0xf8]                   // 0x00477989    ff92f8000000
                         {disp8} fld        dword ptr [esi + 0x24]                   // 0x0047798f    d94624
                         {disp8} fld        dword ptr [eax + 0x2c]                   // 0x00477992    d9402c
                         fcompp                                                      // 0x00477995    ded9
                         fnstsw             ax                                       // 0x00477997    dfe0
                         test               ah, 0x01                                 // 0x00477999    f6c401
                         {disp8} je         _jmp_addr_0x004779ad                     // 0x0047799c    740f
                         mov                eax, dword ptr [edi]                     // 0x0047799e    8b07
                         mov.s              ecx, edi                                 // 0x004779a0    8bcf
                         call               dword ptr [eax + 0xf8]                   // 0x004779a2    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                   // 0x004779a8    d94024
                         {disp8} jmp        _jmp_addr_0x004779ba                     // 0x004779ab    eb0d
_jmp_addr_0x004779ad:    mov                edx, dword ptr [edi]                     // 0x004779ad    8b17
                         mov.s              ecx, edi                                 // 0x004779af    8bcf
                         call               dword ptr [edx + 0xf8]                   // 0x004779b1    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                   // 0x004779b7    d9402c
_jmp_addr_0x004779ba:    {disp8} fmul       dword ptr [esp + 0x38]                   // 0x004779ba    d84c2438
                         push               ecx                                      // 0x004779be    51
                         {disp8} fadd       dword ptr [esp + 0x18]                   // 0x004779bf    d8442418
                         fstp               dword ptr [esp]                          // 0x004779c3    d91c24
                         push               ebp                                      // 0x004779c6    55
                         call               _jmp_addr_0x0074d380                     // 0x004779c7    e8b4592d00
                         {disp8} fsubr      dword ptr [esp + 0x28]                   // 0x004779cc    d86c2428
                         {disp8} mov        eax, dword ptr [esp + 0x3c]              // 0x004779d0    8b44243c
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x004779d4    d944242c
                         add                esp, 0x08                                // 0x004779d8    83c408
                         fstp               dword ptr [eax]                          // 0x004779db    d918
                         pop                edi                                      // 0x004779dd    5f
                         pop                esi                                      // 0x004779de    5e
                         {disp8} fstp       dword ptr [eax + 0x08]                   // 0x004779df    d95808
                         pop                ebp                                      // 0x004779e2    5d
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000       // 0x004779e3    c7400400000000
                         pop                ebx                                      // 0x004779ea    5b
                         add                esp, 0x20                                // 0x004779eb    83c420
                         ret                0x0008                                   // 0x004779ee    c20800
                         nop                                                         // 0x004779f1    90
                         nop                                                         // 0x004779f2    90
                         nop                                                         // 0x004779f3    90
                         nop                                                         // 0x004779f4    90
                         nop                                                         // 0x004779f5    90
                         nop                                                         // 0x004779f6    90
                         nop                                                         // 0x004779f7    90
                         nop                                                         // 0x004779f8    90
                         nop                                                         // 0x004779f9    90
                         nop                                                         // 0x004779fa    90
                         nop                                                         // 0x004779fb    90
                         nop                                                         // 0x004779fc    90
                         nop                                                         // 0x004779fd    90
                         nop                                                         // 0x004779fe    90
                         nop                                                         // 0x004779ff    90
_jmp_addr_0x00477a00:    push               esi                                      // 0x00477a00    56
                         mov.s              esi, ecx                                 // 0x00477a01    8bf1
                         call               _jmp_addr_0x004775d0                     // 0x00477a03    e8c8fbffff
                         test               eax, eax                                 // 0x00477a08    85c0
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]        // 0x00477a0a    8b8664010000
                         {disp8} je         _jmp_addr_0x00477a48                     // 0x00477a10    7436
                         {disp32} mov       ecx, dword ptr [eax + 0x00018c48]        // 0x00477a12    8b88488c0100
                         add                eax, 0x00018c40                          // 0x00477a18    05408c0100
                         inc                ecx                                      // 0x00477a1d    41
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x00477a1e    894808
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]        // 0x00477a21    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00018c50]        // 0x00477a27    8b88508c0100
                         add                eax, 0x00018c40                          // 0x00477a2d    05408c0100
                         inc                ecx                                      // 0x00477a32    41
                         {disp8} mov        dword ptr [eax + 0x10], ecx              // 0x00477a33    894810
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]        // 0x00477a36    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00018c4c], 0x00000000 // 0x00477a3c    c7804c8c010000000000
                         {disp8} jmp        _jmp_addr_0x00477a67                     // 0x00477a46    eb1f
_jmp_addr_0x00477a48:    {disp32} mov       ecx, dword ptr [eax + 0x00018c4c]        // 0x00477a48    8b884c8c0100
                         add                eax, 0x00018c40                          // 0x00477a4e    05408c0100
                         inc                ecx                                      // 0x00477a53    41
                         {disp8} mov        dword ptr [eax + 0x0c], ecx              // 0x00477a54    89480c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477a57    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00018c48], 0x00000000 // 0x00477a5d    c781488c010000000000
_jmp_addr_0x00477a67:    {disp32} mov       eax, dword ptr [esi + 0x00000164]        // 0x00477a67    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00018c54]        // 0x00477a6d    8b88548c0100
                         add                eax, 0x00018c40                          // 0x00477a73    05408c0100
                         inc                ecx                                      // 0x00477a78    41
                         {disp8} mov        dword ptr [eax + 0x14], ecx              // 0x00477a79    894814
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477a7c    8b8e64010000
                         add                ecx, 0x00018c80                          // 0x00477a82    81c1808c0100
                         call               _jmp_addr_0x004c7eb0                     // 0x00477a88    e823040500
                         pop                esi                                      // 0x00477a8d    5e
                         ret                                                         // 0x00477a8e    c3
                         nop                                                         // 0x00477a8f    90
                         sub                esp, 0x08                                // 0x00477a90    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00477a93    8b44240c
                         {disp8} mov        dword ptr [esp + 0x00], eax              // 0x00477a97    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000       // 0x00477a9b    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                   // 0x00477aa3    df6c2400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]         // 0x00477aa7    d80d18c48a00
                         add                esp, 0x08                                // 0x00477aad    83c408
                         ret                0x0004                                   // 0x00477ab0    c20400
                         nop                                                         // 0x00477ab3    90
                         nop                                                         // 0x00477ab4    90
                         nop                                                         // 0x00477ab5    90
                         nop                                                         // 0x00477ab6    90
                         nop                                                         // 0x00477ab7    90
                         nop                                                         // 0x00477ab8    90
                         nop                                                         // 0x00477ab9    90
                         nop                                                         // 0x00477aba    90
                         nop                                                         // 0x00477abb    90
                         nop                                                         // 0x00477abc    90
                         nop                                                         // 0x00477abd    90
                         nop                                                         // 0x00477abe    90
                         nop                                                         // 0x00477abf    90
?GetMovementDirection@Creature@@UAEXPAULHPoint@@@Z:
                         push               ecx                                      // 0x00477ac0    51
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]        // 0x00477ac1    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]              // 0x00477ac7    8b4858
                         {disp32} mov       edx, dword ptr [ecx + 0x00000084]        // 0x00477aca    8b9184000000
                         push               esi                                      // 0x00477ad0    56
                         mov.s              eax, edx                                 // 0x00477ad1    8bc2
                         push               edi                                      // 0x00477ad3    57
                         push               eax                                      // 0x00477ad4    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx              // 0x00477ad5    8954240c
                         call               _jmp_addr_0x0074e290                     // 0x00477ad9    e8b2672d00
                         push               0x41200000                               // 0x00477ade    6800002041
                         mov.s              esi, eax                                 // 0x00477ae3    8bf0
                         push               esi                                      // 0x00477ae5    56
                         call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z                     // 0x00477ae6    e835592d00
                         {disp8} mov        edi, dword ptr [esp + 0x1c]              // 0x00477aeb    8b7c241c
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x00477aef    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                   // 0x00477af3    db442414
                         push               0x41200000                               // 0x00477af7    6800002041
                         push               esi                                      // 0x00477afc    56
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000       // 0x00477afd    c7470400000000
                         fstp               dword ptr [edi]                          // 0x00477b04    d91f
                         call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z                     // 0x00477b06    e815592d00
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00477b0b    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                   // 0x00477b0f    db442424
                         add                esp, 0x14                                // 0x00477b13    83c414
                         {disp8} fstp       dword ptr [edi + 0x08]                   // 0x00477b16    d95f08
                         pop                edi                                      // 0x00477b19    5f
                         pop                esi                                      // 0x00477b1a    5e
                         pop                ecx                                      // 0x00477b1b    59
                         ret                0x0004                                   // 0x00477b1c    c20400
                         nop                                                         // 0x00477b1f    90
_jmp_addr_0x00477b20:    sub                esp, 0x1c                                // 0x00477b20    83ec1c
                         push               esi                                      // 0x00477b23    56
                         mov.s              esi, ecx                                 // 0x00477b24    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00477b26    8b06
                         call               dword ptr [eax + 0x1c]                   // 0x00477b28    ff501c
                         test               eax, eax                                 // 0x00477b2b    85c0
                         {disp32} je        _jmp_addr_0x00477c3c                     // 0x00477b2d    0f8409010000
                         mov                edx, dword ptr [esi]                     // 0x00477b33    8b16
                         push               edi                                      // 0x00477b35    57
                         mov.s              ecx, esi                                 // 0x00477b36    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00477b38    ff521c
                         test               eax, eax                                 // 0x00477b3b    85c0
                         {disp32} je        _jmp_addr_0x00477bcc                     // 0x00477b3d    0f8489000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477b43    8b8660010000
                         {disp8} mov        edi, dword ptr [eax + 0x58]              // 0x00477b49    8b7858
                         mov.s              ecx, esi                                 // 0x00477b4c    8bce
                         add                edi, 0x78                                // 0x00477b4e    83c778
                         call               _jmp_addr_0x0047d640                     // 0x00477b51    e8ea5a0000
                         {disp32} fld       dword ptr [eax + 0x000000b0]             // 0x00477b56    d980b0000000
                         fsub               dword ptr [edi]                          // 0x00477b5c    d827
                         add                eax, 0x000000b0                          // 0x00477b5e    05b0000000
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00477b63    d95c240c
                         {disp8} fld        dword ptr [eax + 0x04]                   // 0x00477b67    d94004
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x00477b6a    8b4c240c
                         {disp8} fsub       dword ptr [edi + 0x04]                   // 0x00477b6e    d86704
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00477b71    d95c2410
                         {disp8} fld        dword ptr [eax + 0x08]                   // 0x00477b75    d94008
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x00477b78    8b542410
                         {disp8} fsub       dword ptr [edi + 0x08]                   // 0x00477b7c    d86708
                         {disp8} mov        dword ptr [esp + 0x18], ecx              // 0x00477b7f    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx              // 0x00477b83    8954241c
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00477b87    d95c2414
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00477b8b    d944240c
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00477b8f    8b442414
                         fabs                                                        // 0x00477b93    d9e1
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00477b95    89442420
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]        // 0x00477b99    dc1d107a8c00
                         fnstsw             ax                                       // 0x00477b9f    dfe0
                         test               ah, 0x41                                 // 0x00477ba1    f6c441
                         {disp8} je         _jmp_addr_0x00477bb9                     // 0x00477ba4    7413
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00477ba6    d9442414
                         fabs                                                        // 0x00477baa    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]        // 0x00477bac    dc1d107a8c00
                         fnstsw             ax                                       // 0x00477bb2    dfe0
                         test               ah, 0x41                                 // 0x00477bb4    f6c441
                         {disp8} jne        _jmp_addr_0x00477bfe                     // 0x00477bb7    7545
_jmp_addr_0x00477bb9:    {disp8} lea        ecx, dword ptr [esp + 0x18]              // 0x00477bb9    8d4c2418
                         push               ecx                                      // 0x00477bbd    51
                         call               _jmp_addr_0x007faa50                     // 0x00477bbe    e88d2e3800
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00477bc3    d95c240c
                         add                esp, 0x04                                // 0x00477bc7    83c404
                         {disp8} jmp        _jmp_addr_0x00477c06                     // 0x00477bca    eb3a
_jmp_addr_0x00477bcc:    {disp8} mov        edx, dword ptr [esi + 0x1c]              // 0x00477bcc    8b561c
                         {disp8} lea        edi, dword ptr [esi + 0x14]              // 0x00477bcf    8d7e14
                         mov.s              ecx, edi                                 // 0x00477bd2    8bcf
                         {disp8} mov        dword ptr [esp + 0x08], edx              // 0x00477bd4    89542408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x00477bd8    e8b3b43800
                         {disp8} fadd       dword ptr [esp + 0x08]                   // 0x00477bdd    d8442408
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00477be1    d95c241c
                         fild               dword ptr [edi]                          // 0x00477be5    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x00477be7    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00477bed    d95c2418
                         {disp8} fild       dword ptr [edi + 0x04]                   // 0x00477bf1    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]                // 0x00477bf4    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x00477bfa    d95c2420
_jmp_addr_0x00477bfe:    {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00477bfe    c744240800000000
_jmp_addr_0x00477c06:    {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477c06    8b8660010000
                         {disp8} mov        eax, dword ptr [eax + 0x58]              // 0x00477c0c    8b4058
                         xor.s              ecx, ecx                                 // 0x00477c0f    33c9
                         add                eax, 0x000048c0                          // 0x00477c11    05c0480000
                         {disp8} mov        dword ptr [eax + 0x08], ecx              // 0x00477c16    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx              // 0x00477c19    894804
                         mov                dword ptr [eax], ecx                     // 0x00477c1c    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x00477c1e    8b4c2408
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]        // 0x00477c22    8b9660010000
                         push               ecx                                      // 0x00477c28    51
                         {disp8} mov        ecx, dword ptr [edx + 0x58]              // 0x00477c29    8b4a58
                         call               _jmp_addr_0x0048f7b0                     // 0x00477c2c    e87f7b0100
                         {disp32} mov       dword ptr [esi + 0x000003cc], 0x00000001 // 0x00477c31    c786cc03000001000000
                         pop                edi                                      // 0x00477c3b    5f
_jmp_addr_0x00477c3c:    pop                esi                                      // 0x00477c3c    5e
                         add                esp, 0x1c                                // 0x00477c3d    83c41c
                         ret                                                         // 0x00477c40    c3
                         nop                                                         // 0x00477c41    90
                         nop                                                         // 0x00477c42    90
                         nop                                                         // 0x00477c43    90
                         nop                                                         // 0x00477c44    90
                         nop                                                         // 0x00477c45    90
                         nop                                                         // 0x00477c46    90
                         nop                                                         // 0x00477c47    90
                         nop                                                         // 0x00477c48    90
                         nop                                                         // 0x00477c49    90
                         nop                                                         // 0x00477c4a    90
                         nop                                                         // 0x00477c4b    90
                         nop                                                         // 0x00477c4c    90
                         nop                                                         // 0x00477c4d    90
                         nop                                                         // 0x00477c4e    90
                         nop                                                         // 0x00477c4f    90
_jmp_addr_0x00477c50:    sub                esp, 0x70                                // 0x00477c50    83ec70
                         push               esi                                      // 0x00477c53    56
                         mov.s              esi, ecx                                 // 0x00477c54    8bf1
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x00477c56    8d4c2404
                         call               _jmp_addr_0x004e1b40                     // 0x00477c5a    e8e19e0600
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477c5f    8b8e64010000
                         {disp8} lea        eax, dword ptr [esp + 0x04]              // 0x00477c65    8d442404
                         push               eax                                      // 0x00477c69    50
                         call               _jmp_addr_0x004e0410                     // 0x00477c6a    e8a1870600
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00477c6f    d81d98a38a00
                         fnstsw             ax                                       // 0x00477c75    dfe0
                         test               ah, 0x41                                 // 0x00477c77    f6c441
                         {disp8} jne        _jmp_addr_0x00477c82                     // 0x00477c7a    7506
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00477c7c    8b442414
                         {disp8} jmp        _jmp_addr_0x00477c8e                     // 0x00477c80    eb0c
_jmp_addr_0x00477c82:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477c82    8b8e64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000f50]        // 0x00477c88    8b81500f0000
_jmp_addr_0x00477c8e:    cmp                eax, 0x28                                // 0x00477c8e    83f828
                         {disp8} jge        _jmp_addr_0x00477cda                     // 0x00477c91    7d47
                         lea                ecx, dword ptr [eax + eax * 0x4]         // 0x00477c93    8d0c80
                         shl                ecx, 3                                   // 0x00477c96    c1e103
                         {disp32} mov       edx, dword ptr [ecx + 0x00c87868]        // 0x00477c99    8b916878c800
                         test               edx, edx                                 // 0x00477c9f    85d2
                         {disp8} je         _jmp_addr_0x00477cda                     // 0x00477ca1    7437
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]        // 0x00477ca3    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x00001c2c], 0x00000001 // 0x00477ca9    c7822c1c000001000000
                         {disp8} mov        edx, dword ptr [esp + 0x78]              // 0x00477cb3    8b542478
                         mov                dword ptr [edx], eax                     // 0x00477cb7    8902
                         {disp32} mov       esi, dword ptr [ecx + 0x00c8786c]        // 0x00477cb9    8bb16c78c800
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x00477cbf    8d4c240c
                         call               _jmp_addr_0x004f12d0                     // 0x00477cc3    e808960700
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x00477cc8    8d4c2404
                         call               _jmp_addr_0x00436960                     // 0x00477ccc    e88fecfbff
                         mov.s              eax, esi                                 // 0x00477cd1    8bc6
                         pop                esi                                      // 0x00477cd3    5e
                         add                esp, 0x70                                // 0x00477cd4    83c470
                         ret                0x0004                                   // 0x00477cd7    c20400
_jmp_addr_0x00477cda:    {disp8} mov        eax, dword ptr [esp + 0x78]              // 0x00477cda    8b442478
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x00477cde    8d4c240c
                         mov                dword ptr [eax], 0x00000028              // 0x00477ce2    c70028000000
                         call               _jmp_addr_0x004f12d0                     // 0x00477ce8    e8e3950700
                         {disp8} lea        ecx, dword ptr [esp + 0x04]              // 0x00477ced    8d4c2404
                         call               _jmp_addr_0x00436960                     // 0x00477cf1    e86aecfbff
                         xor.s              eax, eax                                 // 0x00477cf6    33c0
                         pop                esi                                      // 0x00477cf8    5e
                         add                esp, 0x70                                // 0x00477cf9    83c470
                         ret                0x0004                                   // 0x00477cfc    c20400
                         nop                                                         // 0x00477cff    90
_jmp_addr_0x00477d00:    push               ecx                                      // 0x00477d00    51
                         push               esi                                      // 0x00477d01    56
                         mov.s              esi, ecx                                 // 0x00477d02    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]        // 0x00477d04    8b8660010000
                         push               edi                                      // 0x00477d0a    57
                         {disp8} mov        edi, dword ptr [eax + 0x58]              // 0x00477d0b    8b7858
                         mov.s              ecx, edi                                 // 0x00477d0e    8bcf
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00477d10    e8bbc50000
                         test               eax, eax                                 // 0x00477d15    85c0
                         {disp8} jne        _jmp_addr_0x00477d67                     // 0x00477d17    754e
                         {disp8} lea        ecx, dword ptr [esp + 0x08]              // 0x00477d19    8d4c2408
                         push               ecx                                      // 0x00477d1d    51
                         mov.s              ecx, esi                                 // 0x00477d1e    8bce
                         call               _jmp_addr_0x00477c50                     // 0x00477d20    e82bffffff
                         push               eax                                      // 0x00477d25    50
                         mov.s              ecx, esi                                 // 0x00477d26    8bce
                         {disp32} mov       dword ptr [esi + 0x000003cc], 0x00000000 // 0x00477d28    c786cc03000000000000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ            // 0x00477d32    e819fbffff
                         mov.s              ecx, eax                                 // 0x00477d37    8bc8
                         call               _jmp_addr_0x004806e0                     // 0x00477d39    e8a2890000
                         mov.s              ecx, edi                                 // 0x00477d3e    8bcf
                         call               _jmp_addr_0x004806c0                     // 0x00477d40    e87b890000
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00477d45    8b442408
                         cmp                eax, 0x28                                // 0x00477d49    83f828
                         {disp8} je         _jmp_addr_0x00477d5e                     // 0x00477d4c    7410
                         push               0x1                                      // 0x00477d4e    6a01
                         push               0x0                                      // 0x00477d50    6a00
                         push               0x0                                      // 0x00477d52    6a00
                         push               eax                                      // 0x00477d54    50
                         push               0x29                                     // 0x00477d55    6a29
                         mov.s              ecx, esi                                 // 0x00477d57    8bce
                         call               _jmp_addr_0x004c9fe0                     // 0x00477d59    e882220500
_jmp_addr_0x00477d5e:    pop                edi                                      // 0x00477d5e    5f
                         mov                eax, 0x00000001                          // 0x00477d5f    b801000000
                         pop                esi                                      // 0x00477d64    5e
                         pop                ecx                                      // 0x00477d65    59
                         ret                                                         // 0x00477d66    c3
_jmp_addr_0x00477d67:    pop                edi                                      // 0x00477d67    5f
                         xor.s              eax, eax                                 // 0x00477d68    33c0
                         pop                esi                                      // 0x00477d6a    5e
                         pop                ecx                                      // 0x00477d6b    59
                         ret                                                         // 0x00477d6c    c3
                         nop                                                         // 0x00477d6d    90
                         nop                                                         // 0x00477d6e    90
                         nop                                                         // 0x00477d6f    90
_jmp_addr_0x00477d70:    xor.s              eax, eax                                 // 0x00477d70    33c0
                         ret                                                         // 0x00477d72    c3
                         nop                                                         // 0x00477d73    90
                         nop                                                         // 0x00477d74    90
                         nop                                                         // 0x00477d75    90
                         nop                                                         // 0x00477d76    90
                         nop                                                         // 0x00477d77    90
                         nop                                                         // 0x00477d78    90
                         nop                                                         // 0x00477d79    90
                         nop                                                         // 0x00477d7a    90
                         nop                                                         // 0x00477d7b    90
                         nop                                                         // 0x00477d7c    90
                         nop                                                         // 0x00477d7d    90
                         nop                                                         // 0x00477d7e    90
                         nop                                                         // 0x00477d7f    90
_jmp_addr_0x00477d80:    push               esi                                      // 0x00477d80    56
                         mov.s              esi, ecx                                 // 0x00477d81    8bf1
                         call               _jmp_addr_0x00477800                     // 0x00477d83    e878faffff
                         test               eax, eax                                 // 0x00477d88    85c0
                         {disp8} je         _jmp_addr_0x00477d98                     // 0x00477d8a    740c
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00477d8c    8b442408
                         push               eax                                      // 0x00477d90    50
                         mov.s              ecx, esi                                 // 0x00477d91    8bce
                         call               _jmp_addr_0x00477da0                     // 0x00477d93    e808000000
_jmp_addr_0x00477d98:    pop                esi                                      // 0x00477d98    5e
                         ret                0x0004                                   // 0x00477d99    c20400
                         nop                                                         // 0x00477d9c    90
                         nop                                                         // 0x00477d9d    90
                         nop                                                         // 0x00477d9e    90
                         nop                                                         // 0x00477d9f    90
_jmp_addr_0x00477da0:    push               esi                                      // 0x00477da0    56
                         push               edi                                      // 0x00477da1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00477da2    8b7c240c
                         mov.s              esi, ecx                                 // 0x00477da6    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]              // 0x00477da8    8b4e28
                         push               edi                                      // 0x00477dab    57
                         call               _jmp_addr_0x00477dd0                     // 0x00477dac    e81f000000
                         push               ecx                                      // 0x00477db1    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]        // 0x00477db2    8b8e64010000
                         fstp               dword ptr [esp]                          // 0x00477db8    d91c24
                         push               edi                                      // 0x00477dbb    57
                         add                ecx, 0x8                                 // 0x00477dbc    83c108
                         call               _jmp_addr_0x004dc3d0                     // 0x00477dbf    e80c460600
                         pop                edi                                      // 0x00477dc4    5f
                         pop                esi                                      // 0x00477dc5    5e
                         ret                0x0004                                   // 0x00477dc6    c20400
                         nop                                                         // 0x00477dc9    90
                         nop                                                         // 0x00477dca    90
                         nop                                                         // 0x00477dcb    90
                         nop                                                         // 0x00477dcc    90
                         nop                                                         // 0x00477dcd    90
                         nop                                                         // 0x00477dce    90
                         nop                                                         // 0x00477dcf    90
_jmp_addr_0x00477dd0:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00477dd0    8b442404
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]  // 0x00477dd4    8d14c500000000
                         sub.s              edx, eax                                 // 0x00477ddb    2bd0
                         shl                edx, 6                                   // 0x00477ddd    c1e206
                         {disp32} fld       dword ptr [edx + 0x00c67ef0]             // 0x00477de0    d982f07ec600
                         {disp32} fmul      dword ptr [ecx + 0x00000290]             // 0x00477de6    d88990020000
                         ret                0x0004                                   // 0x00477dec    c20400
                         nop                                                         // 0x00477def    90
?GetCreatureBeliefListType@Creature@@UAEIXZ:
                         xor.s              eax, eax                                 // 0x00477df0    33c0
                         ret                                                         // 0x00477df2    c3
                         nop                                                         // 0x00477df3    90
                         nop                                                         // 0x00477df4    90
                         nop                                                         // 0x00477df5    90
                         nop                                                         // 0x00477df6    90
                         nop                                                         // 0x00477df7    90
                         nop                                                         // 0x00477df8    90
                         nop                                                         // 0x00477df9    90
                         nop                                                         // 0x00477dfa    90
                         nop                                                         // 0x00477dfb    90
                         nop                                                         // 0x00477dfc    90
                         nop                                                         // 0x00477dfd    90
                         nop                                                         // 0x00477dfe    90
                         nop                                                         // 0x00477dff    90
_jmp_addr_0x00477e00:    {disp32} mov       eax, dword ptr [ecx + 0x00001120]        // 0x00477e00    8b8120110000
                         ret                                                         // 0x00477e06    c3
                         nop                                                         // 0x00477e07    90
                         nop                                                         // 0x00477e08    90
                         nop                                                         // 0x00477e09    90
                         nop                                                         // 0x00477e0a    90
                         nop                                                         // 0x00477e0b    90
                         nop                                                         // 0x00477e0c    90
                         nop                                                         // 0x00477e0d    90
                         nop                                                         // 0x00477e0e    90
                         nop                                                         // 0x00477e0f    90
?GetImpressiveType@Creature@@UAE?AW4IMPRESSIVE_TYPE@@XZ:
                         call               _jmp_addr_0x00477e00                     // 0x00477e10    e8ebffffff
                         mov.s              ecx, eax                                 // 0x00477e15    8bc8
                         shl                ecx, 4                                   // 0x00477e17    c1e104
                         add.s              ecx, eax                                 // 0x00477e1a    03c8
                         shl                ecx, 4                                   // 0x00477e1c    c1e104
                         {disp32} mov       eax, dword ptr [ecx + 0x00c6c4ac]        // 0x00477e1f    8b81acc4c600
                         ret                                                         // 0x00477e25    c3
                         nop                                                         // 0x00477e26    90
                         nop                                                         // 0x00477e27    90
                         nop                                                         // 0x00477e28    90
                         nop                                                         // 0x00477e29    90
                         nop                                                         // 0x00477e2a    90
                         nop                                                         // 0x00477e2b    90
                         nop                                                         // 0x00477e2c    90
                         nop                                                         // 0x00477e2d    90
                         nop                                                         // 0x00477e2e    90
                         nop                                                         // 0x00477e2f    90
?IsObjectTurningTooFastForCameraToFollowSmoothly@Creature@@UAEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]        // 0x00477e30    8b8164010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000f60]        // 0x00477e36    8b80600f0000
                         add                eax, -0x08                               // 0x00477e3c    83c0f8
                         cmp                eax, 0x54                                // 0x00477e3f    83f854
                         {disp8} ja         _jmp_addr_0x00477e59                     // 0x00477e42    7715
                         xor.s              ecx, ecx                                 // 0x00477e44    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00477e64]          // 0x00477e46    8a88647e4700
                         jmp                dword ptr [ecx*4 + 0x477e5c]             // 0x00477e4c    ff248d5c7e4700
                         mov                eax, 0x00000001                          // 0x00477e53    b801000000
                         ret                                                         // 0x00477e58    c3
_jmp_addr_0x00477e59:    xor.s              eax, eax                                 // 0x00477e59    33c0
                         ret                                                         // 0x00477e5b    c3

// Snippet: jmptbl, [0x00477e5c, 0x00477e64)
.byte 0x53, 0x7e, 0x47, 0x00      // 0x00477e5c
.byte 0x59, 0x7e, 0x47, 0x00      // 0x00477e60

// Snippet: ijmptbl, [0x00477e64, 0x00477eb9)
.byte 0x00, 0x01, 0x01, 0x01      // 0x00477e64
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e68
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e6c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e70
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e74
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e78
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e7c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e80
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e84
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e88
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e8c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e90
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e94
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e98
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477e9c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477ea0
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477ea4
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477ea8
.byte 0x01, 0x01, 0x00, 0x01      // 0x00477eac
.byte 0x01, 0x01, 0x01, 0x01      // 0x00477eb0
.byte 0x00, 0x00, 0x00, 0x01      // 0x00477eb4
.byte 0x00                        // 0x00477eb8

// Snippet: db, [0x00477eb9, 0x00477ec0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00477eb9
.byte 0x90, 0x90, 0x90            // 0x00477ebd

