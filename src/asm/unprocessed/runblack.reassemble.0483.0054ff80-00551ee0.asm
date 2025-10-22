.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Open@Windmill@@QAEXXZ
.extern ?Close@Windmill@@QAEXXZ
.extern ?InitAtmos@GAudio@@QAEXXZ
.extern ?ReleaseAtmosSoundBanks@GAudio@@QAEXXZ
.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x00436ab0
.extern _jmp_addr_0x0050f960
.extern _jmp_addr_0x0053b4a0
.extern ?RenderLoadingFrame@@YAXPAD@Z
.extern _jmp_addr_0x005525e0
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555cc0
.extern _jmp_addr_0x00555f40
.extern _jmp_addr_0x005564d0
.extern _jmp_addr_0x005568d0
.extern _jmp_addr_0x00556910
.extern _jmp_addr_0x00556c10
.extern ?Load@GestureSystemDataList@@QAE_NPAD@Z
.extern _jmp_addr_0x005ceba0
.extern ?Init@GInterfaceMessageBuffer@@QAEXG@Z
.extern _jmp_addr_0x005db710
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005e1bf0
.extern ?ProcessPosition@CMouse@@QAEXXZ
.extern _jmp_addr_0x00634640
.extern _jmp_addr_0x0063c3f0
.extern _jmp_addr_0x00649110
.extern @Init__7GPlayerF11PLAYER_TYPEUcPwUc@18
.extern ?Birthday@GPlayer@@QAEXXZ
.extern ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z
.extern @GetRealInterface__7GPlayerFUl@12
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??0_Lockit@std@@QAE@XZ
.extern ??1_Lockit@std@@QAE@XZ
.extern _sprintf
.extern _fopen
.extern _fclose
.extern _fscanf
.extern ___nw__FUl
.extern ?CreatePack@LH3DMesh@@SAXXZ@0
.extern _CHAR2WCHAR__FPc
.extern ?CreatePack@LH3DMesh@@SAXXZ

.globl ?UnfinishInitialisation@GGame@@QAEXXZ
.globl ?FinishInitialisation@GGame@@QAEXXZ
.globl ?LoadFiles@GGame@@QAE_NXZ
.globl ?SetupPlayers@GGame@@QAEXXZ
.globl ?Birthday@GGame@@QAEXXZ
.globl ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.globl ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.globl ?GetNextActivePlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.globl ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.globl ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.globl ?GetPlayerFromReal@GGame@@QAEPAVGPlayer@@K@Z
.globl ?GetPlayerInterfaceFromReal@GGame@@QAEPAVGInterface@@K@Z
.globl _jmp_addr_0x00550a80
.globl _jmp_addr_0x00550ba0
.globl _jmp_addr_0x00550be0
.globl _jmp_addr_0x00550c20
.globl _jmp_addr_0x00550c50
.globl _jmp_addr_0x00550c80
.globl _jmp_addr_0x00550cb0
.globl _jmp_addr_0x00550cf0
.globl _jmp_addr_0x00550dd0
.globl _jmp_addr_0x00550e40
.globl _jmp_addr_0x00550e90
.globl _jmp_addr_0x00550ec0
.globl _jmp_addr_0x00550f10
.globl _jmp_addr_0x00550f80
.globl _jmp_addr_0x00551040
.globl _jmp_addr_0x00551090
.globl _jmp_addr_0x00551250
.globl _jmp_addr_0x005514d0
.globl _jmp_addr_0x00551510
.globl _jmp_addr_0x00551530
.globl _jmp_addr_0x00551580
.globl _jmp_addr_0x005515d0
.globl _jmp_addr_0x00551630
.globl ?Dump@GGame@@UAEXXZ
.globl ?KeyHandler@GGame@@QAEXGW4LH_KEY@@GGPAX@Z
.globl ?MouseHandler@GGame@@QAE_NPAXW4LH_MOUSE_EVENT_TYPE@@KK@Z
.globl ?LoopThroughPlayers@GGame@@QAEXXZ
.globl ?MyPlayerID@GGame@@QAEHK@Z
.globl ?GetNextPlayerWithNoCreature@GGame@@QAEPAVGPlayer@@PAV2@@Z
.globl ?GetPlayer@GGame@@QAEPAVGPlayer@@W4PLAYER_NAME@@@Z

_jmp_addr_0x00550a80:    {disp32} mov       ecx, dword ptr [_game]                         // 0x00550a80    8b0d5c19d000
                         push               esi                                            // 0x00550a86    56
                         xor.s              esi, esi                                       // 0x00550a87    33f6
                         push               esi                                            // 0x00550a89    56
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                           // 0x00550a8a    e841feffff
                         test               eax, eax                                       // 0x00550a8f    85c0
                         {disp8} je         _jmp_addr_0x00550ab7                           // 0x00550a91    7424
_jmp_addr_0x00550a93:    {disp32} mov       ecx, dword ptr [eax + 0x000008e0]              // 0x00550a93    8b88e0080000
                         test               ecx, ecx                                       // 0x00550a99    85c9
                         {disp8} je         _jmp_addr_0x00550aa7                           // 0x00550a9b    740a
                         cmp                byte ptr [eax + 0x000000b5], 0x04              // 0x00550a9d    80b8b500000004
                         {disp8} jae        _jmp_addr_0x00550aa7                           // 0x00550aa4    7301
                         inc                esi                                            // 0x00550aa6    46
_jmp_addr_0x00550aa7:    {disp32} mov       ecx, dword ptr [_game]                         // 0x00550aa7    8b0d5c19d000
                         push               eax                                            // 0x00550aad    50
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                           // 0x00550aae    e81dfeffff
                         test               eax, eax                                       // 0x00550ab3    85c0
                         {disp8} jne        _jmp_addr_0x00550a93                           // 0x00550ab5    75dc
_jmp_addr_0x00550ab7:    mov.s              eax, esi                                       // 0x00550ab7    8bc6
                         pop                esi                                            // 0x00550ab9    5e
                         ret                                                               // 0x00550aba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x00550abb    e8b90debff
                         {disp8} mov        dx, word ptr [esp + 0x08]                      // 0x00550ac0    668b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550ac5    8b442404
                         {disp32} mov       word ptr [ecx + 0x00205a68], dx                // 0x00550ac9    668991685a2000
                         {disp8} mov        dx, word ptr [esp + 0x0c]                      // 0x00550ad0    668b54240c
                         {disp32} mov       word ptr [ecx + 0x00205a6a], dx                // 0x00550ad5    6689916a5a2000
                         {disp8} mov        dx, word ptr [esp + 0x10]                      // 0x00550adc    668b542410
                         {disp32} mov       word ptr [ecx + 0x00205a6c], dx                // 0x00550ae1    6689916c5a2000
                         {disp8} mov        dx, word ptr [esp + 0x14]                      // 0x00550ae8    668b542414
                         push               0x0                                            // 0x00550aed    6a00
                         push               eax                                            // 0x00550aef    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550af0    8881615a2000
                         {disp32} mov       word ptr [ecx + 0x00205a6e], dx                // 0x00550af6    6689916e5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550afd    e88e0b0000
                         ret                0x0014                                         // 0x00550b02    c21400
                         nop                                                               // 0x00550b05    90
                         nop                                                               // 0x00550b06    90
                         nop                                                               // 0x00550b07    90
                         nop                                                               // 0x00550b08    90
                         nop                                                               // 0x00550b09    90
                         nop                                                               // 0x00550b0a    90
                         nop                                                               // 0x00550b0b    90
                         nop                                                               // 0x00550b0c    90
                         nop                                                               // 0x00550b0d    90
                         nop                                                               // 0x00550b0e    90
                         nop                                                               // 0x00550b0f    90
                         {disp8} mov        dx, word ptr [esp + 0x08]                      // 0x00550b10    668b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550b15    8b442404
                         {disp32} mov       word ptr [ecx + 0x00205a68], dx                // 0x00550b19    668991685a2000
                         {disp8} mov        dx, word ptr [esp + 0x0c]                      // 0x00550b20    668b54240c
                         {disp32} mov       word ptr [ecx + 0x00205a6a], dx                // 0x00550b25    6689916a5a2000
                         {disp8} mov        dx, word ptr [esp + 0x10]                      // 0x00550b2c    668b542410
                         {disp32} mov       word ptr [ecx + 0x00205a6c], dx                // 0x00550b31    6689916c5a2000
                         {disp8} mov        dx, word ptr [esp + 0x14]                      // 0x00550b38    668b542414
                         push               0x1                                            // 0x00550b3d    6a01
                         push               eax                                            // 0x00550b3f    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550b40    8881615a2000
                         {disp32} mov       word ptr [ecx + 0x00205a6e], dx                // 0x00550b46    6689916e5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550b4d    e83e0b0000
                         ret                0x0014                                         // 0x00550b52    c21400
                         nop                                                               // 0x00550b55    90
                         nop                                                               // 0x00550b56    90
                         nop                                                               // 0x00550b57    90
                         nop                                                               // 0x00550b58    90
                         nop                                                               // 0x00550b59    90
                         nop                                                               // 0x00550b5a    90
                         nop                                                               // 0x00550b5b    90
                         nop                                                               // 0x00550b5c    90
                         nop                                                               // 0x00550b5d    90
                         nop                                                               // 0x00550b5e    90
                         nop                                                               // 0x00550b5f    90
                         {disp8} mov        dx, word ptr [esp + 0x08]                      // 0x00550b60    668b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550b65    8b442404
                         {disp32} mov       word ptr [ecx + 0x00205a68], dx                // 0x00550b69    668991685a2000
                         {disp8} mov        dx, word ptr [esp + 0x0c]                      // 0x00550b70    668b54240c
                         {disp32} mov       word ptr [ecx + 0x00205a6a], dx                // 0x00550b75    6689916a5a2000
                         {disp8} mov        dx, word ptr [esp + 0x10]                      // 0x00550b7c    668b542410
                         push               0x2                                            // 0x00550b81    6a02
                         push               eax                                            // 0x00550b83    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550b84    8881615a2000
                         {disp32} mov       word ptr [ecx + 0x00205a6c], dx                // 0x00550b8a    6689916c5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550b91    e8fa0a0000
                         ret                0x0010                                         // 0x00550b96    c21000
                         nop                                                               // 0x00550b99    90
                         nop                                                               // 0x00550b9a    90
                         nop                                                               // 0x00550b9b    90
                         nop                                                               // 0x00550b9c    90
                         nop                                                               // 0x00550b9d    90
                         nop                                                               // 0x00550b9e    90
                         nop                                                               // 0x00550b9f    90
_jmp_addr_0x00550ba0:    {disp8} mov        dx, word ptr [esp + 0x08]                      // 0x00550ba0    668b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550ba5    8b442404
                         {disp32} mov       word ptr [ecx + 0x00205a68], dx                // 0x00550ba9    668991685a2000
                         {disp8} mov        dx, word ptr [esp + 0x0c]                      // 0x00550bb0    668b54240c
                         {disp32} mov       word ptr [ecx + 0x00205a6a], dx                // 0x00550bb5    6689916a5a2000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x00550bbc    8b542410
                         push               0x3                                            // 0x00550bc0    6a03
                         push               eax                                            // 0x00550bc2    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550bc3    8881615a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a6c], edx              // 0x00550bc9    89916c5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550bcf    e8bc0a0000
                         ret                0x0010                                         // 0x00550bd4    c21000
                         nop                                                               // 0x00550bd7    90
                         nop                                                               // 0x00550bd8    90
                         nop                                                               // 0x00550bd9    90
                         nop                                                               // 0x00550bda    90
                         nop                                                               // 0x00550bdb    90
                         nop                                                               // 0x00550bdc    90
                         nop                                                               // 0x00550bdd    90
                         nop                                                               // 0x00550bde    90
                         nop                                                               // 0x00550bdf    90
