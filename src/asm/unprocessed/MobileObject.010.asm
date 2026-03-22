.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _globl_ct_0x00606ce0
.globl _globl_ct_0x00606d10
.globl _globl_ct_0x00606d40
.globl _globl_ct_0x00606d60

.globl @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28
.globl _jmp_addr_0x00606ed0
.globl ?ToBeDeleted@MobileObject@@UAEXH@Z
.globl ?AddMobileObjectCheckSum@MobileObject@@SAXXZ
.globl _jmp_addr_0x00607000
.globl ?CallVirtualFunctionsForCreation@MobileObject@@UAEXABUMapCoords@@@Z
.globl _jmp_addr_0x006076c0
.globl ?ReactToPhysicsImpact@MobileObject@@UAEXPAVPhysicsObject@@_N@Z
.globl ?CanBecomeAPhysicsObject@MobileObject@@UAEIXZ
.globl ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z
.globl ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z
.globl _InsertMapObjectToCell__12MobileObjectFP7MapCell
.globl ?GetBaseInfo@GSpeedThreshold@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpeedThreshold@@UAEPAXI@Z
.globl ?BlocksTownClearArea@Mobile@@UBE_NXZ
.globl ?GetBaseInfo@GMobileObjectInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGMobileObjectInfo@@UAEPAXI@Z
.globl ?GetHoldType@MobileObject@@UAE?AW4HOLD_TYPE@@XZ
.globl ?GetHoldLoweringMultiplier@MobileObject@@UAEMXZ
.globl ?Create3DObject@MobileObject@@UAEXXZ
.globl ?GetPlayer@MobileObject@@UAEPAVGPlayer@@XZ
.globl ?RemoveMapObjectFromCell@MobileObject@@UAEXPAUMapCell@@@Z
.globl ?SaveObject@MobileObject@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?AddToRoutePlan@MobileObject@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.globl ?GetCreatureBeliefType@MobileObject@@UAEIXZ
.globl ?SetXYZAngles@MobileObject@@UAEXMMM@Z
.globl ?SetXYZAnglesAndScale@MobileObject@@UAEXMMMM@Z
.globl ?GetWorldMatrix@MobileObject@@UAEXPAULHMatrix@@@Z
.globl ?MoveAlongPath@MobileObject@@UAEIXZ
.globl ?GetPhysicsConstantsType@Poo@@UAEIXZ
.globl ?InsertMapObject@Poo@@UAEXXZ
.globl ?IsPoisoned@MobileObject@@UAEIXZ
.globl ?GetPhysicsConstantsType@MobileObject@@UAEIXZ
.globl ?PhysicsEditorCreate@MobileObject@@UAEXH@Z
.globl ?GetScriptObjectType@MobileObject@@UAEIXZ
.globl ?ValidToApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z
.globl ?ApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z
.globl ?GetDefaultResource@MobileObject@@UAEHXZ
.globl ?GetResourceType@MobileObject@@UAE?AW4RESOURCE_TYPE@@XZ

_globl_ct_0x00606ce0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00606ce0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00606ce6    b001
                         test               al, cl                                        // 0x00606ce8    84c8
                         {disp8} jne        .Lbl_addr_0x00606cf4                          // 0x00606cea    7508
                         or.s               cl, al                                        // 0x00606cec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00606cee    880d34c9fa00
.Lbl_addr_0x00606cf4:    {disp32} jmp       .Lbl_addr_0x00606d00                          // 0x00606cf4    e907000000
                         nop                                                              // 0x00606cf9    90
                         nop                                                              // 0x00606cfa    90
                         nop                                                              // 0x00606cfb    90
                         nop                                                              // 0x00606cfc    90
                         nop                                                              // 0x00606cfd    90
                         nop                                                              // 0x00606cfe    90
                         nop                                                              // 0x00606cff    90
.Lbl_addr_0x00606d00:    push               0x00407870                                    // 0x00606d00    6870784000
                         call               _atexit                                       // 0x00606d05    e887ea1b00
                         pop                ecx                                           // 0x00606d0a    59
                         ret                                                              // 0x00606d0b    c3
                         nop                                                              // 0x00606d0c    90
                         nop                                                              // 0x00606d0d    90
                         nop                                                              // 0x00606d0e    90
                         nop                                                              // 0x00606d0f    90
_globl_ct_0x00606d10:    {disp32} jmp       .Lbl_addr_0x00606d20                          // 0x00606d10    e90b000000
                         nop                                                              // 0x00606d15    90
                         nop                                                              // 0x00606d16    90
                         nop                                                              // 0x00606d17    90
                         nop                                                              // 0x00606d18    90
                         nop                                                              // 0x00606d19    90
                         nop                                                              // 0x00606d1a    90
                         nop                                                              // 0x00606d1b    90
                         nop                                                              // 0x00606d1c    90
                         nop                                                              // 0x00606d1d    90
                         nop                                                              // 0x00606d1e    90
                         nop                                                              // 0x00606d1f    90
.Lbl_addr_0x00606d20:    {disp32} fld       dword ptr [rdata_bytes + 0x875c4]             // 0x00606d20    d905c4059300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x875c0]             // 0x00606d26    d80dc0059300
                         {disp32} fstp      dword ptr [data_bytes + 0x372440]             // 0x00606d2c    d91d4084d300
                         ret                                                              // 0x00606d32    c3
                         nop                                                              // 0x00606d33    90
                         nop                                                              // 0x00606d34    90
                         nop                                                              // 0x00606d35    90
                         nop                                                              // 0x00606d36    90
                         nop                                                              // 0x00606d37    90
                         nop                                                              // 0x00606d38    90
                         nop                                                              // 0x00606d39    90
                         nop                                                              // 0x00606d3a    90
                         nop                                                              // 0x00606d3b    90
                         nop                                                              // 0x00606d3c    90
                         nop                                                              // 0x00606d3d    90
                         nop                                                              // 0x00606d3e    90
                         nop                                                              // 0x00606d3f    90
_globl_ct_0x00606d40:    {disp32} jmp       .Lbl_addr_0x00606d50                          // 0x00606d40    e90b000000
                         nop                                                              // 0x00606d45    90
                         nop                                                              // 0x00606d46    90
                         nop                                                              // 0x00606d47    90
                         nop                                                              // 0x00606d48    90
                         nop                                                              // 0x00606d49    90
                         nop                                                              // 0x00606d4a    90
                         nop                                                              // 0x00606d4b    90
                         nop                                                              // 0x00606d4c    90
                         nop                                                              // 0x00606d4d    90
                         nop                                                              // 0x00606d4e    90
                         nop                                                              // 0x00606d4f    90
.Lbl_addr_0x00606d50:    {disp32} mov       dword ptr [data_bytes + 0x37243c], 0xffffffff // 0x00606d50    c7053c84d300ffffffff
                         ret                                                              // 0x00606d5a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00606d5b    e899aadfff
_globl_ct_0x00606d60:    call               .Lbl_addr_0x00606d70                          // 0x00606d60    e80b000000
                         {disp32} jmp       .Lbl_addr_0x00606dc0                          // 0x00606d65    e956000000
                         nop                                                              // 0x00606d6a    90
                         nop                                                              // 0x00606d6b    90
                         nop                                                              // 0x00606d6c    90
                         nop                                                              // 0x00606d6d    90
                         nop                                                              // 0x00606d6e    90
                         nop                                                              // 0x00606d6f    90
.Lbl_addr_0x00606d70:    mov                eax, 0x00d38448                               // 0x00606d70    b84884d300
                         mov                ecx, 0x00000020                               // 0x00606d75    b920000000
                         xor.s              edx, edx                                      // 0x00606d7a    33d2
.att_syntax
.Lbl_addr_0x00606d7c:    movl               $??_7Base@@6B@, (%eax)                        // 0x00606d7c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00606d82    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x00606d85    895008
                         mov                dword ptr [eax], 0x009305cc                   // 0x00606d88    c700cc059300
                         add                eax, 0x00000114                               // 0x00606d8e    0514010000
                         dec                ecx                                           // 0x00606d93    49
                         {disp8} jne        .Lbl_addr_0x00606d7c                          // 0x00606d94    75e6
                         ret                                                              // 0x00606d96    c3
                         nop                                                              // 0x00606d97    90
                         nop                                                              // 0x00606d98    90
                         nop                                                              // 0x00606d99    90
                         nop                                                              // 0x00606d9a    90
                         nop                                                              // 0x00606d9b    90
                         nop                                                              // 0x00606d9c    90
                         nop                                                              // 0x00606d9d    90
                         nop                                                              // 0x00606d9e    90
                         nop                                                              // 0x00606d9f    90
?GetBaseInfo@GMobileObjectInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00606da0    8b442404
                         mov                dword ptr [eax], 0x00000020                   // 0x00606da4    c70020000000
                         mov                eax, 0x00d38448                               // 0x00606daa    b84884d300
                         ret                0x0004                                        // 0x00606daf    c20400
                         nop                                                              // 0x00606db2    90
                         nop                                                              // 0x00606db3    90
                         nop                                                              // 0x00606db4    90
                         nop                                                              // 0x00606db5    90
                         nop                                                              // 0x00606db6    90
                         nop                                                              // 0x00606db7    90
                         nop                                                              // 0x00606db8    90
                         nop                                                              // 0x00606db9    90
                         nop                                                              // 0x00606dba    90
                         nop                                                              // 0x00606dbb    90
                         nop                                                              // 0x00606dbc    90
                         nop                                                              // 0x00606dbd    90
                         nop                                                              // 0x00606dbe    90
                         nop                                                              // 0x00606dbf    90
.Lbl_addr_0x00606dc0:    push               0x00606dd0                                    // 0x00606dc0    68d06d6000
                         call               _atexit                                       // 0x00606dc5    e8c7e91b00
                         pop                ecx                                           // 0x00606dca    59
                         ret                                                              // 0x00606dcb    c3
                         nop                                                              // 0x00606dcc    90
                         nop                                                              // 0x00606dcd    90
                         nop                                                              // 0x00606dce    90
                         nop                                                              // 0x00606dcf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x372438]          // 0x00606dd0    8a0d3884d300
                         mov                al, 0x01                                      // 0x00606dd6    b001
                         test               al, cl                                        // 0x00606dd8    84c8
                         {disp8} jne        .Lbl_addr_0x00606e02                          // 0x00606dda    7526
                         push               esi                                           // 0x00606ddc    56
                         or.s               cl, al                                        // 0x00606ddd    0ac8
                         push               edi                                           // 0x00606ddf    57
                         {disp32} mov       byte ptr [data_bytes + 0x372438], cl          // 0x00606de0    880d3884d300
                         mov                esi, 0x00d3a6c8                               // 0x00606de6    bec8a6d300
                         mov                edi, 0x00000020                               // 0x00606deb    bf20000000
.Lbl_addr_0x00606df0:    sub                esi, 0x00000114                               // 0x00606df0    81ee14010000
                         mov.s              ecx, esi                                      // 0x00606df6    8bce
                         call               ??1Base@@UAE@XZ                               // 0x00606df8    e863fbe2ff
                         dec                edi                                           // 0x00606dfd    4f
                         {disp8} jne        .Lbl_addr_0x00606df0                          // 0x00606dfe    75f0
                         pop                edi                                           // 0x00606e00    5f
                         pop                esi                                           // 0x00606e01    5e
.Lbl_addr_0x00606e02:    ret                                                              // 0x00606e02    c3
                         nop                                                              // 0x00606e03    90
                         nop                                                              // 0x00606e04    90
                         nop                                                              // 0x00606e05    90
                         nop                                                              // 0x00606e06    90
                         nop                                                              // 0x00606e07    90
                         nop                                                              // 0x00606e08    90
                         nop                                                              // 0x00606e09    90
                         nop                                                              // 0x00606e0a    90
                         nop                                                              // 0x00606e0b    90
                         nop                                                              // 0x00606e0c    90
                         nop                                                              // 0x00606e0d    90
                         nop                                                              // 0x00606e0e    90
                         nop                                                              // 0x00606e0f    90
??_GGMobileObjectInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x00606e10    56
                         mov.s              esi, ecx                                      // 0x00606e11    8bf1
                         call               ??1Base@@UAE@XZ                               // 0x00606e13    e848fbe2ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00606e18    f644240801
                         {disp8} je         .Lbl_addr_0x00606e2d                          // 0x00606e1d    740e
                         push               0x00000114                                    // 0x00606e1f    6814010000
                         push               esi                                           // 0x00606e24    56
                         call               ??3Base@@SAXPAXI@Z                          // 0x00606e25    e846fbe2ff
                         add                esp, 0x08                                     // 0x00606e2a    83c408
.Lbl_addr_0x00606e2d:    mov.s              eax, esi                                      // 0x00606e2d    8bc6
                         pop                esi                                           // 0x00606e2f    5e
                         ret                0x0004                                        // 0x00606e30    c20400
                         nop                                                              // 0x00606e33    90
                         nop                                                              // 0x00606e34    90
                         nop                                                              // 0x00606e35    90
                         nop                                                              // 0x00606e36    90
                         nop                                                              // 0x00606e37    90
                         nop                                                              // 0x00606e38    90
                         nop                                                              // 0x00606e39    90
                         nop                                                              // 0x00606e3a    90
                         nop                                                              // 0x00606e3b    90
                         nop                                                              // 0x00606e3c    90
                         nop                                                              // 0x00606e3d    90
                         nop                                                              // 0x00606e3e    90
                         nop                                                              // 0x00606e3f    90
