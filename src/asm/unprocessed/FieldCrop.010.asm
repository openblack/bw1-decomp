.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _jmp_addr_0x00607dd0
.globl _jmp_addr_0x00607e10
.globl ?GetHoldType@FieldCrop@@UAE?AW4HOLD_TYPE@@XZ
.globl ?ToBeDeleted@FieldCrop@@UAEXH@Z
.globl ?RemoveMapObject@FieldCrop@@UAEXXZ
.globl ?InsertMapObject@FieldCrop@@UAEXXZ
.globl ?IsFunctional@FieldCrop@@UAEIXZ
.globl ?ApplyThisToMapCoord@FieldCrop@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.globl ?CanBecomeAPhysicsObject@FieldCrop@@UAEIXZ
.globl ?GetPhysicsConstantsType@FieldCrop@@UAEIXZ
.globl ?SetUpPhysOb@FieldCrop@@UAEXPAUPhysOb@@@Z
.globl ?InteractsWithPhysicsObjects@FieldCrop@@UAEIXZ
.globl ?IsARootedObject@FieldCrop@@UAEIXZ
.globl ?ValidToApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z
.globl ?ApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z
.globl ?GetScriptObjectType@Poo@@UAEIXZ
.globl ?GetHoldType@Poo@@UAE?AW4HOLD_TYPE@@XZ
.globl ?InterfaceSetInMagicHand@FieldCrop@@UAEIPAVGInterfaceStatus@@@Z
.globl ?CreatureMustAvoid@FieldCrop@@UAE_NPAVCreature@@@Z
.globl ?SetLife@FieldCrop@@UAEXM@Z

?GetHoldType@FieldCrop@@UAE?AW4HOLD_TYPE@@XZ:
                         mov                eax, 0x00000006                               // 0x00607dc0    b806000000
                         ret                                                              // 0x00607dc5    c3
                         nop                                                              // 0x00607dc6    90
                         nop                                                              // 0x00607dc7    90
                         nop                                                              // 0x00607dc8    90
                         nop                                                              // 0x00607dc9    90
                         nop                                                              // 0x00607dca    90
                         nop                                                              // 0x00607dcb    90
                         nop                                                              // 0x00607dcc    90
                         nop                                                              // 0x00607dcd    90
                         nop                                                              // 0x00607dce    90
                         nop                                                              // 0x00607dcf    90
_jmp_addr_0x00607dd0:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00607dd0    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00607dd4    8b542408
                         push               esi                                           // 0x00607dd8    56
                         push               edi                                           // 0x00607dd9    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00607dda    8b7c241c
                         push               edi                                           // 0x00607dde    57
                         push               eax                                           // 0x00607ddf    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00607de0    8b442414
                         mov.s              esi, ecx                                      // 0x00607de4    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00607de6    8b4c241c
                         push               ecx                                           // 0x00607dea    51
                         push               edx                                           // 0x00607deb    52
                         push               eax                                           // 0x00607dec    50
                         mov.s              ecx, esi                                      // 0x00607ded    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x00607def    e84cf0ffff
                         push               edi                                           // 0x00607df4    57
                         mov.s              ecx, esi                                      // 0x00607df5    8bce
                         mov                dword ptr [esi], 0x008e2f18                   // 0x00607df7    c706182f8e00
                         call               ?SetLife@FieldCrop@@UAEXM@Z                   // 0x00607dfd    e8de030000
                         pop                edi                                           // 0x00607e02    5f
                         mov.s              eax, esi                                      // 0x00607e03    8bc6
                         pop                esi                                           // 0x00607e05    5e
                         ret                0x0014                                        // 0x00607e06    c21400
                         nop                                                              // 0x00607e09    90
                         nop                                                              // 0x00607e0a    90
                         nop                                                              // 0x00607e0b    90
                         nop                                                              // 0x00607e0c    90
                         nop                                                              // 0x00607e0d    90
                         nop                                                              // 0x00607e0e    90
                         nop                                                              // 0x00607e0f    90
_jmp_addr_0x00607e10:    mov                dword ptr [ecx], 0x008e2f18                   // 0x00607e10    c701182f8e00
                         {disp32} jmp       _jmp_addr_0x00606ed0                          // 0x00607e16    e9b5f0ffff
                         nop                                                              // 0x00607e1b    90
                         nop                                                              // 0x00607e1c    90
                         nop                                                              // 0x00607e1d    90
                         nop                                                              // 0x00607e1e    90
                         nop                                                              // 0x00607e1f    90