_jmp_addr_0x00550be0:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550be0    8b442408
                         push               ebx                                            // 0x00550be4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550be5    8b5c2408
                         push               esi                                            // 0x00550be9    56
                         mov.s              esi, ecx                                       // 0x00550bea    8bf1
                         push               eax                                            // 0x00550bec    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550bed    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550bf3    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550bf9    e8f2b70e00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00550bfe    8b4c2414
                         push               0x4                                            // 0x00550c02    6a04
                         {disp32} mov       dword ptr [esi + 0x00205a74], ecx              // 0x00550c04    898e745a2000
                         push               ebx                                            // 0x00550c0a    53
                         mov.s              ecx, esi                                       // 0x00550c0b    8bce
                         call               _jmp_addr_0x00551690                           // 0x00550c0d    e87e0a0000
                         pop                esi                                            // 0x00550c12    5e
                         pop                ebx                                            // 0x00550c13    5b
                         ret                0x000c                                         // 0x00550c14    c20c00
                         nop                                                               // 0x00550c17    90
                         nop                                                               // 0x00550c18    90
                         nop                                                               // 0x00550c19    90
                         nop                                                               // 0x00550c1a    90
                         nop                                                               // 0x00550c1b    90
                         nop                                                               // 0x00550c1c    90
                         nop                                                               // 0x00550c1d    90
                         nop                                                               // 0x00550c1e    90
                         nop                                                               // 0x00550c1f    90
_jmp_addr_0x00550c20:    {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x00550c20    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550c24    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00205a68], edx              // 0x00550c28    8991685a2000
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x00550c2e    8b54240c
                         push               0x5                                            // 0x00550c32    6a05
                         push               eax                                            // 0x00550c34    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550c35    8881615a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a6c], edx              // 0x00550c3b    89916c5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550c41    e84a0a0000
                         ret                0x000c                                         // 0x00550c46    c20c00
                         nop                                                               // 0x00550c49    90
                         nop                                                               // 0x00550c4a    90
                         nop                                                               // 0x00550c4b    90
                         nop                                                               // 0x00550c4c    90
                         nop                                                               // 0x00550c4d    90
                         nop                                                               // 0x00550c4e    90
                         nop                                                               // 0x00550c4f    90
_jmp_addr_0x00550c50:    {disp8} mov        dx, word ptr [esp + 0x08]                      // 0x00550c50    668b542408
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550c55    8b442404
                         {disp32} mov       word ptr [ecx + 0x00205a6c], dx                // 0x00550c59    6689916c5a2000
                         {disp8} mov        dx, word ptr [esp + 0x0c]                      // 0x00550c60    668b54240c
                         push               0x6                                            // 0x00550c65    6a06
                         push               eax                                            // 0x00550c67    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550c68    8881615a2000
                         {disp32} mov       word ptr [ecx + 0x00205a6e], dx                // 0x00550c6e    6689916e5a2000
                         call               _jmp_addr_0x00551690                           // 0x00550c75    e8160a0000
                         ret                0x000c                                         // 0x00550c7a    c20c00
                         nop                                                               // 0x00550c7d    90
                         nop                                                               // 0x00550c7e    90
                         nop                                                               // 0x00550c7f    90
_jmp_addr_0x00550c80:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550c80    8b442408
                         push               ebx                                            // 0x00550c84    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550c85    8b5c2408
                         push               esi                                            // 0x00550c89    56
                         mov.s              esi, ecx                                       // 0x00550c8a    8bf1
                         push               eax                                            // 0x00550c8c    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550c8d    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550c93    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550c99    e852b70e00
                         push               0x7                                            // 0x00550c9e    6a07
                         push               ebx                                            // 0x00550ca0    53
                         mov.s              ecx, esi                                       // 0x00550ca1    8bce
                         call               _jmp_addr_0x00551690                           // 0x00550ca3    e8e8090000
                         pop                esi                                            // 0x00550ca8    5e
                         pop                ebx                                            // 0x00550ca9    5b
                         ret                0x0008                                         // 0x00550caa    c20800
                         nop                                                               // 0x00550cad    90
                         nop                                                               // 0x00550cae    90
                         nop                                                               // 0x00550caf    90
_jmp_addr_0x00550cb0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550cb0    8b442404
                         push               esi                                            // 0x00550cb4    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00550cb5    8b74240c
                         push               edi                                            // 0x00550cb9    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550cba    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x00550cc0    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a68]              // 0x00550cc2    8d91685a2000
                         mov                dword ptr [edx], edi                           // 0x00550cc8    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00550cca    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00550ccd    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00550cd0    8b7608
                         push               0x8                                            // 0x00550cd3    6a08
                         push               eax                                            // 0x00550cd5    50
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00550cd6    897208
                         call               _jmp_addr_0x00551690                           // 0x00550cd9    e8b2090000
                         pop                edi                                            // 0x00550cde    5f
                         pop                esi                                            // 0x00550cdf    5e
                         ret                0x0008                                         // 0x00550ce0    c20800
                         nop                                                               // 0x00550ce3    90
                         nop                                                               // 0x00550ce4    90
                         nop                                                               // 0x00550ce5    90
                         nop                                                               // 0x00550ce6    90
                         nop                                                               // 0x00550ce7    90
                         nop                                                               // 0x00550ce8    90
                         nop                                                               // 0x00550ce9    90
                         nop                                                               // 0x00550cea    90
                         nop                                                               // 0x00550ceb    90
                         nop                                                               // 0x00550cec    90
                         nop                                                               // 0x00550ced    90
                         nop                                                               // 0x00550cee    90
                         nop                                                               // 0x00550cef    90
_jmp_addr_0x00550cf0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550cf0    8b442404
                         push               esi                                            // 0x00550cf4    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00550cf5    8b74240c
                         push               edi                                            // 0x00550cf9    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550cfa    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x00550d00    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a68]              // 0x00550d02    8d91685a2000
                         mov                dword ptr [edx], edi                           // 0x00550d08    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00550d0a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00550d0d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00550d10    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00550d13    897208
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00550d16    8b542414
                         push               0x9                                            // 0x00550d1a    6a09
                         push               eax                                            // 0x00550d1c    50
                         {disp32} mov       dword ptr [ecx + 0x00205a74], edx              // 0x00550d1d    8991745a2000
                         call               _jmp_addr_0x00551690                           // 0x00550d23    e868090000
                         pop                edi                                            // 0x00550d28    5f
                         pop                esi                                            // 0x00550d29    5e
                         ret                0x000c                                         // 0x00550d2a    c20c00
                         nop                                                               // 0x00550d2d    90
                         nop                                                               // 0x00550d2e    90
                         nop                                                               // 0x00550d2f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550d30    8b442404
                         push               esi                                            // 0x00550d34    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00550d35    8b74240c
                         push               edi                                            // 0x00550d39    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550d3a    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x00550d40    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a68]              // 0x00550d42    8d91685a2000
                         mov                dword ptr [edx], edi                           // 0x00550d48    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00550d4a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00550d4d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00550d50    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00550d53    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x00550d56    8b742414
                         mov                edi, dword ptr [esi]                           // 0x00550d5a    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a74]              // 0x00550d5c    8d91745a2000
                         mov                dword ptr [edx], edi                           // 0x00550d62    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00550d64    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00550d67    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00550d6a    8b7608
                         push               0xa                                            // 0x00550d6d    6a0a
                         push               eax                                            // 0x00550d6f    50
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00550d70    897208
                         call               _jmp_addr_0x00551690                           // 0x00550d73    e818090000
                         pop                edi                                            // 0x00550d78    5f
                         pop                esi                                            // 0x00550d79    5e
                         ret                0x000c                                         // 0x00550d7a    c20c00
                         nop                                                               // 0x00550d7d    90
                         nop                                                               // 0x00550d7e    90
                         nop                                                               // 0x00550d7f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550d80    8b442404
                         push               esi                                            // 0x00550d84    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00550d85    8b74240c
                         push               edi                                            // 0x00550d89    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550d8a    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x00550d90    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a68]              // 0x00550d92    8d91685a2000
                         mov                dword ptr [edx], edi                           // 0x00550d98    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00550d9a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00550d9d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00550da0    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00550da3    897208
                         {disp8} mov        dx, word ptr [esp + 0x14]                      // 0x00550da6    668b542414
                         {disp32} mov       word ptr [ecx + 0x00205a74], dx                // 0x00550dab    668991745a2000
                         {disp8} mov        dx, word ptr [esp + 0x18]                      // 0x00550db2    668b542418
                         push               0xb                                            // 0x00550db7    6a0b
                         push               eax                                            // 0x00550db9    50
                         {disp32} mov       word ptr [ecx + 0x00205a76], dx                // 0x00550dba    668991765a2000
                         call               _jmp_addr_0x00551690                           // 0x00550dc1    e8ca080000
                         pop                edi                                            // 0x00550dc6    5f
                         pop                esi                                            // 0x00550dc7    5e
                         ret                0x0010                                         // 0x00550dc8    c21000
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x00550dcb    e8a90aebff
_jmp_addr_0x00550dd0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00550dd0    8b442404
                         push               0xc                                            // 0x00550dd4    6a0c
                         push               eax                                            // 0x00550dd6    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00550dd7    8881615a2000
                         call               _jmp_addr_0x00551690                           // 0x00550ddd    e8ae080000
                         ret                0x0004                                         // 0x00550de2    c20400
                         nop                                                               // 0x00550de5    90
                         nop                                                               // 0x00550de6    90
                         nop                                                               // 0x00550de7    90
                         nop                                                               // 0x00550de8    90
                         nop                                                               // 0x00550de9    90
                         nop                                                               // 0x00550dea    90
                         nop                                                               // 0x00550deb    90
                         nop                                                               // 0x00550dec    90
                         nop                                                               // 0x00550ded    90
                         nop                                                               // 0x00550dee    90
                         nop                                                               // 0x00550def    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550df0    8b442408
                         push               ebx                                            // 0x00550df4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550df5    8b5c2408
                         push               esi                                            // 0x00550df9    56
                         mov.s              esi, ecx                                       // 0x00550dfa    8bf1
                         push               eax                                            // 0x00550dfc    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550dfd    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550e03    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550e09    e8e2b50e00
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x00550e0e    8b442414
                         mov                ecx, dword ptr [eax]                           // 0x00550e12    8b08
                         {disp32} mov       dword ptr [esi + 0x00205a70], ecx              // 0x00550e14    898e705a2000
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x00550e1a    8b5004
                         push               0xd                                            // 0x00550e1d    6a0d
                         push               ebx                                            // 0x00550e1f    53
                         mov.s              ecx, esi                                       // 0x00550e20    8bce
                         {disp32} mov       dword ptr [esi + 0x00205a74], edx              // 0x00550e22    8996745a2000
                         call               _jmp_addr_0x00551690                           // 0x00550e28    e863080000
                         pop                esi                                            // 0x00550e2d    5e
                         pop                ebx                                            // 0x00550e2e    5b
                         ret                0x000c                                         // 0x00550e2f    c20c00
                         nop                                                               // 0x00550e32    90
                         nop                                                               // 0x00550e33    90
                         nop                                                               // 0x00550e34    90
                         nop                                                               // 0x00550e35    90
                         nop                                                               // 0x00550e36    90
                         nop                                                               // 0x00550e37    90
                         nop                                                               // 0x00550e38    90
                         nop                                                               // 0x00550e39    90
                         nop                                                               // 0x00550e3a    90
                         nop                                                               // 0x00550e3b    90
                         nop                                                               // 0x00550e3c    90
                         nop                                                               // 0x00550e3d    90
                         nop                                                               // 0x00550e3e    90
                         nop                                                               // 0x00550e3f    90
_jmp_addr_0x00550e40:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550e40    8b442408
                         push               ebx                                            // 0x00550e44    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550e45    8b5c2408
                         push               esi                                            // 0x00550e49    56
                         mov.s              esi, ecx                                       // 0x00550e4a    8bf1
                         push               eax                                            // 0x00550e4c    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550e4d    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550e53    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550e59    e892b50e00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00550e5e    8b542414
                         mov                eax, dword ptr [edx]                           // 0x00550e62    8b02
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a70]              // 0x00550e64    8d8e705a2000
                         mov                dword ptr [ecx], eax                           // 0x00550e6a    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x00550e6c    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x00550e6f    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x00550e72    8b5208
                         push               0xe                                            // 0x00550e75    6a0e
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x00550e77    895108
                         push               ebx                                            // 0x00550e7a    53
                         mov.s              ecx, esi                                       // 0x00550e7b    8bce
                         call               _jmp_addr_0x00551690                           // 0x00550e7d    e80e080000
                         pop                esi                                            // 0x00550e82    5e
                         pop                ebx                                            // 0x00550e83    5b
                         ret                0x000c                                         // 0x00550e84    c20c00
                         nop                                                               // 0x00550e87    90
                         nop                                                               // 0x00550e88    90
                         nop                                                               // 0x00550e89    90
                         nop                                                               // 0x00550e8a    90
                         nop                                                               // 0x00550e8b    90
                         nop                                                               // 0x00550e8c    90
                         nop                                                               // 0x00550e8d    90
                         nop                                                               // 0x00550e8e    90
                         nop                                                               // 0x00550e8f    90