@__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00606e40    8b442408
                         push               ebx                                           // 0x00606e44    53
                         push               esi                                           // 0x00606e45    56
                         push               edi                                           // 0x00606e46    57
                         mov.s              esi, ecx                                      // 0x00606e47    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00606e49    8b4c2410
                         push               eax                                           // 0x00606e4d    50
                         push               ecx                                           // 0x00606e4e    51
                         mov.s              ecx, esi                                      // 0x00606e4f    8bce
                         call               @__ct__6ObjectFRC9MapCoordsPC11GObjectInfo@16 // 0x00606e51    e8caf60200
                         push               0x3f800000                                    // 0x00606e56    680000803f
                         mov.s              ecx, esi                                      // 0x00606e5b    8bce
                         mov                dword ptr [esi], 0x008ce750                   // 0x00606e5d    c70650e78c00
                         call               @SetScale__6ObjectFf@12                       // 0x00606e63    e898230300
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00606e68    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00606e6c    8b542418
                         mov                dword ptr [esi], 0x008eed1c                   // 0x00606e70    c7061ced8e00
                         push               eax                                           // 0x00606e76    50
                         mov.s              ecx, esi                                      // 0x00606e77    8bce
                         {disp8} mov        dword ptr [esi + 0x58], edx                   // 0x00606e79    895658
                         call               @SetYAngle__6ObjectFf@12                      // 0x00606e7c    e8df230300
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00606e81    8b4c2420
                         xor.s              ebx, ebx                                      // 0x00606e85    33db
                         push               ecx                                           // 0x00606e87    51
                         mov.s              ecx, esi                                      // 0x00606e88    8bce
                         {disp8} mov        dword ptr [esi + 0x60], ebx                   // 0x00606e8a    895e60
                         {disp8} mov        dword ptr [esi + 0x5c], ebx                   // 0x00606e8d    895e5c
                         call               @SetScale__6ObjectFf@12                       // 0x00606e90    e86b230300
                         cmp.s              esi, ebx                                      // 0x00606e95    3bf3
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00606e97    8b155c19d000
                         {disp32} lea       edi, dword ptr [edx + 0x00205be4]             // 0x00606e9d    8dbae45b2000
                         {disp8} je         .Lbl_addr_0x00606ebf                          // 0x00606ea3    741a
                         push               0x8                                           // 0x00606ea5    6a08
                         call               ??2@YAPAXI@Z                                  // 0x00606ea7    e842f61b00
                         add                esp, 0x04                                     // 0x00606eac    83c404
                         cmp.s              eax, ebx                                      // 0x00606eaf    3bc3
                         {disp8} je         .Lbl_addr_0x00606ebf                          // 0x00606eb1    740c
                         mov                ecx, dword ptr [edi]                          // 0x00606eb3    8b0f
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00606eb5    897004
                         mov                dword ptr [eax], ecx                          // 0x00606eb8    8908
                         mov                dword ptr [edi], eax                          // 0x00606eba    8907
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x00606ebc    ff4704
.Lbl_addr_0x00606ebf:    pop                edi                                           // 0x00606ebf    5f
                         {disp8} mov        dword ptr [esi + 0x64], ebx                   // 0x00606ec0    895e64
                         mov.s              eax, esi                                      // 0x00606ec3    8bc6
                         pop                esi                                           // 0x00606ec5    5e
                         pop                ebx                                           // 0x00606ec6    5b
                         ret                0x0014                                        // 0x00606ec7    c21400
                         call               dword ptr [__imp__GetLocaleInfoW@16]          // 0x00606eca    ff1560928a00
_jmp_addr_0x00606ed0:    push               esi                                           // 0x00606ed0    56
                         mov.s              esi, ecx                                      // 0x00606ed1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x00606ed3    8b4e64
                         test               ecx, ecx                                      // 0x00606ed6    85c9
                         mov                dword ptr [esi], 0x008eed1c                   // 0x00606ed8    c7061ced8e00
                         {disp8} je         .Lbl_addr_0x00606ee7                          // 0x00606ede    7407
                         mov                eax, dword ptr [ecx]                          // 0x00606ee0    8b01
                         push               0x1                                           // 0x00606ee2    6a01
                         call               dword ptr [eax + 4]                           // 0x00606ee4    ff5004
.Lbl_addr_0x00606ee7:    mov.s              ecx, esi                                      // 0x00606ee7    8bce
                         mov                dword ptr [esi], 0x008ce750                   // 0x00606ee9    c70650e78c00
                         call               _jmp_addr_0x00636640                          // 0x00606eef    e84cf70200
                         pop                esi                                           // 0x00606ef4    5e
                         ret                                                              // 0x00606ef5    c3
                         nop                                                              // 0x00606ef6    90
                         nop                                                              // 0x00606ef7    90
                         nop                                                              // 0x00606ef8    90
                         nop                                                              // 0x00606ef9    90
                         nop                                                              // 0x00606efa    90
                         nop                                                              // 0x00606efb    90
                         nop                                                              // 0x00606efc    90
                         nop                                                              // 0x00606efd    90
                         nop                                                              // 0x00606efe    90
                         nop                                                              // 0x00606eff    90
?ToBeDeleted@MobileObject@@UAEXH@Z:
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00606f00    a15c19d000
                         push               ebx                                           // 0x00606f05    53
                         push               ebp                                           // 0x00606f06    55
                         push               esi                                           // 0x00606f07    56
                         {disp32} lea       esi, dword ptr [eax + 0x00205be4]             // 0x00606f08    8db0e45b2000
                         mov                eax, dword ptr [esi]                          // 0x00606f0e    8b06
                         xor.s              ebx, ebx                                      // 0x00606f10    33db
                         test               eax, eax                                      // 0x00606f12    85c0
                         push               edi                                           // 0x00606f14    57
                         mov.s              ebp, ecx                                      // 0x00606f15    8be9
                         {disp8} je         .Lbl_addr_0x00606f44                          // 0x00606f17    742b
.Lbl_addr_0x00606f19:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00606f19    396804
                         mov                edi, dword ptr [eax]                          // 0x00606f1c    8b38
                         {disp8} jne        .Lbl_addr_0x00606f3c                          // 0x00606f1e    751c
                         cmp                eax, dword ptr [esi]                          // 0x00606f20    3b06
                         {disp8} jne        .Lbl_addr_0x00606f28                          // 0x00606f22    7504
                         mov                dword ptr [esi], edi                          // 0x00606f24    893e
                         {disp8} jmp        .Lbl_addr_0x00606f2a                          // 0x00606f26    eb02
.Lbl_addr_0x00606f28:    mov                dword ptr [ebx], edi                          // 0x00606f28    893b
.Lbl_addr_0x00606f2a:    {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00606f2a    8b5604
                         dec                edx                                           // 0x00606f2d    4a
                         push               eax                                           // 0x00606f2e    50
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x00606f2f    895604
                         call               ??3@YAXPAX@Z                                  // 0x00606f32    e8617f1a00
                         add                esp, 0x04                                     // 0x00606f37    83c404
                         {disp8} jmp        .Lbl_addr_0x00606f3e                          // 0x00606f3a    eb02
.Lbl_addr_0x00606f3c:    mov.s              ebx, eax                                      // 0x00606f3c    8bd8
.Lbl_addr_0x00606f3e:    test               edi, edi                                      // 0x00606f3e    85ff
                         mov.s              eax, edi                                      // 0x00606f40    8bc7
                         {disp8} jne        .Lbl_addr_0x00606f19                          // 0x00606f42    75d5
.Lbl_addr_0x00606f44:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00606f44    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205cd4]             // 0x00606f4a    8b81d45c2000
                         test               eax, eax                                      // 0x00606f50    85c0
                         {disp32} lea       edi, dword ptr [ecx + 0x00205cd4]             // 0x00606f52    8db9d45c2000
                         {disp8} je         .Lbl_addr_0x00606fab                          // 0x00606f58    7451
.Lbl_addr_0x00606f5a:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00606f5a    396804
                         {disp8} je         .Lbl_addr_0x00606f78                          // 0x00606f5d    7419
                         mov                eax, dword ptr [eax]                          // 0x00606f5f    8b00
                         test               eax, eax                                      // 0x00606f61    85c0
                         {disp8} jne        .Lbl_addr_0x00606f5a                          // 0x00606f63    75f5
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00606f65    8b542414
                         push               edx                                           // 0x00606f69    52
                         mov.s              ecx, ebp                                      // 0x00606f6a    8bcd
                         call               ?ToBeDeleted@Object@@UAEXH@Z                  // 0x00606f6c    e8fff60200
                         pop                edi                                           // 0x00606f71    5f
                         pop                esi                                           // 0x00606f72    5e
                         pop                ebp                                           // 0x00606f73    5d
                         pop                ebx                                           // 0x00606f74    5b
                         ret                0x0004                                        // 0x00606f75    c20400
.Lbl_addr_0x00606f78:    mov                eax, dword ptr [edi]                          // 0x00606f78    8b07
                         xor.s              ebx, ebx                                      // 0x00606f7a    33db
                         test               eax, eax                                      // 0x00606f7c    85c0
                         {disp8} je         .Lbl_addr_0x00606fab                          // 0x00606f7e    742b
.Lbl_addr_0x00606f80:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00606f80    396804
                         mov                esi, dword ptr [eax]                          // 0x00606f83    8b30
                         {disp8} jne        .Lbl_addr_0x00606fa3                          // 0x00606f85    751c
                         cmp                eax, dword ptr [edi]                          // 0x00606f87    3b07
                         {disp8} jne        .Lbl_addr_0x00606f8f                          // 0x00606f89    7504
                         mov                dword ptr [edi], esi                          // 0x00606f8b    8937
                         {disp8} jmp        .Lbl_addr_0x00606f91                          // 0x00606f8d    eb02