?ToBeDeleted@FieldCrop@@UAEXH@Z:
                         push               esi                                           // 0x00607e20    56
                         mov.s              esi, ecx                                      // 0x00607e21    8bf1
                         call               .Lbl_addr_0x00608240                          // 0x00607e23    e818040000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00607e28    8b442408
                         push               eax                                           // 0x00607e2c    50
                         mov.s              ecx, esi                                      // 0x00607e2d    8bce
                         call               ?ToBeDeleted@MobileObject@@UAEXH@Z            // 0x00607e2f    e8ccf0ffff
                         pop                esi                                           // 0x00607e34    5e
                         ret                0x0004                                        // 0x00607e35    c20400
                         nop                                                              // 0x00607e38    90
                         nop                                                              // 0x00607e39    90
                         nop                                                              // 0x00607e3a    90
                         nop                                                              // 0x00607e3b    90
                         nop                                                              // 0x00607e3c    90
                         nop                                                              // 0x00607e3d    90
                         nop                                                              // 0x00607e3e    90
                         nop                                                              // 0x00607e3f    90
                         sub                esp, 0x0c                                     // 0x00607e40    83ec0c
                         push               ebx                                           // 0x00607e43    53
                         push               ebp                                           // 0x00607e44    55
                         push               edi                                           // 0x00607e45    57
                         push               0x0000027a                                    // 0x00607e46    687a020000
                         push               0x00bf4238                                    // 0x00607e4b    683842bf00
                         push               0x68                                          // 0x00607e50    6a68
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x00607e52    e899e8e2ff
                         xor.s              ebp, ebp                                      // 0x00607e57    33ed
                         add                esp, 0x0c                                     // 0x00607e59    83c40c
                         cmp.s              eax, ebp                                      // 0x00607e5c    3bc5
                         {disp32} je        .Lbl_addr_0x00607ffb                          // 0x00607e5e    0f8497010000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00607e64    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00607e68    8b542428
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00607e6c    8b5c241c
                         push               ecx                                           // 0x00607e70    51
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00607e71    8b4c2428
                         push               edx                                           // 0x00607e75    52
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00607e76    8b542428
                         push               ecx                                           // 0x00607e7a    51
                         push               edx                                           // 0x00607e7b    52
                         push               ebx                                           // 0x00607e7c    53
                         mov.s              ecx, eax                                      // 0x00607e7d    8bc8
                         call               _jmp_addr_0x00607dd0                          // 0x00607e7f    e84cffffff
                         mov.s              edi, eax                                      // 0x00607e84    8bf8
                         cmp.s              edi, ebp                                      // 0x00607e86    3bfd
                         {disp32} je        .Lbl_addr_0x006080fd                          // 0x00607e88    0f846f020000
                         mov                eax, dword ptr [edi]                          // 0x00607e8e    8b07
                         push               esi                                           // 0x00607e90    56
                         push               ebx                                           // 0x00607e91    53
                         mov.s              ecx, edi                                      // 0x00607e92    8bcf
                         call               dword ptr [eax + 0x658]                       // 0x00607e94    ff9058060000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00607e9a    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x00607e9d    8b01
                         xor.s              edx, edx                                      // 0x00607e9f    33d2
                         call               dword ptr [eax + 0x58]                        // 0x00607ea1    ff5058
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00607ea4    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x00607ea7    8b01
                         xor.s              edx, edx                                      // 0x00607ea9    33d2
                         call               dword ptr [eax + 0x90]                        // 0x00607eab    ff9090000000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00607eb1    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x00607eb4    8b01
                         xor.s              edx, edx                                      // 0x00607eb6    33d2
                         call               dword ptr [eax + 0x80]                        // 0x00607eb8    ff9080000000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00607ebe    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x00607ec1    8b01
                         xor.s              edx, edx                                      // 0x00607ec3    33d2
                         call               dword ptr [eax + 0x78]                        // 0x00607ec5    ff5078
                         mov                edx, dword ptr [edi]                          // 0x00607ec8    8b17
                         mov.s              ecx, edi                                      // 0x00607eca    8bcf
                         call               dword ptr [edx + 0x120]                       // 0x00607ecc    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00607ed2    d95c2430
                         mov                eax, dword ptr [edi]                          // 0x00607ed6    8b07
                         mov.s              ecx, edi                                      // 0x00607ed8    8bcf
                         call               dword ptr [eax + 0x508]                       // 0x00607eda    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00607ee0    d95c242c
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00607ee4    8b4b08
                         {disp8} mov        esi, dword ptr [edi + 0x40]                   // 0x00607ee7    8b7740
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00607eea    894c2428
                         mov.s              ecx, ebx                                      // 0x00607eee    8bcb
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00607ef0    e89bb11f00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x00607ef5    d8442428
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00607ef9    d95c2414
                         fild               dword ptr [ebx]                               // 0x00607efd    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00607eff    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00607f05    d95c2410
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x00607f09    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00607f0c    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00607f12    d95c2418
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00607f16    d944242c
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x00607f1a    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00607f20    d9442430
                         fnstsw             ax                                            // 0x00607f24    dfe0
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x00607f26    d81d90a38a00
                         test               ah, 0x40                                      // 0x00607f2c    f6c440
                         fnstsw             ax                                            // 0x00607f2f    dfe0
                         {disp32} jne       .Lbl_addr_0x00608090                          // 0x00607f31    0f8559010000
                         test               ah, 0x40                                      // 0x00607f37    f6c440
                         {disp32} jne       .Lbl_addr_0x00608004                          // 0x00607f3a    0f85c4000000
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00607f40    8b542430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00607f44    d9442410
                         {disp8} mov        dword ptr [esi + 0x40], ebp                   // 0x00607f48    896e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebp                   // 0x00607f4b    896e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebp                   // 0x00607f4e    896e38
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x00607f51    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp                   // 0x00607f54    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp                   // 0x00607f57    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x00607f5a    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp                   // 0x00607f5d    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp                   // 0x00607f60    896e18
                         {disp8} mov        dword ptr [esi + 0x34], edx                   // 0x00607f63    895634
                         mov.s              eax, edx                                      // 0x00607f66    8bc2
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00607f68    894624
                         mov.s              ecx, edx                                      // 0x00607f6b    8bca
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x00607f6d    894e14
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x00607f70    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x00607f73    d95e38
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00607f76    d9442414
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x00607f7a    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00607f7d    d95e3c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00607f80    d9442418
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x00607f84    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x00607f87    d95e40
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00607f8a    d944242c
                         fcos                                                             // 0x00607f8e    d9ff
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00607f90    d944242c
                         fsin                                                             // 0x00607f94    d9fe
                         fld                st(0)                                         // 0x00607f96    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00607f98    d84e14
                         fld                st(1)                                         // 0x00607f9b    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00607f9d    d84e2c
                         fld                st(3)                                         // 0x00607fa0    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00607fa2    d84e14
                         faddp              st(1), st                                     // 0x00607fa5    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x00607fa7    d95e14
                         fld                st(2)                                         // 0x00607faa    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00607fac    d84e2c
                         fsub               st, st(1)                                     // 0x00607faf    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x00607fb1    d95e2c
                         fstp               st(0)                                         // 0x00607fb4    ddd8
                         fld                st(0)                                         // 0x00607fb6    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00607fb8    d84e18
                         fld                st(1)                                         // 0x00607fbb    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00607fbd    d84e30
                         fld                st(3)                                         // 0x00607fc0    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00607fc2    d84e18
                         faddp              st(1), st                                     // 0x00607fc5    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00607fc7    d95e18
                         fld                st(2)                                         // 0x00607fca    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00607fcc    d84e30
                         fsub               st, st(1)                                     // 0x00607fcf    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00607fd1    d95e30
                         fstp               st(0)                                         // 0x00607fd4    ddd8
                         fld                st(0)                                         // 0x00607fd6    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00607fd8    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00607fdb    d95c2428
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00607fdf    d84e34
                         fld                st(1)                                         // 0x00607fe2    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00607fe4    d84e1c
                         faddp              st(1), st                                     // 0x00607fe7    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00607fe9    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00607fec    d84e34
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x00607fef    d8642428
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00607ff3    d95e34
                         {disp32} jmp       .Lbl_addr_0x006080d8                          // 0x00607ff6    e9dd000000
