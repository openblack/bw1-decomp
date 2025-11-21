.intel_syntax noprefix
.align 16


.extern ??3Base@@SAXPAXK@Z
.extern ??0MobileWallHug@@QAE@XZ
.extern ?SetToZero@Living@@QAEXXZ
.extern ??0LivingAction@@QAE@XZ
.extern ?IsTouching@Object@@UAE_NPAV1@M@Z
.extern ?SetToZero@Villager@@QAEXXZ
.extern ??1Villager@@UAE@XZ
.extern  ??3@YAXPAX@Z

.globl ??0Villager@@QAE@XZ
.globl ?GetVillagerName@Villager@@UAEPBDXZ
.globl ?IsChild@Villager@@UAE_NXZ
.globl ?IsFoodSpeedUp@Villager@@UAE_NXZ
.globl ?IsABeliever@Villager@@UAE_NXZ
.globl ?IsTouching@Villager@@UBE_NPAVObject@@M@Z
.globl ?GetMesh@Villager@@UBEHXZ
.globl ?GetDetailMesh@Villager@@UAEHH@Z
.globl ?IsScriptState@Villager@@UBE_NW4VILLAGER_STATES@@@Z
.globl ?IsScriptInterruptableState@Villager@@UBE_NW4VILLAGER_STATES@@@Z
.globl ?GetTastiness@Villager@@UAEIXZ
.globl ?CanBePickedUp@Villager@@UAE_NXZ
.globl ?GetCreatureBeliefType@Villager@@UAEIXZ
.globl ?CanBeImpressedByCreature@Villager@@UAEIPAVCreature@@@Z
.globl ?CanReceiveGifts@Villager@@UAEIPAVCreature@@@Z
.globl ?CanBeHelpedByCreature@Villager@@UAEIPAVCreature@@@Z
.globl ?IsVillager@Villager@@UAEIPAVCreature@@@Z
.globl ?IsMaleVillager@Villager@@UAEIXZ
.globl ?IsFemaleVillager@Villager@@UAEIXZ
.globl ?IsAChild@Villager@@UAEIXZ
.globl ?GetDeathReason@Villager@@UAE?AW4DEATH_REASON@@XZ
.globl ?GetSaveType@Villager@@UAEIXZ
.globl ?GetDebugText@Villager@@UAEPADXZ
.globl ??_GVillager@@UAEPAXI@Z