.Lbl_addr_0x00606f8f:    mov                dword ptr [ebx], esi                          // 0x00606f8f    8933
.Lbl_addr_0x00606f91:    {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x00606f91    8b5704
                         dec                edx                                           // 0x00606f94    4a
                         push               eax                                           // 0x00606f95    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x00606f96    895704
                         call               ??3@YAXPAX@Z                                  // 0x00606f99    e8fa7e1a00
                         add                esp, 0x04                                     // 0x00606f9e    83c404
                         {disp8} jmp        .Lbl_addr_0x00606fa5                          // 0x00606fa1    eb02
.Lbl_addr_0x00606fa3:    mov.s              ebx, eax                                      // 0x00606fa3    8bd8
.Lbl_addr_0x00606fa5:    test               esi, esi                                      // 0x00606fa5    85f6
                         mov.s              eax, esi                                      // 0x00606fa7    8bc6
                         {disp8} jne        .Lbl_addr_0x00606f80                          // 0x00606fa9    75d5
.Lbl_addr_0x00606fab:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00606fab    8b542414
                         push               edx                                           // 0x00606faf    52
                         mov.s              ecx, ebp                                      // 0x00606fb0    8bcd
                         call               ?ToBeDeleted@Object@@UAEXH@Z                  // 0x00606fb2    e8b9f60200
                         pop                edi                                           // 0x00606fb7    5f
                         pop                esi                                           // 0x00606fb8    5e
                         pop                ebp                                           // 0x00606fb9    5d
                         pop                ebx                                           // 0x00606fba    5b
                         ret                0x0004                                        // 0x00606fbb    c20400
                         nop                                                              // 0x00606fbe    90
                         nop                                                              // 0x00606fbf    90
?AddMobileObjectCheckSum@MobileObject@@SAXXZ:
                                               {disp32} mov       eax, dword ptr [_game]                        // 0x00606fc0    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205be4]             // 0x00606fc5    8b80e45b2000
                         test               eax, eax                                      // 0x00606fcb    85c0
                         {disp8} je         .Lbl_addr_0x00606ff0                          // 0x00606fcd    7421
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3746c8]        // 0x00606fcf    8b0dc8a6d300
.Lbl_addr_0x00606fd5:    {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00606fd5    8b5004
                         add                ecx, dword ptr [edx + 0x14]                   // 0x00606fd8    034a14
                         {disp32} mov       dword ptr [data_bytes + 0x3746c8], ecx        // 0x00606fdb    890dc8a6d300
                         add                ecx, dword ptr [edx + 0x18]                   // 0x00606fe1    034a18
                         {disp32} mov       dword ptr [data_bytes + 0x3746c8], ecx        // 0x00606fe4    890dc8a6d300
                         mov                eax, dword ptr [eax]                          // 0x00606fea    8b00
                         test               eax, eax                                      // 0x00606fec    85c0
                         {disp8} jne        .Lbl_addr_0x00606fd5                          // 0x00606fee    75e5
.Lbl_addr_0x00606ff0:    ret                                                              // 0x00606ff0    c3
                         nop                                                              // 0x00606ff1    90
                         nop                                                              // 0x00606ff2    90
                         nop                                                              // 0x00606ff3    90
                         nop                                                              // 0x00606ff4    90
                         nop                                                              // 0x00606ff5    90
                         nop                                                              // 0x00606ff6    90
                         nop                                                              // 0x00606ff7    90
                         nop                                                              // 0x00606ff8    90
                         nop                                                              // 0x00606ff9    90
                         nop                                                              // 0x00606ffa    90
                         nop                                                              // 0x00606ffb    90
                         nop                                                              // 0x00606ffc    90
                         nop                                                              // 0x00606ffd    90
                         nop                                                              // 0x00606ffe    90
                         nop                                                              // 0x00606fff    90
_jmp_addr_0x00607000:    push               esi                                           // 0x00607000    56
                         push               edi                                           // 0x00607001    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00607002    8b7c2410
                         cmp                edi, 0x00d389ac                               // 0x00607006    81ffac89d300
                         {disp8} jne        .Lbl_addr_0x0060704d                          // 0x0060700c    753f
                         push               0x61                                          // 0x0060700e    6a61
                         push               0x00bf4238                                    // 0x00607010    683842bf00
                         push               0x68                                          // 0x00607015    6a68
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x00607017    e8d4f6e2ff
                         mov.s              esi, eax                                      // 0x0060701c    8bf0
                         add                esp, 0x0c                                     // 0x0060701e    83c40c
                         test               esi, esi                                      // 0x00607021    85f6
                         {disp32} je        .Lbl_addr_0x00607119                          // 0x00607023    0f84f0000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00607029    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0060702d    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00607031    8b542414
                         push               eax                                           // 0x00607035    50
                         push               ecx                                           // 0x00607036    51
                         push               edx                                           // 0x00607037    52
                         push               edi                                           // 0x00607038    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00607039    8b7c241c
                         push               edi                                           // 0x0060703d    57
                         mov.s              ecx, esi                                      // 0x0060703e    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x00607040    e8fbfdffff
                         mov                dword ptr [esi], 0x008e3778                   // 0x00607045    c70678378e00
                         {disp8} jmp        .Lbl_addr_0x0060708f                          // 0x0060704b    eb42
.Lbl_addr_0x0060704d:    {disp32} mov       eax, dword ptr [edi + 0x00000104]             // 0x0060704d    8b8704010000
                         cmp                eax, 0x0f                                     // 0x00607053    83f80f
                         {disp8} jne        .Lbl_addr_0x006070a3                          // 0x00607056    754b
                         push               0x65                                          // 0x00607058    6a65
                         push               0x00bf4238                                    // 0x0060705a    683842bf00
                         push               0x68                                          // 0x0060705f    6a68
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x00607061    e88af6e2ff
                         add                esp, 0x0c                                     // 0x00607066    83c40c
                         test               eax, eax                                      // 0x00607069    85c0
                         {disp32} je        .Lbl_addr_0x00607119                          // 0x0060706b    0f84a8000000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00607071    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00607075    8b542418
                         push               ecx                                           // 0x00607079    51
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0060707a    8b4c2418
                         push               edx                                           // 0x0060707e    52
                         push               ecx                                           // 0x0060707f    51
                         push               edi                                           // 0x00607080    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00607081    8b7c241c
                         push               edi                                           // 0x00607085    57
                         mov.s              ecx, eax                                      // 0x00607086    8bc8
                         call               _jmp_addr_0x00607dd0                          // 0x00607088    e8430d0000
.Lbl_addr_0x0060708d:    mov.s              esi, eax                                      // 0x0060708d    8bf0
.Lbl_addr_0x0060708f:    test               esi, esi                                      // 0x0060708f    85f6
                         {disp8} je         .Lbl_addr_0x0060709e                          // 0x00607091    740b
                         mov                eax, dword ptr [esi]                          // 0x00607093    8b06
                         push               edi                                           // 0x00607095    57
                         mov.s              ecx, esi                                      // 0x00607096    8bce
                         call               dword ptr [eax + 0x658]                       // 0x00607098    ff9058060000
.Lbl_addr_0x0060709e:    pop                edi                                           // 0x0060709e    5f
                         mov.s              eax, esi                                      // 0x0060709f    8bc6
                         pop                esi                                           // 0x006070a1    5e
                         ret                                                              // 0x006070a2    c3
.Lbl_addr_0x006070a3:    cmp                eax, 0x15                                     // 0x006070a3    83f815
                         {disp8} jne        .Lbl_addr_0x006070e3                          // 0x006070a6    753b
                         push               0x69                                          // 0x006070a8    6a69
                         push               0x00bf4238                                    // 0x006070aa    683842bf00
                         push               0x6c                                          // 0x006070af    6a6c
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x006070b1    e83af6e2ff
                         mov.s              esi, eax                                      // 0x006070b6    8bf0
                         add                esp, 0x0c                                     // 0x006070b8    83c40c
                         test               esi, esi                                      // 0x006070bb    85f6
                         {disp8} je         .Lbl_addr_0x00607119                          // 0x006070bd    745a
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006070bf    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006070c3    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006070c7    8b4c2414
                         push               edx                                           // 0x006070cb    52
                         push               eax                                           // 0x006070cc    50
                         push               ecx                                           // 0x006070cd    51
                         push               edi                                           // 0x006070ce    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x006070cf    8b7c241c
                         push               edi                                           // 0x006070d3    57
                         mov.s              ecx, esi                                      // 0x006070d4    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x006070d6    e865fdffff
                         mov                dword ptr [esi], 0x008d1ffc                   // 0x006070db    c706fc1f8d00
                         {disp8} jmp        .Lbl_addr_0x0060708f                          // 0x006070e1    ebac
.Lbl_addr_0x006070e3:    push               0x6d                                          // 0x006070e3    6a6d
                         push               0x00bf4238                                    // 0x006070e5    683842bf00
                         push               0x68                                          // 0x006070ea    6a68
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x006070ec    e8fff5e2ff
                         add                esp, 0x0c                                     // 0x006070f1    83c40c
                         test               eax, eax                                      // 0x006070f4    85c0
                         {disp8} je         .Lbl_addr_0x00607119                          // 0x006070f6    7421
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006070f8    8b54241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x006070fc    8b4c2418
                         push               edx                                           // 0x00607100    52
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00607101    8b542418
                         push               ecx                                           // 0x00607105    51
                         push               edx                                           // 0x00607106    52
                         push               edi                                           // 0x00607107    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00607108    8b7c241c
                         push               edi                                           // 0x0060710c    57
                         mov.s              ecx, eax                                      // 0x0060710d    8bc8
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x0060710f    e82cfdffff
                         {disp32} jmp       .Lbl_addr_0x0060708d                          // 0x00607114    e974ffffff
.Lbl_addr_0x00607119:    pop                edi                                           // 0x00607119    5f
                         xor.s              eax, eax                                      // 0x0060711a    33c0
                         pop                esi                                           // 0x0060711c    5e
                         ret                                                              // 0x0060711d    c3
                         nop                                                              // 0x0060711e    90
                         nop                                                              // 0x0060711f    90
?GetHoldType@MobileObject@@UAE?AW4HOLD_TYPE@@XZ:
                         mov                eax, 0x00000006                               // 0x00607120    b806000000
                         ret                                                              // 0x00607125    c3
                         nop                                                              // 0x00607126    90
                         nop                                                              // 0x00607127    90
                         nop                                                              // 0x00607128    90
                         nop                                                              // 0x00607129    90
                         nop                                                              // 0x0060712a    90
                         nop                                                              // 0x0060712b    90
                         nop                                                              // 0x0060712c    90
                         nop                                                              // 0x0060712d    90
                         nop                                                              // 0x0060712e    90
                         nop                                                              // 0x0060712f    90
?GetHoldLoweringMultiplier@MobileObject@@UAEMXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00607130    8b01
                         call               dword ptr [eax + 0x58c]                       // 0x00607132    ff908c050000
                         cmp                eax, 0x06                                     // 0x00607138    83f806
                         {disp8} jne        .Lbl_addr_0x00607144                          // 0x0060713b    7507
                         {disp32} fld       dword ptr [__real@3f333333]                   // 0x0060713d    d90538b28a00
                         ret                                                              // 0x00607143    c3
.Lbl_addr_0x00607144:    {disp32} fld       dword ptr [rdata_bytes + 0x21284]             // 0x00607144    d90584a28c00
                         ret                                                              // 0x0060714a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060714b    e8a9a6dfff
?CallVirtualFunctionsForCreation@MobileObject@@UAEXABUMapCoords@@@Z:
                         push               esi                                           // 0x00607150    56
                         mov.s              esi, ecx                                      // 0x00607151    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00607153    8b06
                         call               dword ptr [eax + 0x538]                       // 0x00607155    ff9038050000
                         mov                edx, dword ptr [esi]                          // 0x0060715b    8b16
                         mov.s              ecx, esi                                      // 0x0060715d    8bce
                         call               dword ptr [edx + 0x850]                       // 0x0060715f    ff9250080000
                         mov                eax, dword ptr [esi]                          // 0x00607165    8b06
                         mov.s              ecx, esi                                      // 0x00607167    8bce
                         call               dword ptr [eax + 0x608]                       // 0x00607169    ff9008060000
                         test               eax, eax                                      // 0x0060716f    85c0
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAUPack@1@A]        // 0x00607171    8b1534fee900
                         {disp8} jl         .Lbl_addr_0x0060717d                          // 0x00607177    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00607179    3b02
                         {disp8} jl         .Lbl_addr_0x0060717f                          // 0x0060717b    7c02
.Lbl_addr_0x0060717d:    xor.s              eax, eax                                      // 0x0060717d    33c0
.Lbl_addr_0x0060717f:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0060717f    8b4e40
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00607182    8b548204
                         push               edi                                           // 0x00607186    57
                         mov                edi, dword ptr [ecx]                          // 0x00607187    8b39
                         push               0x0                                           // 0x00607189    6a00
                         push               0x0                                           // 0x0060718b    6a00
                         call               dword ptr [edi + 0xf4]                        // 0x0060718d    ff97f4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00607193    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x00607196    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x00607198    ff92f8000000
                         or                 dword ptr [eax + 4], 0x4000                   // 0x0060719e    81480400400000
                         mov                eax, dword ptr [esi]                          // 0x006071a5    8b06
                         mov.s              ecx, esi                                      // 0x006071a7    8bce
                         call               dword ptr [eax + 0x120]                       // 0x006071a9    ff9020010000
                         mov                edx, dword ptr [esi]                          // 0x006071af    8b16
                         push               ecx                                           // 0x006071b1    51
                         mov.s              ecx, esi                                      // 0x006071b2    8bce
                         fstp               dword ptr [esp]                               // 0x006071b4    d91c24
                         call               dword ptr [edx + 0x50c]                       // 0x006071b7    ff920c050000
                         mov                eax, dword ptr [esi]                          // 0x006071bd    8b06
                         push               ecx                                           // 0x006071bf    51
                         mov.s              ecx, esi                                      // 0x006071c0    8bce
                         fstp               dword ptr [esp]                               // 0x006071c2    d91c24
                         call               dword ptr [eax + 0x508]                       // 0x006071c5    ff9008050000
                         mov                edx, dword ptr [esi]                          // 0x006071cb    8b16
                         push               ecx                                           // 0x006071cd    51
                         mov.s              ecx, esi                                      // 0x006071ce    8bce
                         fstp               dword ptr [esp]                               // 0x006071d0    d91c24
                         call               dword ptr [edx + 0x504]                       // 0x006071d3    ff9204050000
                         push               ecx                                           // 0x006071d9    51
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x006071da    8b4e40
                         fstp               dword ptr [esp]                               // 0x006071dd    d91c24
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x006071e0    8d5614
                         call               _jmp_addr_0x0063b680                          // 0x006071e3    e898440300
                         test               byte ptr [esi + 0x24], 0x04                   // 0x006071e8    f6462404
                         pop                edi                                           // 0x006071ec    5f
                         {disp8} jne        .Lbl_addr_0x006071ff                          // 0x006071ed    7510
                         test               byte ptr [esi + 0x0a], 0x11                   // 0x006071ef    f6460a11
                         {disp8} jne        .Lbl_addr_0x006071ff                          // 0x006071f3    750a
                         mov                eax, dword ptr [esi]                          // 0x006071f5    8b06
                         mov.s              ecx, esi                                      // 0x006071f7    8bce
                         call               dword ptr [eax + 0x544]                       // 0x006071f9    ff9044050000
.Lbl_addr_0x006071ff:    pop                esi                                           // 0x006071ff    5e
                         ret                0x0004                                        // 0x00607200    c20400
                         nop                                                              // 0x00607203    90
                         nop                                                              // 0x00607204    90
                         nop                                                              // 0x00607205    90
                         nop                                                              // 0x00607206    90
                         nop                                                              // 0x00607207    90
                         nop                                                              // 0x00607208    90
                         nop                                                              // 0x00607209    90
                         nop                                                              // 0x0060720a    90
                         nop                                                              // 0x0060720b    90
                         nop                                                              // 0x0060720c    90
                         nop                                                              // 0x0060720d    90
                         nop                                                              // 0x0060720e    90
                         nop                                                              // 0x0060720f    90
?Create3DObject@MobileObject@@UAEXXZ:
                         push               esi                                           // 0x00607210    56
                         mov.s              esi, ecx                                      // 0x00607211    8bf1
                         call               @Create3DObject__6ObjectFv@4                  // 0x00607213    e8d8f30200
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00607218    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0060721b    8b01
                         mov                edx, 0x00000001                               // 0x0060721d    ba01000000
                         pop                esi                                           // 0x00607222    5e
                         jmp                dword ptr [eax + 0x80]                        // 0x00607223    ffa080000000
                         nop                                                              // 0x00607229    90
                         nop                                                              // 0x0060722a    90
                         nop                                                              // 0x0060722b    90
                         nop                                                              // 0x0060722c    90
                         nop                                                              // 0x0060722d    90
                         nop                                                              // 0x0060722e    90
                         nop                                                              // 0x0060722f    90
?GetPlayer@MobileObject@@UAEPAVGPlayer@@XZ:
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00607230    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00607236    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x00607238    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0060723e    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00607241    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00607244    8d0450
                         shl                eax, 5                                        // 0x00607247    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0060724a    8d440818
                         ret                                                              // 0x0060724e    c3
                         nop                                                              // 0x0060724f    90
_InsertMapObjectToCell__12MobileObjectFP7MapCell:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00607250    8b442404
                         push               eax                                           // 0x00607254    50
                         call               @InsertMapObjectToCell__6ObjectFP7MapCell@12  // 0x00607255    e8d6f50200
                         ret                0x0004                                        // 0x0060725a    c20400
                         nop                                                              // 0x0060725d    90
                         nop                                                              // 0x0060725e    90
                         nop                                                              // 0x0060725f    90
?RemoveMapObjectFromCell@MobileObject@@UAEXPAUMapCell@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00607260    8b442404
                         push               eax                                           // 0x00607264    50
                         call               @RemoveMapObjectFromCell__6ObjectFP7MapCell@12// 0x00607265    e866f60200
                         ret                0x0004                                        // 0x0060726a    c20400
                         nop                                                              // 0x0060726d    90
                         nop                                                              // 0x0060726e    90
                         nop                                                              // 0x0060726f    90
?SaveObject@MobileObject@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         sub                esp, 0x0000014c                               // 0x00607270    81ec4c010000
                         push               ebx                                           // 0x00607276    53
                         push               ebp                                           // 0x00607277    55
                         push               esi                                           // 0x00607278    56
                         mov.s              ebx, ecx                                      // 0x00607279    8bd9
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x0060727b    e8708cf6ff
                         test               eax, eax                                      // 0x00607280    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00607282    8944240c
                         {disp32} je        .Lbl_addr_0x006073ec                          // 0x00607286    0f8460010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000160]             // 0x0060728c    8b842460010000
                         test               eax, eax                                      // 0x00607293    85c0
                         {disp8} lea        ebp, dword ptr [ebx + 0x14]                   // 0x00607295    8d6b14
                         {disp8} je         .Lbl_addr_0x006072a9                          // 0x00607298    740f
                         push               eax                                           // 0x0060729a    50
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0060729b    8d442424
                         push               eax                                           // 0x0060729f    50
                         mov.s              ecx, ebp                                      // 0x006072a0    8bcd
                         call               _jmp_addr_0x006055c0                          // 0x006072a2    e819e3ffff
                         {disp8} jmp        .Lbl_addr_0x006072ab                          // 0x006072a7    eb02