_jmp_addr_0x00550e90:    {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x00550e90    8b542404
                         push               esi                                            // 0x00550e94    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00550e95    8b74240c
                         mov.s              eax, ecx                                       // 0x00550e99    8bc1
                         push               edi                                            // 0x00550e9b    57
                         {disp32} lea       edi, dword ptr [eax + 0x00205a70]              // 0x00550e9c    8db8705a2000
                         {disp32} mov       byte ptr [eax + 0x00205a61], dl                // 0x00550ea2    8890615a2000
                         mov                ecx, 0x00000006                                // 0x00550ea8    b906000000
                         push               0xf                                            // 0x00550ead    6a0f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00550eaf    f3a5
                         push               edx                                            // 0x00550eb1    52
                         mov.s              ecx, eax                                       // 0x00550eb2    8bc8
                         call               _jmp_addr_0x00551690                           // 0x00550eb4    e8d7070000
                         pop                edi                                            // 0x00550eb9    5f
                         pop                esi                                            // 0x00550eba    5e
                         ret                0x0008                                         // 0x00550ebb    c20800
                         nop                                                               // 0x00550ebe    90
                         nop                                                               // 0x00550ebf    90
_jmp_addr_0x00550ec0:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550ec0    8b442408
                         push               ebx                                            // 0x00550ec4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550ec5    8b5c2408
                         push               ebp                                            // 0x00550ec9    55
                         push               esi                                            // 0x00550eca    56
                         mov.s              ebp, ecx                                       // 0x00550ecb    8be9
                         push               edi                                            // 0x00550ecd    57
                         push               eax                                            // 0x00550ece    50
                         {disp32} lea       ecx, dword ptr [ebp + 0x00205a60]              // 0x00550ecf    8d8d605a2000
                         {disp32} mov       byte ptr [ebp + 0x00205a61], bl                // 0x00550ed5    889d615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550edb    e810b50e00
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x00550ee0    8b74241c
                         {disp32} lea       edi, dword ptr [ebp + 0x00205a70]              // 0x00550ee4    8dbd705a2000
                         mov                ecx, 0x00000006                                // 0x00550eea    b906000000
                         push               0x10                                           // 0x00550eef    6a10
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00550ef1    f3a5
                         push               ebx                                            // 0x00550ef3    53
                         mov.s              ecx, ebp                                       // 0x00550ef4    8bcd
                         call               _jmp_addr_0x00551690                           // 0x00550ef6    e895070000
                         pop                edi                                            // 0x00550efb    5f
                         pop                esi                                            // 0x00550efc    5e
                         pop                ebp                                            // 0x00550efd    5d
                         pop                ebx                                            // 0x00550efe    5b
                         ret                0x000c                                         // 0x00550eff    c20c00
                         nop                                                               // 0x00550f02    90
                         nop                                                               // 0x00550f03    90
                         nop                                                               // 0x00550f04    90
                         nop                                                               // 0x00550f05    90
                         nop                                                               // 0x00550f06    90
                         nop                                                               // 0x00550f07    90
                         nop                                                               // 0x00550f08    90
                         nop                                                               // 0x00550f09    90
                         nop                                                               // 0x00550f0a    90
                         nop                                                               // 0x00550f0b    90
                         nop                                                               // 0x00550f0c    90
                         nop                                                               // 0x00550f0d    90
                         nop                                                               // 0x00550f0e    90
                         nop                                                               // 0x00550f0f    90
_jmp_addr_0x00550f10:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550f10    8b442408
                         push               ebx                                            // 0x00550f14    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550f15    8b5c2408
                         push               esi                                            // 0x00550f19    56
                         mov.s              esi, ecx                                       // 0x00550f1a    8bf1
                         push               eax                                            // 0x00550f1c    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550f1d    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550f23    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550f29    e8c2b40e00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x00550f2e    8b542414
                         mov                eax, dword ptr [edx]                           // 0x00550f32    8b02
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a7c]              // 0x00550f34    8d8e7c5a2000
                         mov                dword ptr [ecx], eax                           // 0x00550f3a    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x00550f3c    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x00550f3f    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x00550f42    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x00550f45    895108
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x00550f48    8b4c2418
                         mov                edx, dword ptr [ecx]                           // 0x00550f4c    8b11
                         {disp32} lea       eax, dword ptr [esi + 0x00205a88]              // 0x00550f4e    8d86885a2000
                         mov                dword ptr [eax], edx                           // 0x00550f54    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x00550f56    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x00550f59    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x00550f5c    8b4908
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00550f5f    8b54241c
                         push               0x11                                           // 0x00550f63    6a11
                         {disp8} mov        dword ptr [eax + 0x08], ecx                    // 0x00550f65    894808
                         push               ebx                                            // 0x00550f68    53
                         mov.s              ecx, esi                                       // 0x00550f69    8bce
                         {disp32} mov       dword ptr [esi + 0x00205a70], edx              // 0x00550f6b    8996705a2000
                         call               _jmp_addr_0x00551690                           // 0x00550f71    e81a070000
                         pop                esi                                            // 0x00550f76    5e
                         pop                ebx                                            // 0x00550f77    5b
                         ret                0x0014                                         // 0x00550f78    c21400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x00550f7b    e8f908ebff
_jmp_addr_0x00550f80:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00550f80    8b442408
                         push               ebx                                            // 0x00550f84    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550f85    8b5c2408
                         push               esi                                            // 0x00550f89    56
                         mov.s              esi, ecx                                       // 0x00550f8a    8bf1
                         push               eax                                            // 0x00550f8c    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x00550f8d    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00550f93    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00550f99    e852b40e00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00550f9e    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x00550fa2    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x00550fa6    8b44241c
                         push               0x12                                           // 0x00550faa    6a12
                         {disp32} mov       dword ptr [esi + 0x00205a70], ecx              // 0x00550fac    898e705a2000
                         push               ebx                                            // 0x00550fb2    53
                         mov.s              ecx, esi                                       // 0x00550fb3    8bce
                         {disp32} mov       dword ptr [esi + 0x00205a74], edx              // 0x00550fb5    8996745a2000
                         {disp32} mov       dword ptr [esi + 0x00205a78], eax              // 0x00550fbb    8986785a2000
                         call               _jmp_addr_0x00551690                           // 0x00550fc1    e8ca060000
                         pop                esi                                            // 0x00550fc6    5e
                         pop                ebx                                            // 0x00550fc7    5b
                         ret                0x0014                                         // 0x00550fc8    c21400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x00550fcb    e8a908ebff
                         mov.s              edx, ecx                                       // 0x00550fd0    8bd1
                         or                 ecx, 0xffffffff                                // 0x00550fd2    83c9ff
                         push               ebx                                            // 0x00550fd5    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00550fd6    8b5c2408
                         push               ebp                                            // 0x00550fda    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                    // 0x00550fdb    8b6c2410
                         push               esi                                            // 0x00550fdf    56
                         push               edi                                            // 0x00550fe0    57
                         xor.s              eax, eax                                       // 0x00550fe1    33c0
                         {disp32} mov       byte ptr [edx + 0x00205a61], bl                // 0x00550fe3    889a615a2000
                         mov.s              edi, ebp                                       // 0x00550fe9    8bfd
                         repne scasb                                                       // 0x00550feb    f2ae
                         not                ecx                                            // 0x00550fed    f7d1
                         sub.s              edi, ecx                                       // 0x00550fef    2bf9
                         mov.s              eax, ecx                                       // 0x00550ff1    8bc1
                         shr                ecx, 2                                         // 0x00550ff3    c1e902
                         {disp32} lea       esi, dword ptr [edx + 0x00205a71]              // 0x00550ff6    8db2715a2000
                         {disp8} mov        dword ptr [esp + 0x14], esi                    // 0x00550ffc    89742414
                         mov.s              esi, edi                                       // 0x00551000    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x00551002    8b7c2414
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551006    f3a5
                         mov.s              ecx, eax                                       // 0x00551008    8bc8
                         and                ecx, 0x03                                      // 0x0055100a    83e103
                         rep movsb                                                         // 0x0055100d    f3a4
                         or                 ecx, 0xffffffff                                // 0x0055100f    83c9ff
                         xor.s              eax, eax                                       // 0x00551012    33c0
                         mov.s              edi, ebp                                       // 0x00551014    8bfd
                         repne scasb                                                       // 0x00551016    f2ae
                         not                ecx                                            // 0x00551018    f7d1
                         dec                ecx                                            // 0x0055101a    49
                         push               0x13                                           // 0x0055101b    6a13
                         {disp32} mov       byte ptr [edx + 0x00205a70], cl                // 0x0055101d    888a705a2000
                         push               ebx                                            // 0x00551023    53
                         mov.s              ecx, edx                                       // 0x00551024    8bca
                         call               _jmp_addr_0x00551690                           // 0x00551026    e865060000
                         pop                edi                                            // 0x0055102b    5f
                         pop                esi                                            // 0x0055102c    5e
                         pop                ebp                                            // 0x0055102d    5d
                         pop                ebx                                            // 0x0055102e    5b
                         ret                0x0008                                         // 0x0055102f    c20800
                         nop                                                               // 0x00551032    90
                         nop                                                               // 0x00551033    90
                         nop                                                               // 0x00551034    90
                         nop                                                               // 0x00551035    90
                         nop                                                               // 0x00551036    90
                         nop                                                               // 0x00551037    90
                         nop                                                               // 0x00551038    90
                         nop                                                               // 0x00551039    90
                         nop                                                               // 0x0055103a    90
                         nop                                                               // 0x0055103b    90
                         nop                                                               // 0x0055103c    90
                         nop                                                               // 0x0055103d    90
                         nop                                                               // 0x0055103e    90
                         nop                                                               // 0x0055103f    90