??0Villager@@QAE@XZ:
                         push               esi                                            // 0x0055c8a0    56
                         push               edi                                            // 0x0055c8a1    57
                         mov.s              esi, ecx                                       // 0x0055c8a2    8bf1
                         call               ??0MobileWallHug@@QAE@XZ                       // 0x0055c8a4    e8e77ff1ff
                         {disp32} lea       ecx, dword ptr [esi + 0x0000008c]              // 0x0055c8a9    8d8e8c000000
                         call               ??0LivingAction@@QAE@XZ                        // 0x0055c8af    e8bc030900
                         xor.s              edi, edi                                       // 0x0055c8b4    33ff
                         {disp32} mov       dword ptr [esi + 0x00000094], edi              // 0x0055c8b6    89be94000000
                         {disp32} mov       dword ptr [esi + 0x00000098], edi              // 0x0055c8bc    89be98000000
                         {disp32} mov       dword ptr [esi + 0x000000a4], edi              // 0x0055c8c2    89bea4000000
                         {disp32} mov       dword ptr [esi + 0x000000b8], edi              // 0x0055c8c8    89beb8000000
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi              // 0x0055c8ce    89bebc000000
                         {disp32} mov       dword ptr [esi + 0x000000d8], edi              // 0x0055c8d4    89bed8000000
                         mov.s              ecx, esi                                       // 0x0055c8da    8bce
                         mov                dword ptr [esi], 0x008cd394                    // 0x0055c8dc    c70694d38c00
                         call               ?SetToZero@Living@@QAEXXZ                      // 0x0055c8e2    e849f70800
                         {disp32} mov       dword ptr [esi + 0x000000e4], edi              // 0x0055c8e7    89bee4000000
                         {disp32} mov       dword ptr [esi + 0x000000fc], edi              // 0x0055c8ed    89befc000000
                         {disp32} mov       dword ptr [esi + 0x0000010c], edi              // 0x0055c8f3    89be0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], edi              // 0x0055c8f9    89be10010000
                         {disp32} mov       dword ptr [esi + 0x0000010c], edi              // 0x0055c8ff    89be0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], edi              // 0x0055c905    89be10010000
                         {disp32} mov       dword ptr [esi + 0x00000110], edi              // 0x0055c90b    89be10010000
                         {disp32} mov       dword ptr [esi + 0x00000114], edi              // 0x0055c911    89be14010000
                         {disp32} mov       dword ptr [esi + 0x0000010c], edi              // 0x0055c917    89be0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], edi              // 0x0055c91d    89be10010000
                         {disp32} mov       dword ptr [esi + 0x00000118], edi              // 0x0055c923    89be18010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], edi              // 0x0055c929    89be1c010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], edi              // 0x0055c92f    89be1c010000
                         {disp32} mov       dword ptr [esi + 0x00000120], edi              // 0x0055c935    89be20010000
                         {disp32} mov       dword ptr [esi + 0x00000118], edi              // 0x0055c93b    89be18010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], edi              // 0x0055c941    89be1c010000
                         {disp32} mov       dword ptr [esi + 0x00000120], edi              // 0x0055c947    89be20010000
                         {disp32} mov       dword ptr [esi + 0x00000124], edi              // 0x0055c94d    89be24010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], edi              // 0x0055c953    89be1c010000
                         mov.s              ecx, esi                                       // 0x0055c959    8bce
                         mov                dword ptr [esi], 0x008f7960                    // 0x0055c95b    c70660798f00
                         call               ?SetToZero@Villager@@QAEXXZ                    // 0x0055c961    e8ba311f00
                         pop                edi                                            // 0x0055c966    5f
                         mov.s              eax, esi                                       // 0x0055c967    8bc6
                         pop                esi                                            // 0x0055c969    5e
                         ret                                                               // 0x0055c96a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x0055c96b    e8094feaff
?IsChild@Villager@@UAE_NXZ:
                         xor.s              eax, eax                                       // 0x0055c970    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x000000e0]                // 0x0055c972    8a81e0000000
                         shr                eax, 3                                         // 0x0055c978    c1e803
                         and                eax, 0x01                                      // 0x0055c97b    83e001
                         ret                                                               // 0x0055c97e    c3
                         nop                                                               // 0x0055c97f    90
?IsFoodSpeedUp@Villager@@UAE_NXZ:
                         {disp32} mov       dl, byte ptr [ecx + 0x000000f0]                // 0x0055c980    8a91f0000000
                         xor.s              eax, eax                                       // 0x0055c986    33c0
                         test               dl, dl                                         // 0x0055c988    84d2
                         setne              al                                             // 0x0055c98a    0f95c0
                         ret                                                               // 0x0055c98d    c3
                         nop                                                               // 0x0055c98e    90
                         nop                                                               // 0x0055c98f    90
?IsABeliever@Villager@@UAE_NXZ:
                         mov                eax, 0x00000001                                // 0x0055c990    b801000000
                         ret                                                               // 0x0055c995    c3
                         nop                                                               // 0x0055c996    90
                         nop                                                               // 0x0055c997    90
                         nop                                                               // 0x0055c998    90
                         nop                                                               // 0x0055c999    90
                         nop                                                               // 0x0055c99a    90
                         nop                                                               // 0x0055c99b    90
                         nop                                                               // 0x0055c99c    90
                         nop                                                               // 0x0055c99d    90
                         nop                                                               // 0x0055c99e    90
                         nop                                                               // 0x0055c99f    90
