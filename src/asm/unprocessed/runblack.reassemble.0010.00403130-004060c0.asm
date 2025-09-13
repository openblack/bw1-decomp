.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl ?FUN_004056f0@PlannedAbode@@QAE_NH@Z
.globl ?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.globl ?Open@Windmill@@QAEXXZ
.globl ?Close@Windmill@@QAEXXZ
.globl ?PreDraw@Windmill@@QAEIXZ
.globl ?GetAbodeText@Abode@@QAEPADPAD@Z
.globl _jmp_addr_0x00405fa0
.globl _jmp_addr_0x00405fb0
.globl _jmp_addr_0x00405fc0
.globl ?Create@PlannedAbode@@SAPAV1@PAVAbode@@@Z
.globl ?Init@PlannedAbode@@QAEXPAVTown@@@Z
.globl ?GetInfoFromText@GAbodeInfo@@SAHPAD@Z
.globl ?Find@GAbodeInfo@@SAPAV1@W4TRIBE_TYPE@@W4ABODE_NUMBER@@@Z
.globl ?CreateNoInit@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.globl ?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ
.globl ??_GPlannedAbode@@QAEXXZ
.globl ?ToBeDeleted@PlannedAbode@@UAEXH@Z
.globl ?GetTown@PlannedAbode@@QAEPAVTown@@XZ
.globl ?GetDebugText@PlannedAbode@@QAEPADXZ
.globl ?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?GetSaveType@PlannedAbode@@UAEIXZ
.globl ?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z
.globl ?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z
.globl ?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ
.globl ?GetPlayer@Abode@@UAEPAVGPlayer@@XZ
.globl ?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z
.globl ?IncreaseLife@Abode@@UAEXM@Z
.globl ?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z
.globl ?IsCivic@Abode@@UAE_NXZ
.globl ?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ

?GetAbodeText@Abode@@QAEPADPAD@Z:
                         mov                eax, dword ptr [ecx]                          // 0x00405b70    8b01
                         push               esi                                           // 0x00405b72    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x00405b73    8b7128
                         push               edi                                           // 0x00405b76    57
                         call               dword ptr [eax + 0x928]                       // 0x00405b77    ff9028090000
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00405b7d    8b4810
                         {disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00c22fdc]       // 0x00405b80    8b3c8ddc2fc200
                         mov.s              ecx, esi                                      // 0x00405b87    8bce
                         call               ?GetDescription@GAbodeInfo@@QAEPBDXZ          // 0x00405b89    e8d2feffff
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00405b8e    8b74240c
                         push               eax                                           // 0x00405b92    50
                         push               edi                                           // 0x00405b93    57
                         push               0x009c8054                                    // 0x00405b94    6854809c00
                         push               esi                                           // 0x00405b99    56
                         call               _sprintf                                      // 0x00405b9a    e833fc3b00
                         add                esp, 0x10                                     // 0x00405b9f    83c410
                         pop                edi                                           // 0x00405ba2    5f
                         mov.s              eax, esi                                      // 0x00405ba3    8bc6
                         pop                esi                                           // 0x00405ba5    5e
                         ret                0x0004                                        // 0x00405ba6    c20400
                         nop                                                              // 0x00405ba9    90
                         nop                                                              // 0x00405baa    90
                         nop                                                              // 0x00405bab    90
                         nop                                                              // 0x00405bac    90
                         nop                                                              // 0x00405bad    90
                         nop                                                              // 0x00405bae    90
                         nop                                                              // 0x00405baf    90