_jmp_addr_0x00551040:    {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x00551040    8b542404
                         mov.s              eax, ecx                                       // 0x00551044    8bc1
                         push               ebx                                            // 0x00551046    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x00551047    8b5c2410
                         push               ebp                                            // 0x0055104b    55
                         push               esi                                            // 0x0055104c    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x0055104d    8b742414
                         push               edi                                            // 0x00551051    57
                         mov.s              ecx, ebx                                       // 0x00551052    8bcb
                         mov.s              ebp, ecx                                       // 0x00551054    8be9
                         shr                ecx, 2                                         // 0x00551056    c1e902
                         {disp32} mov       byte ptr [eax + 0x00205a61], dl                // 0x00551059    8890615a2000
                         {disp32} lea       edi, dword ptr [eax + 0x00205a71]              // 0x0055105f    8db8715a2000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551065    f3a5
                         mov.s              ecx, ebp                                       // 0x00551067    8bcd
                         and                ecx, 0x03                                      // 0x00551069    83e103
                         rep movsb                                                         // 0x0055106c    f3a4
                         push               0x13                                           // 0x0055106e    6a13
                         push               edx                                            // 0x00551070    52
                         mov.s              ecx, eax                                       // 0x00551071    8bc8
                         {disp32} mov       byte ptr [eax + 0x00205a70], bl                // 0x00551073    8898705a2000
                         call               _jmp_addr_0x00551690                           // 0x00551079    e812060000
                         pop                edi                                            // 0x0055107e    5f
                         pop                esi                                            // 0x0055107f    5e
                         pop                ebp                                            // 0x00551080    5d
                         pop                ebx                                            // 0x00551081    5b
                         ret                0x000c                                         // 0x00551082    c20c00
                         nop                                                               // 0x00551085    90
                         nop                                                               // 0x00551086    90
                         nop                                                               // 0x00551087    90
                         nop                                                               // 0x00551088    90
                         nop                                                               // 0x00551089    90
                         nop                                                               // 0x0055108a    90
                         nop                                                               // 0x0055108b    90
                         nop                                                               // 0x0055108c    90
                         nop                                                               // 0x0055108d    90
                         nop                                                               // 0x0055108e    90
                         nop                                                               // 0x0055108f    90
_jmp_addr_0x00551090:    {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x00551090    8b542404
                         push               esi                                            // 0x00551094    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00551095    8b74240c
                         mov.s              eax, ecx                                       // 0x00551099    8bc1
                         push               edi                                            // 0x0055109b    57
                         {disp32} lea       edi, dword ptr [eax + 0x00205a68]              // 0x0055109c    8db8685a2000
                         {disp32} mov       byte ptr [eax + 0x00205a61], dl                // 0x005510a2    8890615a2000
                         mov                ecx, 0x0000000c                                // 0x005510a8    b90c000000
                         push               0x14                                           // 0x005510ad    6a14
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005510af    f3a5
                         push               edx                                            // 0x005510b1    52
                         mov.s              ecx, eax                                       // 0x005510b2    8bc8
                         call               _jmp_addr_0x00551690                           // 0x005510b4    e8d7050000
                         pop                edi                                            // 0x005510b9    5f
                         pop                esi                                            // 0x005510ba    5e
                         ret                0x0008                                         // 0x005510bb    c20800
                         nop                                                               // 0x005510be    90
                         nop                                                               // 0x005510bf    90
                         {disp8} mov        dl, byte ptr [esp + 0x10]                      // 0x005510c0    8a542410
                         push               ebx                                            // 0x005510c4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                    // 0x005510c5    8b5c2418
                         mov.s              eax, ecx                                       // 0x005510c9    8bc1
                         {disp8} mov        cl, byte ptr [esp + 0x08]                      // 0x005510cb    8a4c2408
                         push               ebp                                            // 0x005510cf    55
                         push               esi                                            // 0x005510d0    56
                         push               edi                                            // 0x005510d1    57
                         {disp32} mov       byte ptr [eax + 0x00205a61], cl                // 0x005510d2    8888615a2000
                         mov.s              edi, ebx                                       // 0x005510d8    8bfb
                         xor.s              ecx, ecx                                       // 0x005510da    33c9
                         and                edi, 0x000000ff                                // 0x005510dc    81e7ff000000
                         {disp32} mov       byte ptr [eax + 0x00205a71], dl                // 0x005510e2    8890715a2000
                         {disp32} mov       byte ptr [eax + 0x00205a72], bl                // 0x005510e8    8898725a2000
                         {disp8} jbe        _jmp_addr_0x00551103                           // 0x005510ee    7613
                         {disp8} mov        esi, dword ptr [esp + 0x28]                    // 0x005510f0    8b742428
_jmp_addr_0x005510f4:    mov                dl, byte ptr [ecx + esi * 0x1]                 // 0x005510f4    8a1431
                         {disp32} mov       byte ptr [eax + ecx * 0x1 + 0x00205a73], dl    // 0x005510f7    889408735a2000
                         inc                ecx                                            // 0x005510fe    41
                         cmp.s              ecx, edi                                       // 0x005510ff    3bcf
                         .byte              0x72, 0xf1// {disp8} jb _jmp_addr_0x005510f4   // 0x00551101    72f1
_jmp_addr_0x00551103:    {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x00551103    8b542418
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x00551107    8b74241c
                         {disp32} mov       dword ptr [edi + eax * 0x1 + 0x00205a73], edx  // 0x0055110b    899407735a2000
                         mov.s              ecx, edx                                       // 0x00551112    8bca
                         mov.s              ebp, ecx                                       // 0x00551114    8be9
                         shr                ecx, 2                                         // 0x00551116    c1e902
                         {disp32} lea       edi, dword ptr [edi + eax * 0x1 + 0x00205a77]  // 0x00551119    8dbc07775a2000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551120    f3a5
                         mov.s              ecx, ebp                                       // 0x00551122    8bcd
                         and                ecx, 0x03                                      // 0x00551124    83e103
                         rep movsb                                                         // 0x00551127    f3a4
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x00551129    8b4c2414
                         add.s              dl, bl                                         // 0x0055112d    02d3
                         push               0x15                                           // 0x0055112f    6a15
                         add                dl, 0x06                                       // 0x00551131    80c206
                         push               ecx                                            // 0x00551134    51
                         mov.s              ecx, eax                                       // 0x00551135    8bc8
                         {disp32} mov       byte ptr [eax + 0x00205a70], dl                // 0x00551137    8890705a2000
                         call               _jmp_addr_0x00551690                           // 0x0055113d    e84e050000
                         pop                edi                                            // 0x00551142    5f
                         pop                esi                                            // 0x00551143    5e
                         pop                ebp                                            // 0x00551144    5d
                         pop                ebx                                            // 0x00551145    5b
                         ret                0x0018                                         // 0x00551146    c21800
                         nop                                                               // 0x00551149    90
                         nop                                                               // 0x0055114a    90
                         nop                                                               // 0x0055114b    90
                         nop                                                               // 0x0055114c    90
                         nop                                                               // 0x0055114d    90
                         nop                                                               // 0x0055114e    90
                         nop                                                               // 0x0055114f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00551150    8b442404
                         push               esi                                            // 0x00551154    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00551155    8b74240c
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00551159    8881615a2000
                         push               edi                                            // 0x0055115f    57
                         mov                edi, dword ptr [esi]                           // 0x00551160    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a70]              // 0x00551162    8d91705a2000
                         mov                dword ptr [edx], edi                           // 0x00551168    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055116a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x0055116d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00551170    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00551173    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x00551176    8b742414
                         mov                edi, dword ptr [esi]                           // 0x0055117a    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a7c]              // 0x0055117c    8d917c5a2000
                         mov                dword ptr [edx], edi                           // 0x00551182    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00551184    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00551187    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x0055118a    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x0055118d    897208
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x00551190    8b742418
                         mov                edi, dword ptr [esi]                           // 0x00551194    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a88]              // 0x00551196    8d91885a2000
                         mov                dword ptr [edx], edi                           // 0x0055119c    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055119e    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005511a1    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x005511a4    8b7608
                         push               0x16                                           // 0x005511a7    6a16
                         push               eax                                            // 0x005511a9    50
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x005511aa    897208
                         call               _jmp_addr_0x00551690                           // 0x005511ad    e8de040000
                         pop                edi                                            // 0x005511b2    5f
                         pop                esi                                            // 0x005511b3    5e
                         ret                0x0010                                         // 0x005511b4    c21000
                         nop                                                               // 0x005511b7    90
                         nop                                                               // 0x005511b8    90
                         nop                                                               // 0x005511b9    90
                         nop                                                               // 0x005511ba    90
                         nop                                                               // 0x005511bb    90
                         nop                                                               // 0x005511bc    90
                         nop                                                               // 0x005511bd    90
                         nop                                                               // 0x005511be    90
                         nop                                                               // 0x005511bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005511c0    8b442404
                         push               esi                                            // 0x005511c4    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x005511c5    8b74240c
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x005511c9    8881615a2000
                         push               edi                                            // 0x005511cf    57
                         mov                edi, dword ptr [esi]                           // 0x005511d0    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a70]              // 0x005511d2    8d91705a2000
                         mov                dword ptr [edx], edi                           // 0x005511d8    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x005511da    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005511dd    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x005511e0    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x005511e3    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005511e6    8b742414
                         mov                edi, dword ptr [esi]                           // 0x005511ea    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a7c]              // 0x005511ec    8d917c5a2000
                         mov                dword ptr [edx], edi                           // 0x005511f2    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x005511f4    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005511f7    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x005511fa    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x005511fd    897208
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x00551200    8b742418
                         mov                edi, dword ptr [esi]                           // 0x00551204    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a88]              // 0x00551206    8d91885a2000
                         mov                dword ptr [edx], edi                           // 0x0055120c    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055120e    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00551211    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00551214    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00551217    897208
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x0055121a    8b74241c
                         mov                edi, dword ptr [esi]                           // 0x0055121e    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a94]              // 0x00551220    8d91945a2000
                         mov                dword ptr [edx], edi                           // 0x00551226    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00551228    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x0055122b    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x0055122e    8b7608
                         push               0x17                                           // 0x00551231    6a17
                         push               eax                                            // 0x00551233    50
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00551234    897208
                         call               _jmp_addr_0x00551690                           // 0x00551237    e854040000
                         pop                edi                                            // 0x0055123c    5f
                         pop                esi                                            // 0x0055123d    5e
                         ret                0x0014                                         // 0x0055123e    c21400
                         nop                                                               // 0x00551241    90
                         nop                                                               // 0x00551242    90
                         nop                                                               // 0x00551243    90
                         nop                                                               // 0x00551244    90
                         nop                                                               // 0x00551245    90
                         nop                                                               // 0x00551246    90
                         nop                                                               // 0x00551247    90
                         nop                                                               // 0x00551248    90
                         nop                                                               // 0x00551249    90
                         nop                                                               // 0x0055124a    90
                         nop                                                               // 0x0055124b    90
                         nop                                                               // 0x0055124c    90
                         nop                                                               // 0x0055124d    90
                         nop                                                               // 0x0055124e    90
                         nop                                                               // 0x0055124f    90
_jmp_addr_0x00551250:    {disp8} mov        al, byte ptr [esp + 0x04]                      // 0x00551250    8a442404
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x00551254    d905a0f88d00
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x0055125a    8881615a2000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00551260    8b442408
                         push               ebx                                            // 0x00551264    53
                         push               ebp                                            // 0x00551265    55
                         push               esi                                            // 0x00551266    56
                         mov                esi, dword ptr [eax]                           // 0x00551267    8b30
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a70]              // 0x00551269    8d91705a2000
                         mov                dword ptr [edx], esi                           // 0x0055126f    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                    // 0x00551271    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                    // 0x00551274    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x00551277    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x0055127a    894208
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x0055127d    8b542418
                         push               edi                                            // 0x00551281    57
                         mov.s              esi, edx                                       // 0x00551282    8bf2
                         mov                edi, dword ptr [esi]                           // 0x00551284    8b3e
                         {disp32} lea       eax, dword ptr [ecx + 0x00205a7c]              // 0x00551286    8d817c5a2000
                         mov                dword ptr [eax], edi                           // 0x0055128c    8938
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055128e    8b7e04
                         {disp8} mov        dword ptr [eax + 0x04], edi                    // 0x00551291    897804
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00551294    8b7608
                         {disp8} mov        dword ptr [eax + 0x08], esi                    // 0x00551297    897008
                         {disp8} mov        esi, dword ptr [esp + 0x20]                    // 0x0055129a    8b742420
                         mov.s              edi, esi                                       // 0x0055129e    8bfe
                         mov                ebx, dword ptr [edi]                           // 0x005512a0    8b1f
                         {disp32} lea       eax, dword ptr [ecx + 0x00205a88]              // 0x005512a2    8d81885a2000
                         mov                dword ptr [eax], ebx                           // 0x005512a8    8918
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                    // 0x005512aa    8b5f04
                         {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x005512ad    895804
                         {disp8} mov        edi, dword ptr [edi + 0x08]                    // 0x005512b0    8b7f08
                         {disp8} mov        dword ptr [eax + 0x08], edi                    // 0x005512b3    897808
                         {disp8} mov        edi, dword ptr [esp + 0x24]                    // 0x005512b6    8b7c2424
                         mov.s              ebx, edi                                       // 0x005512ba    8bdf
                         mov                ebp, dword ptr [ebx]                           // 0x005512bc    8b2b
                         {disp32} lea       eax, dword ptr [ecx + 0x00205a94]              // 0x005512be    8d81945a2000
                         mov                dword ptr [eax], ebp                           // 0x005512c4    8928
                         {disp8} mov        ebp, dword ptr [ebx + 0x04]                    // 0x005512c6    8b6b04
                         {disp8} mov        dword ptr [eax + 0x04], ebp                    // 0x005512c9    896804
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]                    // 0x005512cc    8b5b08
                         {disp8} mov        dword ptr [eax + 0x08], ebx                    // 0x005512cf    895808
                         {disp8} mov        al, byte ptr [esp + 0x28]                      // 0x005512d2    8a442428
                         {disp32} mov       byte ptr [ecx + 0x00205aa0], al                // 0x005512d6    8881a05a2000
                         fcomp              dword ptr [edx]                                // 0x005512dc    d81a
                         fnstsw             ax                                             // 0x005512de    dfe0
                         test               ah, 0x41                                       // 0x005512e0    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x005512e3    0f8546010000
                         fld                dword ptr [edx]                                // 0x005512e9    d902
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005512eb    d81d98a38a00
                         fnstsw             ax                                             // 0x005512f1    dfe0
                         test               ah, 0x41                                       // 0x005512f3    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x005512f6    0f8533010000
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x005512fc    d905a0f88d00
                         {disp8} fcomp      dword ptr [edx + 0x04]                         // 0x00551302    d85a04
                         fnstsw             ax                                             // 0x00551305    dfe0
                         test               ah, 0x41                                       // 0x00551307    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x0055130a    0f851f010000
                         {disp8} fld        dword ptr [edx + 0x04]                         // 0x00551310    d94204
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x00551313    d81d98a38a00
                         fnstsw             ax                                             // 0x00551319    dfe0
                         test               ah, 0x41                                       // 0x0055131b    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x0055131e    0f850b010000
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x00551324    d905a0f88d00
                         {disp8} fcomp      dword ptr [edx + 0x08]                         // 0x0055132a    d85a08
                         fnstsw             ax                                             // 0x0055132d    dfe0
                         test               ah, 0x41                                       // 0x0055132f    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x00551332    0f85f7000000
                         {disp8} fld        dword ptr [edx + 0x08]                         // 0x00551338    d94208
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0055133b    d81d98a38a00
                         fnstsw             ax                                             // 0x00551341    dfe0
                         test               ah, 0x41                                       // 0x00551343    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x00551346    0f85e3000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x0055134c    d905a0f88d00
                         fcomp              dword ptr [esi]                                // 0x00551352    d81e
                         fnstsw             ax                                             // 0x00551354    dfe0
                         test               ah, 0x41                                       // 0x00551356    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x00551359    0f85d0000000
                         fld                dword ptr [esi]                                // 0x0055135f    d906
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x00551361    d81d98a38a00
                         fnstsw             ax                                             // 0x00551367    dfe0
                         test               ah, 0x41                                       // 0x00551369    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x0055136c    0f85bd000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x00551372    d905a0f88d00
                         {disp8} fcomp      dword ptr [esi + 0x04]                         // 0x00551378    d85e04
                         fnstsw             ax                                             // 0x0055137b    dfe0
                         test               ah, 0x41                                       // 0x0055137d    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x00551380    0f85a9000000
                         {disp8} fld        dword ptr [esi + 0x04]                         // 0x00551386    d94604
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x00551389    d81d98a38a00
                         fnstsw             ax                                             // 0x0055138f    dfe0
                         test               ah, 0x41                                       // 0x00551391    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x00551394    0f8595000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x0055139a    d905a0f88d00
                         {disp8} fcomp      dword ptr [esi + 0x08]                         // 0x005513a0    d85e08
                         fnstsw             ax                                             // 0x005513a3    dfe0
                         test               ah, 0x41                                       // 0x005513a5    f6c441
                         {disp32} jne       _jmp_addr_0x0055142f                           // 0x005513a8    0f8581000000
                         {disp8} fld        dword ptr [esi + 0x08]                         // 0x005513ae    d94608
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005513b1    d81d98a38a00
                         fnstsw             ax                                             // 0x005513b7    dfe0
                         test               ah, 0x41                                       // 0x005513b9    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x005513bc    7571
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x005513be    d905a0f88d00
                         fcomp              dword ptr [edi]                                // 0x005513c4    d81f
                         fnstsw             ax                                             // 0x005513c6    dfe0
                         test               ah, 0x41                                       // 0x005513c8    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x005513cb    7562
                         fld                dword ptr [edi]                                // 0x005513cd    d907
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005513cf    d81d98a38a00
                         fnstsw             ax                                             // 0x005513d5    dfe0
                         test               ah, 0x41                                       // 0x005513d7    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x005513da    7553
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x005513dc    d905a0f88d00
                         {disp8} fcomp      dword ptr [edi + 0x04]                         // 0x005513e2    d85f04
                         fnstsw             ax                                             // 0x005513e5    dfe0
                         test               ah, 0x41                                       // 0x005513e7    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x005513ea    7543
                         {disp8} fld        dword ptr [edi + 0x04]                         // 0x005513ec    d94704
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005513ef    d81d98a38a00
                         fnstsw             ax                                             // 0x005513f5    dfe0
                         test               ah, 0x41                                       // 0x005513f7    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x005513fa    7533
                         {disp32} fld       dword ptr [rdata_bytes + 0x368a0]              // 0x005513fc    d905a0f88d00
                         {disp8} fcomp      dword ptr [edi + 0x08]                         // 0x00551402    d85f08
                         fnstsw             ax                                             // 0x00551405    dfe0
                         test               ah, 0x41                                       // 0x00551407    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x0055140a    7523
                         {disp8} fld        dword ptr [edi + 0x08]                         // 0x0055140c    d94708
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0055140f    d81d98a38a00
                         fnstsw             ax                                             // 0x00551415    dfe0
                         test               ah, 0x41                                       // 0x00551417    f6c441
                         {disp8} jne        _jmp_addr_0x0055142f                           // 0x0055141a    7513
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x0055141c    8b542414
                         push               0x1f                                           // 0x00551420    6a1f
                         push               edx                                            // 0x00551422    52
                         call               _jmp_addr_0x00551690                           // 0x00551423    e868020000
                         pop                edi                                            // 0x00551428    5f
                         pop                esi                                            // 0x00551429    5e
                         pop                ebp                                            // 0x0055142a    5d
                         pop                ebx                                            // 0x0055142b    5b
                         ret                0x0018                                         // 0x0055142c    c21800
_jmp_addr_0x0055142f:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0055142f    8b442414
                         push               0x18                                           // 0x00551433    6a18
                         push               eax                                            // 0x00551435    50
                         call               _jmp_addr_0x00551690                           // 0x00551436    e855020000
                         pop                edi                                            // 0x0055143b    5f
                         pop                esi                                            // 0x0055143c    5e
                         pop                ebp                                            // 0x0055143d    5d
                         pop                ebx                                            // 0x0055143e    5b
                         ret                0x0018                                         // 0x0055143f    c21800
                         nop                                                               // 0x00551442    90
                         nop                                                               // 0x00551443    90
                         nop                                                               // 0x00551444    90
                         nop                                                               // 0x00551445    90
                         nop                                                               // 0x00551446    90
                         nop                                                               // 0x00551447    90
                         nop                                                               // 0x00551448    90
                         nop                                                               // 0x00551449    90
                         nop                                                               // 0x0055144a    90
                         nop                                                               // 0x0055144b    90
                         nop                                                               // 0x0055144c    90
                         nop                                                               // 0x0055144d    90
                         nop                                                               // 0x0055144e    90
                         nop                                                               // 0x0055144f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00551450    8b442404
                         push               esi                                            // 0x00551454    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00551455    8b74240c
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x00551459    8881615a2000
                         push               edi                                            // 0x0055145f    57
                         mov                edi, dword ptr [esi]                           // 0x00551460    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a70]              // 0x00551462    8d91705a2000
                         mov                dword ptr [edx], edi                           // 0x00551468    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055146a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x0055146d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00551470    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00551473    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x00551476    8b742414
                         mov                edi, dword ptr [esi]                           // 0x0055147a    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a7c]              // 0x0055147c    8d917c5a2000
                         mov                dword ptr [edx], edi                           // 0x00551482    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00551484    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00551487    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x0055148a    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x0055148d    897208
                         {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x00551490    8b742418
                         mov                edi, dword ptr [esi]                           // 0x00551494    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a88]              // 0x00551496    8d91885a2000
                         mov                dword ptr [edx], edi                           // 0x0055149c    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055149e    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005514a1    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x005514a4    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x005514a7    897208
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x005514aa    8b54241c
                         {disp32} mov       dword ptr [ecx + 0x00205aa0], edx              // 0x005514ae    8991a05a2000
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x005514b4    8b542420
                         push               0x19                                           // 0x005514b8    6a19
                         push               eax                                            // 0x005514ba    50
                         {disp32} mov       dword ptr [ecx + 0x00205aa4], edx              // 0x005514bb    8991a45a2000
                         call               _jmp_addr_0x00551690                           // 0x005514c1    e8ca010000
                         pop                edi                                            // 0x005514c6    5f
                         pop                esi                                            // 0x005514c7    5e
                         ret                0x0018                                         // 0x005514c8    c21800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                           // 0x005514cb    e8a903ebff
_jmp_addr_0x005514d0:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005514d0    8b442408
                         push               ebx                                            // 0x005514d4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x005514d5    8b5c2408
                         push               esi                                            // 0x005514d9    56
                         mov.s              esi, ecx                                       // 0x005514da    8bf1
                         push               eax                                            // 0x005514dc    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x005514dd    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x005514e3    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x005514e9    e802af0e00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005514ee    8b4c2414
                         push               0x1a                                           // 0x005514f2    6a1a
                         {disp32} mov       dword ptr [esi + 0x00205a70], ecx              // 0x005514f4    898e705a2000
                         push               ebx                                            // 0x005514fa    53
                         mov.s              ecx, esi                                       // 0x005514fb    8bce
                         call               _jmp_addr_0x00551690                           // 0x005514fd    e88e010000
                         pop                esi                                            // 0x00551502    5e
                         pop                ebx                                            // 0x00551503    5b
                         ret                0x000c                                         // 0x00551504    c20c00
                         nop                                                               // 0x00551507    90
                         nop                                                               // 0x00551508    90
                         nop                                                               // 0x00551509    90
                         nop                                                               // 0x0055150a    90
                         nop                                                               // 0x0055150b    90
                         nop                                                               // 0x0055150c    90
                         nop                                                               // 0x0055150d    90
                         nop                                                               // 0x0055150e    90
                         nop                                                               // 0x0055150f    90
_jmp_addr_0x00551510:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00551510    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x00551514    8b542408
                         push               0x1b                                           // 0x00551518    6a1b
                         push               eax                                            // 0x0055151a    50
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x0055151b    8881615a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a70], edx              // 0x00551521    8991705a2000
                         call               _jmp_addr_0x00551690                           // 0x00551527    e864010000
                         ret                0x0008                                         // 0x0055152c    c20800
                         nop                                                               // 0x0055152f    90
_jmp_addr_0x00551530:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00551530    8b442408
                         push               ebx                                            // 0x00551534    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00551535    8b5c2408
                         push               esi                                            // 0x00551539    56
                         mov.s              esi, ecx                                       // 0x0055153a    8bf1
                         push               eax                                            // 0x0055153c    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a60]              // 0x0055153d    8d8e605a2000
                         {disp32} mov       byte ptr [esi + 0x00205a61], bl                // 0x00551543    889e615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x00551549    e8a2ae0e00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0055154e    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x00551552    8b542418
                         push               0x20                                           // 0x00551556    6a20
                         {disp32} mov       dword ptr [esi + 0x00205a74], ecx              // 0x00551558    898e745a2000
                         push               ebx                                            // 0x0055155e    53
                         mov.s              ecx, esi                                       // 0x0055155f    8bce
                         {disp32} mov       dword ptr [esi + 0x00205a70], edx              // 0x00551561    8996705a2000
                         call               _jmp_addr_0x00551690                           // 0x00551567    e824010000
                         pop                esi                                            // 0x0055156c    5e
                         pop                ebx                                            // 0x0055156d    5b
                         ret                0x0010                                         // 0x0055156e    c21000
                         nop                                                               // 0x00551571    90
                         nop                                                               // 0x00551572    90
                         nop                                                               // 0x00551573    90
                         nop                                                               // 0x00551574    90
                         nop                                                               // 0x00551575    90
                         nop                                                               // 0x00551576    90
                         nop                                                               // 0x00551577    90
                         nop                                                               // 0x00551578    90
                         nop                                                               // 0x00551579    90
                         nop                                                               // 0x0055157a    90
                         nop                                                               // 0x0055157b    90
                         nop                                                               // 0x0055157c    90
                         nop                                                               // 0x0055157d    90
                         nop                                                               // 0x0055157e    90
                         nop                                                               // 0x0055157f    90
_jmp_addr_0x00551580:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00551580    8b442408
                         push               ebx                                            // 0x00551584    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x00551585    8b5c2408
                         push               ebp                                            // 0x00551589    55
                         push               esi                                            // 0x0055158a    56
                         mov.s              ebp, ecx                                       // 0x0055158b    8be9
                         push               edi                                            // 0x0055158d    57
                         push               eax                                            // 0x0055158e    50
                         {disp32} lea       ecx, dword ptr [ebp + 0x00205a60]              // 0x0055158f    8d8d605a2000
                         {disp32} mov       byte ptr [ebp + 0x00205a61], bl                // 0x00551595    889d615a2000
                         call               _jmp_addr_0x0063c3f0                           // 0x0055159b    e850ae0e00
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x005515a0    8b74241c
                         {disp32} lea       edi, dword ptr [ebp + 0x00205a70]              // 0x005515a4    8dbd705a2000
                         mov                ecx, 0x00000005                                // 0x005515aa    b905000000
                         push               0x1c                                           // 0x005515af    6a1c
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005515b1    f3a5
                         push               ebx                                            // 0x005515b3    53
                         mov.s              ecx, ebp                                       // 0x005515b4    8bcd
                         call               _jmp_addr_0x00551690                           // 0x005515b6    e8d5000000
                         pop                edi                                            // 0x005515bb    5f
                         pop                esi                                            // 0x005515bc    5e
                         pop                ebp                                            // 0x005515bd    5d
                         pop                ebx                                            // 0x005515be    5b
                         ret                0x000c                                         // 0x005515bf    c20c00
                         nop                                                               // 0x005515c2    90
                         nop                                                               // 0x005515c3    90
                         nop                                                               // 0x005515c4    90
                         nop                                                               // 0x005515c5    90
                         nop                                                               // 0x005515c6    90
                         nop                                                               // 0x005515c7    90
                         nop                                                               // 0x005515c8    90
                         nop                                                               // 0x005515c9    90
                         nop                                                               // 0x005515ca    90
                         nop                                                               // 0x005515cb    90
                         nop                                                               // 0x005515cc    90
                         nop                                                               // 0x005515cd    90
                         nop                                                               // 0x005515ce    90
                         nop                                                               // 0x005515cf    90
_jmp_addr_0x005515d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005515d0    8b442404
                         push               esi                                            // 0x005515d4    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x005515d5    8b74240c
                         push               edi                                            // 0x005515d9    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x005515da    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x005515e0    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a70]              // 0x005515e2    8d91705a2000
                         mov                dword ptr [edx], edi                           // 0x005515e8    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x005515ea    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x005515ed    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x005515f0    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x005515f3    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x005515f6    8b742414
                         mov                edi, dword ptr [esi]                           // 0x005515fa    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a7c]              // 0x005515fc    8d917c5a2000
                         mov                dword ptr [edx], edi                           // 0x00551602    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00551604    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00551607    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x0055160a    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x0055160d    897208
                         {disp8} mov        dl, byte ptr [esp + 0x18]                      // 0x00551610    8a542418
                         push               0x1d                                           // 0x00551614    6a1d
                         push               eax                                            // 0x00551616    50
                         {disp32} mov       byte ptr [ecx + 0x00205aa0], dl                // 0x00551617    8891a05a2000
                         call               _jmp_addr_0x00551690                           // 0x0055161d    e86e000000
                         pop                edi                                            // 0x00551622    5f
                         pop                esi                                            // 0x00551623    5e
                         ret                0x0010                                         // 0x00551624    c21000
                         nop                                                               // 0x00551627    90
                         nop                                                               // 0x00551628    90
                         nop                                                               // 0x00551629    90
                         nop                                                               // 0x0055162a    90
                         nop                                                               // 0x0055162b    90
                         nop                                                               // 0x0055162c    90
                         nop                                                               // 0x0055162d    90
                         nop                                                               // 0x0055162e    90
                         nop                                                               // 0x0055162f    90
_jmp_addr_0x00551630:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00551630    8b442404
                         push               esi                                            // 0x00551634    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x00551635    8b74240c
                         push               edi                                            // 0x00551639    57
                         {disp32} mov       byte ptr [ecx + 0x00205a61], al                // 0x0055163a    8881615a2000
                         mov                edi, dword ptr [esi]                           // 0x00551640    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a7c]              // 0x00551642    8d917c5a2000
                         mov                dword ptr [edx], edi                           // 0x00551648    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x0055164a    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x0055164d    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x00551650    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x00551653    897208
                         {disp8} mov        esi, dword ptr [esp + 0x14]                    // 0x00551656    8b742414
                         mov                edi, dword ptr [esi]                           // 0x0055165a    8b3e
                         {disp32} lea       edx, dword ptr [ecx + 0x00205a88]              // 0x0055165c    8d91885a2000
                         mov                dword ptr [edx], edi                           // 0x00551662    893a
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00551664    8b7e04
                         {disp8} mov        dword ptr [edx + 0x04], edi                    // 0x00551667    897a04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                    // 0x0055166a    8b7608
                         {disp8} mov        dword ptr [edx + 0x08], esi                    // 0x0055166d    897208
                         {disp8} mov        dl, byte ptr [esp + 0x18]                      // 0x00551670    8a542418
                         push               0x1e                                           // 0x00551674    6a1e
                         push               eax                                            // 0x00551676    50
                         {disp32} mov       byte ptr [ecx + 0x00205aa0], dl                // 0x00551677    8891a05a2000
                         call               _jmp_addr_0x00551690                           // 0x0055167d    e80e000000
                         pop                edi                                            // 0x00551682    5f
                         pop                esi                                            // 0x00551683    5e
                         ret                0x0010                                         // 0x00551684    c21000
                         nop                                                               // 0x00551687    90
                         nop                                                               // 0x00551688    90
                         nop                                                               // 0x00551689    90
                         nop                                                               // 0x0055168a    90
                         nop                                                               // 0x0055168b    90
                         nop                                                               // 0x0055168c    90
                         nop                                                               // 0x0055168d    90
                         nop                                                               // 0x0055168e    90
                         nop                                                               // 0x0055168f    90
_jmp_addr_0x00551690:    push               ecx                                            // 0x00551690    51
                         push               ebx                                            // 0x00551691    53
                         xor.s              eax, eax                                       // 0x00551692    33c0
                         push               ebp                                            // 0x00551694    55
                         mov.s              ebp, ecx                                       // 0x00551695    8be9
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551697    8a8578590000
                         mov.s              ecx, eax                                       // 0x0055169d    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x0055169f    8b442414
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x00005318], al    // 0x005516a3    88842918530000
                         {disp32} mov       bl, byte ptr [ebp + 0x00005978]                // 0x005516aa    8a9d78590000
                         xor.s              ecx, ecx                                       // 0x005516b0    33c9
                         inc                bl                                             // 0x005516b2    fec3
                         mov.s              cl, bl                                         // 0x005516b4    8acb
                         {disp32} mov       byte ptr [ebp + 0x00005978], bl                // 0x005516b6    889d78590000
                         {disp32} mov       dl, byte ptr [ebp + 0x00205a61]                // 0x005516bc    8a95615a2000
                         {disp8} mov        byte ptr [esp + 0x14], 0x00                    // 0x005516c2    c644241400
                         and                ecx, 0x000000ff                                // 0x005516c7    81e1ff000000
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x00005318], dl    // 0x005516cd    88942918530000
                         {disp32} inc       byte ptr [ebp + 0x00005978]                    // 0x005516d4    fe8578590000
                         {disp32} mov       bl, byte ptr [ebp + 0x00005318]                // 0x005516da    8a9d18530000
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x005516e0    8d0c40
                         shl                ecx, 3                                         // 0x005516e3    c1e103
                         sub.s              ecx, eax                                       // 0x005516e6    2bc8
                         shl                ecx, 1                                         // 0x005516e8    d1e1
                         inc                bl                                             // 0x005516ea    fec3
                         {disp32} lea       eax, dword ptr [ecx * 0x4 + 0x00bea9b4]        // 0x005516ec    8d048db4a9be00
                         {disp32} mov       byte ptr [ebp + 0x00005318], bl                // 0x005516f3    889d18530000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x005516f9    894c2408
                         cmp                dword ptr [eax], 0x00                          // 0x005516fd    833800
                         {disp32} je        _jmp_addr_0x00551e0a                           // 0x00551700    0f8404070000
                         push               esi                                            // 0x00551706    56
                         push               edi                                            // 0x00551707    57
                         mov                bl, 0x02                                       // 0x00551708    b302