?IsTouching@Villager@@UBE_NPAVObject@@M@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x0055c9a0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x0055c9a4    8b542404
                         push               eax                                            // 0x0055c9a8    50
                         push               edx                                            // 0x0055c9a9    52
                         call               ?IsTouching@Object@@UAE_NPAV1@M@Z              // 0x0055c9aa    e851b40d00
                         ret                0x0008                                         // 0x0055c9af    c20800
                         nop                                                               // 0x0055c9b2    90
                         nop                                                               // 0x0055c9b3    90
                         nop                                                               // 0x0055c9b4    90
                         nop                                                               // 0x0055c9b5    90
                         nop                                                               // 0x0055c9b6    90
                         nop                                                               // 0x0055c9b7    90
                         nop                                                               // 0x0055c9b8    90
                         nop                                                               // 0x0055c9b9    90
                         nop                                                               // 0x0055c9ba    90
                         nop                                                               // 0x0055c9bb    90
                         nop                                                               // 0x0055c9bc    90
                         nop                                                               // 0x0055c9bd    90
                         nop                                                               // 0x0055c9be    90
                         nop                                                               // 0x0055c9bf    90
?GetMesh@Villager@@UBEHXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x0055c9c0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000214]              // 0x0055c9c3    8b8014020000
                         ret                                                               // 0x0055c9c9    c3
                         call               dword ptr [__imp__BinkService@4]               // 0x0055c9ca    ff1534998a00
?GetDetailMesh@Villager@@UAEHH@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x0055c9d0    8b4128
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x0055c9d3    8b4c2404
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x4 + 0x00000210]  // 0x0055c9d7    8b848810020000
                         ret                0x0004                                         // 0x0055c9de    c20400
                         nop                                                               // 0x0055c9e1    90
                         nop                                                               // 0x0055c9e2    90
                         nop                                                               // 0x0055c9e3    90
                         nop                                                               // 0x0055c9e4    90
                         nop                                                               // 0x0055c9e5    90
                         nop                                                               // 0x0055c9e6    90
                         nop                                                               // 0x0055c9e7    90
                         nop                                                               // 0x0055c9e8    90
                         nop                                                               // 0x0055c9e9    90
                         nop                                                               // 0x0055c9ea    90
                         nop                                                               // 0x0055c9eb    90
                         nop                                                               // 0x0055c9ec    90
                         nop                                                               // 0x0055c9ed    90
                         nop                                                               // 0x0055c9ee    90
                         nop                                                               // 0x0055c9ef    90
?IsScriptState@Villager@@UBE_NW4VILLAGER_STATES@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x0055c9f0    8b4c2404
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0055c9f4    8d0449
                         shl                eax, 3                                         // 0x0055c9f7    c1e003
                         sub.s              eax, ecx                                       // 0x0055c9fa    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x0055c9fc    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e90]        // 0x0055c9ff    8b0485909edb00
                         ret                0x0004                                         // 0x0055ca06    c20400
                         nop                                                               // 0x0055ca09    90
                         nop                                                               // 0x0055ca0a    90
                         nop                                                               // 0x0055ca0b    90
                         nop                                                               // 0x0055ca0c    90
                         nop                                                               // 0x0055ca0d    90
                         nop                                                               // 0x0055ca0e    90
                         nop                                                               // 0x0055ca0f    90
?IsScriptInterruptableState@Villager@@UBE_NW4VILLAGER_STATES@@@Z:
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x0055ca10    8b4c2404
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0055ca14    8d0449
                         shl                eax, 3                                         // 0x0055ca17    c1e003
                         sub.s              eax, ecx                                       // 0x0055ca1a    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x0055ca1c    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e94]        // 0x0055ca1f    8b0485949edb00
                         ret                0x0004                                         // 0x0055ca26    c20400
                         nop                                                               // 0x0055ca29    90
                         nop                                                               // 0x0055ca2a    90
                         nop                                                               // 0x0055ca2b    90
                         nop                                                               // 0x0055ca2c    90
                         nop                                                               // 0x0055ca2d    90
                         nop                                                               // 0x0055ca2e    90
                         nop                                                               // 0x0055ca2f    90