.Lbl_addr_0x00607ffb:    pop                edi                                           // 0x00607ffb    5f
                         pop                ebp                                           // 0x00607ffc    5d
                         xor.s              eax, eax                                      // 0x00607ffd    33c0
                         pop                ebx                                           // 0x00607fff    5b
                         add                esp, 0x0c                                     // 0x00608000    83c40c
                         ret                                                              // 0x00608003    c3
.Lbl_addr_0x00608004:    {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x00608004    8d5e14
                         mov.s              ecx, ebx                                      // 0x00608007    8bcb
                         call               ?SetIdentityMatrix@LHMatrix@@QAEXXZ                 // 0x00608009    e8f2b4dfff
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0060800e    d944242c
                         fcos                                                             // 0x00608012    d9ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00608014    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00608018    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0060801c    8b4c2418
                         {disp8} mov        dword ptr [ebx + 0x24], edx                   // 0x00608020    895324
                         {disp8} mov        dword ptr [ebx + 0x28], eax                   // 0x00608023    894328
                         {disp8} mov        dword ptr [ebx + 0x2c], ecx                   // 0x00608026    894b2c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00608029    d944242c
                         fsin                                                             // 0x0060802d    d9fe
                         fld                st(0)                                         // 0x0060802f    d9c0
                         fmul               dword ptr [ebx]                               // 0x00608031    d80b
                         fld                st(2)                                         // 0x00608033    d9c2
                         fmul               dword ptr [ebx]                               // 0x00608035    d80b
                         fld                st(2)                                         // 0x00608037    d9c2
                         {disp8} fmul       dword ptr [ebx + 0x18]                        // 0x00608039    d84b18
                         faddp              st(1), st                                     // 0x0060803c    dec1
                         fstp               dword ptr [ebx]                               // 0x0060803e    d91b
                         fld                st(2)                                         // 0x00608040    d9c2
                         {disp8} fmul       dword ptr [ebx + 0x18]                        // 0x00608042    d84b18
                         fsub               st, st(1)                                     // 0x00608045    d8e1
                         {disp8} fstp       dword ptr [ebx + 0x18]                        // 0x00608047    d95b18
                         fstp               st(0)                                         // 0x0060804a    ddd8
                         fld                st(0)                                         // 0x0060804c    d9c0
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0060804e    d84b04
                         fld                st(2)                                         // 0x00608051    d9c2
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x00608053    d84b04
                         fld                st(2)                                         // 0x00608056    d9c2
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x00608058    d84b1c
                         faddp              st(1), st                                     // 0x0060805b    dec1
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0060805d    d95b04
                         fld                st(2)                                         // 0x00608060    d9c2
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x00608062    d84b1c
                         fsub               st, st(1)                                     // 0x00608065    d8e1
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x00608067    d95b1c
                         fstp               st(0)                                         // 0x0060806a    ddd8
                         fld                st(0)                                         // 0x0060806c    d9c0
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x0060806e    d84b08
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00608071    d95c2428
                         fld                st(1)                                         // 0x00608075    d9c1
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x00608077    d84b08
                         fxch               st(1)                                         // 0x0060807a    d9c9
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x0060807c    d84b20
                         faddp              st(1), st                                     // 0x0060807f    dec1
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x00608081    d95b08
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x00608084    d84b20
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x00608087    d8642428
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x0060808b    d95b20
                         {disp8} jmp        .Lbl_addr_0x006080d8                          // 0x0060808e    eb48
.Lbl_addr_0x00608090:    test               ah, 0x40                                      // 0x00608090    f6c440
                         {disp8} jne        .Lbl_addr_0x006080cc                          // 0x00608093    7537
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00608095    8b542430
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00608099    8d4e14
                         mov.s              eax, edx                                      // 0x0060809c    8bc2
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x0060809e    895120
                         mov                dword ptr [ecx], edx                          // 0x006080a1    8911
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006080a3    8d542410
                         {disp8} mov        dword ptr [ecx + 0x2c], ebp                   // 0x006080a7    89692c
                         {disp8} mov        dword ptr [ecx + 0x28], ebp                   // 0x006080aa    896928
                         {disp8} mov        dword ptr [ecx + 0x24], ebp                   // 0x006080ad    896924
                         {disp8} mov        dword ptr [ecx + 0x1c], ebp                   // 0x006080b0    89691c
                         {disp8} mov        dword ptr [ecx + 0x18], ebp                   // 0x006080b3    896918
                         {disp8} mov        dword ptr [ecx + 0x14], ebp                   // 0x006080b6    896914
                         {disp8} mov        dword ptr [ecx + 0x0c], ebp                   // 0x006080b9    89690c
                         {disp8} mov        dword ptr [ecx + 0x08], ebp                   // 0x006080bc    896908
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x006080bf    896904
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x006080c2    894110
                         call               ?PostTranslation@LHMatrix@@QAEXABULHPoint@@@Z      // 0x006080c5    e8a6b4dfff
                         {disp8} jmp        .Lbl_addr_0x006080d8                          // 0x006080ca    eb0c
.Lbl_addr_0x006080cc:    {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006080cc    8d542410
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006080d0    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABULHPoint@@@Z     // 0x006080d3    e858b4dfff
.Lbl_addr_0x006080d8:    {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x006080d8    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x006080dc    8b4c242c
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x006080e0    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx                   // 0x006080e3    894e48
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x006080e6    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x006080e9    8b01
                         mov                edx, 0x00000001                               // 0x006080eb    ba01000000
                         call               dword ptr [eax + 0x10]                        // 0x006080f0    ff5010
                         pop                esi                                           // 0x006080f3    5e
                         mov.s              eax, edi                                      // 0x006080f4    8bc7
                         pop                edi                                           // 0x006080f6    5f
                         pop                ebp                                           // 0x006080f7    5d
                         pop                ebx                                           // 0x006080f8    5b
                         add                esp, 0x0c                                     // 0x006080f9    83c40c
                         ret                                                              // 0x006080fc    c3
.Lbl_addr_0x006080fd:    mov.s              eax, edi                                      // 0x006080fd    8bc7
                         pop                edi                                           // 0x006080ff    5f
                         pop                ebp                                           // 0x00608100    5d
                         pop                ebx                                           // 0x00608101    5b
                         add                esp, 0x0c                                     // 0x00608102    83c40c
                         ret                                                              // 0x00608105    c3
                         nop                                                              // 0x00608106    90
                         nop                                                              // 0x00608107    90
                         nop                                                              // 0x00608108    90
                         nop                                                              // 0x00608109    90
                         nop                                                              // 0x0060810a    90
                         nop                                                              // 0x0060810b    90
                         nop                                                              // 0x0060810c    90
                         nop                                                              // 0x0060810d    90
                         nop                                                              // 0x0060810e    90
                         nop                                                              // 0x0060810f    90
.Lbl_addr_0x00608110:    {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00608110    8b4958
                         push               0x0                                           // 0x00608113    6a00
                         push               0x00be9d68                                    // 0x00608115    68689dbe00
                         push               0x009c7f50                                    // 0x0060811a    68507f9c00
                         push               0x0                                           // 0x0060811f    6a00
                         push               ecx                                           // 0x00608121    51
                         call               ___RTDynamicCast                              // 0x00608122    e8f2d81b00
                         add                esp, 0x14                                     // 0x00608127    83c414
                         ret                                                              // 0x0060812a    c3
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x0060812b    e8c996dfff
.Lbl_addr_0x00608130:    mov                eax, dword ptr [ecx]                          // 0x00608130    8b01
                         push               esi                                           // 0x00608132    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x00608133    8b7128
                         call               dword ptr [eax + 0x11c]                       // 0x00608136    ff901c010000
                         {disp8} fmul       dword ptr [esi + 0x68]                        // 0x0060813c    d84e68
                         pop                esi                                           // 0x0060813f    5e
                         ret                                                              // 0x00608140    c3
                         nop                                                              // 0x00608141    90
                         nop                                                              // 0x00608142    90
                         nop                                                              // 0x00608143    90
                         nop                                                              // 0x00608144    90
                         nop                                                              // 0x00608145    90
                         nop                                                              // 0x00608146    90
                         nop                                                              // 0x00608147    90
                         nop                                                              // 0x00608148    90
                         nop                                                              // 0x00608149    90
                         nop                                                              // 0x0060814a    90
                         nop                                                              // 0x0060814b    90
                         nop                                                              // 0x0060814c    90
                         nop                                                              // 0x0060814d    90
                         nop                                                              // 0x0060814e    90
                         nop                                                              // 0x0060814f    90
                         push               ecx                                           // 0x00608150    51
                         push               esi                                           // 0x00608151    56
                         mov.s              esi, ecx                                      // 0x00608152    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00608154    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x00608156    ff901c010000
                         {disp32} fcomp     dword ptr [__real@4@3fff8000000000000000]                   // 0x0060815c    d81d90a38a00
                         fnstsw             ax                                            // 0x00608162    dfe0
                         test               ah, 0x01                                      // 0x00608164    f6c401
                         {disp8} je         .Lbl_addr_0x006081c5                          // 0x00608167    745c
                         mov.s              ecx, esi                                      // 0x00608169    8bce
                         call               .Lbl_addr_0x00608280                          // 0x0060816b    e810010000
                         test               eax, eax                                      // 0x00608170    85c0
                         {disp8} je         .Lbl_addr_0x006081c5                          // 0x00608172    7451
                         mov.s              ecx, esi                                      // 0x00608174    8bce
                         call               .Lbl_addr_0x00608130                          // 0x00608176    e8b5ffffff
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0060817b    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0060817f    8b44240c
                         mov                edx, dword ptr [esi]                          // 0x00608183    8b16
                         push               0x0                                           // 0x00608185    6a00
                         push               eax                                           // 0x00608187    50
                         mov.s              ecx, esi                                      // 0x00608188    8bce
                         call               dword ptr [edx + 0x5cc]                       // 0x0060818a    ff92cc050000
                         fstp               st(0)                                         // 0x00608190    ddd8
                         mov                edx, dword ptr [esi]                          // 0x00608192    8b16
                         mov.s              ecx, esi                                      // 0x00608194    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x00608196    ff522c
                         test               eax, eax                                      // 0x00608199    85c0
                         {disp8} je         .Lbl_addr_0x006081ad                          // 0x0060819b    7410
                         mov.s              ecx, esi                                      // 0x0060819d    8bce
                         call               .Lbl_addr_0x00608130                          // 0x0060819f    e88cffffff
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x006081a4    d8642404
                         pop                esi                                           // 0x006081a8    5e
                         pop                ecx                                           // 0x006081a9    59
                         ret                0x0004                                        // 0x006081aa    c20400
.Lbl_addr_0x006081ad:    push               edi                                           // 0x006081ad    57
                         mov                edi, dword ptr [esi]                          // 0x006081ae    8b3e
                         mov.s              ecx, esi                                      // 0x006081b0    8bce
                         call               dword ptr [edi + 0x11c]                       // 0x006081b2    ff971c010000
                         push               ecx                                           // 0x006081b8    51
                         mov.s              ecx, esi                                      // 0x006081b9    8bce
                         fstp               dword ptr [esp]                               // 0x006081bb    d91c24
                         call               dword ptr [edi + 0x124]                       // 0x006081be    ff9724010000
                         pop                edi                                           // 0x006081c4    5f
.Lbl_addr_0x006081c5:    {disp32} fld       dword ptr [__real@4@00000000000000000000]                   // 0x006081c5    d90598a38a00
                         pop                esi                                           // 0x006081cb    5e
                         pop                ecx                                           // 0x006081cc    59
                         ret                0x0004                                        // 0x006081cd    c20400
                         call               .Lbl_addr_0x00608240                          // 0x006081d0    e86b000000
                         ret                0x0004                                        // 0x006081d5    c20400
                         nop                                                              // 0x006081d8    90
                         nop                                                              // 0x006081d9    90
                         nop                                                              // 0x006081da    90
                         nop                                                              // 0x006081db    90
                         nop                                                              // 0x006081dc    90
                         nop                                                              // 0x006081dd    90
                         nop                                                              // 0x006081de    90
                         nop                                                              // 0x006081df    90
?SetLife@FieldCrop@@UAEXM@Z:
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006081e0    d9442404
                         push               esi                                           // 0x006081e4    56
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x006081e5    d81d98a38a00
                         mov.s              esi, ecx                                      // 0x006081eb    8bf1
                         fnstsw             ax                                            // 0x006081ed    dfe0
                         test               ah, 0x41                                      // 0x006081ef    f6c441
                         {disp8} je         .Lbl_addr_0x006081ff                          // 0x006081f2    740b
                         mov                eax, dword ptr [esi]                          // 0x006081f4    8b06
                         push               0x0                                           // 0x006081f6    6a00
                         call               dword ptr [eax + 0xc]                         // 0x006081f8    ff500c
                         pop                esi                                           // 0x006081fb    5e
                         ret                0x0004                                        // 0x006081fc    c20400
.Lbl_addr_0x006081ff:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006081ff    8b4c2408
                         push               ebx                                           // 0x00608203    53
                         push               edi                                           // 0x00608204    57
                         push               ecx                                           // 0x00608205    51
                         mov.s              ecx, esi                                      // 0x00608206    8bce
                         call               @SetLife__6ObjectFf@12                        // 0x00608208    e8331f0300
                         mov                edi, dword ptr [esi]                          // 0x0060820d    8b3e
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x0060820f    8b5e28
                         mov.s              ecx, esi                                      // 0x00608212    8bce
                         call               dword ptr [edi + 0x11c]                       // 0x00608214    ff971c010000
                         {disp32} fmul      dword ptr [ebx + 0x00000110]                  // 0x0060821a    d88b10010000
                         push               ecx                                           // 0x00608220    51
                         mov.s              ecx, esi                                      // 0x00608221    8bce
                         fstp               dword ptr [esp]                               // 0x00608223    d91c24
                         call               dword ptr [edi + 0x124]                       // 0x00608226    ff9724010000
                         pop                edi                                           // 0x0060822c    5f
                         pop                ebx                                           // 0x0060822d    5b
                         pop                esi                                           // 0x0060822e    5e
                         ret                0x0004                                        // 0x0060822f    c20400
                         nop                                                              // 0x00608232    90
                         nop                                                              // 0x00608233    90
                         nop                                                              // 0x00608234    90
                         nop                                                              // 0x00608235    90
                         nop                                                              // 0x00608236    90
                         nop                                                              // 0x00608237    90
                         nop                                                              // 0x00608238    90
                         nop                                                              // 0x00608239    90
                         nop                                                              // 0x0060823a    90
                         nop                                                              // 0x0060823b    90
                         nop                                                              // 0x0060823c    90
                         nop                                                              // 0x0060823d    90
                         nop                                                              // 0x0060823e    90
                         nop                                                              // 0x0060823f    90
.Lbl_addr_0x00608240:    {disp32} jmp       .Lbl_addr_0x00608110                          // 0x00608240    e9cbfeffff
                         nop                                                              // 0x00608245    90
                         nop                                                              // 0x00608246    90
                         nop                                                              // 0x00608247    90
                         nop                                                              // 0x00608248    90
                         nop                                                              // 0x00608249    90
                         nop                                                              // 0x0060824a    90
                         nop                                                              // 0x0060824b    90
                         nop                                                              // 0x0060824c    90
                         nop                                                              // 0x0060824d    90
                         nop                                                              // 0x0060824e    90
                         nop                                                              // 0x0060824f    90
?RemoveMapObject@FieldCrop@@UAEXXZ:
                         {disp32} jmp       @RemoveMapObject__6ObjectFv@4                 // 0x00608250    e94be50200
                         nop                                                              // 0x00608255    90
                         nop                                                              // 0x00608256    90
                         nop                                                              // 0x00608257    90
                         nop                                                              // 0x00608258    90
                         nop                                                              // 0x00608259    90
                         nop                                                              // 0x0060825a    90
                         nop                                                              // 0x0060825b    90
                         nop                                                              // 0x0060825c    90
                         nop                                                              // 0x0060825d    90
                         nop                                                              // 0x0060825e    90
                         nop                                                              // 0x0060825f    90
?InsertMapObject@FieldCrop@@UAEXXZ:
                         {disp32} jmp       @InsertMapObject__6ObjectFv@4                 // 0x00608260    e9dbe40200
                         nop                                                              // 0x00608265    90
                         nop                                                              // 0x00608266    90
                         nop                                                              // 0x00608267    90
                         nop                                                              // 0x00608268    90
                         nop                                                              // 0x00608269    90
                         nop                                                              // 0x0060826a    90
                         nop                                                              // 0x0060826b    90
                         nop                                                              // 0x0060826c    90
                         nop                                                              // 0x0060826d    90
                         nop                                                              // 0x0060826e    90
                         nop                                                              // 0x0060826f    90
?IsFunctional@FieldCrop@@UAEIXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00608270    8b01
                         {disp8} jmp        dword ptr [eax + 0x2c]                        // 0x00608272    ff602c
                         nop                                                              // 0x00608275    90
                         nop                                                              // 0x00608276    90
                         nop                                                              // 0x00608277    90
                         nop                                                              // 0x00608278    90
                         nop                                                              // 0x00608279    90
                         nop                                                              // 0x0060827a    90
                         nop                                                              // 0x0060827b    90
                         nop                                                              // 0x0060827c    90
                         nop                                                              // 0x0060827d    90
                         nop                                                              // 0x0060827e    90
                         nop                                                              // 0x0060827f    90
.Lbl_addr_0x00608280:    push               esi                                           // 0x00608280    56
                         mov.s              esi, ecx                                      // 0x00608281    8bf1
                         call               .Lbl_addr_0x00608110                          // 0x00608283    e888feffff
                         test               eax, eax                                      // 0x00608288    85c0
                         {disp8} je         .Lbl_addr_0x006082a1                          // 0x0060828a    7415
                         mov                eax, dword ptr [esi]                          // 0x0060828c    8b06
                         mov.s              ecx, esi                                      // 0x0060828e    8bce
                         call               dword ptr [eax + 0x178]                       // 0x00608290    ff9078010000
                         test               eax, eax                                      // 0x00608296    85c0
                         {disp8} je         .Lbl_addr_0x006082a1                          // 0x00608298    7407
                         mov                eax, 0x00000001                               // 0x0060829a    b801000000
                         pop                esi                                           // 0x0060829f    5e
                         ret                                                              // 0x006082a0    c3
.Lbl_addr_0x006082a1:    xor.s              eax, eax                                      // 0x006082a1    33c0
                         pop                esi                                           // 0x006082a3    5e
                         ret                                                              // 0x006082a4    c3
                         nop                                                              // 0x006082a5    90
                         nop                                                              // 0x006082a6    90
                         nop                                                              // 0x006082a7    90
                         nop                                                              // 0x006082a8    90
                         nop                                                              // 0x006082a9    90
                         nop                                                              // 0x006082aa    90
                         nop                                                              // 0x006082ab    90
                         nop                                                              // 0x006082ac    90
                         nop                                                              // 0x006082ad    90
                         nop                                                              // 0x006082ae    90
                         nop                                                              // 0x006082af    90
?ApplyThisToMapCoord@FieldCrop@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006082b0    8b542404
                         mov                eax, dword ptr [ecx]                          // 0x006082b4    8b01
                         push               0x0                                           // 0x006082b6    6a00
                         push               edx                                           // 0x006082b8    52
                         call               dword ptr [eax + 0x758]                       // 0x006082b9    ff9058070000
                         mov                eax, 0x00000016                               // 0x006082bf    b816000000
                         ret                0x000c                                        // 0x006082c4    c20c00
                         nop                                                              // 0x006082c7    90
                         nop                                                              // 0x006082c8    90
                         nop                                                              // 0x006082c9    90
                         nop                                                              // 0x006082ca    90
                         nop                                                              // 0x006082cb    90
                         nop                                                              // 0x006082cc    90
                         nop                                                              // 0x006082cd    90
                         nop                                                              // 0x006082ce    90
                         nop                                                              // 0x006082cf    90
?CanBecomeAPhysicsObject@FieldCrop@@UAEIXZ:
                         mov                eax, 0x00000001                               // 0x006082d0    b801000000
                         ret                                                              // 0x006082d5    c3
                         nop                                                              // 0x006082d6    90
                         nop                                                              // 0x006082d7    90
                         nop                                                              // 0x006082d8    90
                         nop                                                              // 0x006082d9    90
                         nop                                                              // 0x006082da    90
                         nop                                                              // 0x006082db    90
                         nop                                                              // 0x006082dc    90
                         nop                                                              // 0x006082dd    90
                         nop                                                              // 0x006082de    90
                         nop                                                              // 0x006082df    90
?GetPhysicsConstantsType@FieldCrop@@UAEIXZ:
                         mov                eax, 0x00000006                               // 0x006082e0    b806000000
                         ret                                                              // 0x006082e5    c3
                         nop                                                              // 0x006082e6    90
                         nop                                                              // 0x006082e7    90
                         nop                                                              // 0x006082e8    90
                         nop                                                              // 0x006082e9    90
                         nop                                                              // 0x006082ea    90
                         nop                                                              // 0x006082eb    90
                         nop                                                              // 0x006082ec    90
                         nop                                                              // 0x006082ed    90
                         nop                                                              // 0x006082ee    90
                         nop                                                              // 0x006082ef    90
?SetUpPhysOb@FieldCrop@@UAEXPAUPhysOb@@@Z:
                         push               esi                                           // 0x006082f0    56
                         mov.s              esi, ecx                                      // 0x006082f1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x006082f3    8b06
                         call               dword ptr [eax + 0x120]                       // 0x006082f5    ff9020010000
                         mov                edx, dword ptr [esi]                          // 0x006082fb    8b16
                         push               ecx                                           // 0x006082fd    51
                         mov.s              ecx, esi                                      // 0x006082fe    8bce
                         fstp               dword ptr [esp]                               // 0x00608300    d91c24
                         call               dword ptr [edx + 0x64]                        // 0x00608303    ff5264
                         mov                eax, dword ptr [esi]                          // 0x00608306    8b06
                         push               ecx                                           // 0x00608308    51
                         mov.s              ecx, esi                                      // 0x00608309    8bce
                         fstp               dword ptr [esp]                               // 0x0060830b    d91c24
                         call               dword ptr [eax + 0x42c]                       // 0x0060830e    ff902c040000
                         mov                edx, dword ptr [esi]                          // 0x00608314    8b16
                         push               ecx                                           // 0x00608316    51
                         mov.s              ecx, esi                                      // 0x00608317    8bce
                         fstp               dword ptr [esp]                               // 0x00608319    d91c24
                         call               dword ptr [edx + 0x638]                       // 0x0060831c    ff9238060000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00608322    8b442414
                         push               ecx                                           // 0x00608326    51
                         fstp               dword ptr [esp]                               // 0x00608327    d91c24
                         push               eax                                           // 0x0060832a    50
                         mov.s              ecx, esi                                      // 0x0060832b    8bce
                         call               _jmp_addr_0x0063a230                          // 0x0060832d    e8fe1e0300
                         pop                esi                                           // 0x00608332    5e
                         ret                0x0004                                        // 0x00608333    c20400
                         nop                                                              // 0x00608336    90
                         nop                                                              // 0x00608337    90
                         nop                                                              // 0x00608338    90
                         nop                                                              // 0x00608339    90
                         nop                                                              // 0x0060833a    90
                         nop                                                              // 0x0060833b    90
                         nop                                                              // 0x0060833c    90
                         nop                                                              // 0x0060833d    90
                         nop                                                              // 0x0060833e    90
                         nop                                                              // 0x0060833f    90
?InteractsWithPhysicsObjects@FieldCrop@@UAEIXZ:
                         xor.s              al, al                                        // 0x00608340    32c0
                         ret                                                              // 0x00608342    c3
                         nop                                                              // 0x00608343    90
                         nop                                                              // 0x00608344    90
                         nop                                                              // 0x00608345    90
                         nop                                                              // 0x00608346    90
                         nop                                                              // 0x00608347    90
                         nop                                                              // 0x00608348    90
                         nop                                                              // 0x00608349    90
                         nop                                                              // 0x0060834a    90
                         nop                                                              // 0x0060834b    90
                         nop                                                              // 0x0060834c    90
                         nop                                                              // 0x0060834d    90
                         nop                                                              // 0x0060834e    90
                         nop                                                              // 0x0060834f    90
?IsARootedObject@FieldCrop@@UAEIXZ:
                         mov                eax, 0x00000001                               // 0x00608350    b801000000
                         ret                                                              // 0x00608355    c3
                         nop                                                              // 0x00608356    90
                         nop                                                              // 0x00608357    90
                         nop                                                              // 0x00608358    90
                         nop                                                              // 0x00608359    90
                         nop                                                              // 0x0060835a    90
                         nop                                                              // 0x0060835b    90
                         nop                                                              // 0x0060835c    90
                         nop                                                              // 0x0060835d    90
                         nop                                                              // 0x0060835e    90
                         nop                                                              // 0x0060835f    90
?ValidToApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00608360    8b4c2408
                         test               ecx, ecx                                      // 0x00608364    85c9
                         {disp8} je         .Lbl_addr_0x0060837e                          // 0x00608366    7416
                         mov                eax, dword ptr [ecx]                          // 0x00608368    8b01
                         push               0x0                                           // 0x0060836a    6a00
                         call               dword ptr [eax + 0x680]                       // 0x0060836c    ff9080060000
                         test               eax, eax                                      // 0x00608372    85c0
                         {disp8} je         .Lbl_addr_0x0060837e                          // 0x00608374    7408
                         mov                eax, 0x00000001                               // 0x00608376    b801000000
                         ret                0x0008                                        // 0x0060837b    c20800
.Lbl_addr_0x0060837e:    xor.s              eax, eax                                      // 0x0060837e    33c0
                         ret                0x0008                                        // 0x00608380    c20800
                         nop                                                              // 0x00608383    90
                         nop                                                              // 0x00608384    90
                         nop                                                              // 0x00608385    90
                         nop                                                              // 0x00608386    90
                         nop                                                              // 0x00608387    90
                         nop                                                              // 0x00608388    90
                         nop                                                              // 0x00608389    90
                         nop                                                              // 0x0060838a    90
                         nop                                                              // 0x0060838b    90
                         nop                                                              // 0x0060838c    90
                         nop                                                              // 0x0060838d    90
                         nop                                                              // 0x0060838e    90
                         nop                                                              // 0x0060838f    90
?ApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00608390    8b442408
                         test               eax, eax                                      // 0x00608394    85c0
                         {disp8} je         .Lbl_addr_0x006083b6                          // 0x00608396    741e
                         mov                edx, dword ptr [eax]                          // 0x00608398    8b10
                         push               esi                                           // 0x0060839a    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0060839b    8b742408
                         push               esi                                           // 0x0060839f    56
                         push               ecx                                           // 0x006083a0    51
                         mov.s              ecx, eax                                      // 0x006083a1    8bc8
                         call               dword ptr [edx + 0x684]                       // 0x006083a3    ff9284060000
                         test               eax, eax                                      // 0x006083a9    85c0
                         pop                esi                                           // 0x006083ab    5e
                         {disp8} je         .Lbl_addr_0x006083b6                          // 0x006083ac    7408
                         mov                eax, 0x00000003                               // 0x006083ae    b803000000
                         ret                0x000c                                        // 0x006083b3    c20c00
.Lbl_addr_0x006083b6:    xor.s              eax, eax                                      // 0x006083b6    33c0
                         ret                0x000c                                        // 0x006083b8    c20c00
                         call               ?CalculateInfluence@GameThing@@UAEMABUMapCoords@@@Z +9                          // 0x006083bb    e83994dfff
?GetScriptObjectType@Poo@@UAEIXZ:
                         mov                eax, 0x00000019                               // 0x006083c0    b819000000
                         ret                                                              // 0x006083c5    c3
                         nop                                                              // 0x006083c6    90
                         nop                                                              // 0x006083c7    90
                         nop                                                              // 0x006083c8    90
                         nop                                                              // 0x006083c9    90
                         nop                                                              // 0x006083ca    90
                         nop                                                              // 0x006083cb    90
                         nop                                                              // 0x006083cc    90
                         nop                                                              // 0x006083cd    90
                         nop                                                              // 0x006083ce    90
                         nop                                                              // 0x006083cf    90
?GetHoldType@Poo@@UAE?AW4HOLD_TYPE@@XZ:
                         mov                eax, 0x00000001                               // 0x006083d0    b801000000
                         ret                                                              // 0x006083d5    c3
                         nop                                                              // 0x006083d6    90
                         nop                                                              // 0x006083d7    90
                         nop                                                              // 0x006083d8    90
                         nop                                                              // 0x006083d9    90
                         nop                                                              // 0x006083da    90
                         nop                                                              // 0x006083db    90
                         nop                                                              // 0x006083dc    90
                         nop                                                              // 0x006083dd    90
                         nop                                                              // 0x006083de    90
                         nop                                                              // 0x006083df    90
?InterfaceSetInMagicHand@FieldCrop@@UAEIPAVGInterfaceStatus@@@Z:
                         push               esi                                           // 0x006083e0    56
                         mov.s              esi, ecx                                      // 0x006083e1    8bf1
                         push               edi                                           // 0x006083e3    57
                         mov                ecx, 0x00d4d590                               // 0x006083e4    b990d5d400
                         call               _jmp_addr_0x0066cc70                          // 0x006083e9    e882480600
                         call               __ftol                                        // 0x006083ee    e80d901900
                         push               0x0                                           // 0x006083f3    6a00
                         push               0x3f800000                                    // 0x006083f5    680000803f
                         push               0x0                                           // 0x006083fa    6a00
                         mov.s              edi, eax                                      // 0x006083fc    8bf8
                         mov                eax, dword ptr [esi]                          // 0x006083fe    8b06
                         push               0x0                                           // 0x00608400    6a00
                         mov.s              ecx, esi                                      // 0x00608402    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00608404    ff5048
                         push               eax                                           // 0x00608407    50
                         push               0x0                                           // 0x00608408    6a00
                         push               edi                                           // 0x0060840a    57
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0060840b    8d4e14
                         push               0x00d4d590                                    // 0x0060840e    6890d5d400
                         push               ecx                                           // 0x00608413    51
                         call               _jmp_addr_0x0066cf10                          // 0x00608414    e8f74a0600
                         add                esp, 0x24                                     // 0x00608419    83c424
                         test               eax, eax                                      // 0x0060841c    85c0
                         {disp8} je         .Lbl_addr_0x0060842a                          // 0x0060841e    740a
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00608420    8b4c240c
                         push               eax                                           // 0x00608424    50
                         call               _jmp_addr_0x005dc870                          // 0x00608425    e84644fdff
.Lbl_addr_0x0060842a:    mov                edx, dword ptr [esi]                          // 0x0060842a    8b16
                         push               0x0                                           // 0x0060842c    6a00
                         mov.s              ecx, esi                                      // 0x0060842e    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00608430    ff520c
                         pop                edi                                           // 0x00608433    5f
                         xor.s              eax, eax                                      // 0x00608434    33c0
                         pop                esi                                           // 0x00608436    5e
                         ret                0x0004                                        // 0x00608437    c20400
                         call               dword ptr [__imp__BinkGetSummary@8]           // 0x0060843a    ff1560998a00
?CreatureMustAvoid@FieldCrop@@UAE_NPAVCreature@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00608440    8b442404
                         test               eax, eax                                      // 0x00608444    85c0
                         {disp8} je         .Lbl_addr_0x00608467                          // 0x00608446    741f
                         {disp8} mov        ax, word ptr [eax + 0x24]                     // 0x00608448    668b4024
                         not                ax                                            // 0x0060844c    66f7d0
                         shr                eax, 0xa                                      // 0x0060844f    c1e80a
                         test               al, 0x01                                      // 0x00608452    a801
                         {disp8} je         .Lbl_addr_0x00608467                          // 0x00608454    7411
                         call               _jmp_addr_0x00637cc0                          // 0x00608456    e865f80200
                         test               eax, eax                                      // 0x0060845b    85c0
                         {disp8} je         .Lbl_addr_0x00608467                          // 0x0060845d    7408
                         mov                eax, 0x00000001                               // 0x0060845f    b801000000
                         ret                0x0004                                        // 0x00608464    c20400
.Lbl_addr_0x00608467:    xor.s              eax, eax                                      // 0x00608467    33c0
                         ret                0x0004                                        // 0x00608469    c20400
                         nop                                                              // 0x0060846c    90
                         nop                                                              // 0x0060846d    90
                         nop                                                              // 0x0060846e    90
                         nop                                                              // 0x0060846f    90