_jmp_addr_0x0055170a:    mov                eax, dword ptr [eax]                           // 0x0055170a    8b00
                         dec                eax                                            // 0x0055170c    48
                         cmp                eax, 0x2c                                      // 0x0055170d    83f82c
                         {disp32} ja        _jmp_addr_0x00551dd8                           // 0x00551710    0f87c2060000
                         jmp                dword ptr [eax*4 + 0x551e20]                   // 0x00551716    ff2485201e5500
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a68]              // 0x0055171d    8b8d685a2000
                         xor.s              eax, eax                                       // 0x00551723    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551725    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x0055172b    898c2818530000
                         add                byte ptr [ebp + 0x00005978], 0x04              // 0x00551732    80857859000004
                         {disp32} mov       eax, dword ptr [ebp + 0x00205a68]              // 0x00551739    8b85685a2000
                         test               eax, eax                                       // 0x0055173f    85c0
                         {disp32} je        _jmp_addr_0x00551dd8                           // 0x00551741    0f8491060000
                         push               eax                                            // 0x00551747    50
                         call               _jmp_addr_0x00436ab0                           // 0x00551748    e86353eeff
                         {disp32} mov       dword ptr [ebp + 0x00205a6c], eax              // 0x0055174d    89856c5a2000
                         xor.s              edx, edx                                       // 0x00551753    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551755    8a9578590000
                         add                esp, 0x04                                      // 0x0055175b    83c404
                         {disp32} mov       dword ptr [edx + ebp * 0x1 + 0x00005318], eax  // 0x0055175e    89842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551765    8a8578590000
                         add                al, 0x04                                       // 0x0055176b    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055176d    e960060000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a70]              // 0x00551772    8b8d705a2000
                         xor.s              eax, eax                                       // 0x00551778    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x0055177a    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x00551780    898c2818530000
                         {disp32} mov       edx, dword ptr [ebp + 0x00205a74]              // 0x00551787    8b95745a2000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x0000531c], edx  // 0x0055178d    8994281c530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551794    8a8578590000
                         add                al, 0x08                                       // 0x0055179a    0408
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055179c    e931060000
                         xor.s              eax, eax                                       // 0x005517a1    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005517a3    8a8578590000
                         {disp32} lea       esi, dword ptr [ebp + 0x00205a70]              // 0x005517a9    8db5705a2000
                         mov                ecx, 0x00000006                                // 0x005517af    b906000000
                         {disp32} lea       edi, dword ptr [eax + ebp * 0x1 + 0x00005318]  // 0x005517b4    8dbc2818530000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005517bb    f3a5
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005517bd    8a8578590000
                         add                al, 0x18                                       // 0x005517c3    0418
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005517c5    e908060000
                         {disp32} mov       edx, dword ptr [ebp + 0x00205a70]              // 0x005517ca    8b95705a2000
                         xor.s              ecx, ecx                                       // 0x005517d0    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x005517d2    8a8d78590000
                         {disp32} mov       dword ptr [ecx + ebp * 0x1 + 0x00005318], edx  // 0x005517d8    89942918530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005517df    8a8578590000
                         add                al, 0x04                                       // 0x005517e5    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005517e7    e9e6050000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205aa0]              // 0x005517ec    8b8da05a2000
                         xor.s              eax, eax                                       // 0x005517f2    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005517f4    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x005517fa    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551801    8a8578590000
                         add                al, 0x04                                       // 0x00551807    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551809    e9c4050000
                         {disp32} mov       eax, dword ptr [ebp + 0x00205aa4]              // 0x0055180e    8b85a45a2000
                         xor.s              edx, edx                                       // 0x00551814    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551816    8a9578590000
                         {disp32} mov       dword ptr [edx + ebp * 0x1 + 0x00005318], eax  // 0x0055181c    89842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551823    8a8578590000
                         add                al, 0x04                                       // 0x00551829    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055182b    e9a2050000
                         {disp32} mov       edx, dword ptr [ebp + 0x00205a74]              // 0x00551830    8b95745a2000
                         xor.s              ecx, ecx                                       // 0x00551836    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551838    8a8d78590000
                         {disp32} mov       dword ptr [ecx + ebp * 0x1 + 0x00005318], edx  // 0x0055183e    89942918530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551845    8a8578590000
                         add                al, 0x04                                       // 0x0055184b    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055184d    e980050000
                         {disp32} lea       eax, dword ptr [ebp + 0x00205a70]              // 0x00551852    8d85705a2000