.Lbl_addr_0x006072a9:    mov.s              eax, ebp                                      // 0x006072a9    8bc5
.Lbl_addr_0x006072ab:    mov                ecx, dword ptr [eax]                          // 0x006072ab    8b08
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006072ad    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006072b1    8b5004
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x006072b4    89542418
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006072b8    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006072bb    8944241c
                         {disp8} mov        eax, dword ptr [ebx + 0x58]                   // 0x006072bf    8b4358
                         test               eax, eax                                      // 0x006072c2    85c0
                         {disp32} jne       .Lbl_addr_0x006073f8                          // 0x006072c4    0f852e010000
                         mov                edx, dword ptr [ebx]                          // 0x006072ca    8b13
                         push               edi                                           // 0x006072cc    57
                         mov.s              ecx, ebx                                      // 0x006072cd    8bcb
                         call               dword ptr [edx + 0x120]                       // 0x006072cf    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006072d5    d95c2414
                         mov                eax, dword ptr [ebx]                          // 0x006072d9    8b03
                         mov.s              ecx, ebx                                      // 0x006072db    8bcb
                         call               dword ptr [eax + 0x508]                       // 0x006072dd    ff9008050000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006072e3    d9442414
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x006072e7    d80d28b28a00
                         {disp8} mov        esi, dword ptr [ebx + 0x28]                   // 0x006072ed    8b7328
                         call               __ftol                                        // 0x006072f0    e80ba11900
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x006072f5    d80d28b28a00
                         push               eax                                           // 0x006072fb    50
                         call               __ftol                                        // 0x006072fc    e8ffa01900
                         push               eax                                           // 0x00607301    50
                         sub                esi, 0x00d38448                               // 0x00607302    81ee4884d300
                         mov                eax, 0x76b981db                               // 0x00607308    b8db81b976
                         imul               esi                                           // 0x0060730d    f7ee
                         sar                edx, 7                                        // 0x0060730f    c1fa07
                         mov.s              ecx, edx                                      // 0x00607312    8bca
                         shr                ecx, 0x1f                                     // 0x00607314    c1e91f
                         add.s              edx, ecx                                      // 0x00607317    03d1
                         push               edx                                           // 0x00607319    52
                         {disp32} lea       edx, dword ptr [esp + 0x00000104]             // 0x0060731a    8d942404010000
                         push               edx                                           // 0x00607321    52
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00607322    8d4c2428
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x00607326    e855b5ffff
                         push               eax                                           // 0x0060732b    50
                         push               0x28                                          // 0x0060732c    6a28
                         call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x0060732e    e8fddd1000
                         add                esp, 0x04                                     // 0x00607333    83c404
                         push               eax                                           // 0x00607336    50
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x00607337    8d442444
                         push               eax                                           // 0x0060733b    50
                         call               _sprintf                                      // 0x0060733c    e891e41b00
                         {disp32} mov       edx, dword ptr [esp + 0x00000178]             // 0x00607341    8b942478010000
                         or                 ecx, 0xffffffff                               // 0x00607348    83c9ff
                         xor.s              eax, eax                                      // 0x0060734b    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x48]                   // 0x0060734d    8d7c2448
                         repne scasb                                                      // 0x00607351    f2ae
                         not                ecx                                           // 0x00607353    f7d1
                         dec                ecx                                           // 0x00607355    49
                         push               ecx                                           // 0x00607356    51
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00607357    8d4c244c
                         push               ecx                                           // 0x0060735b    51
                         push               edx                                           // 0x0060735c    52
                         push               ebx                                           // 0x0060735d    53
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x0060735e    e8ad221100
                         add                esp, 0x28                                     // 0x00607363    83c428
                         push               0x0                                           // 0x00607366    6a00
                         push               0x009c9698                                    // 0x00607368    6898969c00
                         push               0x009c7f50                                    // 0x0060736d    68507f9c00
                         push               0x0                                           // 0x00607372    6a00
                         push               0x0                                           // 0x00607374    6a00
                         push               0x14                                          // 0x00607376    6a14
                         mov.s              ecx, ebp                                      // 0x00607378    8bcd
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x0060737a    e841d2ffff
                         push               eax                                           // 0x0060737f    50
                         call               ___RTDynamicCast                              // 0x00607380    e894e61b00
                         add                esp, 0x14                                     // 0x00607385    83c414
                         mov.s              esi, eax                                      // 0x00607388    8bf0
                         test               esi, esi                                      // 0x0060738a    85f6
                         pop                edi                                           // 0x0060738c    5f
                         {disp8} je         .Lbl_addr_0x006073e8                          // 0x0060738d    7459
.Lbl_addr_0x0060738f:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0060738f    8b4500
                         cmp                eax, dword ptr [esi + 0x14]                   // 0x00607392    3b4614
                         {disp8} jne        .Lbl_addr_0x006073c1                          // 0x00607395    752a
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00607397    8b4d04
                         cmp                ecx, dword ptr [esi + 0x18]                   // 0x0060739a    3b4e18
                         {disp8} jne        .Lbl_addr_0x006073c1                          // 0x0060739d    7522
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0060739f    d94508
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x006073a2    d9461c
                         fcompp                                                           // 0x006073a5    ded9
                         fnstsw             ax                                            // 0x006073a7    dfe0
                         test               ah, 0x40                                      // 0x006073a9    f6c440
                         {disp8} je         .Lbl_addr_0x006073c1                          // 0x006073ac    7413
                         cmp.s              esi, ebx                                      // 0x006073ae    3bf3
                         {disp8} je         .Lbl_addr_0x006073c1                          // 0x006073b0    740f
                         {disp8} mov        edx, dword ptr [ebx + 0x28]                   // 0x006073b2    8b5328
                         cmp                edx, dword ptr [esi + 0x28]                   // 0x006073b5    3b5628
                         {disp8} jne        .Lbl_addr_0x006073c1                          // 0x006073b8    7507
                         mov.s              ecx, esi                                      // 0x006073ba    8bce
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x006073bc    e82f8bf6ff
.Lbl_addr_0x006073c1:    push               0x0                                           // 0x006073c1    6a00
                         push               0x009c9698                                    // 0x006073c3    6898969c00
                         push               0x009c7f50                                    // 0x006073c8    68507f9c00
                         push               0x0                                           // 0x006073cd    6a00
                         push               esi                                           // 0x006073cf    56
                         push               0x14                                          // 0x006073d0    6a14
                         mov.s              ecx, ebp                                      // 0x006073d2    8bcd
                         call               ?FindType@MapCoords@@QBEPAVObject@@W4OBJECT_TYPE@@PAV2@@Z                          // 0x006073d4    e8e7d1ffff
                         push               eax                                           // 0x006073d9    50
                         call               ___RTDynamicCast                              // 0x006073da    e83ae61b00
                         mov.s              esi, eax                                      // 0x006073df    8bf0
                         add                esp, 0x14                                     // 0x006073e1    83c414
                         test               esi, esi                                      // 0x006073e4    85f6
                         {disp8} jne        .Lbl_addr_0x0060738f                          // 0x006073e6    75a7
.Lbl_addr_0x006073e8:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006073e8    8b44240c
.Lbl_addr_0x006073ec:    pop                esi                                           // 0x006073ec    5e
                         pop                ebp                                           // 0x006073ed    5d
                         pop                ebx                                           // 0x006073ee    5b
                         add                esp, 0x0000014c                               // 0x006073ef    81c44c010000
                         ret                0x0008                                        // 0x006073f5    c20800
.Lbl_addr_0x006073f8:    pop                esi                                           // 0x006073f8    5e
                         pop                ebp                                           // 0x006073f9    5d
                         xor.s              eax, eax                                      // 0x006073fa    33c0
                         pop                ebx                                           // 0x006073fc    5b
                         add                esp, 0x0000014c                               // 0x006073fd    81c44c010000
                         ret                0x0008                                        // 0x00607403    c20800
                         nop                                                              // 0x00607406    90
                         nop                                                              // 0x00607407    90
                         nop                                                              // 0x00607408    90
                         nop                                                              // 0x00607409    90
                         nop                                                              // 0x0060740a    90
                         nop                                                              // 0x0060740b    90
                         nop                                                              // 0x0060740c    90
                         nop                                                              // 0x0060740d    90
                         nop                                                              // 0x0060740e    90
                         nop                                                              // 0x0060740f    90
?AddToRoutePlan@MobileObject@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00607410    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00607414    8b54240c
                         push               eax                                           // 0x00607418    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00607419    8b44240c
                         push               edx                                           // 0x0060741d    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0060741e    8b54240c
                         push               eax                                           // 0x00607422    50
                         push               edx                                           // 0x00607423    52
                         call               _jmp_addr_0x00638b00                          // 0x00607424    e8d7160300
                         ret                0x0010                                        // 0x00607429    c21000
                         nop                                                              // 0x0060742c    90
                         nop                                                              // 0x0060742d    90
                         nop                                                              // 0x0060742e    90
                         nop                                                              // 0x0060742f    90
?GetCreatureBeliefType@MobileObject@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00607430    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x00607433    8b8004010000
                         sub                eax, 0x04                                     // 0x00607439    83e804
                         {disp8} je         .Lbl_addr_0x0060744d                          // 0x0060743c    740f
                         dec                eax                                           // 0x0060743e    48
                         {disp8} je         .Lbl_addr_0x00607447                          // 0x0060743f    7406
                         mov                eax, 0x00000013                               // 0x00607441    b813000000
                         ret                                                              // 0x00607446    c3
.Lbl_addr_0x00607447:    mov                eax, 0x0000000d                               // 0x00607447    b80d000000
                         ret                                                              // 0x0060744c    c3
.Lbl_addr_0x0060744d:    mov                eax, 0x0000000e                               // 0x0060744d    b80e000000
                         ret                                                              // 0x00607452    c3
                         nop                                                              // 0x00607453    90
                         nop                                                              // 0x00607454    90
                         nop                                                              // 0x00607455    90
                         nop                                                              // 0x00607456    90
                         nop                                                              // 0x00607457    90
                         nop                                                              // 0x00607458    90
                         nop                                                              // 0x00607459    90
                         nop                                                              // 0x0060745a    90
                         nop                                                              // 0x0060745b    90
                         nop                                                              // 0x0060745c    90
                         nop                                                              // 0x0060745d    90
                         nop                                                              // 0x0060745e    90
                         nop                                                              // 0x0060745f    90
?SetXYZAngles@MobileObject@@UAEXMMM@Z:
                         push               ebx                                           // 0x00607460    53
                         push               esi                                           // 0x00607461    56
                         mov.s              esi, ecx                                      // 0x00607462    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00607464    8b06
                         push               edi                                           // 0x00607466    57
                         call               dword ptr [eax + 0x178]                       // 0x00607467    ff9078010000
                         mov.s              ebx, eax                                      // 0x0060746d    8bd8
                         test               ebx, ebx                                      // 0x0060746f    85db
                         {disp8} je         .Lbl_addr_0x0060747d                          // 0x00607471    740a
                         mov                edx, dword ptr [esi]                          // 0x00607473    8b16
                         mov.s              ecx, esi                                      // 0x00607475    8bce
                         call               dword ptr [edx + 0x548]                       // 0x00607477    ff9248050000
.Lbl_addr_0x0060747d:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0060747d    8b442410
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00607481    8b7c2414
                         mov                edx, dword ptr [esi]                          // 0x00607485    8b16
                         push               edi                                           // 0x00607487    57
                         mov.s              ecx, esi                                      // 0x00607488    8bce
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x0060748a    89465c
                         call               dword ptr [edx + 0x520]                       // 0x0060748d    ff9220050000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00607493    8b442418
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x00607497    894660
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0060749a    8b4640
                         test               eax, eax                                      // 0x0060749d    85c0
                         {disp8} je         .Lbl_addr_0x006074c5                          // 0x0060749f    7424
                         mov                edx, dword ptr [esi]                          // 0x006074a1    8b16
                         mov.s              ecx, esi                                      // 0x006074a3    8bce
                         call               dword ptr [edx + 0x120]                       // 0x006074a5    ff9220010000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006074ab    8b442418
                         push               ecx                                           // 0x006074af    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006074b0    8b4c2414
                         fstp               dword ptr [esp]                               // 0x006074b4    d91c24
                         push               eax                                           // 0x006074b7    50
                         push               edi                                           // 0x006074b8    57
                         push               ecx                                           // 0x006074b9    51
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x006074ba    8b4e40
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x006074bd    8d5614
                         call               _jmp_addr_0x0063b680                          // 0x006074c0    e8bb410300
.Lbl_addr_0x006074c5:    test               ebx, ebx                                      // 0x006074c5    85db
                         {disp8} je         .Lbl_addr_0x006074d3                          // 0x006074c7    740a
                         mov                edx, dword ptr [esi]                          // 0x006074c9    8b16
                         mov.s              ecx, esi                                      // 0x006074cb    8bce
                         call               dword ptr [edx + 0x544]                       // 0x006074cd    ff9244050000
.Lbl_addr_0x006074d3:    pop                edi                                           // 0x006074d3    5f
                         pop                esi                                           // 0x006074d4    5e
                         pop                ebx                                           // 0x006074d5    5b
                         ret                0x000c                                        // 0x006074d6    c20c00
                         nop                                                              // 0x006074d9    90
                         nop                                                              // 0x006074da    90
                         nop                                                              // 0x006074db    90
                         nop                                                              // 0x006074dc    90
                         nop                                                              // 0x006074dd    90
                         nop                                                              // 0x006074de    90
                         nop                                                              // 0x006074df    90