?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z:
                         sub                esp, 0x00000278                               // 0x00405bb0    81ec78020000
                         push               ebp                                           // 0x00405bb6    55
                         push               esi                                           // 0x00405bb7    56
                         mov.s              esi, ecx                                      // 0x00405bb8    8bf1
                         call               _jmp_addr_0x0056fef0                          // 0x00405bba    e831a31600
                         mov.s              ebp, eax                                      // 0x00405bbf    8be8
                         test               ebp, ebp                                      // 0x00405bc1    85ed
                         {disp32} je        _jmp_addr_0x00405d68                          // 0x00405bc3    0f849f010000
                         push               ebx                                           // 0x00405bc9    53
                         {disp32} mov       ebx, dword ptr [esp + 0x0000028c]             // 0x00405bca    8b9c248c020000
                         test               ebx, ebx                                      // 0x00405bd1    85db
                         push               edi                                           // 0x00405bd3    57
                         {disp8} je         _jmp_addr_0x00405be6                          // 0x00405bd4    7410
                         push               ebx                                           // 0x00405bd6    53
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00405bd7    8d442428
                         push               eax                                           // 0x00405bdb    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00405bdc    8d4e14
                         call               _jmp_addr_0x006055c0                          // 0x00405bdf    e8dcf91f00
                         {disp8} jmp        _jmp_addr_0x00405be9                          // 0x00405be4    eb03