_jmp_addr_0x00551858:    xor.s              ecx, ecx                                       // 0x00551858    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x0055185a    8a8d78590000
                         {disp32} lea       edx, dword ptr [ecx + ebp * 0x1 + 0x00005318]  // 0x00551860    8d942918530000
                         mov                ecx, dword ptr [eax]                           // 0x00551867    8b08
                         mov                dword ptr [edx], ecx                           // 0x00551869    890a
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x0055186b    8b4804
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x0055186e    894a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x00551871    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x00551874    894208
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551877    8a8578590000
                         add                al, 0x0c                                       // 0x0055187d    040c
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055187f    e94e050000
                         {disp32} mov       edx, dword ptr [ebp + 0x00205a7c]              // 0x00551884    8b957c5a2000
                         xor.s              ecx, ecx                                       // 0x0055188a    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x0055188c    8a8d78590000
                         xor.s              eax, eax                                       // 0x00551892    33c0
                         {disp32} mov       dword ptr [ecx + ebp * 0x1 + 0x00005318], edx  // 0x00551894    89942918530000
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x0055189b    8a9578590000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a84]              // 0x005518a1    8b8d845a2000
                         add                dl, 0x04                                       // 0x005518a7    80c204
                         mov.s              al, dl                                         // 0x005518aa    8ac2
                         {disp32} mov       byte ptr [ebp + 0x00005978], dl                // 0x005518ac    889578590000
                         and                eax, 0x000000ff                                // 0x005518b2    25ff000000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x005518b7    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005518be    8a8578590000
                         add                al, 0x04                                       // 0x005518c4    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005518c6    e907050000
                         {disp32} lea       edx, dword ptr [ebp + 0x00205a7c]              // 0x005518cb    8d957c5a2000
                         {disp32} jmp       _jmp_addr_0x00551ca2                           // 0x005518d1    e9cc030000
                         {disp32} lea       eax, dword ptr [ebp + 0x00205a88]              // 0x005518d6    8d85885a2000
                         {disp32} jmp       _jmp_addr_0x00551858                           // 0x005518dc    e977ffffff
                         xor.s              edx, edx                                       // 0x005518e1    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x005518e3    8a9578590000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00205a94]              // 0x005518e9    8d8d945a2000
                         {disp32} lea       eax, dword ptr [edx + ebp * 0x1 + 0x00005318]  // 0x005518ef    8d842a18530000
                         mov                edx, dword ptr [ecx]                           // 0x005518f6    8b11
                         mov                dword ptr [eax], edx                           // 0x005518f8    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x005518fa    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x005518fd    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x00551900    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                    // 0x00551903    894808
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551906    8a8578590000
                         add                al, 0x0c                                       // 0x0055190c    040c
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055190e    e9bf040000
                         {disp32} mov       al, byte ptr [ebp + 0x00205aa0]                // 0x00551913    8a85a05a2000
                         xor.s              edx, edx                                       // 0x00551919    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x0055191b    8a9578590000
                         {disp32} mov       byte ptr [edx + ebp * 0x1 + 0x00005318], al    // 0x00551921    88842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551928    8a8578590000
                         inc                al                                             // 0x0055192e    fec0
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551930    e99d040000
                         {disp32} mov       dl, byte ptr [ebp + 0x00205a70]                // 0x00551935    8a95705a2000
                         xor.s              ecx, ecx                                       // 0x0055193b    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x0055193d    8a8d78590000
                         {disp32} lea       esi, dword ptr [ebp + 0x00205a71]              // 0x00551943    8db5715a2000
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x00005318], dl    // 0x00551949    88942918530000
                         {disp32} inc       byte ptr [ebp + 0x00005978]                    // 0x00551950    fe8578590000
                         xor.s              ecx, ecx                                       // 0x00551956    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00205a70]                // 0x00551958    8a8d705a2000
                         xor.s              eax, eax                                       // 0x0055195e    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551960    8a8578590000
                         and                eax, 0x000000ff                                // 0x00551966    25ff000000
                         {disp32} lea       edi, dword ptr [eax + ebp * 0x1 + 0x00005318]  // 0x0055196b    8dbc2818530000
                         mov.s              eax, ecx                                       // 0x00551972    8bc1
                         shr                ecx, 2                                         // 0x00551974    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551977    f3a5
                         mov.s              ecx, eax                                       // 0x00551979    8bc8
                         and                ecx, 0x03                                      // 0x0055197b    83e103
                         rep movsb                                                         // 0x0055197e    f3a4
                         {disp32} mov       cl, byte ptr [ebp + 0x00205a70]                // 0x00551980    8a8d705a2000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551986    8a8578590000
                         add.s              al, cl                                         // 0x0055198c    02c1
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x0055198e    e93f040000
                         {disp32} lea       edx, dword ptr [ebp + 0x00205a70]              // 0x00551993    8d95705a2000
                         {disp32} jmp       _jmp_addr_0x00551ca2                           // 0x00551999    e904030000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a70]              // 0x0055199e    8b8d705a2000
                         xor.s              eax, eax                                       // 0x005519a4    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005519a6    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x005519ac    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005519b3    8a8578590000
                         add                al, 0x04                                       // 0x005519b9    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005519bb    e912040000
                         {disp32} mov       eax, dword ptr [ebp + 0x00205a74]              // 0x005519c0    8b85745a2000
                         xor.s              edx, edx                                       // 0x005519c6    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x005519c8    8a9578590000
                         {disp32} mov       dword ptr [edx + ebp * 0x1 + 0x00005318], eax  // 0x005519ce    89842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005519d5    8a8578590000
                         add                al, 0x04                                       // 0x005519db    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005519dd    e9f0030000
                         {disp32} mov       edx, dword ptr [ebp + 0x00205a78]              // 0x005519e2    8b95785a2000
                         xor.s              ecx, ecx                                       // 0x005519e8    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x005519ea    8a8d78590000
                         {disp32} mov       dword ptr [ecx + ebp * 0x1 + 0x00005318], edx  // 0x005519f0    89942918530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x005519f7    8a8578590000
                         add                al, 0x04                                       // 0x005519fd    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x005519ff    e9ce030000
                         xor.s              eax, eax                                       // 0x00551a04    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551a06    8a8578590000
                         {disp32} lea       esi, dword ptr [ebp + 0x00205a70]              // 0x00551a0c    8db5705a2000
                         mov                ecx, 0x00000005                                // 0x00551a12    b905000000
                         {disp32} lea       edi, dword ptr [eax + ebp * 0x1 + 0x00005318]  // 0x00551a17    8dbc2818530000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551a1e    f3a5
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551a20    8a8578590000
                         add                al, 0x14                                       // 0x00551a26    0414
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551a28    e9a5030000
                         xor.s              ecx, ecx                                       // 0x00551a2d    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551a2f    8a8d78590000
                         {disp32} lea       esi, dword ptr [ebp + 0x00205a68]              // 0x00551a35    8db5685a2000
                         {disp32} lea       edi, dword ptr [ecx + ebp * 0x1 + 0x00005318]  // 0x00551a3b    8dbc2918530000
                         mov                ecx, 0x0000000c                                // 0x00551a42    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x00551a47    f3a5
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551a49    8a8578590000
                         add                al, 0x30                                       // 0x00551a4f    0430
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551a51    e97c030000
                         {disp32} mov       ax, word ptr [ebp + 0x00205a68]                // 0x00551a56    668b85685a2000
                         xor.s              edx, edx                                       // 0x00551a5d    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551a5f    8a9578590000
                         {disp32} mov       word ptr [edx + ebp * 0x1 + 0x00005318], ax    // 0x00551a65    6689842a18530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551a6d    e958030000
                         {disp32} mov       dx, word ptr [ebp + 0x00205a6a]                // 0x00551a72    668b956a5a2000
                         xor.s              ecx, ecx                                       // 0x00551a79    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551a7b    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], dx    // 0x00551a81    6689942918530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551a89    e93c030000
                         {disp32} mov       cl, byte ptr [ebp + 0x00205a6c]                // 0x00551a8e    8a8d6c5a2000
                         xor.s              eax, eax                                       // 0x00551a94    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551a96    8a8578590000
                         {disp32} mov       byte ptr [eax + ebp * 0x1 + 0x00005318], cl    // 0x00551a9c    888c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551aa3    8a8578590000
                         inc                al                                             // 0x00551aa9    fec0
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551aab    e922030000
                         {disp32} mov       al, byte ptr [ebp + 0x00205a6d]                // 0x00551ab0    8a856d5a2000
                         xor.s              edx, edx                                       // 0x00551ab6    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551ab8    8a9578590000
                         {disp32} mov       byte ptr [edx + ebp * 0x1 + 0x00005318], al    // 0x00551abe    88842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551ac5    8a8578590000
                         inc                al                                             // 0x00551acb    fec0
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551acd    e900030000
                         {disp32} mov       dl, byte ptr [ebp + 0x00205a6e]                // 0x00551ad2    8a956e5a2000
                         xor.s              ecx, ecx                                       // 0x00551ad8    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551ada    8a8d78590000
                         {disp32} mov       byte ptr [ecx + ebp * 0x1 + 0x00005318], dl    // 0x00551ae0    88942918530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551ae7    8a8578590000
                         inc                al                                             // 0x00551aed    fec0
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551aef    e9de020000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a68]              // 0x00551af4    8b8d685a2000
                         xor.s              eax, eax                                       // 0x00551afa    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551afc    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x00551b02    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551b09    8a8578590000
                         add                al, 0x04                                       // 0x00551b0f    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551b11    e9bc020000
                         {disp32} mov       eax, dword ptr [ebp + 0x00205a6c]              // 0x00551b16    8b856c5a2000
                         xor.s              edx, edx                                       // 0x00551b1c    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551b1e    8a9578590000
                         {disp32} mov       dword ptr [edx + ebp * 0x1 + 0x00005318], eax  // 0x00551b24    89842a18530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551b2b    8a8578590000
                         add                al, 0x04                                       // 0x00551b31    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551b33    e99a020000
                         {disp32} mov       dx, word ptr [ebp + 0x00205a68]                // 0x00551b38    668b95685a2000
                         xor.s              ecx, ecx                                       // 0x00551b3f    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551b41    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], dx    // 0x00551b47    6689942918530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551b4f    e976020000
                         {disp32} mov       cx, word ptr [ebp + 0x00205a6a]                // 0x00551b54    668b8d6a5a2000
                         xor.s              eax, eax                                       // 0x00551b5b    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551b5d    8a8578590000
                         {disp32} mov       word ptr [eax + ebp * 0x1 + 0x00005318], cx    // 0x00551b63    66898c2818530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551b6b    e95a020000
                         {disp32} mov       ax, word ptr [ebp + 0x00205a6c]                // 0x00551b70    668b856c5a2000
                         xor.s              edx, edx                                       // 0x00551b77    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551b79    8a9578590000
                         {disp32} mov       word ptr [edx + ebp * 0x1 + 0x00005318], ax    // 0x00551b7f    6689842a18530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551b87    e93e020000
                         {disp32} mov       dx, word ptr [ebp + 0x00205a6e]                // 0x00551b8c    668b956e5a2000
                         xor.s              ecx, ecx                                       // 0x00551b93    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551b95    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], dx    // 0x00551b9b    6689942918530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551ba3    e922020000
                         {disp32} mov       cx, word ptr [ebp + 0x00205a68]                // 0x00551ba8    668b8d685a2000
                         xor.s              eax, eax                                       // 0x00551baf    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551bb1    8a8578590000
                         {disp32} mov       word ptr [eax + ebp * 0x1 + 0x00005318], cx    // 0x00551bb7    66898c2818530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551bbf    e906020000
                         {disp32} mov       ax, word ptr [ebp + 0x00205a6a]                // 0x00551bc4    668b856a5a2000
                         xor.s              edx, edx                                       // 0x00551bcb    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551bcd    8a9578590000
                         {disp32} mov       word ptr [edx + ebp * 0x1 + 0x00005318], ax    // 0x00551bd3    6689842a18530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551bdb    e9ea010000
                         {disp32} mov       dx, word ptr [ebp + 0x00205a6c]                // 0x00551be0    668b956c5a2000
                         xor.s              ecx, ecx                                       // 0x00551be7    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551be9    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], dx    // 0x00551bef    6689942918530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551bf7    e9ce010000
                         {disp32} mov       cx, word ptr [ebp + 0x00205a6e]                // 0x00551bfc    668b8d6e5a2000
                         xor.s              eax, eax                                       // 0x00551c03    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551c05    8a8578590000
                         {disp32} mov       word ptr [eax + ebp * 0x1 + 0x00005318], cx    // 0x00551c0b    66898c2818530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551c13    e9b2010000
                         {disp32} mov       ax, word ptr [ebp + 0x00205a74]                // 0x00551c18    668b85745a2000
                         xor.s              edx, edx                                       // 0x00551c1f    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551c21    8a9578590000
                         {disp32} mov       word ptr [edx + ebp * 0x1 + 0x00005318], ax    // 0x00551c27    6689842a18530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551c2f    e996010000
                         {disp32} mov       dx, word ptr [ebp + 0x00205a76]                // 0x00551c34    668b95765a2000
                         xor.s              ecx, ecx                                       // 0x00551c3b    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551c3d    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], dx    // 0x00551c43    6689942918530000
                         {disp32} jmp       _jmp_addr_0x00551dca                           // 0x00551c4b    e97a010000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a6c]              // 0x00551c50    8b8d6c5a2000
                         xor.s              eax, eax                                       // 0x00551c56    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551c58    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x00551c5e    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551c65    8a8578590000
                         add                al, 0x04                                       // 0x00551c6b    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551c6d    e960010000
                         {disp32} lea       edx, dword ptr [ebp + 0x00205a68]              // 0x00551c72    8d95685a2000
                         {disp8} jmp        _jmp_addr_0x00551ca2                           // 0x00551c78    eb28
                         {disp32} mov       ecx, dword ptr [ebp + 0x00205a74]              // 0x00551c7a    8b8d745a2000
                         xor.s              eax, eax                                       // 0x00551c80    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551c82    8a8578590000
                         {disp32} mov       dword ptr [eax + ebp * 0x1 + 0x00005318], ecx  // 0x00551c88    898c2818530000
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551c8f    8a8578590000
                         add                al, 0x04                                       // 0x00551c95    0404
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551c97    e936010000
                         {disp32} lea       edx, dword ptr [ebp + 0x00205a74]              // 0x00551c9c    8d95745a2000