?GetTastiness@Villager@@UAEIXZ:
                         mov                eax, 0x00000002                                // 0x0055ca30    b802000000
                         ret                                                               // 0x0055ca35    c3
                         nop                                                               // 0x0055ca36    90
                         nop                                                               // 0x0055ca37    90
                         nop                                                               // 0x0055ca38    90
                         nop                                                               // 0x0055ca39    90
                         nop                                                               // 0x0055ca3a    90
                         nop                                                               // 0x0055ca3b    90
                         nop                                                               // 0x0055ca3c    90
                         nop                                                               // 0x0055ca3d    90
                         nop                                                               // 0x0055ca3e    90
                         nop                                                               // 0x0055ca3f    90

?GetVillagerName@Villager@@UAEPBDXZ:
                         xor.s              eax, eax                                       // 0x0055ca40    33c0
                         ret                                                               // 0x0055ca42    c3
                         nop                                                               // 0x0055ca43    90
                         nop                                                               // 0x0055ca44    90
                         nop                                                               // 0x0055ca45    90
                         nop                                                               // 0x0055ca46    90
                         nop                                                               // 0x0055ca47    90
                         nop                                                               // 0x0055ca48    90
                         nop                                                               // 0x0055ca49    90
                         nop                                                               // 0x0055ca4a    90
                         nop                                                               // 0x0055ca4b    90
                         nop                                                               // 0x0055ca4c    90
                         nop                                                               // 0x0055ca4d    90
                         nop                                                               // 0x0055ca4e    90
                         nop                                                               // 0x0055ca4f    90
?CanBePickedUp@Villager@@UAE_NXZ:
                         test               byte ptr [ecx + 0x000000e0], 0x04              // 0x0055ca50    f681e000000004
                         {disp8} je         _jmp_addr_0x0055ca5c                           // 0x0055ca57    7403
                         xor.s              eax, eax                                       // 0x0055ca59    33c0
                         ret                                                               // 0x0055ca5b    c3
_jmp_addr_0x0055ca5c:    xor.s              eax, eax                                       // 0x0055ca5c    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x24]                      // 0x0055ca5e    668b4124
                         not                ax                                             // 0x0055ca62    66f7d0
                         shr                eax, 0xd                                       // 0x0055ca65    c1e80d
                         and                eax, 0x01                                      // 0x0055ca68    83e001
                         ret                                                               // 0x0055ca6b    c3
                         nop                                                               // 0x0055ca6c    90
                         nop                                                               // 0x0055ca6d    90
                         nop                                                               // 0x0055ca6e    90
                         nop                                                               // 0x0055ca6f    90
?GetCreatureBeliefType@Villager@@UAEIXZ:
                         mov                eax, 0x00000006                                // 0x0055ca70    b806000000
                         ret                                                               // 0x0055ca75    c3
                         nop                                                               // 0x0055ca76    90
                         nop                                                               // 0x0055ca77    90
                         nop                                                               // 0x0055ca78    90
                         nop                                                               // 0x0055ca79    90
                         nop                                                               // 0x0055ca7a    90
                         nop                                                               // 0x0055ca7b    90
                         nop                                                               // 0x0055ca7c    90
                         nop                                                               // 0x0055ca7d    90
                         nop                                                               // 0x0055ca7e    90
                         nop                                                               // 0x0055ca7f    90
?CanBeImpressedByCreature@Villager@@UAEIPAVCreature@@@Z:
                         mov                eax, dword ptr [ecx]                           // 0x0055ca80    8b01
                         call               dword ptr [eax + 0x978]                        // 0x0055ca82    ff9078090000
                         neg                eax                                            // 0x0055ca88    f7d8
                         sbb.s              eax, eax                                       // 0x0055ca8a    1bc0
                         inc                eax                                            // 0x0055ca8c    40
                         ret                0x0004                                         // 0x0055ca8d    c20400