?SetXYZAnglesAndScale@MobileObject@@UAEXMMMM@Z:
                         push               ebx                                           // 0x006074e0    53
                         push               ebp                                           // 0x006074e1    55
                         push               esi                                           // 0x006074e2    56
                         mov.s              esi, ecx                                      // 0x006074e3    8bf1
                         mov                eax, dword ptr [esi]                          // 0x006074e5    8b06
                         push               edi                                           // 0x006074e7    57
                         call               dword ptr [eax + 0x178]                       // 0x006074e8    ff9078010000
                         mov.s              ebp, eax                                      // 0x006074ee    8be8
                         test               ebp, ebp                                      // 0x006074f0    85ed
                         {disp8} je         .Lbl_addr_0x006074fe                          // 0x006074f2    740a
                         mov                edx, dword ptr [esi]                          // 0x006074f4    8b16
                         mov.s              ecx, esi                                      // 0x006074f6    8bce
                         call               dword ptr [edx + 0x548]                       // 0x006074f8    ff9248050000
.Lbl_addr_0x006074fe:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006074fe    8b442414
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00607502    8b7c2418
                         mov                edx, dword ptr [esi]                          // 0x00607506    8b16
                         push               edi                                           // 0x00607508    57
                         mov.s              ecx, esi                                      // 0x00607509    8bce
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x0060750b    89465c
                         call               dword ptr [edx + 0x520]                       // 0x0060750e    ff9220050000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00607514    8b44241c
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x00607518    8b5c2420
                         mov                edx, dword ptr [esi]                          // 0x0060751c    8b16
                         push               ebx                                           // 0x0060751e    53
                         mov.s              ecx, esi                                      // 0x0060751f    8bce
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x00607521    894660
                         call               dword ptr [edx + 0x51c]                       // 0x00607524    ff921c050000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0060752a    8b4e40
                         test               ecx, ecx                                      // 0x0060752d    85c9
                         {disp8} je         .Lbl_addr_0x00607545                          // 0x0060752f    7414
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00607531    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00607535    8b542414
                         push               ebx                                           // 0x00607539    53
                         push               eax                                           // 0x0060753a    50
                         push               edi                                           // 0x0060753b    57
                         push               edx                                           // 0x0060753c    52
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x0060753d    8d5614
                         call               _jmp_addr_0x0063b680                          // 0x00607540    e83b410300
.Lbl_addr_0x00607545:    test               ebp, ebp                                      // 0x00607545    85ed
                         {disp8} je         .Lbl_addr_0x00607553                          // 0x00607547    740a
                         mov                eax, dword ptr [esi]                          // 0x00607549    8b06
                         mov.s              ecx, esi                                      // 0x0060754b    8bce
                         call               dword ptr [eax + 0x544]                       // 0x0060754d    ff9044050000
.Lbl_addr_0x00607553:    pop                edi                                           // 0x00607553    5f
                         pop                esi                                           // 0x00607554    5e
                         pop                ebp                                           // 0x00607555    5d
                         pop                ebx                                           // 0x00607556    5b
                         ret                0x0010                                        // 0x00607557    c21000
                         call               dword ptr [rdata_bytes + 0x774]               // 0x0060755a    ff1574978a00
?GetWorldMatrix@MobileObject@@UAEXPAULHMatrix@@@Z:
                         sub                esp, 0x10                                     // 0x00607560    83ec10
                         push               esi                                           // 0x00607563    56
                         mov.s              esi, ecx                                      // 0x00607564    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00607566    8b461c
                         push               edi                                           // 0x00607569    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0060756a    8d7e14
                         mov.s              ecx, edi                                      // 0x0060756d    8bcf
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0060756f    89442408
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00607573    e818bb1f00
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x00607578    d8442408
                         mov                edx, dword ptr [esi]                          // 0x0060757c    8b16
                         mov.s              ecx, esi                                      // 0x0060757e    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00607580    d95c2410
                         fild               dword ptr [edi]                               // 0x00607584    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00607586    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0060758c    d95c240c
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00607590    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00607593    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00607599    d95c2414
                         call               dword ptr [edx + 0x120]                       // 0x0060759d    ff9220010000
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x006075a3    d9542408
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x006075a7    d81d90a38a00
                         fnstsw             ax                                            // 0x006075ad    dfe0
                         test               ah, 0x40                                      // 0x006075af    f6c440
                         {disp32} jne       .Lbl_addr_0x00607662                          // 0x006075b2    0f85aa000000
                         mov                eax, dword ptr [esi]                          // 0x006075b8    8b06
                         mov.s              ecx, esi                                      // 0x006075ba    8bce
                         call               dword ptr [eax + 0x50c]                       // 0x006075bc    ff900c050000
                         mov                edx, dword ptr [esi]                          // 0x006075c2    8b16
                         push               ecx                                           // 0x006075c4    51
                         mov.s              ecx, esi                                      // 0x006075c5    8bce
                         fstp               dword ptr [esp]                               // 0x006075c7    d91c24
                         call               dword ptr [edx + 0x504]                       // 0x006075ca    ff9204050000
                         mov                eax, dword ptr [esi]                          // 0x006075d0    8b06
                         push               ecx                                           // 0x006075d2    51
                         mov.s              ecx, esi                                      // 0x006075d3    8bce
                         fstp               dword ptr [esp]                               // 0x006075d5    d91c24
                         call               dword ptr [eax + 0x508]                       // 0x006075d8    ff9008050000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x006075de    8b742424
                         push               ecx                                           // 0x006075e2    51
                         mov.s              ecx, esi                                      // 0x006075e3    8bce
                         fstp               dword ptr [esp]                               // 0x006075e5    d91c24
                         call               _jmp_addr_0x007fac10                          // 0x006075e8    e823361f00
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006075ed    d9442408
                         fmul               dword ptr [esi]                               // 0x006075f1    d80e
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006075f3    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006075f7    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006075fb    8b442414
                         fstp               dword ptr [esi]                               // 0x006075ff    d91e
                         pop                edi                                           // 0x00607601    5f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607602    d9442404
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x00607606    894e24
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x00607609    d84e04
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x0060760c    895628
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x0060760f    89462c
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x00607612    d95e04
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607615    d9442404
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x00607619    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0060761c    d95e08
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0060761f    d9442404
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x00607623    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00607626    d95e0c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607629    d9442404
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0060762d    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x00607630    d95e10
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607633    d9442404
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00607637    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x0060763a    d95e14
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0060763d    d9442404
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00607641    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00607644    d95e18
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607647    d9442404
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0060764b    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0060764e    d95e1c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00607651    d9442404
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00607655    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x00607658    d95e20
                         pop                esi                                           // 0x0060765b    5e
                         add                esp, 0x10                                     // 0x0060765c    83c410
                         ret                0x0004                                        // 0x0060765f    c20400
.Lbl_addr_0x00607662:    mov                edx, dword ptr [esi]                          // 0x00607662    8b16
                         mov.s              ecx, esi                                      // 0x00607664    8bce
                         call               dword ptr [edx + 0x50c]                       // 0x00607666    ff920c050000
                         mov                eax, dword ptr [esi]                          // 0x0060766c    8b06
                         push               ecx                                           // 0x0060766e    51
                         mov.s              ecx, esi                                      // 0x0060766f    8bce
                         fstp               dword ptr [esp]                               // 0x00607671    d91c24
                         call               dword ptr [eax + 0x504]                       // 0x00607674    ff9004050000
                         mov                edx, dword ptr [esi]                          // 0x0060767a    8b16
                         push               ecx                                           // 0x0060767c    51
                         mov.s              ecx, esi                                      // 0x0060767d    8bce
                         fstp               dword ptr [esp]                               // 0x0060767f    d91c24
                         call               dword ptr [edx + 0x508]                       // 0x00607682    ff9208050000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00607688    8b742424
                         push               ecx                                           // 0x0060768c    51
                         mov.s              ecx, esi                                      // 0x0060768d    8bce
                         fstp               dword ptr [esp]                               // 0x0060768f    d91c24
                         call               _jmp_addr_0x007fac10                          // 0x00607692    e879351f00
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00607697    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0060769b    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0060769f    8b542414
                         pop                edi                                           // 0x006076a3    5f
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x006076a4    894624
                         {disp8} mov        dword ptr [esi + 0x28], ecx                   // 0x006076a7    894e28
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x006076aa    89562c
                         pop                esi                                           // 0x006076ad    5e
                         add                esp, 0x10                                     // 0x006076ae    83c410
                         ret                0x0004                                        // 0x006076b1    c20400
                         nop                                                              // 0x006076b4    90
                         nop                                                              // 0x006076b5    90
                         nop                                                              // 0x006076b6    90
                         nop                                                              // 0x006076b7    90
                         nop                                                              // 0x006076b8    90
                         nop                                                              // 0x006076b9    90
                         nop                                                              // 0x006076ba    90
                         nop                                                              // 0x006076bb    90
                         nop                                                              // 0x006076bc    90
                         nop                                                              // 0x006076bd    90
                         nop                                                              // 0x006076be    90
                         nop                                                              // 0x006076bf    90
_jmp_addr_0x006076c0:    {disp32} mov       eax, dword ptr [_game]                        // 0x006076c0    a15c19d000
                         push               esi                                           // 0x006076c5    56
                         push               edi                                           // 0x006076c6    57
                         {disp32} lea       edi, dword ptr [eax + 0x00205cd4]             // 0x006076c7    8db8d45c2000
                         mov                eax, dword ptr [edi]                          // 0x006076cd    8b07
                         test               eax, eax                                      // 0x006076cf    85c0
                         mov.s              esi, ecx                                      // 0x006076d1    8bf1
                         {disp8} je         .Lbl_addr_0x006076e0                          // 0x006076d3    740b
.Lbl_addr_0x006076d5:    cmp                dword ptr [eax + 0x04], esi                   // 0x006076d5    397004
                         {disp8} je         .Lbl_addr_0x006076fe                          // 0x006076d8    7424
                         mov                eax, dword ptr [eax]                          // 0x006076da    8b00
                         test               eax, eax                                      // 0x006076dc    85c0
                         {disp8} jne        .Lbl_addr_0x006076d5                          // 0x006076de    75f5
.Lbl_addr_0x006076e0:    test               esi, esi                                      // 0x006076e0    85f6
                         {disp8} je         .Lbl_addr_0x006076fe                          // 0x006076e2    741a
                         push               0x8                                           // 0x006076e4    6a08
                         call               ??2@YAPAXI@Z                                  // 0x006076e6    e803ee1b00
                         add                esp, 0x04                                     // 0x006076eb    83c404
                         test               eax, eax                                      // 0x006076ee    85c0
                         {disp8} je         .Lbl_addr_0x006076fe                          // 0x006076f0    740c
                         mov                ecx, dword ptr [edi]                          // 0x006076f2    8b0f
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x006076f4    897004
                         mov                dword ptr [eax], ecx                          // 0x006076f7    8908
                         mov                dword ptr [edi], eax                          // 0x006076f9    8907
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x006076fb    ff4704
.Lbl_addr_0x006076fe:    push               0x00000138                                    // 0x006076fe    6838010000
                         push               0x00bf4238                                    // 0x00607703    683842bf00
                         push               0x30                                          // 0x00607708    6a30
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x0060770a    e8e1efe2ff
                         add                esp, 0x0c                                     // 0x0060770f    83c40c
                         test               eax, eax                                      // 0x00607712    85c0
                         {disp8} je         .Lbl_addr_0x0060771f                          // 0x00607714    7409
                         mov.s              ecx, eax                                      // 0x00607716    8bc8
                         call               ??0DataPath@@QAE@XZ                           // 0x00607718    e82379feff
                         {disp8} jmp        .Lbl_addr_0x00607721                          // 0x0060771d    eb02
.Lbl_addr_0x0060771f:    xor.s              eax, eax                                      // 0x0060771f    33c0
.Lbl_addr_0x00607721:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00607721    8b4c240c
                         push               ecx                                           // 0x00607725    51
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x00607726    894664
                         call               _jmp_addr_0x00447060                          // 0x00607729    e832f9e3ff
                         {disp8} mov        edx, dword ptr [esi + 0x64]                   // 0x0060772e    8b5664
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00607731    8b4c2418
                         {disp8} mov        dword ptr [edx + 0x14], eax                   // 0x00607735    894214
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x00607738    8b4664
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0060773b    89481c
                         {disp8} mov        edx, dword ptr [esi + 0x64]                   // 0x0060773e    8b5664
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00607741    8b44241c
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x00607745    894220
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x00607748    8b4e64
                         {disp8} mov        dword ptr [ecx + 0x28], 0x42c80000            // 0x0060774b    c741280000c842
                         {disp8} mov        edx, dword ptr [esi + 0x64]                   // 0x00607752    8b5664
                         {disp8} mov        dword ptr [edx + 0x2c], 0x3f800000            // 0x00607755    c7422c0000803f
                         {disp8} mov        esi, dword ptr [esi + 0x64]                   // 0x0060775c    8b7664
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0060775f    8b4614
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00607762    8b4804
                         {disp32} mov       edx, dword ptr [ecx + 0x00000208]             // 0x00607765    8b9108020000
                         {disp8} fild       dword ptr [edx + 0x10]                        // 0x0060776b    db4210
                         add                esp, 0x04                                     // 0x0060776e    83c404
                         pop                edi                                           // 0x00607771    5f
                         mov                eax, 0x00000001                               // 0x00607772    b801000000
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00607777    d84c240c
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x0060777b    d95e24
                         pop                esi                                           // 0x0060777e    5e
                         ret                0x0010                                        // 0x0060777f    c21000
                         nop                                                              // 0x00607782    90
                         nop                                                              // 0x00607783    90
                         nop                                                              // 0x00607784    90
                         nop                                                              // 0x00607785    90
                         nop                                                              // 0x00607786    90
                         nop                                                              // 0x00607787    90
                         nop                                                              // 0x00607788    90
                         nop                                                              // 0x00607789    90
                         nop                                                              // 0x0060778a    90
                         nop                                                              // 0x0060778b    90
                         nop                                                              // 0x0060778c    90
                         nop                                                              // 0x0060778d    90
                         nop                                                              // 0x0060778e    90
                         nop                                                              // 0x0060778f    90