_jmp_addr_0x00551ca2:    xor.s              eax, eax                                       // 0x00551ca2    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551ca4    8a8578590000
                         {disp32} lea       ecx, dword ptr [eax + ebp * 0x1 + 0x00005318]  // 0x00551caa    8d8c2818530000
                         mov                eax, dword ptr [edx]                           // 0x00551cb1    8b02
                         mov                dword ptr [ecx], eax                           // 0x00551cb3    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x00551cb5    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x00551cb8    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                    // 0x00551cbb    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x00551cbe    895108
                         {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551cc1    8a8578590000
                         add                al, 0x0c                                       // 0x00551cc7    040c
                         {disp32} jmp       _jmp_addr_0x00551dd2                           // 0x00551cc9    e904010000
                         {disp32} fld       dword ptr [ebp + 0x00205a80]                   // 0x00551cce    d985805a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551cd4    d80da4f88d00
                         call               _jmp_addr_0x007a1400                           // 0x00551cda    e821f72400
                         {disp32} fld       dword ptr [ebp + 0x00205a84]                   // 0x00551cdf    d985845a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551ce5    d80da4f88d00
                         mov.s              esi, eax                                       // 0x00551ceb    8bf0
                         call               _jmp_addr_0x007a1400                           // 0x00551ced    e80ef72400
                         {disp32} fld       dword ptr [ebp + 0x00205a7c]                   // 0x00551cf2    d9857c5a2000
                         mov.s              edi, eax                                       // 0x00551cf8    8bf8
                         {disp8} jmp        _jmp_addr_0x00551d71                           // 0x00551cfa    eb75
                         {disp32} fld       dword ptr [ebp + 0x00205a8c]                   // 0x00551cfc    d9858c5a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d02    d80da4f88d00
                         call               _jmp_addr_0x007a1400                           // 0x00551d08    e8f3f62400
                         {disp32} fld       dword ptr [ebp + 0x00205a90]                   // 0x00551d0d    d985905a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d13    d80da4f88d00
                         mov.s              esi, eax                                       // 0x00551d19    8bf0
                         call               _jmp_addr_0x007a1400                           // 0x00551d1b    e8e0f62400
                         {disp32} fld       dword ptr [ebp + 0x00205a88]                   // 0x00551d20    d985885a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d26    d80da4f88d00
                         mov.s              edi, eax                                       // 0x00551d2c    8bf8
                         call               _jmp_addr_0x007a1400                           // 0x00551d2e    e8cdf62400
                         xor.s              edx, edx                                       // 0x00551d33    33d2
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551d35    8a9578590000
                         {disp32} mov       word ptr [edx + ebp * 0x1 + 0x00005318], ax    // 0x00551d3b    6689842a18530000
                         {disp8} jmp        _jmp_addr_0x00551d8c                           // 0x00551d43    eb47
                         {disp32} fld       dword ptr [ebp + 0x00205a98]                   // 0x00551d45    d985985a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d4b    d80da4f88d00
                         call               _jmp_addr_0x007a1400                           // 0x00551d51    e8aaf62400
                         {disp32} fld       dword ptr [ebp + 0x00205a9c]                   // 0x00551d56    d9859c5a2000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d5c    d80da4f88d00
                         mov.s              esi, eax                                       // 0x00551d62    8bf0
                         call               _jmp_addr_0x007a1400                           // 0x00551d64    e897f62400
                         {disp32} fld       dword ptr [ebp + 0x00205a94]                   // 0x00551d69    d985945a2000
                         mov.s              edi, eax                                       // 0x00551d6f    8bf8
_jmp_addr_0x00551d71:    {disp32} fmul      dword ptr [rdata_bytes + 0x368a4]              // 0x00551d71    d80da4f88d00
                         call               _jmp_addr_0x007a1400                           // 0x00551d77    e884f62400
                         xor.s              ecx, ecx                                       // 0x00551d7c    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x00005978]                // 0x00551d7e    8a8d78590000
                         {disp32} mov       word ptr [ecx + ebp * 0x1 + 0x00005318], ax    // 0x00551d84    6689842918530000
_jmp_addr_0x00551d8c:    {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551d8c    8a9578590000
                         add.s              dl, bl                                         // 0x00551d92    02d3
                         xor.s              eax, eax                                       // 0x00551d94    33c0
                         mov.s              al, dl                                         // 0x00551d96    8ac2
                         {disp32} mov       byte ptr [ebp + 0x00005978], dl                // 0x00551d98    889578590000
                         and                eax, 0x000000ff                                // 0x00551d9e    25ff000000
                         {disp32} mov       word ptr [eax + ebp * 0x1 + 0x00005318], si    // 0x00551da3    6689b42818530000
                         {disp32} mov       dl, byte ptr [ebp + 0x00005978]                // 0x00551dab    8a9578590000
                         add.s              dl, bl                                         // 0x00551db1    02d3
                         xor.s              eax, eax                                       // 0x00551db3    33c0
                         mov.s              al, dl                                         // 0x00551db5    8ac2
                         {disp32} mov       byte ptr [ebp + 0x00005978], dl                // 0x00551db7    889578590000
                         and                eax, 0x000000ff                                // 0x00551dbd    25ff000000
                         {disp32} mov       word ptr [eax + ebp * 0x1 + 0x00005318], di    // 0x00551dc2    6689bc2818530000
_jmp_addr_0x00551dca:    {disp32} mov       al, byte ptr [ebp + 0x00005978]                // 0x00551dca    8a8578590000
                         add.s              al, bl                                         // 0x00551dd0    02c3
_jmp_addr_0x00551dd2:    {disp32} mov       byte ptr [ebp + 0x00005978], al                // 0x00551dd2    888578590000
_jmp_addr_0x00551dd8:    {disp8} mov        al, byte ptr [esp + 0x1c]                      // 0x00551dd8    8a44241c
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x00551ddc    8b742410
                         inc                al                                             // 0x00551de0    fec0
                         {disp8} mov        byte ptr [esp + 0x1c], al                      // 0x00551de2    8844241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00551de6    8b54241c
                         and                edx, 0x000000ff                                // 0x00551dea    81e2ff000000
                         add.s              edx, esi                                       // 0x00551df0    03d6
                         {disp32} mov       ecx, dword ptr [edx * 0x4 + 0x00bea9b4]        // 0x00551df2    8b0c95b4a9be00
                         test               ecx, ecx                                       // 0x00551df9    85c9
                         {disp32} lea       eax, dword ptr [edx * 0x4 + 0x00bea9b4]        // 0x00551dfb    8d0495b4a9be00
                         {disp32} jne       _jmp_addr_0x0055170a                           // 0x00551e02    0f8502f9ffff
                         pop                edi                                            // 0x00551e08    5f
                         pop                esi                                            // 0x00551e09    5e
_jmp_addr_0x00551e0a:    cmp                byte ptr [ebp + 0x00005318], 0x06              // 0x00551e0a    80bd1853000006
                         {disp8} jne        _jmp_addr_0x00551e1a                           // 0x00551e11    7507
                         mov.s              ecx, ebp                                       // 0x00551e13    8bcd
                         call               _jmp_addr_0x005525e0                           // 0x00551e15    e8c6070000
_jmp_addr_0x00551e1a:    pop                ebp                                            // 0x00551e1a    5d
                         pop                ebx                                            // 0x00551e1b    5b
                         pop                ecx                                            // 0x00551e1c    59
                         ret                0x0008                                         // 0x00551e1d    c20800

// Snippet: jmptbl, [0x00551e20, 0x00551ed4)
.byte 0x1d, 0x17, 0x55, 0x00      // 0x00551e20
.byte 0xd8, 0x1d, 0x55, 0x00      // 0x00551e24
.byte 0x72, 0x17, 0x55, 0x00      // 0x00551e28
.byte 0xa1, 0x17, 0x55, 0x00      // 0x00551e2c
.byte 0xca, 0x17, 0x55, 0x00      // 0x00551e30
.byte 0x30, 0x18, 0x55, 0x00      // 0x00551e34
.byte 0x52, 0x18, 0x55, 0x00      // 0x00551e38
.byte 0xcb, 0x18, 0x55, 0x00      // 0x00551e3c
.byte 0xd6, 0x18, 0x55, 0x00      // 0x00551e40
.byte 0x84, 0x18, 0x55, 0x00      // 0x00551e44
.byte 0xe1, 0x18, 0x55, 0x00      // 0x00551e48
.byte 0xec, 0x17, 0x55, 0x00      // 0x00551e4c
.byte 0x0e, 0x18, 0x55, 0x00      // 0x00551e50
.byte 0x13, 0x19, 0x55, 0x00      // 0x00551e54
.byte 0x35, 0x19, 0x55, 0x00      // 0x00551e58
.byte 0x93, 0x19, 0x55, 0x00      // 0x00551e5c
.byte 0x9e, 0x19, 0x55, 0x00      // 0x00551e60
.byte 0xc0, 0x19, 0x55, 0x00      // 0x00551e64
.byte 0xe2, 0x19, 0x55, 0x00      // 0x00551e68
.byte 0x04, 0x1a, 0x55, 0x00      // 0x00551e6c
.byte 0x2d, 0x1a, 0x55, 0x00      // 0x00551e70
.byte 0x56, 0x1a, 0x55, 0x00      // 0x00551e74
.byte 0x72, 0x1a, 0x55, 0x00      // 0x00551e78
.byte 0x8e, 0x1a, 0x55, 0x00      // 0x00551e7c
.byte 0xb0, 0x1a, 0x55, 0x00      // 0x00551e80
.byte 0xd2, 0x1a, 0x55, 0x00      // 0x00551e84
.byte 0xf4, 0x1a, 0x55, 0x00      // 0x00551e88
.byte 0x16, 0x1b, 0x55, 0x00      // 0x00551e8c
.byte 0x38, 0x1b, 0x55, 0x00      // 0x00551e90
.byte 0x54, 0x1b, 0x55, 0x00      // 0x00551e94
.byte 0x70, 0x1b, 0x55, 0x00      // 0x00551e98
.byte 0x8c, 0x1b, 0x55, 0x00      // 0x00551e9c
.byte 0xa8, 0x1b, 0x55, 0x00      // 0x00551ea0
.byte 0xc4, 0x1b, 0x55, 0x00      // 0x00551ea4
.byte 0xe0, 0x1b, 0x55, 0x00      // 0x00551ea8
.byte 0xfc, 0x1b, 0x55, 0x00      // 0x00551eac
.byte 0x50, 0x1c, 0x55, 0x00      // 0x00551eb0
.byte 0x72, 0x1c, 0x55, 0x00      // 0x00551eb4
.byte 0x18, 0x1c, 0x55, 0x00      // 0x00551eb8
.byte 0x34, 0x1c, 0x55, 0x00      // 0x00551ebc
.byte 0x7a, 0x1c, 0x55, 0x00      // 0x00551ec0
.byte 0x9c, 0x1c, 0x55, 0x00      // 0x00551ec4
.byte 0xce, 0x1c, 0x55, 0x00      // 0x00551ec8
.byte 0xfc, 0x1c, 0x55, 0x00      // 0x00551ecc
.byte 0x45, 0x1d, 0x55, 0x00      // 0x00551ed0

// Snippet: db, [0x00551ed4, 0x00551ee0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00551ed4
.byte 0x90, 0x90, 0x90, 0x90      // 0x00551ed8
.byte 0x90, 0x90, 0x90, 0x90      // 0x00551edc