?CanReceiveGifts@Villager@@UAEIPAVCreature@@@Z:
                         mov                eax, 0x00000001                                // 0x0055ca90    b801000000
                         ret                0x0004                                         // 0x0055ca95    c20400
                         nop                                                               // 0x0055ca98    90
                         nop                                                               // 0x0055ca99    90
                         nop                                                               // 0x0055ca9a    90
                         nop                                                               // 0x0055ca9b    90
                         nop                                                               // 0x0055ca9c    90
                         nop                                                               // 0x0055ca9d    90
                         nop                                                               // 0x0055ca9e    90
                         nop                                                               // 0x0055ca9f    90
?CanBeHelpedByCreature@Villager@@UAEIPAVCreature@@@Z:
                         mov                eax, dword ptr [ecx]                           // 0x0055caa0    8b01
                         call               dword ptr [eax + 0x628]                        // 0x0055caa2    ff9028060000
                         ret                0x0004                                         // 0x0055caa8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x0055caab    e8c94deaff
?IsVillager@Villager@@UAEIPAVCreature@@@Z:
                         mov                eax, 0x00000001                                // 0x0055cab0    b801000000
                         ret                0x0004                                         // 0x0055cab5    c20400
                         nop                                                               // 0x0055cab8    90
                         nop                                                               // 0x0055cab9    90
                         nop                                                               // 0x0055caba    90
                         nop                                                               // 0x0055cabb    90
                         nop                                                               // 0x0055cabc    90
                         nop                                                               // 0x0055cabd    90
                         nop                                                               // 0x0055cabe    90
                         nop                                                               // 0x0055cabf    90
?IsMaleVillager@Villager@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x0055cac0    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]              // 0x0055cac3    8b90f8010000
                         xor.s              ecx, ecx                                       // 0x0055cac9    33c9
                         test               edx, edx                                       // 0x0055cacb    85d2
                         sete               cl                                             // 0x0055cacd    0f94c1
                         mov.s              eax, ecx                                       // 0x0055cad0    8bc1
                         ret                                                               // 0x0055cad2    c3
                         nop                                                               // 0x0055cad3    90
                         nop                                                               // 0x0055cad4    90
                         nop                                                               // 0x0055cad5    90
                         nop                                                               // 0x0055cad6    90
                         nop                                                               // 0x0055cad7    90
                         nop                                                               // 0x0055cad8    90
                         nop                                                               // 0x0055cad9    90
                         nop                                                               // 0x0055cada    90
                         nop                                                               // 0x0055cadb    90
                         nop                                                               // 0x0055cadc    90
                         nop                                                               // 0x0055cadd    90
                         nop                                                               // 0x0055cade    90
                         nop                                                               // 0x0055cadf    90
?IsFemaleVillager@Villager@@UAEIXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x0055cae0    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]              // 0x0055cae3    8b90f8010000
                         xor.s              ecx, ecx                                       // 0x0055cae9    33c9
                         cmp                edx, 0x01                                      // 0x0055caeb    83fa01
                         sete               cl                                             // 0x0055caee    0f94c1
                         mov.s              eax, ecx                                       // 0x0055caf1    8bc1
                         ret                                                               // 0x0055caf3    c3
                         nop                                                               // 0x0055caf4    90
                         nop                                                               // 0x0055caf5    90
                         nop                                                               // 0x0055caf6    90
                         nop                                                               // 0x0055caf7    90
                         nop                                                               // 0x0055caf8    90
                         nop                                                               // 0x0055caf9    90
                         nop                                                               // 0x0055cafa    90
                         nop                                                               // 0x0055cafb    90
                         nop                                                               // 0x0055cafc    90
                         nop                                                               // 0x0055cafd    90
                         nop                                                               // 0x0055cafe    90
                         nop                                                               // 0x0055caff    90
?IsAChild@Villager@@UAEIXZ:
                         mov                eax, dword ptr [ecx]                           // 0x0055cb00    8b01
                         call               dword ptr [eax + 0xaf8]                        // 0x0055cb02    ff90f80a0000
                         dec                eax                                            // 0x0055cb08    48
                         neg                eax                                            // 0x0055cb09    f7d8
                         sbb.s              eax, eax                                       // 0x0055cb0b    1bc0
                         inc                eax                                            // 0x0055cb0d    40
                         ret                                                               // 0x0055cb0e    c3
                         nop                                                               // 0x0055cb0f    90