?MoveAlongPath@MobileObject@@UAEIXZ:
                         sub                esp, 0x24                                     // 0x00607790    83ec24
                         push               ebp                                           // 0x00607793    55
                         push               esi                                           // 0x00607794    56
                         mov.s              ebp, ecx                                      // 0x00607795    8be9
                         {disp8} mov        esi, dword ptr [ebp + 0x64]                   // 0x00607797    8b7564
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x0060779a    8b4620
                         test               eax, eax                                      // 0x0060779d    85c0
                         push               edi                                           // 0x0060779f    57
                         {disp8} je         .Lbl_addr_0x006077f4                          // 0x006077a0    7452
                         {disp8} fld        dword ptr [esi + 0x24]                        // 0x006077a2    d94624
                         call               __ftol                                        // 0x006077a5    e8569c1900
                         test               eax, eax                                      // 0x006077aa    85c0
                         {disp8} mov        esi, dword ptr [esi + 0x14]                   // 0x006077ac    8b7614
                         {disp8} jge        .Lbl_addr_0x006077b5                          // 0x006077af    7d04
                         xor.s              eax, eax                                      // 0x006077b1    33c0
                         {disp8} jmp        .Lbl_addr_0x006077c7                          // 0x006077b3    eb12
.Lbl_addr_0x006077b5:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x006077b5    8b4e04
                         {disp32} mov       edx, dword ptr [ecx + 0x00000208]             // 0x006077b8    8b9108020000
                         {disp8} mov        ecx, dword ptr [edx + 0x10]                   // 0x006077be    8b4a10
                         cmp.s              eax, ecx                                      // 0x006077c1    3bc1
                         {disp8} jl         .Lbl_addr_0x006077c7                          // 0x006077c3    7c02
                         mov.s              eax, ecx                                      // 0x006077c5    8bc1
.Lbl_addr_0x006077c7:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x006077c7    8d4c2424
                         push               ecx                                           // 0x006077cb    51
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x006077cc    8b4e04
                         push               eax                                           // 0x006077cf    50
                         call               _jmp_addr_0x00844280                          // 0x006077d0    e8abca2300
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006077d5    8d54240c
                         test               edx, edx                                      // 0x006077d9    85d2
                         {disp8} je         .Lbl_addr_0x0060785b                          // 0x006077db    747e
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x006077dd    8b4604
                         {disp32} mov       edx, dword ptr [eax + 0x00000204]             // 0x006077e0    8b9004020000
                         mov                eax, dword ptr [eax]                          // 0x006077e6    8b00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006077e8    8d4c240c
                         push               ecx                                           // 0x006077ec    51
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006077ed    8b4e08
                         push               edx                                           // 0x006077f0    52
                         push               eax                                           // 0x006077f1    50
                         {disp8} jmp        .Lbl_addr_0x00607850                          // 0x006077f2    eb5c
.Lbl_addr_0x006077f4:    {disp8} mov        edi, dword ptr [esi + 0x14]                   // 0x006077f4    8b7e14
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x006077f7    8b5704
                         {disp32} mov       eax, dword ptr [edx + 0x00000208]             // 0x006077fa    8b8208020000
                         {disp8} fild       dword ptr [eax + 0x10]                        // 0x00607800    db4010
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x00607803    d86624
                         call               __ftol                                        // 0x00607806    e8f59b1900
                         test               eax, eax                                      // 0x0060780b    85c0
                         {disp8} jge        .Lbl_addr_0x00607813                          // 0x0060780d    7d04
                         xor.s              eax, eax                                      // 0x0060780f    33c0
                         {disp8} jmp        .Lbl_addr_0x00607825                          // 0x00607811    eb12