_jmp_addr_0x00405be6:    {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00405be6    8d4614
_jmp_addr_0x00405be9:    mov                ecx, dword ptr [eax]                          // 0x00405be9    8b08
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00405beb    894c2418
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00405bef    8b5004
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00405bf2    8954241c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00405bf6    8b4008
                         mov                edx, dword ptr [esi]                          // 0x00405bf9    8b16
                         mov.s              ecx, esi                                      // 0x00405bfb    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00405bfd    89442420
                         call               dword ptr [edx + 0x48]                        // 0x00405c01    ff5248
                         test               eax, eax                                      // 0x00405c04    85c0
                         {disp8} je         _jmp_addr_0x00405c1b                          // 0x00405c06    7413
                         test               ebx, ebx                                      // 0x00405c08    85db
                         {disp8} jne        _jmp_addr_0x00405c1b                          // 0x00405c0a    750f
                         mov                eax, dword ptr [esi]                          // 0x00405c0c    8b06
                         mov.s              ecx, esi                                      // 0x00405c0e    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405c10    ff5048
                         {disp32} mov       edi, dword ptr [eax + 0x000005b4]             // 0x00405c13    8bb8b4050000
                         {disp8} jmp        _jmp_addr_0x00405c1e                          // 0x00405c19    eb03
_jmp_addr_0x00405c1b:    or                 edi, 0xffffffff                               // 0x00405c1b    83cfff
_jmp_addr_0x00405c1e:    test               byte ptr [esi + 0x58], 0x02                   // 0x00405c1e    f6465802
                         mov                edx, dword ptr [esi]                          // 0x00405c22    8b16
                         mov.s              ecx, esi                                      // 0x00405c24    8bce
                         {disp8} je         _jmp_addr_0x00405ca1                          // 0x00405c26    7479
                         call               dword ptr [edx + 0x120]                       // 0x00405c28    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405c2e    d95c2414
                         mov                eax, dword ptr [esi]                          // 0x00405c32    8b06
                         mov.s              ecx, esi                                      // 0x00405c34    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405c36    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405c3c    d95c2410
                         mov                edx, dword ptr [esi]                          // 0x00405c40    8b16
                         push               0x1                                           // 0x00405c42    6a01
                         mov.s              ecx, esi                                      // 0x00405c44    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405c46    ff9298000000
                         push               eax                                           // 0x00405c4c    50
                         mov                eax, dword ptr [esi]                          // 0x00405c4d    8b06
                         push               0x0                                           // 0x00405c4f    6a00
                         mov.s              ecx, esi                                      // 0x00405c51    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405c53    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c59    d9442418
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00405c5d    d80d28b28a00
                         push               eax                                           // 0x00405c63    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c64    e897b73900
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c69    d9442418
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00405c6d    d80d28b28a00
                         push               eax                                           // 0x00405c73    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c74    e887b73900
                         push               eax                                           // 0x00405c79    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405c7a    8d8c2408010000
                         push               ecx                                           // 0x00405c81    51
                         mov.s              ecx, esi                                      // 0x00405c82    8bce
                         call               ?GetAbodeText@Abode@@QAEPADPAD@Z              // 0x00405c84    e8e7feffff
                         push               eax                                           // 0x00405c89    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405c8a    8d9424d4010000
                         push               edx                                           // 0x00405c91    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405c92    8d4c2430
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x00405c96    e8e5cb1f00
                         push               eax                                           // 0x00405c9b    50
                         push               edi                                           // 0x00405c9c    57
                         push               0x8                                           // 0x00405c9d    6a08
                         {disp8} jmp        _jmp_addr_0x00405d18                          // 0x00405c9f    eb77
_jmp_addr_0x00405ca1:    call               dword ptr [edx + 0x120]                       // 0x00405ca1    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405ca7    d95c2410
                         mov                eax, dword ptr [esi]                          // 0x00405cab    8b06
                         mov.s              ecx, esi                                      // 0x00405cad    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405caf    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405cb5    d95c2414
                         mov                edx, dword ptr [esi]                          // 0x00405cb9    8b16
                         push               0x1                                           // 0x00405cbb    6a01
                         mov.s              ecx, esi                                      // 0x00405cbd    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405cbf    ff9298000000
                         push               eax                                           // 0x00405cc5    50
                         mov                eax, dword ptr [esi]                          // 0x00405cc6    8b06
                         push               0x0                                           // 0x00405cc8    6a00
                         mov.s              ecx, esi                                      // 0x00405cca    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405ccc    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00405cd2    d9442414
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00405cd6    d80d28b28a00
                         push               eax                                           // 0x00405cdc    50
                         call               _jmp_addr_0x007a1400                          // 0x00405cdd    e81eb73900
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00405ce2    d944241c
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00405ce6    d80d28b28a00
                         push               eax                                           // 0x00405cec    50
                         call               _jmp_addr_0x007a1400                          // 0x00405ced    e80eb73900
                         push               eax                                           // 0x00405cf2    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405cf3    8d8c2408010000
                         push               ecx                                           // 0x00405cfa    51
                         mov.s              ecx, esi                                      // 0x00405cfb    8bce
                         call               ?GetAbodeText@Abode@@QAEPADPAD@Z              // 0x00405cfd    e86efeffff
                         push               eax                                           // 0x00405d02    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405d03    8d9424d4010000
                         push               edx                                           // 0x00405d0a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405d0b    8d4c2430
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x00405d0f    e86ccb1f00
                         push               eax                                           // 0x00405d14    50
                         push               edi                                           // 0x00405d15    57
                         push               0x7                                           // 0x00405d16    6a07
_jmp_addr_0x00405d18:    call               _jmp_addr_0x00715130                          // 0x00405d18    e813f43000
                         add                esp, 0x04                                     // 0x00405d1d    83c404
                         push               eax                                           // 0x00405d20    50
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x00405d21    8d442450
                         push               eax                                           // 0x00405d25    50
                         call               _sprintf                                      // 0x00405d26    e8a7fa3b00
                         or                 ecx, 0xffffffff                               // 0x00405d2b    83c9ff
                         xor.s              eax, eax                                      // 0x00405d2e    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x54]                   // 0x00405d30    8d7c2454
                         repne scasb                                                      // 0x00405d34    f2ae
                         {disp32} mov       edi, dword ptr [esp + 0x000002b0]             // 0x00405d36    8bbc24b0020000
                         not                ecx                                           // 0x00405d3d    f7d1
                         dec                ecx                                           // 0x00405d3f    49
                         push               ecx                                           // 0x00405d40    51
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x00405d41    8d4c2458
                         push               ecx                                           // 0x00405d45    51
                         push               edi                                           // 0x00405d46    57
                         push               esi                                           // 0x00405d47    56
                         call               _jmp_addr_0x00719610                          // 0x00405d48    e8c3383100
                         add                esp, 0x34                                     // 0x00405d4d    83c434
                         push               ebx                                           // 0x00405d50    53
                         push               edi                                           // 0x00405d51    57
                         mov.s              ecx, esi                                      // 0x00405d52    8bce
                         call               ?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z                          // 0x00405d54    e8b7911200
                         pop                edi                                           // 0x00405d59    5f
                         pop                ebx                                           // 0x00405d5a    5b
                         pop                esi                                           // 0x00405d5b    5e
                         mov.s              eax, ebp                                      // 0x00405d5c    8bc5
                         pop                ebp                                           // 0x00405d5e    5d
                         add                esp, 0x00000278                               // 0x00405d5f    81c478020000
                         ret                0x0008                                        // 0x00405d65    c20800
_jmp_addr_0x00405d68:    pop                esi                                           // 0x00405d68    5e
                         mov.s              eax, ebp                                      // 0x00405d69    8bc5
                         pop                ebp                                           // 0x00405d6b    5d
                         add                esp, 0x00000278                               // 0x00405d6c    81c478020000
                         ret                0x0008                                        // 0x00405d72    c20800
                         nop                                                              // 0x00405d75    90
                         nop                                                              // 0x00405d76    90
                         nop                                                              // 0x00405d77    90
                         nop                                                              // 0x00405d78    90
                         nop                                                              // 0x00405d79    90
                         nop                                                              // 0x00405d7a    90
                         nop                                                              // 0x00405d7b    90
                         nop                                                              // 0x00405d7c    90
                         nop                                                              // 0x00405d7d    90
                         nop                                                              // 0x00405d7e    90
                         nop                                                              // 0x00405d7f    90
_jmp_addr_0x00405d80:    mov                eax, 0x00000001                               // 0x00405d80    b801000000
                         ret                                                              // 0x00405d85    c3
                         nop                                                              // 0x00405d86    90
                         nop                                                              // 0x00405d87    90
                         nop                                                              // 0x00405d88    90
                         nop                                                              // 0x00405d89    90
                         nop                                                              // 0x00405d8a    90
                         nop                                                              // 0x00405d8b    90
                         nop                                                              // 0x00405d8c    90
                         nop                                                              // 0x00405d8d    90
                         nop                                                              // 0x00405d8e    90
                         nop                                                              // 0x00405d8f    90

?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z:
                         push               ecx                                           // 0x00405d90    51
                         push               ebx                                           // 0x00405d91    53
                         push               ebp                                           // 0x00405d92    55
                         push               esi                                           // 0x00405d93    56
                         mov.s              esi, ecx                                      // 0x00405d94    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405d96    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x00405d98    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00405d9e    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x00405da2    8b16
                         mov.s              ecx, esi                                      // 0x00405da4    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405da6    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x00405dac    d85c240c
                         fnstsw             ax                                            // 0x00405db0    dfe0
                         test               ah, 0x01                                      // 0x00405db2    f6c401
                         {disp8} je         _jmp_addr_0x00405dbe                          // 0x00405db5    7407
                         mov                ebp, 0x00000001                               // 0x00405db7    bd01000000
                         {disp8} jmp        _jmp_addr_0x00405dc0                          // 0x00405dbc    eb02
_jmp_addr_0x00405dbe:    xor.s              ebp, ebp                                      // 0x00405dbe    33ed
_jmp_addr_0x00405dc0:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00405dc0    8b5c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405dc4    8b442414
                         push               ebx                                           // 0x00405dc8    53
                         push               eax                                           // 0x00405dc9    50
                         mov.s              ecx, esi                                      // 0x00405dca    8bce
                         call               ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z// 0x00405dcc    e80f981200
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00405dd1    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405dd5    d81d90a38a00
                         fnstsw             ax                                            // 0x00405ddb    dfe0
                         test               ah, 0x01                                      // 0x00405ddd    f6c401
                         {disp32} je        _jmp_addr_0x00405ec5                          // 0x00405de0    0f84df000000
                         push               edi                                           // 0x00405de6    57
                         {disp32} mov       edi, dword ptr [esi + 0x000000a0]             // 0x00405de7    8bbea0000000
                         test               edi, edi                                      // 0x00405ded    85ff
                         {disp8} je         _jmp_addr_0x00405e02                          // 0x00405def    7411
_jmp_addr_0x00405df1:    mov.s              ecx, edi                                      // 0x00405df1    8bcf
                         call               _jmp_addr_0x00752b80                          // 0x00405df3    e888cd3400
                         {disp32} mov       edi, dword ptr [edi + 0x000000e4]             // 0x00405df8    8bbfe4000000
                         test               edi, edi                                      // 0x00405dfe    85ff
                         {disp8} jne        _jmp_addr_0x00405df1                          // 0x00405e00    75ef
_jmp_addr_0x00405e02:    test               ebp, ebp                                      // 0x00405e02    85ed
                         pop                edi                                           // 0x00405e04    5f
                         {disp8} je         _jmp_addr_0x00405e45                          // 0x00405e05    743e
                         mov                edx, dword ptr [esi]                          // 0x00405e07    8b16
                         mov.s              ecx, esi                                      // 0x00405e09    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405e0b    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x18]                        // 0x00405e11    d85c2418
                         fnstsw             ax                                            // 0x00405e15    dfe0
                         test               ah, 0x01                                      // 0x00405e17    f6c401
                         {disp8} jne        _jmp_addr_0x00405e45                          // 0x00405e1a    7529
                         mov                eax, dword ptr [esi]                          // 0x00405e1c    8b06
                         push               ebx                                           // 0x00405e1e    53
                         mov.s              ecx, esi                                      // 0x00405e1f    8bce
                         call               dword ptr [eax + 0x918]                       // 0x00405e21    ff9018090000
                         mov                edx, dword ptr [esi]                          // 0x00405e27    8b16
                         mov.s              ecx, esi                                      // 0x00405e29    8bce
                         call               dword ptr [edx + 0x920]                       // 0x00405e2b    ff9220090000
                         test               eax, eax                                      // 0x00405e31    85c0
                         {disp8} je         _jmp_addr_0x00405e5e                          // 0x00405e33    7429
                         mov                eax, dword ptr [esi]                          // 0x00405e35    8b06
                         mov.s              ecx, esi                                      // 0x00405e37    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e39    ff5048
                         mov.s              ecx, eax                                      // 0x00405e3c    8bc8
                         call               ?SetInStateOfEmergency@Town@@QAEXXZ           // 0x00405e3e    e85d1b3400
                         {disp8} jmp        _jmp_addr_0x00405e5e                          // 0x00405e43    eb19
_jmp_addr_0x00405e45:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00405e45    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405e49    d81d90a38a00
                         fnstsw             ax                                            // 0x00405e4f    dfe0
                         test               ah, 0x01                                      // 0x00405e51    f6c401
                         {disp8} jne        _jmp_addr_0x00405e5e                          // 0x00405e54    7508
                         push               ebx                                           // 0x00405e56    53
                         mov.s              ecx, esi                                      // 0x00405e57    8bce
                         call               _jmp_addr_0x004073f0                          // 0x00405e59    e892150000
_jmp_addr_0x00405e5e:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e5e    8b4674
                         test               eax, eax                                      // 0x00405e61    85c0
                         {disp8} jne        _jmp_addr_0x00405e86                          // 0x00405e63    7521
                         mov                edx, dword ptr [esi]                          // 0x00405e65    8b16
                         mov.s              ecx, esi                                      // 0x00405e67    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405e69    ff5248
                         test               eax, eax                                      // 0x00405e6c    85c0
                         {disp8} je         _jmp_addr_0x00405e7f                          // 0x00405e6e    740f
                         mov                eax, dword ptr [esi]                          // 0x00405e70    8b06
                         push               esi                                           // 0x00405e72    56
                         mov.s              ecx, esi                                      // 0x00405e73    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e75    ff5048
                         mov.s              ecx, eax                                      // 0x00405e78    8bc8
                         call               _jmp_addr_0x0073b8e0                          // 0x00405e7a    e8615a3300
_jmp_addr_0x00405e7f:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e7f    8b4674
                         test               eax, eax                                      // 0x00405e82    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e84    7427
_jmp_addr_0x00405e86:    mov                edx, dword ptr [esi]                          // 0x00405e86    8b16
                         mov.s              ecx, esi                                      // 0x00405e88    8bce
                         call               dword ptr [edx + 0x890]                       // 0x00405e8a    ff9290080000
                         test               eax, eax                                      // 0x00405e90    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e92    7419
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405e94    d9442418
                         {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e98    8b4674
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x00405e9b    d80d30b28a00
                         {disp32} fsub      dword ptr [__real@3dcccccd]                   // 0x00405ea1    d8252cb28a00
                         {disp32} fstp      dword ptr [eax + 0x00000640]                  // 0x00405ea7    d99840060000
_jmp_addr_0x00405ead:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ead    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00405eb1    d81d98a38a00
                         fnstsw             ax                                            // 0x00405eb7    dfe0
                         test               ah, 0x40                                      // 0x00405eb9    f6c440
                         {disp8} je         _jmp_addr_0x00405ec5                          // 0x00405ebc    7407
                         mov.s              ecx, esi                                      // 0x00405ebe    8bce
                         call               _jmp_addr_0x00405d80                          // 0x00405ec0    e8bbfeffff
_jmp_addr_0x00405ec5:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ec5    d9442418
                         pop                esi                                           // 0x00405ec9    5e
                         pop                ebp                                           // 0x00405eca    5d
                         pop                ebx                                           // 0x00405ecb    5b
                         pop                ecx                                           // 0x00405ecc    59
                         ret                0x0008                                        // 0x00405ecd    c20800

?IncreaseLife@Abode@@UAEXM@Z:
                         push               ecx                                           // 0x00405ed0    51
                         push               esi                                           // 0x00405ed1    56
                         mov.s              esi, ecx                                      // 0x00405ed2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405ed4    8b06
                         push               edi                                           // 0x00405ed6    57
                         call               dword ptr [eax + 0x11c]                       // 0x00405ed7    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00405edd    d95c2408
                         mov                edx, dword ptr [esi]                          // 0x00405ee1    8b16
                         mov.s              ecx, esi                                      // 0x00405ee3    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405ee5    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00405eeb    d85c2408
                         fnstsw             ax                                            // 0x00405eef    dfe0
                         test               ah, 0x01                                      // 0x00405ef1    f6c401
                         {disp8} jne        _jmp_addr_0x00405efd                          // 0x00405ef4    7507
                         mov                edi, 0x00000001                               // 0x00405ef6    bf01000000
                         {disp8} jmp        _jmp_addr_0x00405eff                          // 0x00405efb    eb02
_jmp_addr_0x00405efd:    xor.s              edi, edi                                      // 0x00405efd    33ff
_jmp_addr_0x00405eff:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00405eff    8b442410
                         push               eax                                           // 0x00405f03    50
                         mov.s              ecx, esi                                      // 0x00405f04    8bce
                         call               ?IncreaseLife@Object@@UAEXM@Z                 // 0x00405f06    e865192300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405f0b    d95c2410
                         test               edi, edi                                      // 0x00405f0f    85ff
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f11    741f
                         mov                edx, dword ptr [esi]                          // 0x00405f13    8b16
                         mov.s              ecx, esi                                      // 0x00405f15    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405f17    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00405f1d    d85c2410
                         fnstsw             ax                                            // 0x00405f21    dfe0
                         test               ah, 0x01                                      // 0x00405f23    f6c401
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f26    740a
                         mov                eax, dword ptr [esi]                          // 0x00405f28    8b06
                         mov.s              ecx, esi                                      // 0x00405f2a    8bce
                         call               dword ptr [eax + 0x91c]                       // 0x00405f2c    ff901c090000
_jmp_addr_0x00405f32:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00405f32    d9442410
                         pop                edi                                           // 0x00405f36    5f
                         pop                esi                                           // 0x00405f37    5e
                         pop                ecx                                           // 0x00405f38    59
                         ret                0x0004                                        // 0x00405f39    c20400
                         nop                                                              // 0x00405f3c    90
                         nop                                                              // 0x00405f3d    90
                         nop                                                              // 0x00405f3e    90
                         nop                                                              // 0x00405f3f    90

?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x00405f40    8b8198000000
                         {disp32} mov       eax, dword ptr [eax + 0x000005b8]             // 0x00405f46    8b80b8050000
                         ret                                                              // 0x00405f4c    c3
                         nop                                                              // 0x00405f4d    90
                         nop                                                              // 0x00405f4e    90
                         nop                                                              // 0x00405f4f    90

?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ:
                         push               esi                                           // 0x00405f50    56
                         mov.s              esi, ecx                                      // 0x00405f51    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f53    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f55    ff5048
                         test               eax, eax                                      // 0x00405f58    85c0
                         {disp8} je         _jmp_addr_0x00405f6c                          // 0x00405f5a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f5c    8b16
                         mov.s              ecx, esi                                      // 0x00405f5e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f60    ff5248
                         mov.s              ecx, eax                                      // 0x00405f63    8bc8
                         call               ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ          // 0x00405f65    e8d6683300
                         pop                esi                                           // 0x00405f6a    5e
                         ret                                                              // 0x00405f6b    c3
_jmp_addr_0x00405f6c:    xor.s              eax, eax                                      // 0x00405f6c    33c0
                         pop                esi                                           // 0x00405f6e    5e
                         ret                                                              // 0x00405f6f    c3

?GetPlayer@Abode@@UAEPAVGPlayer@@XZ:
                         push               esi                                           // 0x00405f70    56
                         mov.s              esi, ecx                                      // 0x00405f71    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f73    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f75    ff5048
                         test               eax, eax                                      // 0x00405f78    85c0
                         {disp8} je         _jmp_addr_0x00405f8c                          // 0x00405f7a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f7c    8b16
                         mov.s              ecx, esi                                      // 0x00405f7e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f80    ff5248
                         mov                edx, dword ptr [eax]                          // 0x00405f83    8b10
                         mov.s              ecx, eax                                      // 0x00405f85    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x00405f87    ff521c
                         pop                esi                                           // 0x00405f8a    5e
                         ret                                                              // 0x00405f8b    c3
_jmp_addr_0x00405f8c:    mov.s              ecx, esi                                      // 0x00405f8c    8bce
                         call               ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ       // 0x00405f8e    e89da11600
                         pop                esi                                           // 0x00405f93    5e
                         ret                                                              // 0x00405f94    c3
                         nop                                                              // 0x00405f95    90
                         nop                                                              // 0x00405f96    90
                         nop                                                              // 0x00405f97    90
                         nop                                                              // 0x00405f98    90
                         nop                                                              // 0x00405f99    90
                         nop                                                              // 0x00405f9a    90
                         nop                                                              // 0x00405f9b    90
                         nop                                                              // 0x00405f9c    90
                         nop                                                              // 0x00405f9d    90
                         nop                                                              // 0x00405f9e    90
                         nop                                                              // 0x00405f9f    90

_jmp_addr_0x00405fa0:
                         {disp32} inc       byte ptr [ecx + 0x000000b6]                   // 0x00405fa0    fe81b6000000
                         ret                                                              // 0x00405fa6    c3
                         nop                                                              // 0x00405fa7    90
                         nop                                                              // 0x00405fa8    90
                         nop                                                              // 0x00405fa9    90
                         nop                                                              // 0x00405faa    90
                         nop                                                              // 0x00405fab    90
                         nop                                                              // 0x00405fac    90
                         nop                                                              // 0x00405fad    90
                         nop                                                              // 0x00405fae    90
                         nop                                                              // 0x00405faf    90

_jmp_addr_0x00405fb0:
                         dec                byte ptr [ecx + 0x000000b6]                   // 0x00405fb0    fe89b6000000
                         ret                                                              // 0x00405fb6    c3
                         nop                                                              // 0x00405fb7    90
                         nop                                                              // 0x00405fb8    90
                         nop                                                              // 0x00405fb9    90
                         nop                                                              // 0x00405fba    90
                         nop                                                              // 0x00405fbb    90
                         nop                                                              // 0x00405fbc    90
                         nop                                                              // 0x00405fbd    90
                         nop                                                              // 0x00405fbe    90
                         nop                                                              // 0x00405fbf    90

_jmp_addr_0x00405fc0:
                         {disp8} mov        dl, byte ptr [ecx + 0x7c]                     // 0x00405fc0    8a517c
                         mov                eax, 0x00000001                               // 0x00405fc3    b801000000
                         test               al, dl                                        // 0x00405fc8    84d0
                         {disp8} je         _jmp_addr_0x00405feb                          // 0x00405fca    741f
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00405fcc    8b542404
                         add                ecx, 0x00000080                               // 0x00405fd0    81c180000000
                         push               esi                                           // 0x00405fd6    56
                         mov                esi, dword ptr [ecx]                          // 0x00405fd7    8b31
                         mov                dword ptr [edx], esi                          // 0x00405fd9    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00405fdb    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00405fde    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00405fe1    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00405fe4    894a08
                         pop                esi                                           // 0x00405fe7    5e
                         ret                0x0004                                        // 0x00405fe8    c20400
_jmp_addr_0x00405feb:    xor.s              eax, eax                                      // 0x00405feb    33c0
                         ret                0x0004                                        // 0x00405fed    c20400

?IsCivic@Abode@@UAE_NXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00405ff0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000120]             // 0x00405ff3    8b8020010000
                         cmp                eax, 0x00000100                               // 0x00405ff9    3d00010000
                         {disp8} jg         _jmp_addr_0x00406019                          // 0x00405ffe    7f19
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406000    743b
                         add                eax, -0x14                                    // 0x00406002    83c0ec
                         cmp                eax, 0x70                                     // 0x00406005    83f870
                         {disp8} ja         _jmp_addr_0x0040603a                          // 0x00406008    7730
                         xor.s              ecx, ecx                                      // 0x0040600a    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0040604c]               // 0x0040600c    8a884c604000
                         jmp                dword ptr [ecx*4 + 0x406044]                  // 0x00406012    ff248d44604000
_jmp_addr_0x00406019:    cmp                eax, 0x00001004                               // 0x00406019    3d04100000
                         {disp8} jg         _jmp_addr_0x00406033                          // 0x0040601e    7f13
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406020    741b
                         cmp                eax, 0x00000204                               // 0x00406022    3d04020000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406027    7414
                         cmp                eax, 0x00000404                               // 0x00406029    3d04040000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x0040602e    740d
                         xor.s              eax, eax                                      // 0x00406030    33c0
                         ret                                                              // 0x00406032    c3
_jmp_addr_0x00406033:    cmp                eax, 0x00002004                               // 0x00406033    3d04200000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406038    7403
_jmp_addr_0x0040603a:    xor.s              eax, eax                                      // 0x0040603a    33c0
                         ret                                                              // 0x0040603c    c3
_jmp_addr_0x0040603d:    mov                eax, 0x00000001                               // 0x0040603d    b801000000
                         ret                                                              // 0x00406042    c3
                         nop                                                              // 0x00406043    90

// Snippet: jmptbl, [0x00406044, 0x0040604c)
.byte 0x3d, 0x60, 0x40, 0x00      // 0x00406044
.byte 0x3a, 0x60, 0x40, 0x00      // 0x00406048

// Snippet: ijmptbl, [0x0040604c, 0x004060bd)
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040604c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406050
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406054
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406058
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040605c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406060
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406064
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406068
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040606c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406070
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406074
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406078
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040607c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406080
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406084
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406088
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040608c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406090
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406094
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406098
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040609c
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a8
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060ac
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b8
.byte 0x00                        // 0x004060bc

// Snippet: db, [0x004060bd, 0x004060c0)
.byte 0x90, 0x90, 0x90            // 0x004060bd