?GetDeathReason@Villager@@UAE?AW4DEATH_REASON@@XZ:
                         xor.s              eax, eax                                       // 0x0055cb10    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00000118]                // 0x0055cb12    8a8118010000
                         ret                                                               // 0x0055cb18    c3
                         nop                                                               // 0x0055cb19    90
                         nop                                                               // 0x0055cb1a    90
                         nop                                                               // 0x0055cb1b    90
                         nop                                                               // 0x0055cb1c    90
                         nop                                                               // 0x0055cb1d    90
                         nop                                                               // 0x0055cb1e    90
                         nop                                                               // 0x0055cb1f    90
?GetSaveType@Villager@@UAEIXZ:
                         mov                eax, 0x00000006                                // 0x0055cb20    b806000000
                         ret                                                               // 0x0055cb25    c3
                         nop                                                               // 0x0055cb26    90
                         nop                                                               // 0x0055cb27    90
                         nop                                                               // 0x0055cb28    90
                         nop                                                               // 0x0055cb29    90
                         nop                                                               // 0x0055cb2a    90
                         nop                                                               // 0x0055cb2b    90
                         nop                                                               // 0x0055cb2c    90
                         nop                                                               // 0x0055cb2d    90
                         nop                                                               // 0x0055cb2e    90
                         nop                                                               // 0x0055cb2f    90
?GetDebugText@Villager@@UAEPADXZ:
                         mov                eax, 0x00bed194                                // 0x0055cb30    b894d1be00
                         ret                                                               // 0x0055cb35    c3
                         nop                                                               // 0x0055cb36    90
                         nop                                                               // 0x0055cb37    90
                         nop                                                               // 0x0055cb38    90
                         nop                                                               // 0x0055cb39    90
                         nop                                                               // 0x0055cb3a    90
                         nop                                                               // 0x0055cb3b    90
                         nop                                                               // 0x0055cb3c    90
                         nop                                                               // 0x0055cb3d    90
                         nop                                                               // 0x0055cb3e    90
                         nop                                                               // 0x0055cb3f    90
??_GVillager@@UAEPAXI@Z:
                         push               esi                                            // 0x0055cb40    56
                         mov.s              esi, ecx                                       // 0x0055cb41    8bf1
                         call               ??1Villager@@UAE@XZ                            // 0x0055cb43    e878301f00
                         test               byte ptr [esp + 0x08], 0x01                    // 0x0055cb48    f644240801
                         {disp8} je         _jmp_addr_0x0055cb5d                           // 0x0055cb4d    740e
                         push               0x00000130                                     // 0x0055cb4f    6830010000
                         push               esi                                            // 0x0055cb54    56
                         call               ??3Base@@SAXPAXK@Z                           // 0x0055cb55    e8169eedff
                         add                esp, 0x08                                      // 0x0055cb5a    83c408
_jmp_addr_0x0055cb5d:    mov.s              eax, esi                                       // 0x0055cb5d    8bc6
                         pop                esi                                            // 0x0055cb5f    5e
                         ret                0x0004                                         // 0x0055cb60    c20400
                         nop                                                               // 0x0055cb63    90
                         nop                                                               // 0x0055cb64    90
                         nop                                                               // 0x0055cb65    90
                         nop                                                               // 0x0055cb66    90
                         nop                                                               // 0x0055cb67    90
                         nop                                                               // 0x0055cb68    90
                         nop                                                               // 0x0055cb69    90
                         nop                                                               // 0x0055cb6a    90
                         nop                                                               // 0x0055cb6b    90
                         nop                                                               // 0x0055cb6c    90
                         nop                                                               // 0x0055cb6d    90
                         nop                                                               // 0x0055cb6e    90
                         nop                                                               // 0x0055cb6f    90