.Lbl_addr_0x00607813:    {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x00607813    8b4f04
                         {disp32} mov       edx, dword ptr [ecx + 0x00000208]             // 0x00607816    8b9108020000
                         {disp8} mov        ecx, dword ptr [edx + 0x10]                   // 0x0060781c    8b4a10
                         cmp.s              eax, ecx                                      // 0x0060781f    3bc1
                         {disp8} jl         .Lbl_addr_0x00607825                          // 0x00607821    7c02
                         mov.s              eax, ecx                                      // 0x00607823    8bc1
.Lbl_addr_0x00607825:    {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00607825    8d4c2424
                         push               ecx                                           // 0x00607829    51
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0060782a    8b4f04
                         push               eax                                           // 0x0060782d    50
                         call               _jmp_addr_0x00844280                          // 0x0060782e    e84dca2300
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00607833    8d54240c
                         test               edx, edx                                      // 0x00607837    85d2
                         {disp8} je         .Lbl_addr_0x0060785b                          // 0x00607839    7420
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0060783b    8b4704
                         {disp32} mov       edx, dword ptr [eax + 0x00000204]             // 0x0060783e    8b9004020000
                         mov                eax, dword ptr [eax]                          // 0x00607844    8b00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00607846    8d4c240c
                         push               ecx                                           // 0x0060784a    51
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0060784b    8b4f08
                         push               edx                                           // 0x0060784e    52
                         push               eax                                           // 0x0060784f    50
.Lbl_addr_0x00607850:    {disp32} mov       ecx, dword ptr [ecx + 0x00000208]             // 0x00607850    8b8908020000
                         call               _jmp_addr_0x008439c0                          // 0x00607856    e865c12300
.Lbl_addr_0x0060785b:    {disp8} mov        esi, dword ptr [ebp + 0x64]                   // 0x0060785b    8b7564
                         mov.s              ecx, ebp                                      // 0x0060785e    8bcd
                         call               .Lbl_addr_0x00607990                          // 0x00607860    e82b010000
                         {disp8} fcomp      dword ptr [esi + 0x1c]                        // 0x00607865    d85e1c
                         fnstsw             ax                                            // 0x00607868    dfe0
                         test               ah, 0x01                                      // 0x0060786a    f6c401
                         {disp32} je        .Lbl_addr_0x00607900                          // 0x0060786d    0f848d000000
                         {disp8} fld        dword ptr [esi + 0x28]                        // 0x00607873    d94628
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x00607876    d84624
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x00607879    d95e24
                         {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x0060787c    8b4d64
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x0060787f    8b5114
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00607882    8b4204
                         {disp32} mov       edx, dword ptr [eax + 0x00000208]             // 0x00607885    8b9008020000
                         {disp8} fild       dword ptr [edx + 0x10]                        // 0x0060788b    db4210
                         {disp8} fcom       dword ptr [ecx + 0x24]                        // 0x0060788e    d85124
                         fnstsw             ax                                            // 0x00607891    dfe0
                         test               ah, 0x01                                      // 0x00607893    f6c401
                         {disp8} je         .Lbl_addr_0x0060789d                          // 0x00607896    7405
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x00607898    d95924
                         {disp8} jmp        .Lbl_addr_0x0060789f                          // 0x0060789b    eb02
.Lbl_addr_0x0060789d:    fstp               st(0)                                         // 0x0060789d    ddd8
.Lbl_addr_0x0060789f:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0060789f    d944240c
                         {disp32} fmul      dword ptr [__real@4@400bcccccd0000000000]     // 0x006078a3    d80d00c48a00
                         call               __ftol                                        // 0x006078a9    e8529b1900
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006078ae    d9442414
                         {disp32} fmul      dword ptr [__real@4@400bcccccd0000000000]     // 0x006078b2    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006078b8    89442418
                         call               __ftol                                        // 0x006078bc    e83f9b1900
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x006078c1    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006078c5    8944241c
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x006078c9    8b4500
                         push               ecx                                           // 0x006078cc    51
                         mov.s              ecx, ebp                                      // 0x006078cd    8bcd
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x006078cf    c744242400000000
                         call               dword ptr [eax + 0xfc]                        // 0x006078d7    ff90fc000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x40]                   // 0x006078dd    8b4d40
                         push               0x3f800000                                    // 0x006078e0    680000803f
                         push               0x0                                           // 0x006078e5    6a00
                         push               0x0                                           // 0x006078e7    6a00
                         push               0x0                                           // 0x006078e9    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x006078eb    8d542428
                         call               _jmp_addr_0x0063b680                          // 0x006078ef    e88c3d0300
                         pop                edi                                           // 0x006078f4    5f
                         pop                esi                                           // 0x006078f5    5e
                         mov                eax, 0x00000001                               // 0x006078f6    b801000000
                         pop                ebp                                           // 0x006078fb    5d
                         add                esp, 0x24                                     // 0x006078fc    83c424
                         ret                                                              // 0x006078ff    c3
.Lbl_addr_0x00607900:    {disp32} mov       edx, dword ptr [_game]                        // 0x00607900    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205cd4]             // 0x00607906    8b82d45c2000
                         {disp32} lea       edi, dword ptr [edx + 0x00205cd4]             // 0x0060790c    8dbad45c2000
                         push               ebx                                           // 0x00607912    53
                         xor.s              ebx, ebx                                      // 0x00607913    33db
                         test               eax, eax                                      // 0x00607915    85c0
                         {disp8} je         .Lbl_addr_0x00607944                          // 0x00607917    742b
.Lbl_addr_0x00607919:    cmp                dword ptr [eax + 0x04], ebp                   // 0x00607919    396804
                         mov                esi, dword ptr [eax]                          // 0x0060791c    8b30
                         {disp8} jne        .Lbl_addr_0x0060793c                          // 0x0060791e    751c
                         cmp                eax, dword ptr [edi]                          // 0x00607920    3b07
                         {disp8} jne        .Lbl_addr_0x00607928                          // 0x00607922    7504
                         mov                dword ptr [edi], esi                          // 0x00607924    8937
                         {disp8} jmp        .Lbl_addr_0x0060792a                          // 0x00607926    eb02
.Lbl_addr_0x00607928:    mov                dword ptr [ebx], esi                          // 0x00607928    8933
.Lbl_addr_0x0060792a:    {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x0060792a    8b5704
                         dec                edx                                           // 0x0060792d    4a
                         push               eax                                           // 0x0060792e    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x0060792f    895704
                         call               ??3@YAXPAX@Z                                  // 0x00607932    e861751a00
                         add                esp, 0x04                                     // 0x00607937    83c404
                         {disp8} jmp        .Lbl_addr_0x0060793e                          // 0x0060793a    eb02
.Lbl_addr_0x0060793c:    mov.s              ebx, eax                                      // 0x0060793c    8bd8
.Lbl_addr_0x0060793e:    test               esi, esi                                      // 0x0060793e    85f6
                         mov.s              eax, esi                                      // 0x00607940    8bc6
                         {disp8} jne        .Lbl_addr_0x00607919                          // 0x00607942    75d5
.Lbl_addr_0x00607944:    pop                ebx                                           // 0x00607944    5b
                         pop                edi                                           // 0x00607945    5f
                         pop                esi                                           // 0x00607946    5e
                         mov                eax, 0x00000001                               // 0x00607947    b801000000
                         pop                ebp                                           // 0x0060794c    5d
                         add                esp, 0x24                                     // 0x0060794d    83c424
                         ret                                                              // 0x00607950    c3
                         nop                                                              // 0x00607951    90
                         nop                                                              // 0x00607952    90
                         nop                                                              // 0x00607953    90
                         nop                                                              // 0x00607954    90
                         nop                                                              // 0x00607955    90
                         nop                                                              // 0x00607956    90
                         nop                                                              // 0x00607957    90
                         nop                                                              // 0x00607958    90
                         nop                                                              // 0x00607959    90
                         nop                                                              // 0x0060795a    90
                         nop                                                              // 0x0060795b    90
                         nop                                                              // 0x0060795c    90
                         nop                                                              // 0x0060795d    90
                         nop                                                              // 0x0060795e    90
                         nop                                                              // 0x0060795f    90
.Lbl_addr_0x00607960:    {disp8} mov        eax, dword ptr [ecx + 0x64]                   // 0x00607960    8b4164
                         test               eax, eax                                      // 0x00607963    85c0
                         {disp8} jne        .Lbl_addr_0x0060796f                          // 0x00607965    7508
                         mov                eax, 0x00000001                               // 0x00607967    b801000000
                         ret                0x0004                                        // 0x0060796c    c20400
.Lbl_addr_0x0060796f:    call               .Lbl_addr_0x00607990                          // 0x0060796f    e81c000000
                         {disp8} fcomp      dword ptr [esp + 0x04]                        // 0x00607974    d85c2404
                         fnstsw             ax                                            // 0x00607978    dfe0
                         test               ah, 0x01                                      // 0x0060797a    f6c401
                         {disp8} jne        .Lbl_addr_0x00607987                          // 0x0060797d    7508
                         mov                eax, 0x00000001                               // 0x0060797f    b801000000
                         ret                0x0004                                        // 0x00607984    c20400
.Lbl_addr_0x00607987:    xor.s              eax, eax                                      // 0x00607987    33c0
                         ret                0x0004                                        // 0x00607989    c20400
                         nop                                                              // 0x0060798c    90
                         nop                                                              // 0x0060798d    90
                         nop                                                              // 0x0060798e    90
                         nop                                                              // 0x0060798f    90
.Lbl_addr_0x00607990:    {disp8} mov        eax, dword ptr [ecx + 0x64]                   // 0x00607990    8b4164
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x00607993    8b4814
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00607996    8b5104
                         {disp32} mov       ecx, dword ptr [edx + 0x00000208]             // 0x00607999    8b8a08020000
                         {disp8} fild       dword ptr [ecx + 0x10]                        // 0x0060799f    db4110
                         {disp8} fdivr      dword ptr [eax + 0x24]                        // 0x006079a2    d87824
                         ret                                                              // 0x006079a5    c3
                         nop                                                              // 0x006079a6    90
                         nop                                                              // 0x006079a7    90
                         nop                                                              // 0x006079a8    90
                         nop                                                              // 0x006079a9    90
                         nop                                                              // 0x006079aa    90
                         nop                                                              // 0x006079ab    90
                         nop                                                              // 0x006079ac    90
                         nop                                                              // 0x006079ad    90
                         nop                                                              // 0x006079ae    90
                         nop                                                              // 0x006079af    90
                         {disp8} mov        eax, dword ptr [ecx + 0x64]                   // 0x006079b0    8b4164
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x006079b3    8b501c
                         push               edx                                           // 0x006079b6    52
                         call               .Lbl_addr_0x00607960                          // 0x006079b7    e8a4ffffff
                         ret                                                              // 0x006079bc    c3
                         nop                                                              // 0x006079bd    90
                         nop                                                              // 0x006079be    90
                         nop                                                              // 0x006079bf    90
?GetPhysicsConstantsType@Poo@@UAEIXZ:
                         mov                eax, 0x0000000c                               // 0x006079c0    b80c000000
                         ret                                                              // 0x006079c5    c3
                         nop                                                              // 0x006079c6    90
                         nop                                                              // 0x006079c7    90
                         nop                                                              // 0x006079c8    90
                         nop                                                              // 0x006079c9    90
                         nop                                                              // 0x006079ca    90
                         nop                                                              // 0x006079cb    90
                         nop                                                              // 0x006079cc    90
                         nop                                                              // 0x006079cd    90
                         nop                                                              // 0x006079ce    90
                         nop                                                              // 0x006079cf    90
?InsertMapObject@Poo@@UAEXXZ:
                         {disp32} jmp       @InsertMapObject__6ObjectFv@4                 // 0x006079d0    e96bed0200
                         nop                                                              // 0x006079d5    90
                         nop                                                              // 0x006079d6    90
                         nop                                                              // 0x006079d7    90
                         nop                                                              // 0x006079d8    90
                         nop                                                              // 0x006079d9    90
                         nop                                                              // 0x006079da    90
                         nop                                                              // 0x006079db    90
                         nop                                                              // 0x006079dc    90
                         nop                                                              // 0x006079dd    90
                         nop                                                              // 0x006079de    90
                         nop                                                              // 0x006079df    90
?IsPoisoned@MobileObject@@UAEIXZ:
                         cmp                dword ptr [ecx + 0x28], 0x00d398c4            // 0x006079e0    817928c498d300
                         sete               al                                            // 0x006079e7    0f94c0
                         ret                                                              // 0x006079ea    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x006079eb    e8099edfff
?GetPhysicsConstantsType@MobileObject@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x006079f0    8b4128
                         cmp                eax, 0x00d3969c                               // 0x006079f3    3d9c96d300
                         {disp8} jne        .Lbl_addr_0x00607a00                          // 0x006079f8    7506
                         mov                eax, 0x00000015                               // 0x006079fa    b815000000
                         ret                                                              // 0x006079ff    c3
.Lbl_addr_0x00607a00:    cmp                eax, 0x00d397b0                               // 0x00607a00    3db097d300
                         {disp8} jne        .Lbl_addr_0x00607a0d                          // 0x00607a05    7506
                         mov                eax, 0x00000016                               // 0x00607a07    b816000000
                         ret                                                              // 0x00607a0c    c3
.Lbl_addr_0x00607a0d:    cmp                eax, 0x00d398c4                               // 0x00607a0d    3dc498d300
                         {disp8} jne        .Lbl_addr_0x00607a1a                          // 0x00607a12    7506
                         mov                eax, 0x00000017                               // 0x00607a14    b817000000
                         ret                                                              // 0x00607a19    c3
.Lbl_addr_0x00607a1a:    {disp32} jmp       ?GetPhysicsConstantsType@Object@@UAEIXZ       // 0x00607a1a    e981fc0200
                         nop                                                              // 0x00607a1f    90
?ReactToPhysicsImpact@MobileObject@@UAEXPAVPhysicsObject@@_N@Z:
                         push               ebx                                           // 0x00607a20    53
                         mov.s              ebx, ecx                                      // 0x00607a21    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                   // 0x00607a23    8b4328
                         cmp                eax, 0x00d3969c                               // 0x00607a26    3d9c96d300
                         push               esi                                           // 0x00607a2b    56
                         push               edi                                           // 0x00607a2c    57
                         {disp8} je         .Lbl_addr_0x00607a3d                          // 0x00607a2d    740e
                         cmp                eax, 0x00d397b0                               // 0x00607a2f    3db097d300
                         {disp8} je         .Lbl_addr_0x00607a3d                          // 0x00607a34    7407
                         cmp                eax, 0x00d398c4                               // 0x00607a36    3dc498d300
                         {disp8} jne        .Lbl_addr_0x00607a93                          // 0x00607a3b    7556
.Lbl_addr_0x00607a3d:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00607a3d    8b7c2410
                         mov.s              ecx, edi                                      // 0x00607a41    8bcf
                         call               _jmp_addr_0x00644f00                          // 0x00607a43    e8b8d40300
                         {disp8} mov        edi, dword ptr [edi + 0x20]                   // 0x00607a48    8b7f20
                         mov.s              esi, eax                                      // 0x00607a4b    8bf0
                         test               esi, esi                                      // 0x00607a4d    85f6
                         {disp8} je         .Lbl_addr_0x00607a93                          // 0x00607a4f    7442
                         mov                eax, dword ptr [ebx]                          // 0x00607a51    8b03
                         push               ebp                                           // 0x00607a53    55
                         mov                ebp, dword ptr [esi]                          // 0x00607a54    8b2e
                         mov.s              ecx, ebx                                      // 0x00607a56    8bcb
                         call               dword ptr [eax + 0x690]                       // 0x00607a58    ff9090060000
                         push               eax                                           // 0x00607a5e    50
                         mov.s              ecx, esi                                      // 0x00607a5f    8bce
                         call               dword ptr [ebp + 0x680]                       // 0x00607a61    ff9580060000
                         test               eax, eax                                      // 0x00607a67    85c0
                         pop                ebp                                           // 0x00607a69    5d
                         {disp8} je         .Lbl_addr_0x00607a93                          // 0x00607a6a    7427
                         test               edi, edi                                      // 0x00607a6c    85ff
                         {disp8} je         .Lbl_addr_0x00607a85                          // 0x00607a6e    7415
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x00607a70    8b4724
                         mov                edx, dword ptr [esi]                          // 0x00607a73    8b16
                         push               eax                                           // 0x00607a75    50
                         push               ebx                                           // 0x00607a76    53
                         mov.s              ecx, esi                                      // 0x00607a77    8bce
                         call               dword ptr [edx + 0x684]                       // 0x00607a79    ff9284060000
                         pop                edi                                           // 0x00607a7f    5f
                         pop                esi                                           // 0x00607a80    5e
                         pop                ebx                                           // 0x00607a81    5b
                         ret                0x0008                                        // 0x00607a82    c20800
.Lbl_addr_0x00607a85:    mov                edx, dword ptr [esi]                          // 0x00607a85    8b16
                         xor.s              eax, eax                                      // 0x00607a87    33c0
                         push               eax                                           // 0x00607a89    50
                         push               ebx                                           // 0x00607a8a    53
                         mov.s              ecx, esi                                      // 0x00607a8b    8bce
                         call               dword ptr [edx + 0x684]                       // 0x00607a8d    ff9284060000
.Lbl_addr_0x00607a93:    pop                edi                                           // 0x00607a93    5f
                         pop                esi                                           // 0x00607a94    5e
                         pop                ebx                                           // 0x00607a95    5b
                         ret                0x0008                                        // 0x00607a96    c20800
                         nop                                                              // 0x00607a99    90
                         nop                                                              // 0x00607a9a    90
                         nop                                                              // 0x00607a9b    90
                         nop                                                              // 0x00607a9c    90
                         nop                                                              // 0x00607a9d    90
                         nop                                                              // 0x00607a9e    90
                         nop                                                              // 0x00607a9f    90
?CanBecomeAPhysicsObject@MobileObject@@UAEIXZ:
                         mov                eax, 0x00000001                               // 0x00607aa0    b801000000
                         ret                                                              // 0x00607aa5    c3
                         nop                                                              // 0x00607aa6    90
                         nop                                                              // 0x00607aa7    90
                         nop                                                              // 0x00607aa8    90
                         nop                                                              // 0x00607aa9    90
                         nop                                                              // 0x00607aaa    90
                         nop                                                              // 0x00607aab    90
                         nop                                                              // 0x00607aac    90
                         nop                                                              // 0x00607aad    90
                         nop                                                              // 0x00607aae    90
                         nop                                                              // 0x00607aaf    90
?PhysicsEditorCreate@MobileObject@@UAEXH@Z:
                         sub                esp, 0x18                                     // 0x00607ab0    83ec18
                         push               esi                                           // 0x00607ab3    56
                         mov.s              esi, ecx                                      // 0x00607ab4    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00607ab6    8b06
                         call               dword ptr [eax + 0x7b0]                       // 0x00607ab8    ff90b0070000
                         test               eax, eax                                      // 0x00607abe    85c0
                         {disp32} je        .Lbl_addr_0x00607b4e                          // 0x00607ac0    0f8488000000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00607ac6    8b4628
                         cmp                eax, 0x00d3969c                               // 0x00607ac9    3d9c96d300
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00607ace    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00607ad6    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00607ade    c744241800000000
                         {disp8} je         .Lbl_addr_0x00607b47                          // 0x00607ae6    745f
                         cmp                eax, 0x00d397b0                               // 0x00607ae8    3db097d300
                         {disp8} je         .Lbl_addr_0x00607b47                          // 0x00607aed    7458
                         cmp                eax, 0x00d398c4                               // 0x00607aef    3dc498d300
                         {disp8} je         .Lbl_addr_0x00607b47                          // 0x00607af4    7451
                         mov                edx, dword ptr [esi]                          // 0x00607af6    8b16
                         push               0x0                                           // 0x00607af8    6a00
                         push               0x1                                           // 0x00607afa    6a01
                         push               0x0                                           // 0x00607afc    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00607afe    8d44241c
                         push               eax                                           // 0x00607b02    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00607b03    8d4c2420
                         push               ecx                                           // 0x00607b07    51
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00607b08    8d44241c
                         push               eax                                           // 0x00607b0c    50
                         mov.s              ecx, esi                                      // 0x00607b0d    8bce
                         call               dword ptr [edx + 0x784]                       // 0x00607b0f    ff9284070000
                         mov                eax, dword ptr [eax]                          // 0x00607b15    8b00
                         test               eax, eax                                      // 0x00607b17    85c0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00607b19    89442404
                         {disp8} je         .Lbl_addr_0x00607b4e                          // 0x00607b1d    742f
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00607b1f    8b4c2420
                         test               ecx, ecx                                      // 0x00607b23    85c9
                         {disp8} jne        .Lbl_addr_0x00607b33                          // 0x00607b25    750c
                         push               0x1                                           // 0x00607b27    6a01
                         push               0x0                                           // 0x00607b29    6a00
                         {disp8} lea        ecx, dword ptr [eax + 0x28]                   // 0x00607b2b    8d4828
                         call               _jmp_addr_0x007fcb80                          // 0x00607b2e    e84d501f00
.Lbl_addr_0x00607b33:    {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00607b33    8d4c2404
                         push               ecx                                           // 0x00607b37    51
                         call               _jmp_addr_0x00644800                          // 0x00607b38    e8c3cc0300
                         add                esp, 0x04                                     // 0x00607b3d    83c404
                         pop                esi                                           // 0x00607b40    5e
                         add                esp, 0x18                                     // 0x00607b41    83c418
                         ret                0x0004                                        // 0x00607b44    c20400
.Lbl_addr_0x00607b47:    {disp8} mov        dword ptr [esi + 0x1c], 0x00000000            // 0x00607b47    c7461c00000000
.Lbl_addr_0x00607b4e:    pop                esi                                           // 0x00607b4e    5e
                         add                esp, 0x18                                     // 0x00607b4f    83c418
                         ret                0x0004                                        // 0x00607b52    c20400
                         nop                                                              // 0x00607b55    90
                         nop                                                              // 0x00607b56    90
                         nop                                                              // 0x00607b57    90
                         nop                                                              // 0x00607b58    90
                         nop                                                              // 0x00607b59    90
                         nop                                                              // 0x00607b5a    90
                         nop                                                              // 0x00607b5b    90
                         nop                                                              // 0x00607b5c    90
                         nop                                                              // 0x00607b5d    90
                         nop                                                              // 0x00607b5e    90
                         nop                                                              // 0x00607b5f    90
?GetScriptObjectType@MobileObject@@UAEIXZ:
                         mov                eax, 0x00000014                               // 0x00607b60    b814000000
                         ret                                                              // 0x00607b65    c3
                         nop                                                              // 0x00607b66    90
                         nop                                                              // 0x00607b67    90
                         nop                                                              // 0x00607b68    90
                         nop                                                              // 0x00607b69    90
                         nop                                                              // 0x00607b6a    90
                         nop                                                              // 0x00607b6b    90
                         nop                                                              // 0x00607b6c    90
                         nop                                                              // 0x00607b6d    90
                         nop                                                              // 0x00607b6e    90
                         nop                                                              // 0x00607b6f    90
?ValidToApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z:
                         push               esi                                           // 0x00607b70    56
                         push               edi                                           // 0x00607b71    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00607b72    8b7c2410
                         test               edi, edi                                      // 0x00607b76    85ff
                         mov.s              esi, ecx                                      // 0x00607b78    8bf1
                         {disp8} je         .Lbl_addr_0x00607bb7                          // 0x00607b7a    743b
                         mov                eax, dword ptr [esi]                          // 0x00607b7c    8b06
                         push               ebx                                           // 0x00607b7e    53
                         mov                ebx, dword ptr [edi]                          // 0x00607b7f    8b1f
                         call               dword ptr [eax + 0x690]                       // 0x00607b81    ff9090060000
                         push               eax                                           // 0x00607b87    50
                         mov.s              ecx, edi                                      // 0x00607b88    8bcf
                         call               dword ptr [ebx + 0x680]                       // 0x00607b8a    ff9380060000
                         test               eax, eax                                      // 0x00607b90    85c0
                         pop                ebx                                           // 0x00607b92    5b
                         {disp8} je         .Lbl_addr_0x00607bb7                          // 0x00607b93    7422
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00607b95    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + 0x00000104]             // 0x00607b98    8b8104010000
                         cmp                eax, 0x11                                     // 0x00607b9e    83f811
                         {disp8} je         .Lbl_addr_0x00607bad                          // 0x00607ba1    740a
                         cmp                eax, 0x12                                     // 0x00607ba3    83f812
                         {disp8} je         .Lbl_addr_0x00607bad                          // 0x00607ba6    7405
                         cmp                eax, 0x13                                     // 0x00607ba8    83f813
                         {disp8} jne        .Lbl_addr_0x00607bb7                          // 0x00607bab    750a
.Lbl_addr_0x00607bad:    pop                edi                                           // 0x00607bad    5f
                         mov                eax, 0x00000001                               // 0x00607bae    b801000000
                         pop                esi                                           // 0x00607bb3    5e
                         ret                0x0008                                        // 0x00607bb4    c20800
.Lbl_addr_0x00607bb7:    pop                edi                                           // 0x00607bb7    5f
                         xor.s              eax, eax                                      // 0x00607bb8    33c0
                         pop                esi                                           // 0x00607bba    5e
                         ret                0x0008                                        // 0x00607bbb    c20800
                         nop                                                              // 0x00607bbe    90
                         nop                                                              // 0x00607bbf    90
?ApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00607bc0    8b442408
                         test               eax, eax                                      // 0x00607bc4    85c0
                         {disp8} je         .Lbl_addr_0x00607be6                          // 0x00607bc6    741e
                         mov                edx, dword ptr [eax]                          // 0x00607bc8    8b10
                         push               esi                                           // 0x00607bca    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00607bcb    8b742408
                         push               esi                                           // 0x00607bcf    56
                         push               ecx                                           // 0x00607bd0    51
                         mov.s              ecx, eax                                      // 0x00607bd1    8bc8
                         call               dword ptr [edx + 0x684]                       // 0x00607bd3    ff9284060000
                         test               eax, eax                                      // 0x00607bd9    85c0
                         pop                esi                                           // 0x00607bdb    5e
                         {disp8} je         .Lbl_addr_0x00607be6                          // 0x00607bdc    7408
                         mov                eax, 0x00000003                               // 0x00607bde    b803000000
                         ret                0x000c                                        // 0x00607be3    c20c00
.Lbl_addr_0x00607be6:    xor.s              eax, eax                                      // 0x00607be6    33c0
                         ret                0x000c                                        // 0x00607be8    c20c00
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x00607beb    e8099cdfff
?GetDefaultResource@MobileObject@@UAEHXZ:
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00607bf0    8b4928
                         {disp32} mov       eax, dword ptr [ecx + 0x00000104]             // 0x00607bf3    8b8104010000
                         cmp                eax, 0x11                                     // 0x00607bf9    83f811
                         {disp8} je         .Lbl_addr_0x00607c0b                          // 0x00607bfc    740d
                         cmp                eax, 0x12                                     // 0x00607bfe    83f812
                         {disp8} je         .Lbl_addr_0x00607c0b                          // 0x00607c01    7408
                         cmp                eax, 0x13                                     // 0x00607c03    83f813
                         {disp8} je         .Lbl_addr_0x00607c0b                          // 0x00607c06    7403
                         xor.s              eax, eax                                      // 0x00607c08    33c0
                         ret                                                              // 0x00607c0a    c3
.Lbl_addr_0x00607c0b:    {disp8} fld        dword ptr [ecx + 0x68]                        // 0x00607c0b    d94168
                         {disp32} jmp       __ftol                                        // 0x00607c0e    e9ed971900
                         nop                                                              // 0x00607c13    90
                         nop                                                              // 0x00607c14    90
                         nop                                                              // 0x00607c15    90
                         nop                                                              // 0x00607c16    90
                         nop                                                              // 0x00607c17    90
                         nop                                                              // 0x00607c18    90
                         nop                                                              // 0x00607c19    90
                         nop                                                              // 0x00607c1a    90
                         nop                                                              // 0x00607c1b    90
                         nop                                                              // 0x00607c1c    90
                         nop                                                              // 0x00607c1d    90
                         nop                                                              // 0x00607c1e    90
                         nop                                                              // 0x00607c1f    90
?GetResourceType@MobileObject@@UAE?AW4RESOURCE_TYPE@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00607c20    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000104]             // 0x00607c23    8b8004010000
                         cmp                eax, 0x11                                     // 0x00607c29    83f811
                         {disp8} je         .Lbl_addr_0x00607c3c                          // 0x00607c2c    740e
                         cmp                eax, 0x12                                     // 0x00607c2e    83f812
                         {disp8} je         .Lbl_addr_0x00607c3c                          // 0x00607c31    7409
                         cmp                eax, 0x13                                     // 0x00607c33    83f813
                         {disp8} je         .Lbl_addr_0x00607c3c                          // 0x00607c36    7404
                         or                 eax, -0x1                                     // 0x00607c38    83c8ff
                         ret                                                              // 0x00607c3b    c3
.Lbl_addr_0x00607c3c:    xor.s              eax, eax                                      // 0x00607c3c    33c0
                         ret                                                              // 0x00607c3e    c3
                         nop                                                              // 0x00607c3f    90
?Save@MobileObject@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00607c40    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00607c41    8b742408
                         push               edi                                           // 0x00607c45    57
                         mov.s              edi, ecx                                      // 0x00607c46    8bf9
                         push               esi                                           // 0x00607c48    56
                         call               ?Save@Mobile@@UAEIAAVGameOSFile@@@Z           // 0x00607c49    e8c2efffff
                         test               eax, eax                                      // 0x00607c4e    85c0
                         {disp32} je        .Lbl_addr_0x00607cf0                          // 0x00607c50    0f849a000000
                         {disp8} mov        eax, dword ptr [edi + 0x58]                   // 0x00607c56    8b4758
                         push               ebx                                           // 0x00607c59    53
                         push               eax                                           // 0x00607c5a    50
                         mov.s              ecx, esi                                      // 0x00607c5b    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00607c5d    e8aea1f5ff
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00607c62    a190c9be00
                         test               eax, eax                                      // 0x00607c67    85c0
                         {disp8} je         .Lbl_addr_0x00607cda                          // 0x00607c69    746f
                         push               0x0                                           // 0x00607c6b    6a00
                         push               0x4                                           // 0x00607c6d    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x5c]                   // 0x00607c6f    8d5f5c
                         push               ebx                                           // 0x00607c72    53
                         mov.s              ecx, esi                                      // 0x00607c73    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x00607c75    e8a64c1b00
                         cmp                eax, 0x03                                     // 0x00607c7a    83f803
                         {disp8} jne        .Lbl_addr_0x00607c89                          // 0x00607c7d    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00607c7f    c70590c9be0000000000
.Lbl_addr_0x00607c89:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00607c89    8b9614020000
                         xor.s              ecx, ecx                                      // 0x00607c8f    33c9
                         mov                cl, byte ptr [ebx]                            // 0x00607c91    8a0b
                         add                ecx, 0x4                                      // 0x00607c93    83c104
                         add.s              edx, ecx                                      // 0x00607c96    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00607c98    899614020000
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00607c9e    a190c9be00
                         test               eax, eax                                      // 0x00607ca3    85c0
                         {disp8} je         .Lbl_addr_0x00607cda                          // 0x00607ca5    7433
                         push               0x0                                           // 0x00607ca7    6a00
                         push               0x4                                           // 0x00607ca9    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x60]                   // 0x00607cab    8d5f60
                         push               ebx                                           // 0x00607cae    53
                         mov.s              ecx, esi                                      // 0x00607caf    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x00607cb1    e86a4c1b00
                         cmp                eax, 0x03                                     // 0x00607cb6    83f803
                         {disp8} jne        .Lbl_addr_0x00607cc5                          // 0x00607cb9    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00607cbb    c70590c9be0000000000
.Lbl_addr_0x00607cc5:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00607cc5    8b8614020000
                         xor.s              edx, edx                                      // 0x00607ccb    33d2
                         mov                dl, byte ptr [ebx]                            // 0x00607ccd    8a13
                         add                edx, 0x04                                     // 0x00607ccf    83c204
                         add.s              eax, edx                                      // 0x00607cd2    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00607cd4    898614020000
.Lbl_addr_0x00607cda:    {disp8} mov        eax, dword ptr [edi + 0x64]                   // 0x00607cda    8b4764
                         push               eax                                           // 0x00607cdd    50
                         mov.s              ecx, esi                                      // 0x00607cde    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00607ce0    e82ba1f5ff
                         pop                ebx                                           // 0x00607ce5    5b
                         pop                edi                                           // 0x00607ce6    5f
                         mov                eax, 0x00000001                               // 0x00607ce7    b801000000
                         pop                esi                                           // 0x00607cec    5e
                         ret                0x0004                                        // 0x00607ced    c20400
.Lbl_addr_0x00607cf0:    pop                edi                                           // 0x00607cf0    5f
                         xor.s              eax, eax                                      // 0x00607cf1    33c0
                         pop                esi                                           // 0x00607cf3    5e
                         ret                0x0004                                        // 0x00607cf4    c20400
                         nop                                                              // 0x00607cf7    90
                         nop                                                              // 0x00607cf8    90
                         nop                                                              // 0x00607cf9    90
                         nop                                                              // 0x00607cfa    90
                         nop                                                              // 0x00607cfb    90
                         nop                                                              // 0x00607cfc    90
                         nop                                                              // 0x00607cfd    90
                         nop                                                              // 0x00607cfe    90
                         nop                                                              // 0x00607cff    90
?Load@MobileObject@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x00607d00    53
                         push               esi                                           // 0x00607d01    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00607d02    8b74240c
                         mov.s              ebx, ecx                                      // 0x00607d06    8bd9
                         push               esi                                           // 0x00607d08    56
                         call               ?Load@Mobile@@UAEIAAVGameOSFile@@@Z           // 0x00607d09    e862efffff
                         test               eax, eax                                      // 0x00607d0e    85c0
                         {disp32} je        .Lbl_addr_0x00607db0                          // 0x00607d10    0f849a000000
                         push               edi                                           // 0x00607d16    57
                         {disp8} lea        eax, dword ptr [ebx + 0x58]                   // 0x00607d17    8d4358
                         push               eax                                           // 0x00607d1a    50
                         mov.s              ecx, esi                                      // 0x00607d1b    8bce
                         call               ?ReadPtr@GameOSFile@@QAEXPAPAVGameThing@@@Z        // 0x00607d1d    e85ea4f5ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00607d22    a194c9be00
                         test               eax, eax                                      // 0x00607d27    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x5c]                   // 0x00607d29    8d7b5c
                         {disp8} je         .Lbl_addr_0x00607d5e                          // 0x00607d2c    7430
                         push               0x0                                           // 0x00607d2e    6a00
                         push               0x4                                           // 0x00607d30    6a04
                         push               edi                                           // 0x00607d32    57
                         mov.s              ecx, esi                                      // 0x00607d33    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00607d35    e8a64b1b00
                         cmp                eax, 0x03                                     // 0x00607d3a    83f803
                         {disp8} jne        .Lbl_addr_0x00607d49                          // 0x00607d3d    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00607d3f    c70594c9be0000000000
.Lbl_addr_0x00607d49:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00607d49    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00607d4f    33c9
                         mov                cl, byte ptr [edi]                            // 0x00607d51    8a0f
                         add                ecx, 0x4                                      // 0x00607d53    83c104
                         add.s              eax, ecx                                      // 0x00607d56    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00607d58    898614020000
.Lbl_addr_0x00607d5e:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00607d5e    a194c9be00
                         test               eax, eax                                      // 0x00607d63    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x60]                   // 0x00607d65    8d7b60
                         {disp8} je         .Lbl_addr_0x00607d9a                          // 0x00607d68    7430
                         push               0x0                                           // 0x00607d6a    6a00
                         push               0x4                                           // 0x00607d6c    6a04
                         push               edi                                           // 0x00607d6e    57
                         mov.s              ecx, esi                                      // 0x00607d6f    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00607d71    e86a4b1b00
                         cmp                eax, 0x03                                     // 0x00607d76    83f803
                         {disp8} jne        .Lbl_addr_0x00607d85                          // 0x00607d79    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00607d7b    c70594c9be0000000000
.Lbl_addr_0x00607d85:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00607d85    8b8614020000
                         xor.s              edx, edx                                      // 0x00607d8b    33d2
                         mov                dl, byte ptr [edi]                            // 0x00607d8d    8a17
                         add                edx, 0x04                                     // 0x00607d8f    83c204
                         add.s              eax, edx                                      // 0x00607d92    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00607d94    898614020000
.Lbl_addr_0x00607d9a:    add                ebx, 0x64                                     // 0x00607d9a    83c364
                         push               ebx                                           // 0x00607d9d    53
                         mov.s              ecx, esi                                      // 0x00607d9e    8bce
                         call               ?ReadPtr@GameOSFile@@QAEXPAPAVGameThing@@@Z        // 0x00607da0    e8dba3f5ff
                         pop                edi                                           // 0x00607da5    5f
                         pop                esi                                           // 0x00607da6    5e
                         mov                eax, 0x00000001                               // 0x00607da7    b801000000
                         pop                ebx                                           // 0x00607dac    5b
                         ret                0x0004                                        // 0x00607dad    c20400
.Lbl_addr_0x00607db0:    pop                esi                                           // 0x00607db0    5e
                         xor.s              eax, eax                                      // 0x00607db1    33c0
                         pop                ebx                                           // 0x00607db3    5b
                         ret                0x0004                                        // 0x00607db4    c20400
                         nop                                                              // 0x00607db7    90
                         nop                                                              // 0x00607db8    90
                         nop                                                              // 0x00607db9    90
                         nop                                                              // 0x00607dba    90
                         nop                                                              // 0x00607dbb    90
                         nop                                                              // 0x00607dbc    90
                         nop                                                              // 0x00607dbd    90
                         nop                                                              // 0x00607dbe    90
                         nop                                                              // 0x00607dbf    90
