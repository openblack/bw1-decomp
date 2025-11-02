.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0041d0b0
.extern _jmp_addr_0x0041fd30
.extern ?__nw@Base@@SAPAXK@Z
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x005d8dd0
.extern _jmp_addr_0x005e6540
.extern ?__ne@MapCoords@@QBE_NABV1@@Z
.extern @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28
.extern _jmp_addr_0x00607000
.extern ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z
.extern ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z
.extern @SetGameAngle__13MobileWallHugFUs@10
.extern @SetScale__6ObjectFf@12
.extern _jmp_addr_0x0063e540
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x00646a00
.extern @__ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff@40
.extern ?Save@PileFood@@UAEIAAVGameOSFile@@@Z
.extern ?Load@PileFood@@UAEIAAVGameOSFile@@@Z
.extern _jmp_addr_0x006d66e0
.extern _jmp_addr_0x006d7190
.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006db020
.extern _jmp_addr_0x006db520
.extern _jmp_addr_0x006dd460
.extern _jmp_addr_0x006dd4c0
.extern _jmp_addr_0x006dd4f0
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ??2@YAPAXI@Z
.extern _LHRand__FlRU

.globl _jmp_addr_0x006db8a0
.globl _jmp_addr_0x006dba80
.globl _jmp_addr_0x006dbba0
.globl _jmp_addr_0x006dbbd0
.globl _jmp_addr_0x006dbc10
.globl _jmp_addr_0x006dbcf0
.globl _jmp_addr_0x006dbdd0
.globl _jmp_addr_0x006dc070
.globl _jmp_addr_0x006dc270
.globl _jmp_addr_0x006dc560
.globl _jmp_addr_0x006dc740
.globl _jmp_addr_0x006dc9e0
.globl _jmp_addr_0x006dc9f0
.globl _jmp_addr_0x006dcb90
.globl _jmp_addr_0x006dcfd0

.globl _globl_ct_0x006dc980
.globl ?Load@HanoiBlock@@UAEIAAVGameOSFile@@@Z
.globl ?Save@HanoiBlock@@UAEIAAVGameOSFile@@@Z
.globl ?Load@PuzzleGrain@@UAEIAAVGameOSFile@@@Z
.globl ?Save@PuzzleGrain@@UAEIAAVGameOSFile@@@Z
.globl ?Load@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z
.globl ?Save@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z
.globl ?GetImmersionTexture@PuzzleMobileObject@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.globl ?GetImmersionTexture@PuzzleGrain@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ

start_0x006db8a0_0x006dd460:
// Snippet: asm, [0x006db8a0, 0x006dd439)
_jmp_addr_0x006db8a0:    push               ebx                                            // 0x006db8a0    53
                         push               esi                                            // 0x006db8a1    56
                         push               0x00000b06                                     // 0x006db8a2    68060b0000
                         push               0x00c09908                                     // 0x006db8a7    680899c000
                         push               0x00000080                                     // 0x006db8ac    6880000000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006db8b1    e83aaed5ff
                         mov.s              esi, eax                                       // 0x006db8b6    8bf0
                         xor.s              ebx, ebx                                       // 0x006db8b8    33db
                         add                esp, 0x0c                                      // 0x006db8ba    83c40c
                         cmp.s              esi, ebx                                       // 0x006db8bd    3bf3
                         {disp32} je        _jmp_addr_0x006db952                           // 0x006db8bf    0f848d000000
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x006db8c5    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006db8c9    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x006db8cd    8b542418
                         push               edi                                            // 0x006db8d1    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x006db8d2    8b7c2414
                         push               eax                                            // 0x006db8d6    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x006db8d7    8b44241c
                         push               ecx                                            // 0x006db8db    51
                         push               edx                                            // 0x006db8dc    52
                         push               eax                                            // 0x006db8dd    50
                         push               edi                                            // 0x006db8de    57
                         mov.s              ecx, esi                                       // 0x006db8df    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                           // 0x006db8e1    e85ab5f2ff
                         {disp8} mov        dword ptr [esi + 0x68], ebx                    // 0x006db8e6    895e68
                         {disp8} mov        dword ptr [esi + 0x6c], ebx                    // 0x006db8e9    895e6c
                         {disp8} mov        dword ptr [esi + 0x70], ebx                    // 0x006db8ec    895e70
                         mov                dword ptr [esi], 0x008ee4bc                    // 0x006db8ef    c706bce48e00
                         mov.s              ecx, edi                                       // 0x006db8f5    8bcf
                         mov                edx, dword ptr [ecx]                           // 0x006db8f7    8b11
                         {disp8} mov        dword ptr [esi + 0x68], edx                    // 0x006db8f9    895668
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x006db8fc    8b4104
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006db8ff    8b542410
                         {disp8} mov        dword ptr [esi + 0x6c], eax                    // 0x006db903    89466c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x006db906    8b4908
                         or                 byte ptr [esi + 0x25], 0x40                    // 0x006db909    804e2540
                         {disp8} mov        dword ptr [esi + 0x7c], edx                    // 0x006db90d    89567c
                         {disp8} mov        dword ptr [esi + 0x70], ecx                    // 0x006db910    894e70
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                    // 0x006db913    8b4e28
                         xor.s              edx, edx                                       // 0x006db916    33d2
                         {disp8} mov        dword ptr [esi + 0x78], ebx                    // 0x006db918    895e78
                         {disp8} mov        dword ptr [esi + 0x74], ebx                    // 0x006db91b    895e74
                         {disp32} mov       ebx, dword ptr [ecx + 0x00000104]              // 0x006db91e    8b9904010000
                         xor.s              eax, eax                                       // 0x006db924    33c0
                         {disp8} mov        ax, word ptr [esi + 0x24]                      // 0x006db926    668b4624
                         cmp                ebx, 0x1a                                      // 0x006db92a    83fb1a
                         sete               dl                                             // 0x006db92d    0f94c2
                         push               edi                                            // 0x006db930    57
                         mov.s              ecx, esi                                       // 0x006db931    8bce
                         and                eax, 0x0000efff                                // 0x006db933    25ffef0000
                         and                edx, 0x01                                      // 0x006db938    83e201
                         shl                edx, 0xc                                       // 0x006db93b    c1e20c
                         or.s               edx, eax                                       // 0x006db93e    0bd0
                         {disp8} mov        word ptr [esi + 0x24], dx                      // 0x006db940    66895624
                         mov                eax, dword ptr [esi]                           // 0x006db944    8b06
                         call               dword ptr [eax + 0x658]                        // 0x006db946    ff9058060000
                         pop                edi                                            // 0x006db94c    5f
                         mov.s              eax, esi                                       // 0x006db94d    8bc6
                         pop                esi                                            // 0x006db94f    5e
                         pop                ebx                                            // 0x006db950    5b
                         ret                                                               // 0x006db951    c3
_jmp_addr_0x006db952:    pop                esi                                            // 0x006db952    5e
                         xor.s              eax, eax                                       // 0x006db953    33c0
                         pop                ebx                                            // 0x006db955    5b
                         ret                                                               // 0x006db956    c3
                         nop                                                               // 0x006db957    90
                         nop                                                               // 0x006db958    90
                         nop                                                               // 0x006db959    90
                         nop                                                               // 0x006db95a    90
                         nop                                                               // 0x006db95b    90
                         nop                                                               // 0x006db95c    90
                         nop                                                               // 0x006db95d    90
                         nop                                                               // 0x006db95e    90
                         nop                                                               // 0x006db95f    90
?Load@HanoiBlock@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                            // 0x006db960    53
                         push               esi                                            // 0x006db961    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x006db962    8b74240c
                         mov.s              ebx, ecx                                       // 0x006db966    8bd9
                         push               esi                                            // 0x006db968    56
                         call               ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z      // 0x006db969    e892c3f2ff
                         test               eax, eax                                       // 0x006db96e    85c0
                         {disp8} je         _jmp_addr_0x006db9db                           // 0x006db970    7469
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]         // 0x006db972    a194c9be00
                         test               eax, eax                                       // 0x006db977    85c0
                         push               edi                                            // 0x006db979    57
                         {disp8} lea        edi, dword ptr [ebx + 0x68]                    // 0x006db97a    8d7b68
                         {disp8} je         _jmp_addr_0x006db9af                           // 0x006db97d    7430
                         push               0x0                                            // 0x006db97f    6a00
                         push               0xc                                            // 0x006db981    6a0c
                         push               edi                                            // 0x006db983    57
                         mov.s              ecx, esi                                       // 0x006db984    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                    // 0x006db986    e8550f0e00
                         cmp                eax, 0x03                                      // 0x006db98b    83f803
                         {disp8} jne        _jmp_addr_0x006db99a                           // 0x006db98e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000  // 0x006db990    c70594c9be0000000000
_jmp_addr_0x006db99a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]              // 0x006db99a    8b8e14020000
                         xor.s              eax, eax                                       // 0x006db9a0    33c0
                         mov                al, byte ptr [edi]                             // 0x006db9a2    8a07
                         add                eax, 0x0c                                      // 0x006db9a4    83c00c
                         add.s              ecx, eax                                       // 0x006db9a7    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx              // 0x006db9a9    898e14020000
_jmp_addr_0x006db9af:    {disp8} lea        ecx, dword ptr [ebx + 0x74]                    // 0x006db9af    8d4b74
                         push               ecx                                            // 0x006db9b2    51
                         mov.s              ecx, esi                                       // 0x006db9b3    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12         // 0x006db9b5    e8c667e8ff
                         {disp8} lea        edx, dword ptr [ebx + 0x78]                    // 0x006db9ba    8d5378
                         push               edx                                            // 0x006db9bd    52
                         mov.s              ecx, esi                                       // 0x006db9be    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12         // 0x006db9c0    e8bb67e8ff
                         add                ebx, 0x7c                                      // 0x006db9c5    83c37c
                         push               ebx                                            // 0x006db9c8    53
                         mov.s              ecx, esi                                       // 0x006db9c9    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12         // 0x006db9cb    e8b067e8ff
                         pop                edi                                            // 0x006db9d0    5f
                         pop                esi                                            // 0x006db9d1    5e
                         mov                eax, 0x00000001                                // 0x006db9d2    b801000000
                         pop                ebx                                            // 0x006db9d7    5b
                         ret                0x0004                                         // 0x006db9d8    c20400
_jmp_addr_0x006db9db:    pop                esi                                            // 0x006db9db    5e
                         xor.s              eax, eax                                       // 0x006db9dc    33c0
                         pop                ebx                                            // 0x006db9de    5b
                         ret                0x0004                                         // 0x006db9df    c20400
                         nop                                                               // 0x006db9e2    90
                         nop                                                               // 0x006db9e3    90
                         nop                                                               // 0x006db9e4    90
                         nop                                                               // 0x006db9e5    90
                         nop                                                               // 0x006db9e6    90
                         nop                                                               // 0x006db9e7    90
                         nop                                                               // 0x006db9e8    90
                         nop                                                               // 0x006db9e9    90
                         nop                                                               // 0x006db9ea    90
                         nop                                                               // 0x006db9eb    90
                         nop                                                               // 0x006db9ec    90
                         nop                                                               // 0x006db9ed    90
                         nop                                                               // 0x006db9ee    90
                         nop                                                               // 0x006db9ef    90
?Save@HanoiBlock@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                            // 0x006db9f0    53
                         push               esi                                            // 0x006db9f1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x006db9f2    8b74240c
                         mov.s              ebx, ecx                                       // 0x006db9f6    8bd9
                         push               esi                                            // 0x006db9f8    56
                         call               ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z      // 0x006db9f9    e842c2f2ff
                         test               eax, eax                                       // 0x006db9fe    85c0
                         {disp8} je         _jmp_addr_0x006dba6b                           // 0x006dba00    7469
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]         // 0x006dba02    a190c9be00
                         test               eax, eax                                       // 0x006dba07    85c0
                         {disp8} je         _jmp_addr_0x006dba40                           // 0x006dba09    7435
                         push               edi                                            // 0x006dba0b    57
                         push               0x0                                            // 0x006dba0c    6a00
                         push               0xc                                            // 0x006dba0e    6a0c
                         {disp8} lea        edi, dword ptr [ebx + 0x68]                    // 0x006dba10    8d7b68
                         push               edi                                            // 0x006dba13    57
                         mov.s              ecx, esi                                       // 0x006dba14    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                   // 0x006dba16    e8050f0e00
                         cmp                eax, 0x03                                      // 0x006dba1b    83f803
                         {disp8} jne        _jmp_addr_0x006dba2a                           // 0x006dba1e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000  // 0x006dba20    c70590c9be0000000000
_jmp_addr_0x006dba2a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]              // 0x006dba2a    8b8e14020000
                         xor.s              eax, eax                                       // 0x006dba30    33c0
                         mov                al, byte ptr [edi]                             // 0x006dba32    8a07
                         pop                edi                                            // 0x006dba34    5f
                         add                eax, 0x0c                                      // 0x006dba35    83c00c
                         add.s              ecx, eax                                       // 0x006dba38    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx              // 0x006dba3a    898e14020000
_jmp_addr_0x006dba40:    {disp8} mov        ecx, dword ptr [ebx + 0x74]                    // 0x006dba40    8b4b74
                         push               ecx                                            // 0x006dba43    51
                         mov.s              ecx, esi                                       // 0x006dba44    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z     // 0x006dba46    e8c563e8ff
                         {disp8} mov        edx, dword ptr [ebx + 0x78]                    // 0x006dba4b    8b5378
                         push               edx                                            // 0x006dba4e    52
                         mov.s              ecx, esi                                       // 0x006dba4f    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z     // 0x006dba51    e8ba63e8ff
                         {disp8} mov        eax, dword ptr [ebx + 0x7c]                    // 0x006dba56    8b437c
                         push               eax                                            // 0x006dba59    50
                         mov.s              ecx, esi                                       // 0x006dba5a    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z     // 0x006dba5c    e8af63e8ff
                         pop                esi                                            // 0x006dba61    5e
                         mov                eax, 0x00000001                                // 0x006dba62    b801000000
                         pop                ebx                                            // 0x006dba67    5b
                         ret                0x0004                                         // 0x006dba68    c20400
_jmp_addr_0x006dba6b:    pop                esi                                            // 0x006dba6b    5e
                         xor.s              eax, eax                                       // 0x006dba6c    33c0
                         pop                ebx                                            // 0x006dba6e    5b
                         ret                0x0004                                         // 0x006dba6f    c20400
                         nop                                                               // 0x006dba72    90
                         nop                                                               // 0x006dba73    90
                         nop                                                               // 0x006dba74    90
                         nop                                                               // 0x006dba75    90
                         nop                                                               // 0x006dba76    90
                         nop                                                               // 0x006dba77    90
                         nop                                                               // 0x006dba78    90
                         nop                                                               // 0x006dba79    90
                         nop                                                               // 0x006dba7a    90
                         nop                                                               // 0x006dba7b    90
                         nop                                                               // 0x006dba7c    90
                         nop                                                               // 0x006dba7d    90
                         nop                                                               // 0x006dba7e    90
                         nop                                                               // 0x006dba7f    90
_jmp_addr_0x006dba80:    push               ebx                                            // 0x006dba80    53
                         push               esi                                            // 0x006dba81    56
                         mov.s              esi, ecx                                       // 0x006dba82    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000394]              // 0x006dba84    8b8e94030000
                         mov                eax, 0x66666667                                // 0x006dba8a    b867666666
                         imul               ecx                                            // 0x006dba8f    f7e9
                         {disp32} mov       ecx, dword ptr [esi + 0x00000390]              // 0x006dba91    8b8e90030000
                         sar                edx, 1                                         // 0x006dba97    d1fa
                         mov.s              eax, edx                                       // 0x006dba99    8bc2
                         shr                eax, 0x1f                                      // 0x006dba9b    c1e81f
                         add.s              edx, eax                                       // 0x006dba9e    03d0
                         {disp32} mov       dword ptr [esi + 0x00000394], edx              // 0x006dbaa0    899694030000
                         mov                eax, 0x66666667                                // 0x006dbaa6    b867666666
                         imul               ecx                                            // 0x006dbaab    f7e9
                         sar                edx, 1                                         // 0x006dbaad    d1fa
                         mov.s              ecx, edx                                       // 0x006dbaaf    8bca
                         shr                ecx, 0x1f                                      // 0x006dbab1    c1e91f
                         add.s              edx, ecx                                       // 0x006dbab4    03d1
                         push               edi                                            // 0x006dbab6    57
                         mov.s              ecx, esi                                       // 0x006dbab7    8bce
                         {disp32} mov       dword ptr [esi + 0x00000390], edx              // 0x006dbab9    899690030000
                         xor.s              ebx, ebx                                       // 0x006dbabf    33db
                         call               _jmp_addr_0x006db520                           // 0x006dbac1    e85afaffff
                         inc                eax                                            // 0x006dbac6    40
                         test               eax, eax                                       // 0x006dbac7    85c0
                         {disp8} jle        _jmp_addr_0x006dbb39                           // 0x006dbac9    7e6e
                         push               ebp                                            // 0x006dbacb    55
                         mov                ebp, 0x00000090                                // 0x006dbacc    bd90000000
_jmp_addr_0x006dbad1:    mov.s              ecx, esi                                       // 0x006dbad1    8bce
                         xor.s              edi, edi                                       // 0x006dbad3    33ff
                         call               _jmp_addr_0x006db520                           // 0x006dbad5    e846faffff
                         inc                eax                                            // 0x006dbada    40
                         test               eax, eax                                       // 0x006dbadb    85c0
                         {disp8} jle        _jmp_addr_0x006dbb28                           // 0x006dbadd    7e49
_jmp_addr_0x006dbadf:    mov.s              ecx, esi                                       // 0x006dbadf    8bce
                         call               _jmp_addr_0x006db520                           // 0x006dbae1    e83afaffff
                         cmp.s              edi, eax                                       // 0x006dbae6    3bf8
                         {disp8} je         _jmp_addr_0x006dbaff                           // 0x006dbae8    7415
                         push               0x1                                            // 0x006dbaea    6a01
                         push               edi                                            // 0x006dbaec    57
                         push               ebx                                            // 0x006dbaed    53
                         mov.s              ecx, esi                                       // 0x006dbaee    8bce
                         call               _jmp_addr_0x006db020                           // 0x006dbaf0    e82bf5ffff
                         lea                edx, dword ptr [edi + ebp * 0x1]               // 0x006dbaf5    8d142f
                         {disp32} mov       dword ptr [esi + edx * 0x4 + -0x00000144], eax // 0x006dbaf8    898496bcfeffff
_jmp_addr_0x006dbaff:    mov.s              ecx, esi                                       // 0x006dbaff    8bce
                         call               _jmp_addr_0x006db520                           // 0x006dbb01    e81afaffff
                         cmp.s              ebx, eax                                       // 0x006dbb06    3bd8
                         {disp8} je         _jmp_addr_0x006dbb1b                           // 0x006dbb08    7411
                         push               0x0                                            // 0x006dbb0a    6a00
                         push               edi                                            // 0x006dbb0c    57
                         push               ebx                                            // 0x006dbb0d    53
                         mov.s              ecx, esi                                       // 0x006dbb0e    8bce
                         call               _jmp_addr_0x006db020                           // 0x006dbb10    e80bf5ffff
                         lea                ecx, dword ptr [edi + ebp * 0x1]               // 0x006dbb15    8d0c2f
                         mov                dword ptr [esi + ecx * 0x4], eax               // 0x006dbb18    89048e
_jmp_addr_0x006dbb1b:    mov.s              ecx, esi                                       // 0x006dbb1b    8bce
                         inc                edi                                            // 0x006dbb1d    47
                         call               _jmp_addr_0x006db520                           // 0x006dbb1e    e8fdf9ffff
                         inc                eax                                            // 0x006dbb23    40
                         cmp.s              edi, eax                                       // 0x006dbb24    3bf8
                         {disp8} jl         _jmp_addr_0x006dbadf                           // 0x006dbb26    7cb7
_jmp_addr_0x006dbb28:    mov.s              ecx, esi                                       // 0x006dbb28    8bce
                         inc                ebx                                            // 0x006dbb2a    43
                         add                ebp, 0x09                                      // 0x006dbb2b    83c509
                         call               _jmp_addr_0x006db520                           // 0x006dbb2e    e8edf9ffff
                         inc                eax                                            // 0x006dbb33    40
                         cmp.s              ebx, eax                                       // 0x006dbb34    3bd8
                         {disp8} jl         _jmp_addr_0x006dbad1                           // 0x006dbb36    7c99
                         pop                ebp                                            // 0x006dbb38    5d
_jmp_addr_0x006dbb39:    mov.s              ecx, esi                                       // 0x006dbb39    8bce
                         xor.s              ebx, ebx                                       // 0x006dbb3b    33db
                         call               _jmp_addr_0x006db520                           // 0x006dbb3d    e8def9ffff
                         test               eax, eax                                       // 0x006dbb42    85c0
                         {disp8} jle        _jmp_addr_0x006dbb68                           // 0x006dbb44    7e22
                         {disp32} lea       edi, dword ptr [esi + 0x00000450]              // 0x006dbb46    8dbe50040000
_jmp_addr_0x006dbb4c:    {disp8} mov        dword ptr [edi + 0x20], 0x00000000             // 0x006dbb4c    c7472000000000
                         mov                dword ptr [edi], 0x00000000                    // 0x006dbb53    c70700000000
                         mov.s              ecx, esi                                       // 0x006dbb59    8bce
                         inc                ebx                                            // 0x006dbb5b    43
                         add                edi, 0x04                                      // 0x006dbb5c    83c704
                         call               _jmp_addr_0x006db520                           // 0x006dbb5f    e8bcf9ffff
                         cmp.s              ebx, eax                                       // 0x006dbb64    3bd8
                         {disp8} jl         _jmp_addr_0x006dbb4c                           // 0x006dbb66    7ce4
_jmp_addr_0x006dbb68:    mov.s              ecx, esi                                       // 0x006dbb68    8bce
                         xor.s              edi, edi                                       // 0x006dbb6a    33ff
                         call               _jmp_addr_0x006db520                           // 0x006dbb6c    e8aff9ffff
                         test               eax, eax                                       // 0x006dbb71    85c0
                         {disp8} jle        _jmp_addr_0x006dbb91                           // 0x006dbb73    7e1c
_jmp_addr_0x006dbb75:    push               edi                                            // 0x006dbb75    57
                         mov.s              ecx, esi                                       // 0x006dbb76    8bce
                         call               _jmp_addr_0x006dbcf0                           // 0x006dbb78    e873010000
                         push               edi                                            // 0x006dbb7d    57
                         mov.s              ecx, esi                                       // 0x006dbb7e    8bce
                         call               _jmp_addr_0x006dbc10                           // 0x006dbb80    e88b000000
                         mov.s              ecx, esi                                       // 0x006dbb85    8bce
                         inc                edi                                            // 0x006dbb87    47
                         call               _jmp_addr_0x006db520                           // 0x006dbb88    e893f9ffff
                         cmp.s              edi, eax                                       // 0x006dbb8d    3bf8
                         {disp8} jl         _jmp_addr_0x006dbb75                           // 0x006dbb8f    7ce4
_jmp_addr_0x006dbb91:    pop                edi                                            // 0x006dbb91    5f
                         pop                esi                                            // 0x006dbb92    5e
                         pop                ebx                                            // 0x006dbb93    5b
                         ret                                                               // 0x006dbb94    c3
                         nop                                                               // 0x006dbb95    90
                         nop                                                               // 0x006dbb96    90
                         nop                                                               // 0x006dbb97    90
                         nop                                                               // 0x006dbb98    90
                         nop                                                               // 0x006dbb99    90
                         nop                                                               // 0x006dbb9a    90
                         nop                                                               // 0x006dbb9b    90
                         nop                                                               // 0x006dbb9c    90
                         nop                                                               // 0x006dbb9d    90
                         nop                                                               // 0x006dbb9e    90
                         nop                                                               // 0x006dbb9f    90
_jmp_addr_0x006dbba0:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x006dbba0    8b442408
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x4 + 0x00000450]  // 0x006dbba4    8b948150040000
                         push               esi                                            // 0x006dbbab    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x006dbbac    8b742408
                         {disp8} lea        edx, dword ptr [edx + edx * 0x1 + 0x01]        // 0x006dbbb0    8d541201
                         push               edx                                            // 0x006dbbb4    52
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dbbb5    8d440001
                         push               eax                                            // 0x006dbbb9    50
                         push               esi                                            // 0x006dbbba    56
                         call               _jmp_addr_0x006d9290                           // 0x006dbbbb    e8d0d6ffff
                         mov.s              eax, esi                                       // 0x006dbbc0    8bc6
                         pop                esi                                            // 0x006dbbc2    5e
                         ret                0x0008                                         // 0x006dbbc3    c20800
                         nop                                                               // 0x006dbbc6    90
                         nop                                                               // 0x006dbbc7    90
                         nop                                                               // 0x006dbbc8    90
                         nop                                                               // 0x006dbbc9    90
                         nop                                                               // 0x006dbbca    90
                         nop                                                               // 0x006dbbcb    90
                         nop                                                               // 0x006dbbcc    90
                         nop                                                               // 0x006dbbcd    90
                         nop                                                               // 0x006dbbce    90
                         nop                                                               // 0x006dbbcf    90
_jmp_addr_0x006dbbd0:    push               esi                                            // 0x006dbbd0    56
                         push               edi                                            // 0x006dbbd1    57
                         mov.s              esi, ecx                                       // 0x006dbbd2    8bf1
                         call               _jmp_addr_0x006db520                           // 0x006dbbd4    e847f9ffff
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x006dbbd9    8b7c240c
                         mov.s              ecx, eax                                       // 0x006dbbdd    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x006dbbdf    8b442410
                         sub                ecx, dword ptr [esi + eax * 0x4 + 0x00000470]  // 0x006dbbe3    2b8c8670040000
                         {disp8} lea        edx, dword ptr [ecx + ecx * 0x1 + -0x01]       // 0x006dbbea    8d5409ff
                         push               edx                                            // 0x006dbbee    52
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dbbef    8d440001
                         push               eax                                            // 0x006dbbf3    50
                         push               edi                                            // 0x006dbbf4    57
                         mov.s              ecx, esi                                       // 0x006dbbf5    8bce
                         call               _jmp_addr_0x006d9290                           // 0x006dbbf7    e894d6ffff
                         mov.s              eax, edi                                       // 0x006dbbfc    8bc7
                         pop                edi                                            // 0x006dbbfe    5f
                         pop                esi                                            // 0x006dbbff    5e
                         ret                0x0008                                         // 0x006dbc00    c20800
                         nop                                                               // 0x006dbc03    90
                         nop                                                               // 0x006dbc04    90
                         nop                                                               // 0x006dbc05    90
                         nop                                                               // 0x006dbc06    90
                         nop                                                               // 0x006dbc07    90
                         nop                                                               // 0x006dbc08    90
                         nop                                                               // 0x006dbc09    90
                         nop                                                               // 0x006dbc0a    90
                         nop                                                               // 0x006dbc0b    90
                         nop                                                               // 0x006dbc0c    90
                         nop                                                               // 0x006dbc0d    90
                         nop                                                               // 0x006dbc0e    90
                         nop                                                               // 0x006dbc0f    90
_jmp_addr_0x006dbc10:    sub                esp, 0x18                                      // 0x006dbc10    83ec18
                         push               ebx                                            // 0x006dbc13    53
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x006dbc14    8b5c2420
                         push               esi                                            // 0x006dbc18    56
                         push               edi                                            // 0x006dbc19    57
                         mov.s              edi, ecx                                       // 0x006dbc1a    8bf9
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000430]  // 0x006dbc1c    8b8c9f30040000
                         test               ecx, ecx                                       // 0x006dbc23    85c9
                         {disp8} je         _jmp_addr_0x006dbc4e                           // 0x006dbc25    7427
                         mov                eax, dword ptr [ecx]                           // 0x006dbc27    8b01
                         call               dword ptr [eax + 0x2c]                         // 0x006dbc29    ff502c
                         test               eax, eax                                       // 0x006dbc2c    85c0
                         {disp8} je         _jmp_addr_0x006dbc4e                           // 0x006dbc2e    741e
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000430]  // 0x006dbc30    8b8c9f30040000
                         push               ecx                                            // 0x006dbc37    51
                         call               _jmp_addr_0x005e6540                           // 0x006dbc38    e803a9f0ff
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000430]  // 0x006dbc3d    8b8c9f30040000
                         mov                edx, dword ptr [ecx]                           // 0x006dbc44    8b11
                         add                esp, 0x04                                      // 0x006dbc46    83c404
                         push               0x0                                            // 0x006dbc49    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dbc4b    ff520c
_jmp_addr_0x006dbc4e:    push               0x00000b60                                     // 0x006dbc4e    68600b0000
                         push               0x00c09908                                     // 0x006dbc53    680899c000
                         push               0x00000154                                     // 0x006dbc58    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dbc5d    e88eaad5ff
                         mov.s              esi, eax                                       // 0x006dbc62    8bf0
                         add                esp, 0x0c                                      // 0x006dbc64    83c40c
                         test               esi, esi                                       // 0x006dbc67    85f6
                         {disp8} je         _jmp_addr_0x006dbcd1                           // 0x006dbc69    7466
                         push               ebx                                            // 0x006dbc6b    53
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x006dbc6c    8d442410
                         push               eax                                            // 0x006dbc70    50
                         mov.s              ecx, edi                                       // 0x006dbc71    8bcf
                         call               _jmp_addr_0x006dbbd0                           // 0x006dbc73    e858ffffff
                         push               0x14                                           // 0x006dbc78    6a14
                         push               0x00c51350                                     // 0x006dbc7a    685013c500
                         push               eax                                            // 0x006dbc7f    50
                         mov.s              ecx, esi                                       // 0x006dbc80    8bce
                         call               _jmp_addr_0x0041d0b0                           // 0x006dbc82    e82914d4ff
                         push               0x40000000                                     // 0x006dbc87    6800000040
                         mov.s              ecx, esi                                       // 0x006dbc8c    8bce
                         mov                dword ptr [esi], 0x008f170c                    // 0x006dbc8e    c7060c178f00
                         call               @SetScale__6ObjectFf@12                        // 0x006dbc94    e867d5f5ff
                         or                 byte ptr [esi + 0x25], 0x20                    // 0x006dbc99    804e2520
                         push               ebp                                            // 0x006dbc9d    55
                         mov                ebp, dword ptr [esi]                           // 0x006dbc9e    8b2e
                         push               ebx                                            // 0x006dbca0    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x006dbca1    8d4c2420
                         push               ecx                                            // 0x006dbca5    51
                         mov.s              ecx, edi                                       // 0x006dbca6    8bcf
                         {disp8} mov        dword ptr [esp + 0x34], esi                    // 0x006dbca8    89742434
                         call               _jmp_addr_0x006dbbd0                           // 0x006dbcac    e81fffffff
                         push               eax                                            // 0x006dbcb1    50
                         mov.s              ecx, esi                                       // 0x006dbcb2    8bce
                         call               dword ptr [ebp + 0x658]                        // 0x006dbcb4    ff9558060000
                         mov.s              eax, esi                                       // 0x006dbcba    8bc6
                         or                 byte ptr [eax + 0x25], 0x40                    // 0x006dbcbc    80482540
                         pop                ebp                                            // 0x006dbcc0    5d
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000430], eax  // 0x006dbcc1    89849f30040000
                         pop                edi                                            // 0x006dbcc8    5f
                         pop                esi                                            // 0x006dbcc9    5e
                         pop                ebx                                            // 0x006dbcca    5b
                         add                esp, 0x18                                      // 0x006dbccb    83c418
                         ret                0x0004                                         // 0x006dbcce    c20400
_jmp_addr_0x006dbcd1:    xor.s              eax, eax                                       // 0x006dbcd1    33c0
                         or                 byte ptr [eax + 0x25], 0x40                    // 0x006dbcd3    80482540
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000430], eax  // 0x006dbcd7    89849f30040000
                         pop                edi                                            // 0x006dbcde    5f
                         pop                esi                                            // 0x006dbcdf    5e
                         pop                ebx                                            // 0x006dbce0    5b
                         add                esp, 0x18                                      // 0x006dbce1    83c418
                         ret                0x0004                                         // 0x006dbce4    c20400
                         nop                                                               // 0x006dbce7    90
                         nop                                                               // 0x006dbce8    90
                         nop                                                               // 0x006dbce9    90
                         nop                                                               // 0x006dbcea    90
                         nop                                                               // 0x006dbceb    90
                         nop                                                               // 0x006dbcec    90
                         nop                                                               // 0x006dbced    90
                         nop                                                               // 0x006dbcee    90
                         nop                                                               // 0x006dbcef    90
_jmp_addr_0x006dbcf0:    sub                esp, 0x18                                      // 0x006dbcf0    83ec18
                         push               ebx                                            // 0x006dbcf3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x006dbcf4    8b5c2420
                         push               esi                                            // 0x006dbcf8    56
                         push               edi                                            // 0x006dbcf9    57
                         mov.s              edi, ecx                                       // 0x006dbcfa    8bf9
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000410]  // 0x006dbcfc    8b8c9f10040000
                         test               ecx, ecx                                       // 0x006dbd03    85c9
                         {disp8} je         _jmp_addr_0x006dbd2e                           // 0x006dbd05    7427
                         mov                eax, dword ptr [ecx]                           // 0x006dbd07    8b01
                         call               dword ptr [eax + 0x2c]                         // 0x006dbd09    ff502c
                         test               eax, eax                                       // 0x006dbd0c    85c0
                         {disp8} je         _jmp_addr_0x006dbd2e                           // 0x006dbd0e    741e
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000410]  // 0x006dbd10    8b8c9f10040000
                         push               ecx                                            // 0x006dbd17    51
                         call               _jmp_addr_0x005e6540                           // 0x006dbd18    e823a8f0ff
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000410]  // 0x006dbd1d    8b8c9f10040000
                         mov                edx, dword ptr [ecx]                           // 0x006dbd24    8b11
                         add                esp, 0x04                                      // 0x006dbd26    83c404
                         push               0x0                                            // 0x006dbd29    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dbd2b    ff520c
_jmp_addr_0x006dbd2e:    push               0x00000b70                                     // 0x006dbd2e    68700b0000
                         push               0x00c09908                                     // 0x006dbd33    680899c000
                         push               0x00000154                                     // 0x006dbd38    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dbd3d    e8aea9d5ff
                         mov.s              esi, eax                                       // 0x006dbd42    8bf0
                         add                esp, 0x0c                                      // 0x006dbd44    83c40c
                         test               esi, esi                                       // 0x006dbd47    85f6
                         {disp8} je         _jmp_addr_0x006dbdb1                           // 0x006dbd49    7466
                         push               ebx                                            // 0x006dbd4b    53
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x006dbd4c    8d442410
                         push               eax                                            // 0x006dbd50    50
                         mov.s              ecx, edi                                       // 0x006dbd51    8bcf
                         call               _jmp_addr_0x006dbba0                           // 0x006dbd53    e848feffff
                         push               0x14                                           // 0x006dbd58    6a14
                         push               0x00c5161c                                     // 0x006dbd5a    681c16c500
                         push               eax                                            // 0x006dbd5f    50
                         mov.s              ecx, esi                                       // 0x006dbd60    8bce
                         call               _jmp_addr_0x0041fd30                           // 0x006dbd62    e8c93fd4ff
                         push               0x40000000                                     // 0x006dbd67    6800000040
                         mov.s              ecx, esi                                       // 0x006dbd6c    8bce
                         mov                dword ptr [esi], 0x008efeb4                    // 0x006dbd6e    c706b4fe8e00
                         call               @SetScale__6ObjectFf@12                        // 0x006dbd74    e887d4f5ff
                         or                 byte ptr [esi + 0x25], 0x20                    // 0x006dbd79    804e2520
                         push               ebp                                            // 0x006dbd7d    55
                         mov                ebp, dword ptr [esi]                           // 0x006dbd7e    8b2e
                         push               ebx                                            // 0x006dbd80    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x006dbd81    8d4c2420
                         push               ecx                                            // 0x006dbd85    51
                         mov.s              ecx, edi                                       // 0x006dbd86    8bcf
                         {disp8} mov        dword ptr [esp + 0x34], esi                    // 0x006dbd88    89742434
                         call               _jmp_addr_0x006dbba0                           // 0x006dbd8c    e80ffeffff
                         push               eax                                            // 0x006dbd91    50
                         mov.s              ecx, esi                                       // 0x006dbd92    8bce
                         call               dword ptr [ebp + 0x658]                        // 0x006dbd94    ff9558060000
                         mov.s              eax, esi                                       // 0x006dbd9a    8bc6
                         or                 byte ptr [eax + 0x25], 0x40                    // 0x006dbd9c    80482540
                         pop                ebp                                            // 0x006dbda0    5d
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000410], eax  // 0x006dbda1    89849f10040000
                         pop                edi                                            // 0x006dbda8    5f
                         pop                esi                                            // 0x006dbda9    5e
                         pop                ebx                                            // 0x006dbdaa    5b
                         add                esp, 0x18                                      // 0x006dbdab    83c418
                         ret                0x0004                                         // 0x006dbdae    c20400
_jmp_addr_0x006dbdb1:    xor.s              eax, eax                                       // 0x006dbdb1    33c0
                         or                 byte ptr [eax + 0x25], 0x40                    // 0x006dbdb3    80482540
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000410], eax  // 0x006dbdb7    89849f10040000
                         pop                edi                                            // 0x006dbdbe    5f
                         pop                esi                                            // 0x006dbdbf    5e
                         pop                ebx                                            // 0x006dbdc0    5b
                         add                esp, 0x18                                      // 0x006dbdc1    83c418
                         ret                0x0004                                         // 0x006dbdc4    c20400
                         nop                                                               // 0x006dbdc7    90
                         nop                                                               // 0x006dbdc8    90
                         nop                                                               // 0x006dbdc9    90
                         nop                                                               // 0x006dbdca    90
                         nop                                                               // 0x006dbdcb    90
                         nop                                                               // 0x006dbdcc    90
                         nop                                                               // 0x006dbdcd    90
                         nop                                                               // 0x006dbdce    90
                         nop                                                               // 0x006dbdcf    90
_jmp_addr_0x006dbdd0:    push               ebp                                            // 0x006dbdd0    55
                         mov.s              ebp, ecx                                       // 0x006dbdd1    8be9
                         push               esi                                            // 0x006dbdd3    56
                         {disp32} lea       esi, dword ptr [ebp + 0x0000052c]              // 0x006dbdd4    8db52c050000
                         xor.s              eax, eax                                       // 0x006dbdda    33c0
                         mov.s              ecx, esi                                       // 0x006dbddc    8bce
_jmp_addr_0x006dbdde:    {disp8} lea        edx, dword ptr [eax + 0x08]                    // 0x006dbdde    8d5008
                         mov                dword ptr [ecx], edx                           // 0x006dbde1    8911
                         inc                eax                                            // 0x006dbde3    40
                         add                ecx, 0x4                                       // 0x006dbde4    83c104
                         cmp                eax, 0x08                                      // 0x006dbde7    83f808
                         {disp8} jl         _jmp_addr_0x006dbdde                           // 0x006dbdea    7cf2
                         push               ebx                                            // 0x006dbdec    53
                         push               edi                                            // 0x006dbded    57
                         xor.s              ebx, ebx                                       // 0x006dbdee    33db
                         mov                edi, 0x00000008                                // 0x006dbdf0    bf08000000
_jmp_addr_0x006dbdf5:    push               0x00000b84                                     // 0x006dbdf5    68840b0000
                         push               0x00c09908                                     // 0x006dbdfa    680899c000
                         push               edi                                            // 0x006dbdff    57
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x006dbe00    e80b270000
                         mov                ecx, dword ptr [esi]                           // 0x006dbe05    8b0e
                         add.s              eax, ebx                                       // 0x006dbe07    03c3
                         {disp32} mov       edx, dword ptr [ebp + eax * 0x4 + 0x0000052c]  // 0x006dbe09    8b94852c050000
                         {disp32} lea       eax, dword ptr [ebp + eax * 0x4 + 0x0000052c]  // 0x006dbe10    8d84852c050000
                         add                esp, 0x0c                                      // 0x006dbe17    83c40c
                         mov                dword ptr [esi], edx                           // 0x006dbe1a    8916
                         inc                ebx                                            // 0x006dbe1c    43
                         add                esi, 0x04                                      // 0x006dbe1d    83c604
                         dec                edi                                            // 0x006dbe20    4f
                         cmp                edi, 0x01                                      // 0x006dbe21    83ff01
                         mov                dword ptr [eax], ecx                           // 0x006dbe24    8908
                         {disp8} jg         _jmp_addr_0x006dbdf5                           // 0x006dbe26    7fcd
                         pop                edi                                            // 0x006dbe28    5f
                         xor.s              esi, esi                                       // 0x006dbe29    33f6
                         pop                ebx                                            // 0x006dbe2b    5b
_jmp_addr_0x006dbe2c:    push               esi                                            // 0x006dbe2c    56
                         mov.s              ecx, ebp                                       // 0x006dbe2d    8bcd
                         call               _jmp_addr_0x006dc140                           // 0x006dbe2f    e80c030000
                         inc                esi                                            // 0x006dbe34    46
                         cmp                esi, 0x08                                      // 0x006dbe35    83fe08
                         {disp8} jl         _jmp_addr_0x006dbe2c                           // 0x006dbe38    7cf2
                         pop                esi                                            // 0x006dbe3a    5e
                         pop                ebp                                            // 0x006dbe3b    5d
                         ret                                                               // 0x006dbe3c    c3
                         nop                                                               // 0x006dbe3d    90
                         nop                                                               // 0x006dbe3e    90
                         nop                                                               // 0x006dbe3f    90
?Load@PuzzleGrain@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                            // 0x006dbe40    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x006dbe41    8b742408
                         push               edi                                            // 0x006dbe45    57
                         mov.s              edi, ecx                                       // 0x006dbe46    8bf9
                         push               esi                                            // 0x006dbe48    56
                         call               ?Load@PileFood@@UAEIAAVGameOSFile@@@Z          // 0x006dbe49    e89237f9ff
                         test               eax, eax                                       // 0x006dbe4e    85c0
                         {disp8} je         _jmp_addr_0x006dbe9b                           // 0x006dbe50    7449
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]         // 0x006dbe52    a194c9be00
                         add                edi, 0x000000bc                                // 0x006dbe57    81c7bc000000
                         test               eax, eax                                       // 0x006dbe5d    85c0
                         {disp8} je         _jmp_addr_0x006dbe91                           // 0x006dbe5f    7430
                         push               0x0                                            // 0x006dbe61    6a00
                         push               0x4                                            // 0x006dbe63    6a04
                         push               edi                                            // 0x006dbe65    57
                         mov.s              ecx, esi                                       // 0x006dbe66    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                    // 0x006dbe68    e8730a0e00
                         cmp                eax, 0x03                                      // 0x006dbe6d    83f803
                         {disp8} jne        _jmp_addr_0x006dbe7c                           // 0x006dbe70    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000  // 0x006dbe72    c70594c9be0000000000
_jmp_addr_0x006dbe7c:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]              // 0x006dbe7c    8b8e14020000
                         xor.s              eax, eax                                       // 0x006dbe82    33c0
                         mov                al, byte ptr [edi]                             // 0x006dbe84    8a07
                         add                eax, 0x04                                      // 0x006dbe86    83c004
                         add.s              ecx, eax                                       // 0x006dbe89    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx              // 0x006dbe8b    898e14020000
_jmp_addr_0x006dbe91:    pop                edi                                            // 0x006dbe91    5f
                         mov                eax, 0x00000001                                // 0x006dbe92    b801000000
                         pop                esi                                            // 0x006dbe97    5e
                         ret                0x0004                                         // 0x006dbe98    c20400
_jmp_addr_0x006dbe9b:    pop                edi                                            // 0x006dbe9b    5f
                         xor.s              eax, eax                                       // 0x006dbe9c    33c0
                         pop                esi                                            // 0x006dbe9e    5e
                         ret                0x0004                                         // 0x006dbe9f    c20400
                         nop                                                               // 0x006dbea2    90
                         nop                                                               // 0x006dbea3    90
                         nop                                                               // 0x006dbea4    90
                         nop                                                               // 0x006dbea5    90
                         nop                                                               // 0x006dbea6    90
                         nop                                                               // 0x006dbea7    90
                         nop                                                               // 0x006dbea8    90
                         nop                                                               // 0x006dbea9    90
                         nop                                                               // 0x006dbeaa    90
                         nop                                                               // 0x006dbeab    90
                         nop                                                               // 0x006dbeac    90
                         nop                                                               // 0x006dbead    90
                         nop                                                               // 0x006dbeae    90
                         nop                                                               // 0x006dbeaf    90
?Save@PuzzleGrain@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                            // 0x006dbeb0    56
                         push               edi                                            // 0x006dbeb1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x006dbeb2    8b7c240c
                         mov.s              esi, ecx                                       // 0x006dbeb6    8bf1
                         push               edi                                            // 0x006dbeb8    57
                         call               ?Save@PileFood@@UAEIAAVGameOSFile@@@Z          // 0x006dbeb9    e8e236f9ff
                         test               eax, eax                                       // 0x006dbebe    85c0
                         {disp8} je         _jmp_addr_0x006dbf0b                           // 0x006dbec0    7449
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]         // 0x006dbec2    a190c9be00
                         test               eax, eax                                       // 0x006dbec7    85c0
                         {disp8} je         _jmp_addr_0x006dbf01                           // 0x006dbec9    7436
                         push               0x0                                            // 0x006dbecb    6a00
                         push               0x4                                            // 0x006dbecd    6a04
                         add                esi, 0x000000bc                                // 0x006dbecf    81c6bc000000
                         push               esi                                            // 0x006dbed5    56
                         mov.s              ecx, edi                                       // 0x006dbed6    8bcf
                         call               @Write__8LHOSFileFPvUlPUl@20                   // 0x006dbed8    e8430a0e00
                         cmp                eax, 0x03                                      // 0x006dbedd    83f803
                         {disp8} jne        _jmp_addr_0x006dbeec                           // 0x006dbee0    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000  // 0x006dbee2    c70590c9be0000000000
_jmp_addr_0x006dbeec:    {disp32} mov       ecx, dword ptr [edi + 0x00000214]              // 0x006dbeec    8b8f14020000
                         xor.s              eax, eax                                       // 0x006dbef2    33c0
                         mov                al, byte ptr [esi]                             // 0x006dbef4    8a06
                         add                eax, 0x04                                      // 0x006dbef6    83c004
                         add.s              ecx, eax                                       // 0x006dbef9    03c8
                         {disp32} mov       dword ptr [edi + 0x00000214], ecx              // 0x006dbefb    898f14020000
_jmp_addr_0x006dbf01:    pop                edi                                            // 0x006dbf01    5f
                         mov                eax, 0x00000001                                // 0x006dbf02    b801000000
                         pop                esi                                            // 0x006dbf07    5e
                         ret                0x0004                                         // 0x006dbf08    c20400
_jmp_addr_0x006dbf0b:    pop                edi                                            // 0x006dbf0b    5f
                         xor.s              eax, eax                                       // 0x006dbf0c    33c0
                         pop                esi                                            // 0x006dbf0e    5e
                         ret                0x0004                                         // 0x006dbf0f    c20400
                         nop                                                               // 0x006dbf12    90
                         nop                                                               // 0x006dbf13    90
                         nop                                                               // 0x006dbf14    90
                         nop                                                               // 0x006dbf15    90
                         nop                                                               // 0x006dbf16    90
                         nop                                                               // 0x006dbf17    90
                         nop                                                               // 0x006dbf18    90
                         nop                                                               // 0x006dbf19    90
                         nop                                                               // 0x006dbf1a    90
                         nop                                                               // 0x006dbf1b    90
                         nop                                                               // 0x006dbf1c    90
                         nop                                                               // 0x006dbf1d    90
                         nop                                                               // 0x006dbf1e    90
                         nop                                                               // 0x006dbf1f    90
?Load@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                            // 0x006dbf20    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x006dbf21    8b742408
                         push               edi                                            // 0x006dbf25    57
                         mov.s              edi, ecx                                       // 0x006dbf26    8bf9
                         push               esi                                            // 0x006dbf28    56
                         call               ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z      // 0x006dbf29    e8d2bdf2ff
                         test               eax, eax                                       // 0x006dbf2e    85c0
                         {disp8} je         _jmp_addr_0x006dbf78                           // 0x006dbf30    7446
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]         // 0x006dbf32    a194c9be00
                         add                edi, 0x68                                      // 0x006dbf37    83c768
                         test               eax, eax                                       // 0x006dbf3a    85c0
                         {disp8} je         _jmp_addr_0x006dbf6e                           // 0x006dbf3c    7430
                         push               0x0                                            // 0x006dbf3e    6a00
                         push               0x4                                            // 0x006dbf40    6a04
                         push               edi                                            // 0x006dbf42    57
                         mov.s              ecx, esi                                       // 0x006dbf43    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                    // 0x006dbf45    e896090e00
                         cmp                eax, 0x03                                      // 0x006dbf4a    83f803
                         {disp8} jne        _jmp_addr_0x006dbf59                           // 0x006dbf4d    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000  // 0x006dbf4f    c70594c9be0000000000
_jmp_addr_0x006dbf59:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]              // 0x006dbf59    8b8e14020000
                         xor.s              eax, eax                                       // 0x006dbf5f    33c0
                         mov                al, byte ptr [edi]                             // 0x006dbf61    8a07
                         add                eax, 0x04                                      // 0x006dbf63    83c004
                         add.s              ecx, eax                                       // 0x006dbf66    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx              // 0x006dbf68    898e14020000
_jmp_addr_0x006dbf6e:    pop                edi                                            // 0x006dbf6e    5f
                         mov                eax, 0x00000001                                // 0x006dbf6f    b801000000
                         pop                esi                                            // 0x006dbf74    5e
                         ret                0x0004                                         // 0x006dbf75    c20400
_jmp_addr_0x006dbf78:    pop                edi                                            // 0x006dbf78    5f
                         xor.s              eax, eax                                       // 0x006dbf79    33c0
                         pop                esi                                            // 0x006dbf7b    5e
                         ret                0x0004                                         // 0x006dbf7c    c20400
                         nop                                                               // 0x006dbf7f    90
?Save@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                            // 0x006dbf80    56
                         push               edi                                            // 0x006dbf81    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x006dbf82    8b7c240c
                         mov.s              esi, ecx                                       // 0x006dbf86    8bf1
                         push               edi                                            // 0x006dbf88    57
                         call               ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z      // 0x006dbf89    e8b2bcf2ff
                         test               eax, eax                                       // 0x006dbf8e    85c0
                         {disp8} je         _jmp_addr_0x006dbfd8                           // 0x006dbf90    7446
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]         // 0x006dbf92    a190c9be00
                         test               eax, eax                                       // 0x006dbf97    85c0
                         {disp8} je         _jmp_addr_0x006dbfce                           // 0x006dbf99    7433
                         push               0x0                                            // 0x006dbf9b    6a00
                         push               0x4                                            // 0x006dbf9d    6a04
                         add                esi, 0x68                                      // 0x006dbf9f    83c668
                         push               esi                                            // 0x006dbfa2    56
                         mov.s              ecx, edi                                       // 0x006dbfa3    8bcf
                         call               @Write__8LHOSFileFPvUlPUl@20                   // 0x006dbfa5    e876090e00
                         cmp                eax, 0x03                                      // 0x006dbfaa    83f803
                         {disp8} jne        _jmp_addr_0x006dbfb9                           // 0x006dbfad    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000  // 0x006dbfaf    c70590c9be0000000000
_jmp_addr_0x006dbfb9:    {disp32} mov       ecx, dword ptr [edi + 0x00000214]              // 0x006dbfb9    8b8f14020000
                         xor.s              eax, eax                                       // 0x006dbfbf    33c0
                         mov                al, byte ptr [esi]                             // 0x006dbfc1    8a06
                         add                eax, 0x04                                      // 0x006dbfc3    83c004
                         add.s              ecx, eax                                       // 0x006dbfc6    03c8
                         {disp32} mov       dword ptr [edi + 0x00000214], ecx              // 0x006dbfc8    898f14020000
_jmp_addr_0x006dbfce:    pop                edi                                            // 0x006dbfce    5f
                         mov                eax, 0x00000001                                // 0x006dbfcf    b801000000
                         pop                esi                                            // 0x006dbfd4    5e
                         ret                0x0004                                         // 0x006dbfd5    c20400
_jmp_addr_0x006dbfd8:    pop                edi                                            // 0x006dbfd8    5f
                         xor.s              eax, eax                                       // 0x006dbfd9    33c0
                         pop                esi                                            // 0x006dbfdb    5e
                         ret                0x0004                                         // 0x006dbfdc    c20400
                         nop                                                               // 0x006dbfdf    90
_jmp_addr_0x006dbfe0:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x006dbfe0    8b442420
                         {disp8} mov        edx, dword ptr [esp + 0x18]                    // 0x006dbfe4    8b542418
                         push               esi                                            // 0x006dbfe8    56
                         push               eax                                            // 0x006dbfe9    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x006dbfea    8b44241c
                         mov.s              esi, ecx                                       // 0x006dbfee    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x006dbff0    8b4c2424
                         push               ecx                                            // 0x006dbff4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006dbff5    8b4c241c
                         push               edx                                            // 0x006dbff9    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x006dbffa    8b54241c
                         push               eax                                            // 0x006dbffe    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x006dbfff    8b44241c
                         push               ecx                                            // 0x006dc003    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x006dc004    8b4c241c
                         push               edx                                            // 0x006dc008    52
                         push               eax                                            // 0x006dc009    50
                         push               ecx                                            // 0x006dc00a    51
                         mov.s              ecx, esi                                       // 0x006dc00b    8bce
                         call               @__ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff@40                           // 0x006dc00d    e85e20f9ff
                         mov                dword ptr [esi], 0x008ed30c                    // 0x006dc012    c7060cd38e00
                         {disp8} mov        dword ptr [esi + 0x68], 0xffffffff             // 0x006dc018    c74668ffffffff
                         mov.s              eax, esi                                       // 0x006dc01f    8bc6
                         pop                esi                                            // 0x006dc021    5e
                         ret                0x0020                                         // 0x006dc022    c22000
                         nop                                                               // 0x006dc025    90
                         nop                                                               // 0x006dc026    90
                         nop                                                               // 0x006dc027    90
                         nop                                                               // 0x006dc028    90
                         nop                                                               // 0x006dc029    90
                         nop                                                               // 0x006dc02a    90
                         nop                                                               // 0x006dc02b    90
                         nop                                                               // 0x006dc02c    90
                         nop                                                               // 0x006dc02d    90
                         nop                                                               // 0x006dc02e    90
                         nop                                                               // 0x006dc02f    90
_jmp_addr_0x006dc030:    push               esi                                            // 0x006dc030    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x006dc031    8b74240c
                         mov.s              eax, esi                                       // 0x006dc035    8bc6
                         cdq                                                               // 0x006dc037    99
                         and                edx, 0x03                                      // 0x006dc038    83e203
                         add.s              eax, edx                                       // 0x006dc03b    03c2
                         sar                eax, 2                                         // 0x006dc03d    c1f802
                         shl                eax, 1                                         // 0x006dc040    d1e0
                         and                esi, 0x80000003                                // 0x006dc042    81e603000080
                         push               eax                                            // 0x006dc048    50
                         {disp8} jns        _jmp_addr_0x006dc050                           // 0x006dc049    7905
                         dec                esi                                            // 0x006dc04b    4e
                         or                 esi, 0xfffffffc                                // 0x006dc04c    83cefc
                         inc                esi                                            // 0x006dc04f    46
_jmp_addr_0x006dc050:    shl                esi, 1                                         // 0x006dc050    d1e6
                         push               esi                                            // 0x006dc052    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x006dc053    8b742410
                         push               esi                                            // 0x006dc057    56
                         call               _jmp_addr_0x006d9290                           // 0x006dc058    e833d2ffff
                         mov.s              eax, esi                                       // 0x006dc05d    8bc6
                         pop                esi                                            // 0x006dc05f    5e
                         ret                0x0008                                         // 0x006dc060    c20800
                         nop                                                               // 0x006dc063    90
                         nop                                                               // 0x006dc064    90
                         nop                                                               // 0x006dc065    90
                         nop                                                               // 0x006dc066    90
                         nop                                                               // 0x006dc067    90
                         nop                                                               // 0x006dc068    90
                         nop                                                               // 0x006dc069    90
                         nop                                                               // 0x006dc06a    90
                         nop                                                               // 0x006dc06b    90
                         nop                                                               // 0x006dc06c    90
                         nop                                                               // 0x006dc06d    90
                         nop                                                               // 0x006dc06e    90
                         nop                                                               // 0x006dc06f    90
_jmp_addr_0x006dc070:    push               esi                                            // 0x006dc070    56
                         mov.s              esi, ecx                                       // 0x006dc071    8bf1
                         call               _jmp_addr_0x006d66e0                           // 0x006dc073    e868a6ffff
                         test               eax, eax                                       // 0x006dc078    85c0
                         {disp8} jne        _jmp_addr_0x006dc08b                           // 0x006dc07a    750f
                         {disp32} mov       eax, dword ptr [esi + 0x00000584]              // 0x006dc07c    8b8684050000
                         neg                eax                                            // 0x006dc082    f7d8
                         sbb.s              eax, eax                                       // 0x006dc084    1bc0
                         add                eax, 0x05                                      // 0x006dc086    83c005
                         pop                esi                                            // 0x006dc089    5e
                         ret                                                               // 0x006dc08a    c3
_jmp_addr_0x006dc08b:    {disp8} mov        eax, dword ptr [esi + 0x48]                    // 0x006dc08b    8b4648
                         sub                eax, 0x10                                      // 0x006dc08e    83e810
                         {disp8} je         _jmp_addr_0x006dc0ba                           // 0x006dc091    7427
                         sub                eax, 0x02                                      // 0x006dc093    83e802
                         {disp8} jne        _jmp_addr_0x006dc0b6                           // 0x006dc096    751e
                         {disp32} mov       esi, dword ptr [esi + 0x00000490]              // 0x006dc098    8bb690040000
                         cmp                esi, 0x02                                      // 0x006dc09e    83fe02
                         {disp8} jne        _jmp_addr_0x006dc0aa                           // 0x006dc0a1    7507
                         mov                eax, 0x00000003                                // 0x006dc0a3    b803000000
                         pop                esi                                            // 0x006dc0a8    5e
                         ret                                                               // 0x006dc0a9    c3
_jmp_addr_0x006dc0aa:    cmp                esi, 0x01                                      // 0x006dc0aa    83fe01
                         {disp8} jne        _jmp_addr_0x006dc0b6                           // 0x006dc0ad    7507
                         mov                eax, 0x00000002                                // 0x006dc0af    b802000000
                         pop                esi                                            // 0x006dc0b4    5e
                         ret                                                               // 0x006dc0b5    c3
_jmp_addr_0x006dc0b6:    xor.s              eax, eax                                       // 0x006dc0b6    33c0
                         pop                esi                                            // 0x006dc0b8    5e
                         ret                                                               // 0x006dc0b9    c3
_jmp_addr_0x006dc0ba:    {disp32} mov       eax, dword ptr [esi + 0x0000057c]              // 0x006dc0ba    8b867c050000
                         pop                esi                                            // 0x006dc0c0    5e
                         ret                                                               // 0x006dc0c1    c3
                         nop                                                               // 0x006dc0c2    90
                         nop                                                               // 0x006dc0c3    90
                         nop                                                               // 0x006dc0c4    90
                         nop                                                               // 0x006dc0c5    90
                         nop                                                               // 0x006dc0c6    90
                         nop                                                               // 0x006dc0c7    90
                         nop                                                               // 0x006dc0c8    90
                         nop                                                               // 0x006dc0c9    90
                         nop                                                               // 0x006dc0ca    90
                         nop                                                               // 0x006dc0cb    90
                         nop                                                               // 0x006dc0cc    90
                         nop                                                               // 0x006dc0cd    90
                         nop                                                               // 0x006dc0ce    90
                         nop                                                               // 0x006dc0cf    90
_jmp_addr_0x006dc0d0:    {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x006dc0d0    8b4c2404
                         xor.s              eax, eax                                       // 0x006dc0d4    33c0
                         test               ecx, ecx                                       // 0x006dc0d6    85c9
                         {disp8} je         _jmp_addr_0x006dc0e1                           // 0x006dc0d8    7407
_jmp_addr_0x006dc0da:    sar                ecx, 1                                         // 0x006dc0da    d1f9
                         inc                eax                                            // 0x006dc0dc    40
                         test               ecx, ecx                                       // 0x006dc0dd    85c9
                         {disp8} jne        _jmp_addr_0x006dc0da                           // 0x006dc0df    75f9
_jmp_addr_0x006dc0e1:    ret                                                               // 0x006dc0e1    c3
                         nop                                                               // 0x006dc0e2    90
                         nop                                                               // 0x006dc0e3    90
                         nop                                                               // 0x006dc0e4    90
                         nop                                                               // 0x006dc0e5    90
                         nop                                                               // 0x006dc0e6    90
                         nop                                                               // 0x006dc0e7    90
                         nop                                                               // 0x006dc0e8    90
                         nop                                                               // 0x006dc0e9    90
                         nop                                                               // 0x006dc0ea    90
                         nop                                                               // 0x006dc0eb    90
                         nop                                                               // 0x006dc0ec    90
                         nop                                                               // 0x006dc0ed    90
                         nop                                                               // 0x006dc0ee    90
                         nop                                                               // 0x006dc0ef    90
_jmp_addr_0x006dc0f0:    push               ebx                                            // 0x006dc0f0    53
                         push               esi                                            // 0x006dc0f1    56
                         push               edi                                            // 0x006dc0f2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x006dc0f3    8b7c2410
                         push               edi                                            // 0x006dc0f7    57
                         mov.s              esi, ecx                                       // 0x006dc0f8    8bf1
                         call               _jmp_addr_0x006dc0d0                           // 0x006dc0fa    e8d1ffffff
                         mov.s              ebx, eax                                       // 0x006dc0ff    8bd8
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]              // 0x006dc101    8b86bc000000
                         push               eax                                            // 0x006dc107    50
                         call               _jmp_addr_0x006dc0d0                           // 0x006dc108    e8c3ffffff
                         add                esp, 0x08                                      // 0x006dc10d    83c408
                         cmp.s              ebx, eax                                       // 0x006dc110    3bd8
                         {disp8} je         _jmp_addr_0x006dc11c                           // 0x006dc112    7408
                         pop                edi                                            // 0x006dc114    5f
                         pop                esi                                            // 0x006dc115    5e
                         xor.s              eax, eax                                       // 0x006dc116    33c0
                         pop                ebx                                            // 0x006dc118    5b
                         ret                0x0004                                         // 0x006dc119    c20400
_jmp_addr_0x006dc11c:    mov.s              eax, edi                                       // 0x006dc11c    8bc7
                         xor                eax, dword ptr [esi + 0x000000bc]              // 0x006dc11e    3386bc000000
                         and                eax, 0xfffffffe                                // 0x006dc124    83e0fe
                         neg                eax                                            // 0x006dc127    f7d8
                         pop                edi                                            // 0x006dc129    5f
                         sbb.s              eax, eax                                       // 0x006dc12a    1bc0
                         pop                esi                                            // 0x006dc12c    5e
                         inc                eax                                            // 0x006dc12d    40
                         pop                ebx                                            // 0x006dc12e    5b
                         ret                0x0004                                         // 0x006dc12f    c20400
                         nop                                                               // 0x006dc132    90
                         nop                                                               // 0x006dc133    90
                         nop                                                               // 0x006dc134    90
                         nop                                                               // 0x006dc135    90
                         nop                                                               // 0x006dc136    90
                         nop                                                               // 0x006dc137    90
                         nop                                                               // 0x006dc138    90
                         nop                                                               // 0x006dc139    90
                         nop                                                               // 0x006dc13a    90
                         nop                                                               // 0x006dc13b    90
                         nop                                                               // 0x006dc13c    90
                         nop                                                               // 0x006dc13d    90
                         nop                                                               // 0x006dc13e    90
                         nop                                                               // 0x006dc13f    90
_jmp_addr_0x006dc140:    sub                esp, 0x18                                      // 0x006dc140    83ec18
                         push               ebx                                            // 0x006dc143    53
                         push               esi                                            // 0x006dc144    56
                         push               edi                                            // 0x006dc145    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]                    // 0x006dc146    8b7c2428
                         mov.s              esi, ecx                                       // 0x006dc14a    8bf1
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x00000494]  // 0x006dc14c    8b84be94040000
                         test               eax, eax                                       // 0x006dc153    85c0
                         {disp8} je         _jmp_addr_0x006dc16e                           // 0x006dc155    7417
                         push               eax                                            // 0x006dc157    50
                         call               _jmp_addr_0x005e6540                           // 0x006dc158    e8e3a3f0ff
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000494]  // 0x006dc15d    8b8cbe94040000
                         mov                eax, dword ptr [ecx]                           // 0x006dc164    8b01
                         add                esp, 0x04                                      // 0x006dc166    83c404
                         push               0x0                                            // 0x006dc169    6a00
                         call               dword ptr [eax + 0xc]                          // 0x006dc16b    ff500c
_jmp_addr_0x006dc16e:    push               0x00000bfb                                     // 0x006dc16e    68fb0b0000
                         push               0x00c09908                                     // 0x006dc173    680899c000
                         push               0x000000c0                                     // 0x006dc178    68c0000000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dc17d    e86ea5d5ff
                         mov.s              ebx, eax                                       // 0x006dc182    8bd8
                         add                esp, 0x0c                                      // 0x006dc184    83c40c
                         test               ebx, ebx                                       // 0x006dc187    85db
                         {disp8} je         _jmp_addr_0x006dc1f1                           // 0x006dc189    7466
                         push               0x3f800000                                     // 0x006dc18b    680000803f
                         push               0x0                                            // 0x006dc190    6a00
                         push               0x0                                            // 0x006dc192    6a00
                         push               0x0                                            // 0x006dc194    6a00
                         push               0x0                                            // 0x006dc196    6a00
                         push               0xa                                            // 0x006dc198    6a0a
                         push               0x00d4d590                                     // 0x006dc19a    6890d5d400
                         push               edi                                            // 0x006dc19f    57
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                    // 0x006dc1a0    8d4c242c
                         push               ecx                                            // 0x006dc1a4    51
                         mov.s              ecx, esi                                       // 0x006dc1a5    8bce
                         call               _jmp_addr_0x006dc030                           // 0x006dc1a7    e884feffff
                         push               eax                                            // 0x006dc1ac    50
                         mov.s              ecx, ebx                                       // 0x006dc1ad    8bcb
                         call               _jmp_addr_0x006dbfe0                           // 0x006dc1af    e82cfeffff
                         mov.s              ebx, eax                                       // 0x006dc1b4    8bd8
                         test               ebx, ebx                                       // 0x006dc1b6    85db
                         {disp8} je         _jmp_addr_0x006dc203                           // 0x006dc1b8    7449
                         push               ebp                                            // 0x006dc1ba    55
                         mov                ebp, dword ptr [ebx]                           // 0x006dc1bb    8b2b
                         push               edi                                            // 0x006dc1bd    57
                         {disp8} lea        edx, dword ptr [esp + 0x20]                    // 0x006dc1be    8d542420
                         push               edx                                            // 0x006dc1c2    52
                         mov.s              ecx, esi                                       // 0x006dc1c3    8bce
                         call               _jmp_addr_0x006dc030                           // 0x006dc1c5    e866feffff
                         push               eax                                            // 0x006dc1ca    50
                         mov.s              ecx, ebx                                       // 0x006dc1cb    8bcb
                         call               dword ptr [ebp + 0x658]                        // 0x006dc1cd    ff9558060000
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x0000052c]  // 0x006dc1d3    8b84be2c050000
                         pop                ebp                                            // 0x006dc1da    5d
                         {disp32} mov       dword ptr [ebx + 0x000000bc], eax              // 0x006dc1db    8983bc000000
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000494], ebx  // 0x006dc1e1    899cbe94040000
                         pop                edi                                            // 0x006dc1e8    5f
                         pop                esi                                            // 0x006dc1e9    5e
                         pop                ebx                                            // 0x006dc1ea    5b
                         add                esp, 0x18                                      // 0x006dc1eb    83c418
                         ret                0x0004                                         // 0x006dc1ee    c20400
_jmp_addr_0x006dc1f1:    xor.s              eax, eax                                       // 0x006dc1f1    33c0
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000494], eax  // 0x006dc1f3    8984be94040000
                         pop                edi                                            // 0x006dc1fa    5f
                         pop                esi                                            // 0x006dc1fb    5e
                         pop                ebx                                            // 0x006dc1fc    5b
                         add                esp, 0x18                                      // 0x006dc1fd    83c418
                         ret                0x0004                                         // 0x006dc200    c20400
_jmp_addr_0x006dc203:    {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000494], ebx  // 0x006dc203    899cbe94040000
                         pop                edi                                            // 0x006dc20a    5f
                         pop                esi                                            // 0x006dc20b    5e
                         pop                ebx                                            // 0x006dc20c    5b
                         add                esp, 0x18                                      // 0x006dc20d    83c418
                         ret                0x0004                                         // 0x006dc210    c20400
                         nop                                                               // 0x006dc213    90
                         nop                                                               // 0x006dc214    90
                         nop                                                               // 0x006dc215    90
                         nop                                                               // 0x006dc216    90
                         nop                                                               // 0x006dc217    90
                         nop                                                               // 0x006dc218    90
                         nop                                                               // 0x006dc219    90
                         nop                                                               // 0x006dc21a    90
                         nop                                                               // 0x006dc21b    90
                         nop                                                               // 0x006dc21c    90
                         nop                                                               // 0x006dc21d    90
                         nop                                                               // 0x006dc21e    90
                         nop                                                               // 0x006dc21f    90
_jmp_addr_0x006dc220:    push               ecx                                            // 0x006dc220    51
                         push               esi                                            // 0x006dc221    56
                         mov.s              esi, ecx                                       // 0x006dc222    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000388]              // 0x006dc224    8b8688030000
                         xor.s              ecx, ecx                                       // 0x006dc22a    33c9
                         {disp32} mov       cx, word ptr [esi + 0x0000038c]                // 0x006dc22c    668b8e8c030000
                         push               eax                                            // 0x006dc233    50
                         {disp8} lea        edx, dword ptr [esi + 0x14]                    // 0x006dc234    8d5614
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x006dc237    894c2408
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x006dc23b    db442408
                         push               ecx                                            // 0x006dc23f    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91af8]              // 0x006dc240    d80df8aa9300
                         fstp               dword ptr [esp]                                // 0x006dc246    d91c24
                         push               0x0                                            // 0x006dc249    6a00
                         push               0x00d3a5b4                                     // 0x006dc24b    68b4a5d300
                         push               edx                                            // 0x006dc250    52
                         call               _jmp_addr_0x00607000                           // 0x006dc251    e8aaadf2ff
                         {disp32} mov       dword ptr [esi + 0x00000384], eax              // 0x006dc256    898684030000
                         or                 byte ptr [eax + 0x25], 0x20                    // 0x006dc25c    80482520
                         {disp32} mov       esi, dword ptr [esi + 0x00000384]              // 0x006dc260    8bb684030000
                         add                esp, 0x14                                      // 0x006dc266    83c414
                         or                 byte ptr [esi + 0x25], 0x10                    // 0x006dc269    804e2510
                         pop                esi                                            // 0x006dc26d    5e
                         pop                ecx                                            // 0x006dc26e    59
                         ret                                                               // 0x006dc26f    c3
_jmp_addr_0x006dc270:    push               esi                                            // 0x006dc270    56
                         mov.s              esi, ecx                                       // 0x006dc271    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000394]              // 0x006dc273    8b8694030000
                         cdq                                                               // 0x006dc279    99
                         sub.s              eax, edx                                       // 0x006dc27a    2bc2
                         sar                eax, 1                                         // 0x006dc27c    d1f8
                         {disp32} mov       dword ptr [esi + 0x00000394], eax              // 0x006dc27e    898694030000
                         {disp32} mov       eax, dword ptr [esi + 0x00000390]              // 0x006dc284    8b8690030000
                         cdq                                                               // 0x006dc28a    99
                         sub.s              eax, edx                                       // 0x006dc28b    2bc2
                         sar                eax, 1                                         // 0x006dc28d    d1f8
                         push               edi                                            // 0x006dc28f    57
                         {disp32} mov       dword ptr [esi + 0x00000390], eax              // 0x006dc290    898690030000
                         xor.s              eax, eax                                       // 0x006dc296    33c0
                         {disp32} mov       dword ptr [esi + 0x0000057c], 0x00000004       // 0x006dc298    c7867c05000004000000
                         {disp32} lea       edi, dword ptr [esi + 0x0000052c]              // 0x006dc2a2    8dbe2c050000
                         mov                ecx, 0x00000012                                // 0x006dc2a8    b912000000
                         rep stosd                                                         // 0x006dc2ad    f3ab
                         mov.s              ecx, esi                                       // 0x006dc2af    8bce
                         call               _jmp_addr_0x006dc220                           // 0x006dc2b1    e86affffff
                         xor.s              edi, edi                                       // 0x006dc2b6    33ff
_jmp_addr_0x006dc2b8:    push               edi                                            // 0x006dc2b8    57
                         mov.s              ecx, esi                                       // 0x006dc2b9    8bce
                         call               _jmp_addr_0x006dc2d0                           // 0x006dc2bb    e810000000
                         inc                edi                                            // 0x006dc2c0    47
                         cmp                edi, 0x12                                      // 0x006dc2c1    83ff12
                         {disp8} jl         _jmp_addr_0x006dc2b8                           // 0x006dc2c4    7cf2
                         pop                edi                                            // 0x006dc2c6    5f
                         pop                esi                                            // 0x006dc2c7    5e
                         ret                                                               // 0x006dc2c8    c3
                         nop                                                               // 0x006dc2c9    90
                         nop                                                               // 0x006dc2ca    90
                         nop                                                               // 0x006dc2cb    90
                         nop                                                               // 0x006dc2cc    90
                         nop                                                               // 0x006dc2cd    90
                         nop                                                               // 0x006dc2ce    90
                         nop                                                               // 0x006dc2cf    90
_jmp_addr_0x006dc2d0:    sub                esp, 0x1c                                      // 0x006dc2d0    83ec1c
                         {disp32} fld       dword ptr [data_bytes + 0x2438f8]              // 0x006dc2d3    d905f898c000
                         push               ebx                                            // 0x006dc2d9    53
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                    // 0x006dc2da    8b5c2424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91afc]              // 0x006dc2de    d80dfcaa9300
                         mov.s              eax, ebx                                       // 0x006dc2e4    8bc3
                         imul               eax, eax, 0x000c23c3                           // 0x006dc2e6    69c0c3230c00
                         push               ebp                                            // 0x006dc2ec    55
                         push               esi                                            // 0x006dc2ed    56
                         push               edi                                            // 0x006dc2ee    57
                         mov.s              edi, ecx                                       // 0x006dc2ef    8bf9
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                    // 0x006dc2f1    8d4c2430
                         {disp8} mov        dword ptr [esp + 0x30], eax                    // 0x006dc2f5    89442430
                         push               ecx                                            // 0x006dc2f9    51
                         call               _jmp_addr_0x007a1400                           // 0x006dc2fa    e801510c00
                         push               eax                                            // 0x006dc2ff    50
                         call               _LHRand__FlRU                                  // 0x006dc300    e8fbf20f00
                         xor.s              ebp, ebp                                       // 0x006dc305    33ed
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x006dc307    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ebp                    // 0x006dc30b    896c2420
                         {disp8} fild       qword ptr [esp + 0x1c]                         // 0x006dc30f    df6c241c
                         {disp8} lea        edx, dword ptr [esp + 0x38]                    // 0x006dc313    8d542438
                         push               edx                                            // 0x006dc317    52
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2d050]              // 0x006dc318    d80d50608d00
                         push               0x0003243c                                     // 0x006dc31e    683c240300
                         {disp32} fsubr     dword ptr [data_bytes + 0x2438f8]              // 0x006dc323    d82df898c000
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x006dc329    d95c2420
                         call               _LHRand__FlRU                                  // 0x006dc32d    e8cef20f00
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x006dc332    89442424
                         {disp32} mov       eax, dword ptr [edi + ebx * 0x4 + 0x000004e4]  // 0x006dc336    8b849fe4040000
                         {disp8} mov        dword ptr [esp + 0x28], ebp                    // 0x006dc33d    896c2428
                         {disp8} fild       qword ptr [esp + 0x24]                         // 0x006dc341    df6c2424
                         add                esp, 0x10                                      // 0x006dc345    83c410
                         cmp.s              eax, ebp                                       // 0x006dc348    3bc5
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2d050]              // 0x006dc34a    d80d50608d00
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x006dc350    d95c2414
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x006dc354    d9442410
                         {disp32} fadd      dword ptr [edi + 0x00000388]                   // 0x006dc358    d88788030000
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x006dc35e    d95c2410
                         {disp8} je         _jmp_addr_0x006dc37a                           // 0x006dc362    7416
                         push               eax                                            // 0x006dc364    50
                         call               _jmp_addr_0x005e6540                           // 0x006dc365    e8d6a1f0ff
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x000004e4]  // 0x006dc36a    8b8c9fe4040000
                         mov                eax, dword ptr [ecx]                           // 0x006dc371    8b01
                         add                esp, 0x04                                      // 0x006dc373    83c404
                         push               ebp                                            // 0x006dc376    55
                         call               dword ptr [eax + 0xc]                          // 0x006dc377    ff500c
_jmp_addr_0x006dc37a:    push               0x00000c5f                                     // 0x006dc37a    685f0c0000
                         push               0x00c09908                                     // 0x006dc37f    680899c000
                         push               0x6c                                           // 0x006dc384    6a6c
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dc386    e865a3d5ff
                         mov.s              esi, eax                                       // 0x006dc38b    8bf0
                         add                esp, 0x0c                                      // 0x006dc38d    83c40c
                         cmp.s              esi, ebp                                       // 0x006dc390    3bf5
                         {disp8} je         _jmp_addr_0x006dc401                           // 0x006dc392    746d
                         push               ebx                                            // 0x006dc394    53
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                    // 0x006dc395    8d4c2424
                         push               ecx                                            // 0x006dc399    51
                         mov.s              ecx, edi                                       // 0x006dc39a    8bcf
                         call               _jmp_addr_0x006dc420                           // 0x006dc39c    e87f000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dc3a1    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x006dc3a5    8b4c2414
                         push               edx                                            // 0x006dc3a9    52
                         push               ecx                                            // 0x006dc3aa    51
                         push               ebp                                            // 0x006dc3ab    55
                         push               0x00d397b0                                     // 0x006dc3ac    68b097d300
                         push               eax                                            // 0x006dc3b1    50
                         mov.s              ecx, esi                                       // 0x006dc3b2    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                           // 0x006dc3b4    e887aaf2ff
                         xor.s              edx, edx                                       // 0x006dc3b9    33d2
                         {disp8} mov        dx, word ptr [esi + 0x24]                      // 0x006dc3bb    668b5624
                         push               ebx                                            // 0x006dc3bf    53
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x006dc3c0    8d442418
                         mov                dword ptr [esi], 0x008ff44c                    // 0x006dc3c4    c7064cf48f00
                         push               eax                                            // 0x006dc3ca    50
                         mov.s              ecx, edi                                       // 0x006dc3cb    8bcf
                         and                edx, 0x0000efff                                // 0x006dc3cd    81e2ffef0000
                         or                 edx, 0x4000                                    // 0x006dc3d3    81ca00400000
                         {disp8} mov        word ptr [esi + 0x24], dx                      // 0x006dc3d9    66895624
                         mov                ebp, dword ptr [esi]                           // 0x006dc3dd    8b2e
                         call               _jmp_addr_0x006dc420                           // 0x006dc3df    e83c000000
                         push               eax                                            // 0x006dc3e4    50
                         mov.s              ecx, esi                                       // 0x006dc3e5    8bce
                         call               dword ptr [ebp + 0x658]                        // 0x006dc3e7    ff9558060000
                         {disp8} mov        dword ptr [esi + 0x68], ebx                    // 0x006dc3ed    895e68
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x000004e4], esi  // 0x006dc3f0    89b49fe4040000
                         pop                edi                                            // 0x006dc3f7    5f
                         pop                esi                                            // 0x006dc3f8    5e
                         pop                ebp                                            // 0x006dc3f9    5d
                         pop                ebx                                            // 0x006dc3fa    5b
                         add                esp, 0x1c                                      // 0x006dc3fb    83c41c
                         ret                0x0004                                         // 0x006dc3fe    c20400
_jmp_addr_0x006dc401:    xor.s              eax, eax                                       // 0x006dc401    33c0
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x000004e4], eax  // 0x006dc403    89849fe4040000
                         pop                edi                                            // 0x006dc40a    5f
                         pop                esi                                            // 0x006dc40b    5e
                         pop                ebp                                            // 0x006dc40c    5d
                         pop                ebx                                            // 0x006dc40d    5b
                         add                esp, 0x1c                                      // 0x006dc40e    83c41c
                         ret                0x0004                                         // 0x006dc411    c20400
                         nop                                                               // 0x006dc414    90
                         nop                                                               // 0x006dc415    90
                         nop                                                               // 0x006dc416    90
                         nop                                                               // 0x006dc417    90
                         nop                                                               // 0x006dc418    90
                         nop                                                               // 0x006dc419    90
                         nop                                                               // 0x006dc41a    90
                         nop                                                               // 0x006dc41b    90
                         nop                                                               // 0x006dc41c    90
                         nop                                                               // 0x006dc41d    90
                         nop                                                               // 0x006dc41e    90
                         nop                                                               // 0x006dc41f    90
_jmp_addr_0x006dc420:    sub                esp, 0x18                                      // 0x006dc420    83ec18
                         push               ebx                                            // 0x006dc423    53
                         push               ebp                                            // 0x006dc424    55
                         push               esi                                            // 0x006dc425    56
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                    // 0x006dc426    8b74242c
                         push               edi                                            // 0x006dc42a    57
                         mov.s              edi, ecx                                       // 0x006dc42b    8bf9
                         mov.s              edx, esi                                       // 0x006dc42d    8bd6
                         imul               edx, edx, 0x000c23c3                           // 0x006dc42f    69d2c3230c00
                         {disp8} lea        eax, dword ptr [edi + 0x14]                    // 0x006dc435    8d4714
                         mov                ebx, dword ptr [eax]                           // 0x006dc438    8b18
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                    // 0x006dc43a    8b6804
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                    // 0x006dc43d    8b4808
                         {disp8} mov        dword ptr [esp + 0x24], ecx                    // 0x006dc440    894c2424
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2438fc]         // 0x006dc444    8b0dfc98c000
                         {disp8} lea        eax, dword ptr [esp + 0x30]                    // 0x006dc44a    8d442430
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x006dc44e    89542430
                         push               eax                                            // 0x006dc452    50
                         lea                edx, dword ptr [ecx + ecx * 0x1]               // 0x006dc453    8d1409
                         push               edx                                            // 0x006dc456    52
                         call               _LHRand__FlRU                                  // 0x006dc457    e8a4f10f00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2438fc]         // 0x006dc45c    8b0dfc98c000
                         {disp32} fld       dword ptr [data_bytes + 0x243900]              // 0x006dc462    d9050099c000
                         sub.s              ecx, eax                                       // 0x006dc468    2bc8
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91b00]              // 0x006dc46a    d80d00ab9300
                         {disp8} lea        edx, dword ptr [esp + 0x38]                    // 0x006dc470    8d542438
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x006dc474    894c2418
                         push               edx                                            // 0x006dc478    52
                         call               _jmp_addr_0x007a1400                           // 0x006dc479    e8824f0c00
                         push               eax                                            // 0x006dc47e    50
                         call               _LHRand__FlRU                                  // 0x006dc47f    e87cf10f00
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x006dc484    89442424
                         shl                esi, 0xb                                       // 0x006dc488    c1e60b
                         mov                eax, 0x38e38e39                                // 0x006dc48b    b8398ee338
                         mul                esi                                            // 0x006dc490    f7e6
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x006dc492    c744242800000000
                         mov.s              esi, edx                                       // 0x006dc49a    8bf2
                         shr                esi, 2                                         // 0x006dc49c    c1ee02
                         {disp8} fild       qword ptr [esp + 0x24]                         // 0x006dc49f    df6c2424
                         shl                esi, 2                                         // 0x006dc4a3    c1e602
                         add                esp, 0x10                                      // 0x006dc4a6    83c410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2d050]              // 0x006dc4a9    d80d50608d00
                         {disp32} fsubr     dword ptr [data_bytes + 0x243904]              // 0x006dc4af    d82d0499c000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x91818]              // 0x006dc4b5    d80518a89300
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x006dc4bb    db442410
                         {disp32} fild      dword ptr [esi + _sin_lookup_table]            // 0x006dc4bf    db861416c300
                         fmul               st, st(2)                                      // 0x006dc4c5    d8ca
                         {disp32} fmul      dword ptr [edi + 0x00000388]                   // 0x006dc4c7    d88f88030000
                         fadd               st, st(1)                                      // 0x006dc4cd    d8c1
                         call               _jmp_addr_0x007a1400                           // 0x006dc4cf    e82c4f0c00
                         {disp32} fild      dword ptr [esi + _cos_lookup_table]            // 0x006dc4d4    db86141ec300
                         add.s              ebx, eax                                       // 0x006dc4da    03d8
                         fmul               st, st(2)                                      // 0x006dc4dc    d8ca
                         {disp32} fmul      dword ptr [edi + 0x00000388]                   // 0x006dc4de    d88f88030000
                         fadd               st, st(1)                                      // 0x006dc4e4    d8c1
                         call               _jmp_addr_0x007a1400                           // 0x006dc4e6    e8154f0c00
                         fstp               st(0)                                          // 0x006dc4eb    ddd8
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x006dc4ed    8b542424
                         fstp               st(0)                                          // 0x006dc4f1    ddd8
                         add.s              ebp, eax                                       // 0x006dc4f3    03e8
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x006dc4f5    8b44242c
                         pop                edi                                            // 0x006dc4f9    5f
                         mov.s              ecx, eax                                       // 0x006dc4fa    8bc8
                         mov                dword ptr [ecx], ebx                           // 0x006dc4fc    8919
                         pop                esi                                            // 0x006dc4fe    5e
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                    // 0x006dc4ff    896904
                         pop                ebp                                            // 0x006dc502    5d
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x006dc503    895108
                         pop                ebx                                            // 0x006dc506    5b
                         add                esp, 0x18                                      // 0x006dc507    83c418
                         ret                0x0008                                         // 0x006dc50a    c20800
                         nop                                                               // 0x006dc50d    90
                         nop                                                               // 0x006dc50e    90
                         nop                                                               // 0x006dc50f    90
?GetImmersionTexture@PuzzleMobileObject@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x68]                    // 0x006dc510    8b4168
                         cmp                eax, 0x12                                      // 0x006dc513    83f812
                         {disp8} jge        _jmp_addr_0x006dc542                           // 0x006dc516    7d2a
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c0986c]        // 0x006dc518    8b0cc56c98c000
                         {disp32} mov       edx, dword ptr [eax * 0x8 + 0x00c09868]        // 0x006dc51f    8b14c56898c000
                         push               ecx                                            // 0x006dc526    51
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x006dc527    8b0d5c19d000
                         push               edx                                            // 0x006dc52d    52
                         push               0x11                                           // 0x006dc52e    6a11
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x006dc530    e81b93e7ff
                         mov.s              ecx, eax                                       // 0x006dc535    8bc8
                         call               _jmp_addr_0x005d8dd0                           // 0x006dc537    e894c8efff
                         mov                eax, 0x00000011                                // 0x006dc53c    b811000000
                         ret                                                               // 0x006dc541    c3
_jmp_addr_0x006dc542:    or                 eax, -0x1                                      // 0x006dc542    83c8ff
                         ret                                                               // 0x006dc545    c3
                         nop                                                               // 0x006dc546    90
                         nop                                                               // 0x006dc547    90
                         nop                                                               // 0x006dc548    90
                         nop                                                               // 0x006dc549    90
                         nop                                                               // 0x006dc54a    90
                         nop                                                               // 0x006dc54b    90
                         nop                                                               // 0x006dc54c    90
                         nop                                                               // 0x006dc54d    90
                         nop                                                               // 0x006dc54e    90
                         nop                                                               // 0x006dc54f    90
?GetImmersionTexture@PuzzleGrain@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ:
                         mov                eax, 0x00000011                                // 0x006dc550    b811000000
                         ret                                                               // 0x006dc555    c3
                         nop                                                               // 0x006dc556    90
                         nop                                                               // 0x006dc557    90
                         nop                                                               // 0x006dc558    90
                         nop                                                               // 0x006dc559    90
                         nop                                                               // 0x006dc55a    90
                         nop                                                               // 0x006dc55b    90
                         nop                                                               // 0x006dc55c    90
                         nop                                                               // 0x006dc55d    90
                         nop                                                               // 0x006dc55e    90
                         nop                                                               // 0x006dc55f    90
_jmp_addr_0x006dc560:    sub                esp, 0x14                                      // 0x006dc560    83ec14
                         push               ebx                                            // 0x006dc563    53
                         push               ebp                                            // 0x006dc564    55
                         push               esi                                            // 0x006dc565    56
                         mov.s              esi, ecx                                       // 0x006dc566    8bf1
                         push               edi                                            // 0x006dc568    57
                         xor.s              ebp, ebp                                       // 0x006dc569    33ed
                         {disp32} lea       edi, dword ptr [esi + 0x000004e4]              // 0x006dc56b    8dbee4040000
_jmp_addr_0x006dc571:    mov                ecx, dword ptr [edi]                           // 0x006dc571    8b0f
                         test               ecx, ecx                                       // 0x006dc573    85c9
                         {disp8} je         _jmp_addr_0x006dc588                           // 0x006dc575    7411
                         mov                eax, dword ptr [ecx]                           // 0x006dc577    8b01
                         call               dword ptr [eax + 0x2c]                         // 0x006dc579    ff502c
                         test               eax, eax                                       // 0x006dc57c    85c0
                         {disp8} jne        _jmp_addr_0x006dc588                           // 0x006dc57e    7508
                         push               ebp                                            // 0x006dc580    55
                         mov.s              ecx, esi                                       // 0x006dc581    8bce
                         call               _jmp_addr_0x006dc2d0                           // 0x006dc583    e848fdffff
_jmp_addr_0x006dc588:    inc                ebp                                            // 0x006dc588    45
                         add                edi, 0x04                                      // 0x006dc589    83c704
                         cmp                ebp, 0x12                                      // 0x006dc58c    83fd12
                         {disp8} jl         _jmp_addr_0x006dc571                           // 0x006dc58f    7ce0
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc591    8b8e84030000
                         test               ecx, ecx                                       // 0x006dc597    85c9
                         {disp8} je         _jmp_addr_0x006dc5ec                           // 0x006dc599    7451
                         mov                edx, dword ptr [ecx]                           // 0x006dc59b    8b11
                         call               dword ptr [edx + 0x2c]                         // 0x006dc59d    ff522c
                         test               eax, eax                                       // 0x006dc5a0    85c0
                         {disp8} je         _jmp_addr_0x006dc5ba                           // 0x006dc5a2    7416
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc5a4    8b8e84030000
                         {disp8} lea        eax, dword ptr [esi + 0x14]                    // 0x006dc5aa    8d4614
                         push               eax                                            // 0x006dc5ad    50
                         add                ecx, 0x14                                      // 0x006dc5ae    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                  // 0x006dc5b1    e8fa90f2ff
                         test               eax, eax                                       // 0x006dc5b6    85c0
                         {disp8} je         _jmp_addr_0x006dc5ec                           // 0x006dc5b8    7432
_jmp_addr_0x006dc5ba:    {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc5ba    8b8e84030000
                         mov                edx, dword ptr [ecx]                           // 0x006dc5c0    8b11
                         call               dword ptr [edx + 0x2c]                         // 0x006dc5c2    ff522c
                         test               eax, eax                                       // 0x006dc5c5    85c0
                         {disp8} je         _jmp_addr_0x006dc5e5                           // 0x006dc5c7    741c
                         {disp32} mov       eax, dword ptr [esi + 0x00000384]              // 0x006dc5c9    8b8684030000
                         push               eax                                            // 0x006dc5cf    50
                         call               _jmp_addr_0x005e6540                           // 0x006dc5d0    e86b9ff0ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc5d5    8b8e84030000
                         mov                edx, dword ptr [ecx]                           // 0x006dc5db    8b11
                         add                esp, 0x04                                      // 0x006dc5dd    83c404
                         push               0x0                                            // 0x006dc5e0    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dc5e2    ff520c
_jmp_addr_0x006dc5e5:    mov.s              ecx, esi                                       // 0x006dc5e5    8bce
                         call               _jmp_addr_0x006dc220                           // 0x006dc5e7    e834fcffff
_jmp_addr_0x006dc5ec:    xor.s              ebx, ebx                                       // 0x006dc5ec    33db
                         {disp32} lea       edi, dword ptr [esi + 0x000004e4]              // 0x006dc5ee    8dbee4040000
_jmp_addr_0x006dc5f4:    mov                eax, dword ptr [edi]                           // 0x006dc5f4    8b07
                         test               eax, eax                                       // 0x006dc5f6    85c0
                         {disp32} je        _jmp_addr_0x006dc723                           // 0x006dc5f8    0f8425010000
                         test               byte ptr [eax + 0x24], 0x04                    // 0x006dc5fe    f6402404
                         {disp32} jne       _jmp_addr_0x006dc723                           // 0x006dc602    0f851b010000
                         push               ebx                                            // 0x006dc608    53
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x006dc609    8d44241c
                         push               eax                                            // 0x006dc60d    50
                         mov.s              ecx, esi                                       // 0x006dc60e    8bce
                         call               _jmp_addr_0x006dc420                           // 0x006dc610    e80bfeffff
                         mov                ecx, dword ptr [edi]                           // 0x006dc615    8b0f
                         push               eax                                            // 0x006dc617    50
                         add                ecx, 0x14                                      // 0x006dc618    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                  // 0x006dc61b    e89090f2ff
                         test               eax, eax                                       // 0x006dc620    85c0
                         {disp32} je        _jmp_addr_0x006dc723                           // 0x006dc622    0f84fb000000
                         mov                eax, dword ptr [edi]                           // 0x006dc628    8b07
                         {disp8} mov        edx, dword ptr [esi + 0x14]                    // 0x006dc62a    8b5614
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                    // 0x006dc62d    8b4814
                         sub.s              ecx, edx                                       // 0x006dc630    2bca
                         {disp8} mov        edx, dword ptr [eax + 0x18]                    // 0x006dc632    8b5018
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x006dc635    894c2414
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                    // 0x006dc639    8b4e18
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x006dc63c    db442414
                         sub.s              edx, ecx                                       // 0x006dc640    2bd1
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x006dc642    89542410
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x006dc646    d95c2414
                         push               ecx                                            // 0x006dc64a    51
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x006dc64b    db442414
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x006dc64f    d95c2414
                         {disp32} fld       dword ptr [esi + 0x00000388]                   // 0x006dc653    d98688030000
                         {disp32} fild      dword ptr [esi + 0x00000390]                   // 0x006dc659    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x006dc65f    d84c2418
                         {disp32} fild      dword ptr [esi + 0x00000394]                   // 0x006dc663    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006dc669    d84c2414
                         fsubp              st(1), st                                      // 0x006dc66d    dee9
                         fld                st(1)                                          // 0x006dc66f    d9c1
                         fmul               st, st(2)                                      // 0x006dc671    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91b04]              // 0x006dc673    d80d04ab9300
                         fdivp              st(1), st                                      // 0x006dc679    def9
                         fstp               dword ptr [esp]                                // 0x006dc67b    d91c24
                         fstp               st(0)                                          // 0x006dc67e    ddd8
                         call               _jmp_addr_0x006d7190                           // 0x006dc680    e80babffff
                         {disp32} fld       dword ptr [esi + 0x00000388]                   // 0x006dc685    d98688030000
                         mov.s              ebp, eax                                       // 0x006dc68b    8be8
                         {disp32} fild      dword ptr [esi + 0x00000390]                   // 0x006dc68d    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x006dc693    d84c2414
                         {disp32} fild      dword ptr [esi + 0x00000394]                   // 0x006dc697    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x006dc69d    d84c2418
                         faddp              st(1), st                                      // 0x006dc6a1    dec1
                         fld                st(1)                                          // 0x006dc6a3    d9c1
                         fmul               st, st(2)                                      // 0x006dc6a5    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91b04]              // 0x006dc6a7    d80d04ab9300
                         fdivp              st(1), st                                      // 0x006dc6ad    def9
                         fstp               dword ptr [esp]                                // 0x006dc6af    d91c24
                         fstp               st(0)                                          // 0x006dc6b2    ddd8
                         call               _jmp_addr_0x006d7190                           // 0x006dc6b4    e8d7aaffff
                         add                esp, 0x04                                      // 0x006dc6b9    83c404
                         test               ebp, ebp                                       // 0x006dc6bc    85ed
                         mov                ecx, 0x00000001                                // 0x006dc6be    b901000000
                         {disp32} mov       dword ptr [esi + 0x00000584], ecx              // 0x006dc6c3    898e84050000
                         {disp8} jne        _jmp_addr_0x006dc716                           // 0x006dc6c9    754b
                         test               eax, eax                                       // 0x006dc6cb    85c0
                         {disp8} jne        _jmp_addr_0x006dc716                           // 0x006dc6cd    7547
                         mov                eax, dword ptr [edi]                           // 0x006dc6cf    8b07
                         cmp                dword ptr [eax + 0x68], 0x08                   // 0x006dc6d1    83786808
                         {disp8} je         _jmp_addr_0x006dc6df                           // 0x006dc6d5    7408
                         {disp32} mov       dword ptr [esi + 0x0000057c], ecx              // 0x006dc6d7    898e7c050000
                         {disp8} jmp        _jmp_addr_0x006dc6e9                           // 0x006dc6dd    eb0a
_jmp_addr_0x006dc6df:    {disp32} mov       dword ptr [esi + 0x0000057c], 0x00000000       // 0x006dc6df    c7867c05000000000000
_jmp_addr_0x006dc6e9:    mov                eax, dword ptr [edi]                           // 0x006dc6e9    8b07
                         test               byte ptr [eax + 0x24], 0x40                    // 0x006dc6eb    f6402440
                         {disp8} je         _jmp_addr_0x006dc6fc                           // 0x006dc6ef    740b
                         push               ecx                                            // 0x006dc6f1    51
                         push               ecx                                            // 0x006dc6f2    51
                         push               eax                                            // 0x006dc6f3    50
                         call               _jmp_addr_0x00646a00                           // 0x006dc6f4    e807a3f6ff
                         add                esp, 0x0c                                      // 0x006dc6f9    83c40c
_jmp_addr_0x006dc6fc:    mov                ecx, dword ptr [edi]                           // 0x006dc6fc    8b0f
                         push               ecx                                            // 0x006dc6fe    51
                         call               _jmp_addr_0x005e6540                           // 0x006dc6ff    e83c9ef0ff
                         mov                ecx, dword ptr [edi]                           // 0x006dc704    8b0f
                         mov                edx, dword ptr [ecx]                           // 0x006dc706    8b11
                         add                esp, 0x04                                      // 0x006dc708    83c404
                         push               0x0                                            // 0x006dc70b    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dc70d    ff520c
                         mov                dword ptr [edi], 0x00000000                    // 0x006dc710    c70700000000
_jmp_addr_0x006dc716:    cmp                dword ptr [edi], 0x00                          // 0x006dc716    833f00
                         {disp8} je         _jmp_addr_0x006dc723                           // 0x006dc719    7408
                         push               ebx                                            // 0x006dc71b    53
                         mov.s              ecx, esi                                       // 0x006dc71c    8bce
                         call               _jmp_addr_0x006dc2d0                           // 0x006dc71e    e8adfbffff
_jmp_addr_0x006dc723:    inc                ebx                                            // 0x006dc723    43
                         add                edi, 0x04                                      // 0x006dc724    83c704
                         cmp                ebx, 0x12                                      // 0x006dc727    83fb12
                         {disp32} jl        _jmp_addr_0x006dc5f4                           // 0x006dc72a    0f8cc4feffff
                         pop                edi                                            // 0x006dc730    5f
                         pop                esi                                            // 0x006dc731    5e
                         pop                ebp                                            // 0x006dc732    5d
                         pop                ebx                                            // 0x006dc733    5b
                         add                esp, 0x14                                      // 0x006dc734    83c414
                         ret                                                               // 0x006dc737    c3
                         nop                                                               // 0x006dc738    90
                         nop                                                               // 0x006dc739    90
                         nop                                                               // 0x006dc73a    90
                         nop                                                               // 0x006dc73b    90
                         nop                                                               // 0x006dc73c    90
                         nop                                                               // 0x006dc73d    90
                         nop                                                               // 0x006dc73e    90
                         nop                                                               // 0x006dc73f    90
_jmp_addr_0x006dc740:    sub                esp, 0x1c                                      // 0x006dc740    83ec1c
                         push               ebx                                            // 0x006dc743    53
                         push               ebp                                            // 0x006dc744    55
                         push               esi                                            // 0x006dc745    56
                         mov.s              esi, ecx                                       // 0x006dc746    8bf1
                         push               edi                                            // 0x006dc748    57
                         xor.s              edi, edi                                       // 0x006dc749    33ff
                         {disp32} lea       ebp, dword ptr [esi + 0x00000494]              // 0x006dc74b    8dae94040000
_jmp_addr_0x006dc751:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x006dc751    8b4d00
                         test               ecx, ecx                                       // 0x006dc754    85c9
                         {disp8} je         _jmp_addr_0x006dc769                           // 0x006dc756    7411
                         mov                eax, dword ptr [ecx]                           // 0x006dc758    8b01
                         call               dword ptr [eax + 0x2c]                         // 0x006dc75a    ff502c
                         test               eax, eax                                       // 0x006dc75d    85c0
                         {disp8} jne        _jmp_addr_0x006dc769                           // 0x006dc75f    7508
                         push               edi                                            // 0x006dc761    57
                         mov.s              ecx, esi                                       // 0x006dc762    8bce
                         call               _jmp_addr_0x006dc140                           // 0x006dc764    e8d7f9ffff
_jmp_addr_0x006dc769:    inc                edi                                            // 0x006dc769    47
                         add                ebp, 0x04                                      // 0x006dc76a    83c504
                         cmp                edi, 0x14                                      // 0x006dc76d    83ff14
                         {disp8} jl         _jmp_addr_0x006dc751                           // 0x006dc770    7cdf
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc772    8b8e84030000
                         test               ecx, ecx                                       // 0x006dc778    85c9
                         {disp8} je         _jmp_addr_0x006dc7da                           // 0x006dc77a    745e
                         mov                edx, dword ptr [ecx]                           // 0x006dc77c    8b11
                         call               dword ptr [edx + 0x2c]                         // 0x006dc77e    ff522c
                         test               eax, eax                                       // 0x006dc781    85c0
                         {disp8} je         _jmp_addr_0x006dc7a8                           // 0x006dc783    7423
                         push               -0x2                                           // 0x006dc785    6afe
                         push               0x3                                            // 0x006dc787    6a03
                         {disp8} lea        eax, dword ptr [esp + 0x28]                    // 0x006dc789    8d442428
                         push               eax                                            // 0x006dc78d    50
                         mov.s              ecx, esi                                       // 0x006dc78e    8bce
                         call               _jmp_addr_0x006d9290                           // 0x006dc790    e8fbcaffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc795    8b8e84030000
                         push               eax                                            // 0x006dc79b    50
                         add                ecx, 0x14                                      // 0x006dc79c    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                  // 0x006dc79f    e80c8ff2ff
                         test               eax, eax                                       // 0x006dc7a4    85c0
                         {disp8} je         _jmp_addr_0x006dc7da                           // 0x006dc7a6    7432
_jmp_addr_0x006dc7a8:    {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc7a8    8b8e84030000
                         mov                edx, dword ptr [ecx]                           // 0x006dc7ae    8b11
                         call               dword ptr [edx + 0x2c]                         // 0x006dc7b0    ff522c
                         test               eax, eax                                       // 0x006dc7b3    85c0
                         {disp8} je         _jmp_addr_0x006dc7d3                           // 0x006dc7b5    741c
                         {disp32} mov       eax, dword ptr [esi + 0x00000384]              // 0x006dc7b7    8b8684030000
                         push               eax                                            // 0x006dc7bd    50
                         call               _jmp_addr_0x005e6540                           // 0x006dc7be    e87d9df0ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000384]              // 0x006dc7c3    8b8e84030000
                         mov                edx, dword ptr [ecx]                           // 0x006dc7c9    8b11
                         add                esp, 0x04                                      // 0x006dc7cb    83c404
                         push               0x0                                            // 0x006dc7ce    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dc7d0    ff520c
_jmp_addr_0x006dc7d3:    mov.s              ecx, esi                                       // 0x006dc7d3    8bce
                         call               _jmp_addr_0x006dc220                           // 0x006dc7d5    e846faffff
_jmp_addr_0x006dc7da:    xor.s              ecx, ecx                                       // 0x006dc7da    33c9
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x006dc7dc    894c2410
                         {disp32} lea       ebp, dword ptr [esi + 0x00000494]              // 0x006dc7e0    8dae94040000
_jmp_addr_0x006dc7e6:    {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x006dc7e6    8b4500
                         test               eax, eax                                       // 0x006dc7e9    85c0
                         {disp32} je        _jmp_addr_0x006dc963                           // 0x006dc7eb    0f8472010000
                         test               byte ptr [eax + 0x24], 0x04                    // 0x006dc7f1    f6402404
                         {disp32} jne       _jmp_addr_0x006dc963                           // 0x006dc7f5    0f8568010000
                         push               ecx                                            // 0x006dc7fb    51
                         {disp8} lea        eax, dword ptr [esp + 0x24]                    // 0x006dc7fc    8d442424
                         push               eax                                            // 0x006dc800    50
                         mov.s              ecx, esi                                       // 0x006dc801    8bce
                         call               _jmp_addr_0x006dc030                           // 0x006dc803    e828f8ffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x006dc808    8b4d00
                         push               eax                                            // 0x006dc80b    50
                         add                ecx, 0x14                                      // 0x006dc80c    83c114
                         call               ?__ne@MapCoords@@QBE_NABV1@@Z                  // 0x006dc80f    e89c8ef2ff
                         test               eax, eax                                       // 0x006dc814    85c0
                         {disp32} je        _jmp_addr_0x006dc963                           // 0x006dc816    0f8447010000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x006dc81c    8b4500
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                    // 0x006dc81f    8b4814
                         sub                ecx, dword ptr [esi + 0x14]                    // 0x006dc822    2b4e14
                         {disp8} mov        edx, dword ptr [eax + 0x18]                    // 0x006dc825    8b5018
                         {disp8} mov        eax, dword ptr [esi + 0x18]                    // 0x006dc828    8b4618
                         {disp8} mov        dword ptr [esp + 0x18], ecx                    // 0x006dc82b    894c2418
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x006dc82f    db442418
                         sub.s              edx, eax                                       // 0x006dc833    2bd0
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x006dc835    89542414
                         push               ecx                                            // 0x006dc839    51
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x006dc83a    d95c241c
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x006dc83e    db442418
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x006dc842    d95c2418
                         {disp32} fld       dword ptr [esi + 0x00000388]                   // 0x006dc846    d98688030000
                         {disp32} fild      dword ptr [esi + 0x00000390]                   // 0x006dc84c    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x006dc852    d84c241c
                         {disp32} fild      dword ptr [esi + 0x00000394]                   // 0x006dc856    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x006dc85c    d84c2418
                         fsubp              st(1), st                                      // 0x006dc860    dee9
                         fld                st(1)                                          // 0x006dc862    d9c1
                         fmul               st, st(2)                                      // 0x006dc864    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91b04]              // 0x006dc866    d80d04ab9300
                         fdivp              st(1), st                                      // 0x006dc86c    def9
                         fstp               dword ptr [esp]                                // 0x006dc86e    d91c24
                         fstp               st(0)                                          // 0x006dc871    ddd8
                         call               _jmp_addr_0x006d7190                           // 0x006dc873    e818a9ffff
                         {disp32} fld       dword ptr [esi + 0x00000388]                   // 0x006dc878    d98688030000
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x006dc87e    89442420
                         {disp32} fild      dword ptr [esi + 0x00000390]                   // 0x006dc882    db8690030000
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x006dc888    d84c2418
                         {disp32} fild      dword ptr [esi + 0x00000394]                   // 0x006dc88c    db8694030000
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x006dc892    d84c241c
                         faddp              st(1), st                                      // 0x006dc896    dec1
                         fld                st(1)                                          // 0x006dc898    d9c1
                         fmul               st, st(2)                                      // 0x006dc89a    d8ca
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91b04]              // 0x006dc89c    d80d04ab9300
                         fdivp              st(1), st                                      // 0x006dc8a2    def9
                         fstp               dword ptr [esp]                                // 0x006dc8a4    d91c24
                         fstp               st(0)                                          // 0x006dc8a7    ddd8
                         call               _jmp_addr_0x006d7190                           // 0x006dc8a9    e8e2a8ffff
                         add                esp, 0x04                                      // 0x006dc8ae    83c404
                         mov.s              ebx, eax                                       // 0x006dc8b1    8bd8
                         {disp32} mov       dword ptr [esi + 0x00000584], 0x00000001       // 0x006dc8b3    c7868405000001000000
                         xor.s              edi, edi                                       // 0x006dc8bd    33ff
                         {disp32} lea       ecx, dword ptr [esi + 0x00000494]              // 0x006dc8bf    8d8e94040000
_jmp_addr_0x006dc8c5:    cmp                dword ptr [ecx], 0x00                          // 0x006dc8c5    833900
                         {disp8} je         _jmp_addr_0x006dc8f9                           // 0x006dc8c8    742f
                         mov.s              eax, edi                                       // 0x006dc8ca    8bc7
                         and                eax, 0x80000003                                // 0x006dc8cc    2503000080
                         {disp8} jns        _jmp_addr_0x006dc8d8                           // 0x006dc8d1    7905
                         dec                eax                                            // 0x006dc8d3    48
                         or                 eax, -0x4                                      // 0x006dc8d4    83c8fc
                         inc                eax                                            // 0x006dc8d7    40
_jmp_addr_0x006dc8d8:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x006dc8d8    8b54241c
                         shl                eax, 1                                         // 0x006dc8dc    d1e0
                         cmp.s              eax, edx                                       // 0x006dc8de    3bc2
                         {disp8} jne        _jmp_addr_0x006dc8f9                           // 0x006dc8e0    7517
                         mov.s              eax, edi                                       // 0x006dc8e2    8bc7
                         cdq                                                               // 0x006dc8e4    99
                         and                edx, 0x03                                      // 0x006dc8e5    83e203
                         add.s              eax, edx                                       // 0x006dc8e8    03c2
                         sar                eax, 2                                         // 0x006dc8ea    c1f802
                         shl                eax, 1                                         // 0x006dc8ed    d1e0
                         cmp.s              eax, ebx                                       // 0x006dc8ef    3bc3
                         {disp8} jne        _jmp_addr_0x006dc8f9                           // 0x006dc8f1    7506
                         cmp                edi, dword ptr [esp + 0x10]                    // 0x006dc8f3    3b7c2410
                         {disp8} jne        _jmp_addr_0x006dc904                           // 0x006dc8f7    750b
_jmp_addr_0x006dc8f9:    inc                edi                                            // 0x006dc8f9    47
                         add                ecx, 0x4                                       // 0x006dc8fa    83c104
                         cmp                edi, 0x08                                      // 0x006dc8fd    83ff08
                         {disp8} jl         _jmp_addr_0x006dc8c5                           // 0x006dc900    7cc3
                         {disp8} jmp        _jmp_addr_0x006dc951                           // 0x006dc902    eb4d
_jmp_addr_0x006dc904:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x006dc904    8b4d00
                         {disp32} mov       edx, dword ptr [ecx + 0x000000bc]              // 0x006dc907    8b91bc000000
                         {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00000494]  // 0x006dc90d    8b8cbe94040000
                         push               edx                                            // 0x006dc914    52
                         call               _jmp_addr_0x006dc0f0                           // 0x006dc915    e8d6f7ffff
                         test               eax, eax                                       // 0x006dc91a    85c0
                         {disp8} je         _jmp_addr_0x006dc94a                           // 0x006dc91c    742c
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x006dc91e    8b4500
                         push               eax                                            // 0x006dc921    50
                         call               _jmp_addr_0x005e6540                           // 0x006dc922    e8199cf0ff
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                    // 0x006dc927    8b4d00
                         mov                edx, dword ptr [ecx]                           // 0x006dc92a    8b11
                         add                esp, 0x04                                      // 0x006dc92c    83c404
                         push               0x0                                            // 0x006dc92f    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dc931    ff520c
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000000             // 0x006dc934    c7450000000000
                         {disp32} mov       edi, dword ptr [esi + edi * 0x4 + 0x00000494]  // 0x006dc93b    8bbcbe94040000
                         sar                dword ptr [edi + 0xbc], 1                      // 0x006dc942    d1bfbc000000
                         {disp8} jmp        _jmp_addr_0x006dc951                           // 0x006dc948    eb07
_jmp_addr_0x006dc94a:    mov.s              ecx, esi                                       // 0x006dc94a    8bce
                         call               _jmp_addr_0x006dbdd0                           // 0x006dc94c    e87ff4ffff
_jmp_addr_0x006dc951:    cmp                dword ptr [ebp + 0x00], 0x00                   // 0x006dc951    837d0000
                         {disp8} je         _jmp_addr_0x006dc963                           // 0x006dc955    740c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x006dc957    8b442410
                         push               eax                                            // 0x006dc95b    50
                         mov.s              ecx, esi                                       // 0x006dc95c    8bce
                         call               _jmp_addr_0x006dc140                           // 0x006dc95e    e8ddf7ffff
_jmp_addr_0x006dc963:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x006dc963    8b4c2410
                         inc                ecx                                            // 0x006dc967    41
                         add                ebp, 0x04                                      // 0x006dc968    83c504
                         cmp                ecx, 0x14                                      // 0x006dc96b    83f914
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x006dc96e    894c2410
                         {disp32} jl        _jmp_addr_0x006dc7e6                           // 0x006dc972    0f8c6efeffff
                         pop                edi                                            // 0x006dc978    5f
                         pop                esi                                            // 0x006dc979    5e
                         pop                ebp                                            // 0x006dc97a    5d
                         pop                ebx                                            // 0x006dc97b    5b
                         add                esp, 0x1c                                      // 0x006dc97c    83c41c
                         ret                                                               // 0x006dc97f    c3
_globl_ct_0x006dc980:    call               _jmp_addr_0x006dc990                           // 0x006dc980    e80b000000
                         {disp32} jmp       _jmp_addr_0x006dc9b0                           // 0x006dc985    e926000000
                         nop                                                               // 0x006dc98a    90
                         nop                                                               // 0x006dc98b    90
                         nop                                                               // 0x006dc98c    90
                         nop                                                               // 0x006dc98d    90
                         nop                                                               // 0x006dc98e    90
                         nop                                                               // 0x006dc98f    90
_jmp_addr_0x006dc990:    mov                eax, 0x00d4eed0                                // 0x006dc990    b8d0eed400
                         mov                ecx, 0x00000002                                // 0x006dc995    b902000000
                         xor.s              edx, edx                                       // 0x006dc99a    33d2
_jmp_addr_0x006dc99c:    mov                dword ptr [eax], edx                           // 0x006dc99c    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x006dc99e    895004
                         mov                dword ptr [eax], edx                           // 0x006dc9a1    8910
                         add                eax, 0x08                                      // 0x006dc9a3    83c008
                         dec                ecx                                            // 0x006dc9a6    49
                         {disp8} jne        _jmp_addr_0x006dc99c                           // 0x006dc9a7    75f3
                         ret                                                               // 0x006dc9a9    c3
                         nop                                                               // 0x006dc9aa    90
                         nop                                                               // 0x006dc9ab    90
                         nop                                                               // 0x006dc9ac    90
                         nop                                                               // 0x006dc9ad    90
                         nop                                                               // 0x006dc9ae    90
                         nop                                                               // 0x006dc9af    90
_jmp_addr_0x006dc9b0:    push               0x006dc9c0                                     // 0x006dc9b0    68c0c96d00
                         call               _atexit                                        // 0x006dc9b5    e8d78d0e00
                         pop                ecx                                            // 0x006dc9ba    59
                         ret                                                               // 0x006dc9bb    c3
                         nop                                                               // 0x006dc9bc    90
                         nop                                                               // 0x006dc9bd    90
                         nop                                                               // 0x006dc9be    90
                         nop                                                               // 0x006dc9bf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x388ec8]           // 0x006dc9c0    8a0dc8eed400
                         mov                al, 0x01                                       // 0x006dc9c6    b001
                         test               al, cl                                         // 0x006dc9c8    84c8
                         {disp8} jne        _jmp_addr_0x006dc9d4                           // 0x006dc9ca    7508
                         or.s               cl, al                                         // 0x006dc9cc    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x388ec8], cl           // 0x006dc9ce    880dc8eed400
_jmp_addr_0x006dc9d4:    ret                                                               // 0x006dc9d4    c3
                         nop                                                               // 0x006dc9d5    90
                         nop                                                               // 0x006dc9d6    90
                         nop                                                               // 0x006dc9d7    90
                         nop                                                               // 0x006dc9d8    90
                         nop                                                               // 0x006dc9d9    90
                         nop                                                               // 0x006dc9da    90
                         nop                                                               // 0x006dc9db    90
                         nop                                                               // 0x006dc9dc    90
                         nop                                                               // 0x006dc9dd    90
                         nop                                                               // 0x006dc9de    90
                         nop                                                               // 0x006dc9df    90
_jmp_addr_0x006dc9e0:    mov.s              eax, ecx                                       // 0x006dc9e0    8bc1
                         ret                                                               // 0x006dc9e2    c3
                         nop                                                               // 0x006dc9e3    90
                         nop                                                               // 0x006dc9e4    90
                         nop                                                               // 0x006dc9e5    90
                         nop                                                               // 0x006dc9e6    90
                         nop                                                               // 0x006dc9e7    90
                         nop                                                               // 0x006dc9e8    90
                         nop                                                               // 0x006dc9e9    90
                         nop                                                               // 0x006dc9ea    90
                         nop                                                               // 0x006dc9eb    90
                         nop                                                               // 0x006dc9ec    90
                         nop                                                               // 0x006dc9ed    90
                         nop                                                               // 0x006dc9ee    90
                         nop                                                               // 0x006dc9ef    90
_jmp_addr_0x006dc9f0:    push               ebx                                            // 0x006dc9f0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                    // 0x006dc9f1    8b5c2408
                         push               esi                                            // 0x006dc9f5    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x388ed0]         // 0x006dc9f6    8b35d0eed400
                         test               esi, esi                                       // 0x006dc9fc    85f6
                         push               edi                                            // 0x006dc9fe    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x006dc9ff    8b7c2414
                         {disp8} je         _jmp_addr_0x006dca29                           // 0x006dca03    7424
_jmp_addr_0x006dca05:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dca05    8b4e04
                         mov                eax, dword ptr [ecx]                           // 0x006dca08    8b01
                         call               dword ptr [eax + 0xb28]                        // 0x006dca0a    ff90280b0000
                         cmp.s              eax, ebx                                       // 0x006dca10    3bc3
                         {disp8} jne        _jmp_addr_0x006dca23                           // 0x006dca12    750f
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dca14    8b4e04
                         mov                edx, dword ptr [ecx]                           // 0x006dca17    8b11
                         call               dword ptr [edx + 0xb2c]                        // 0x006dca19    ff922c0b0000
                         cmp.s              eax, edi                                       // 0x006dca1f    3bc7
                         {disp8} je         _jmp_addr_0x006dca5d                           // 0x006dca21    743a
_jmp_addr_0x006dca23:    mov                esi, dword ptr [esi]                           // 0x006dca23    8b36
                         test               esi, esi                                       // 0x006dca25    85f6
                         {disp8} jne        _jmp_addr_0x006dca05                           // 0x006dca27    75dc
_jmp_addr_0x006dca29:    {disp32} mov       esi, dword ptr [data_bytes + 0x388ed8]         // 0x006dca29    8b35d8eed400
                         test               esi, esi                                       // 0x006dca2f    85f6
                         {disp8} je         _jmp_addr_0x006dca57                           // 0x006dca31    7424
_jmp_addr_0x006dca33:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dca33    8b4e04
                         mov                eax, dword ptr [ecx]                           // 0x006dca36    8b01
                         call               dword ptr [eax + 0xb28]                        // 0x006dca38    ff90280b0000
                         cmp.s              eax, ebx                                       // 0x006dca3e    3bc3
                         {disp8} jne        _jmp_addr_0x006dca51                           // 0x006dca40    750f
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dca42    8b4e04
                         mov                edx, dword ptr [ecx]                           // 0x006dca45    8b11
                         call               dword ptr [edx + 0xb2c]                        // 0x006dca47    ff922c0b0000
                         cmp.s              eax, edi                                       // 0x006dca4d    3bc7
                         {disp8} je         _jmp_addr_0x006dca5d                           // 0x006dca4f    740c
_jmp_addr_0x006dca51:    mov                esi, dword ptr [esi]                           // 0x006dca51    8b36
                         test               esi, esi                                       // 0x006dca53    85f6
                         {disp8} jne        _jmp_addr_0x006dca33                           // 0x006dca55    75dc
_jmp_addr_0x006dca57:    pop                edi                                            // 0x006dca57    5f
                         pop                esi                                            // 0x006dca58    5e
                         xor.s              eax, eax                                       // 0x006dca59    33c0
                         pop                ebx                                            // 0x006dca5b    5b
                         ret                                                               // 0x006dca5c    c3
_jmp_addr_0x006dca5d:    {disp8} mov        eax, dword ptr [esi + 0x04]                    // 0x006dca5d    8b4604
                         pop                edi                                            // 0x006dca60    5f
                         pop                esi                                            // 0x006dca61    5e
                         pop                ebx                                            // 0x006dca62    5b
                         ret                                                               // 0x006dca63    c3
                         nop                                                               // 0x006dca64    90
                         nop                                                               // 0x006dca65    90
                         nop                                                               // 0x006dca66    90
                         nop                                                               // 0x006dca67    90
                         nop                                                               // 0x006dca68    90
                         nop                                                               // 0x006dca69    90
                         nop                                                               // 0x006dca6a    90
                         nop                                                               // 0x006dca6b    90
                         nop                                                               // 0x006dca6c    90
                         nop                                                               // 0x006dca6d    90
                         nop                                                               // 0x006dca6e    90
                         nop                                                               // 0x006dca6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dca70    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dca74    8b9148010000
                         add.s              edx, eax                                       // 0x006dca7a    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dca7c    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dca82    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dca88    8b542408
                         add.s              eax, edx                                       // 0x006dca8c    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dca8e    89814c010000
                         ret                0x0008                                         // 0x006dca94    c20800
                         nop                                                               // 0x006dca97    90
                         nop                                                               // 0x006dca98    90
                         nop                                                               // 0x006dca99    90
                         nop                                                               // 0x006dca9a    90
                         nop                                                               // 0x006dca9b    90
                         nop                                                               // 0x006dca9c    90
                         nop                                                               // 0x006dca9d    90
                         nop                                                               // 0x006dca9e    90
                         nop                                                               // 0x006dca9f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dcaa0    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dcaa4    8b9148010000
                         add.s              edx, eax                                       // 0x006dcaaa    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dcaac    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dcab2    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dcab8    8b542408
                         add.s              eax, edx                                       // 0x006dcabc    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dcabe    89814c010000
                         ret                0x0008                                         // 0x006dcac4    c20800
                         nop                                                               // 0x006dcac7    90
                         nop                                                               // 0x006dcac8    90
                         nop                                                               // 0x006dcac9    90
                         nop                                                               // 0x006dcaca    90
                         nop                                                               // 0x006dcacb    90
                         nop                                                               // 0x006dcacc    90
                         nop                                                               // 0x006dcacd    90
                         nop                                                               // 0x006dcace    90
                         nop                                                               // 0x006dcacf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dcad0    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dcad4    8b9148010000
                         add.s              edx, eax                                       // 0x006dcada    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dcadc    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dcae2    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dcae8    8b542408
                         add.s              eax, edx                                       // 0x006dcaec    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dcaee    89814c010000
                         ret                0x0008                                         // 0x006dcaf4    c20800
                         nop                                                               // 0x006dcaf7    90
                         nop                                                               // 0x006dcaf8    90
                         nop                                                               // 0x006dcaf9    90
                         nop                                                               // 0x006dcafa    90
                         nop                                                               // 0x006dcafb    90
                         nop                                                               // 0x006dcafc    90
                         nop                                                               // 0x006dcafd    90
                         nop                                                               // 0x006dcafe    90
                         nop                                                               // 0x006dcaff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dcb00    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dcb04    8b9148010000
                         add.s              edx, eax                                       // 0x006dcb0a    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dcb0c    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dcb12    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dcb18    8b542408
                         add.s              eax, edx                                       // 0x006dcb1c    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dcb1e    89814c010000
                         ret                0x0008                                         // 0x006dcb24    c20800
                         nop                                                               // 0x006dcb27    90
                         nop                                                               // 0x006dcb28    90
                         nop                                                               // 0x006dcb29    90
                         nop                                                               // 0x006dcb2a    90
                         nop                                                               // 0x006dcb2b    90
                         nop                                                               // 0x006dcb2c    90
                         nop                                                               // 0x006dcb2d    90
                         nop                                                               // 0x006dcb2e    90
                         nop                                                               // 0x006dcb2f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dcb30    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dcb34    8b9148010000
                         add.s              edx, eax                                       // 0x006dcb3a    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dcb3c    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dcb42    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dcb48    8b542408
                         add.s              eax, edx                                       // 0x006dcb4c    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dcb4e    89814c010000
                         ret                0x0008                                         // 0x006dcb54    c20800
                         nop                                                               // 0x006dcb57    90
                         nop                                                               // 0x006dcb58    90
                         nop                                                               // 0x006dcb59    90
                         nop                                                               // 0x006dcb5a    90
                         nop                                                               // 0x006dcb5b    90
                         nop                                                               // 0x006dcb5c    90
                         nop                                                               // 0x006dcb5d    90
                         nop                                                               // 0x006dcb5e    90
                         nop                                                               // 0x006dcb5f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x006dcb60    8b442404
                         {disp32} mov       edx, dword ptr [ecx + 0x00000148]              // 0x006dcb64    8b9148010000
                         add.s              edx, eax                                       // 0x006dcb6a    03d0
                         {disp32} mov       eax, dword ptr [ecx + 0x0000014c]              // 0x006dcb6c    8b814c010000
                         {disp32} mov       dword ptr [ecx + 0x00000148], edx              // 0x006dcb72    899148010000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x006dcb78    8b542408
                         add.s              eax, edx                                       // 0x006dcb7c    03c2
                         {disp32} mov       dword ptr [ecx + 0x0000014c], eax              // 0x006dcb7e    89814c010000
                         ret                0x0008                                         // 0x006dcb84    c20800
                         nop                                                               // 0x006dcb87    90
                         nop                                                               // 0x006dcb88    90
                         nop                                                               // 0x006dcb89    90
                         nop                                                               // 0x006dcb8a    90
                         nop                                                               // 0x006dcb8b    90
                         nop                                                               // 0x006dcb8c    90
                         nop                                                               // 0x006dcb8d    90
                         nop                                                               // 0x006dcb8e    90
                         nop                                                               // 0x006dcb8f    90
_jmp_addr_0x006dcb90:    {disp32} mov       eax, dword ptr [data_bytes + 0x388f10]         // 0x006dcb90    a110efd400
                         sub                esp, 0x10                                      // 0x006dcb95    83ec10
                         test               eax, eax                                       // 0x006dcb98    85c0
                         push               ebx                                            // 0x006dcb9a    53
                         push               ebp                                            // 0x006dcb9b    55
                         push               esi                                            // 0x006dcb9c    56
                         push               edi                                            // 0x006dcb9d    57
                         {disp32} je        _jmp_addr_0x006dcfad                           // 0x006dcb9e    0f8409040000
                         {disp8} mov        edi, dword ptr [esp + 0x24]                    // 0x006dcba4    8b7c2424
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x388f08]         // 0x006dcba8    8b0d08efd400
                         mov                esi, dword ptr [edi]                           // 0x006dcbae    8b37
                         push               0x0                                            // 0x006dcbb0    6a00
                         push               0x0                                            // 0x006dcbb2    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                    // 0x006dcbb4    8d44241c
                         push               eax                                            // 0x006dcbb8    50
                         call               _jmp_addr_0x006d9290                           // 0x006dcbb9    e8d2c6ffff
                         mov                ebx, dword ptr [eax]                           // 0x006dcbbe    8b18
                         {disp8} mov        edi, dword ptr [edi + 0x04]                    // 0x006dcbc0    8b7f04
                         push               0x0                                            // 0x006dcbc3    6a00
                         push               0x0                                            // 0x006dcbc5    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x006dcbc7    8d4c241c
                         push               ecx                                            // 0x006dcbcb    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x388f08]         // 0x006dcbcc    8b0d08efd400
                         call               _jmp_addr_0x006d9290                           // 0x006dcbd2    e8b9c6ffff
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                    // 0x006dcbd7    8b6804
                         {disp32} mov       eax, dword ptr [data_bytes + 0x388f08]         // 0x006dcbda    a108efd400
                         sub.s              esi, ebx                                       // 0x006dcbdf    2bf3
                         {disp8} mov        dword ptr [esp + 0x24], esi                    // 0x006dcbe1    89742424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x006dcbe5    db442424
                         sub.s              edi, ebp                                       // 0x006dcbe9    2bfd
                         {disp8} mov        dword ptr [esp + 0x24], edi                    // 0x006dcbeb    897c2424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x006dcbef    db442424
                         {disp32} fild      dword ptr [eax + 0x00000390]                   // 0x006dcbf3    db8090030000
                         {disp32} fild      dword ptr [eax + 0x00000394]                   // 0x006dcbf9    db8094030000
                         {disp32} fld       dword ptr [eax + 0x00000388]                   // 0x006dcbff    d98088030000
                         fld                st(0)                                          // 0x006dcc05    d9c0
                         fmulp              st(1), st                                      // 0x006dcc07    dec9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x91ae4]              // 0x006dcc09    d80de4aa9300
                         fld                st(2)                                          // 0x006dcc0f    d9c2
                         fmul               st, st(5)                                      // 0x006dcc11    d8cd
                         fld                st(2)                                          // 0x006dcc13    d9c2
                         fmul               st, st(5)                                      // 0x006dcc15    d8cd
                         fsubp              st(1), st                                      // 0x006dcc17    dee9
                         fdiv               st, st(1)                                      // 0x006dcc19    d8f1
                         call               _jmp_addr_0x007a1400                           // 0x006dcc1b    e8e0470c00
                         fxch               st(1)                                          // 0x006dcc20    d9c9
                         fmul               st, st(4)                                      // 0x006dcc22    d8cc
                         cdq                                                               // 0x006dcc24    99
                         fxch               st(2)                                          // 0x006dcc25    d9ca
                         sub.s              eax, edx                                       // 0x006dcc27    2bc2
                         fmul               st, st(3)                                      // 0x006dcc29    d8cb
                         mov.s              ebx, eax                                       // 0x006dcc2b    8bd8
                         sar                ebx, 1                                         // 0x006dcc2d    d1fb
                         faddp              st(2), st                                      // 0x006dcc2f    dec2
                         fxch               st(1)                                          // 0x006dcc31    d9c9
                         fdiv               st, st(1)                                      // 0x006dcc33    d8f1
                         call               _jmp_addr_0x007a1400                           // 0x006dcc35    e8c6470c00
                         fstp               st(0)                                          // 0x006dcc3a    ddd8
                         {disp32} mov       esi, dword ptr [data_bytes + 0x388ed0]         // 0x006dcc3c    8b35d0eed400
                         fstp               st(0)                                          // 0x006dcc42    ddd8
                         cdq                                                               // 0x006dcc44    99
                         fstp               st(0)                                          // 0x006dcc45    ddd8
                         sub.s              eax, edx                                       // 0x006dcc47    2bc2
                         mov.s              ebp, eax                                       // 0x006dcc49    8be8
                         xor.s              edi, edi                                       // 0x006dcc4b    33ff
                         sar                ebp, 1                                         // 0x006dcc4d    d1fd
                         cmp.s              esi, edi                                       // 0x006dcc4f    3bf7
                         {disp8} je         _jmp_addr_0x006dcc84                           // 0x006dcc51    7431
_jmp_addr_0x006dcc53:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dcc53    8b4e04
                         mov                edx, dword ptr [ecx]                           // 0x006dcc56    8b11
                         call               dword ptr [edx + 0xb28]                        // 0x006dcc58    ff92280b0000
                         cmp.s              eax, ebx                                       // 0x006dcc5e    3bc3
                         {disp8} jne        _jmp_addr_0x006dcc71                           // 0x006dcc60    750f
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dcc62    8b4e04
                         mov                eax, dword ptr [ecx]                           // 0x006dcc65    8b01
                         call               dword ptr [eax + 0xb2c]                        // 0x006dcc67    ff902c0b0000
                         cmp.s              eax, ebp                                       // 0x006dcc6d    3bc5
                         {disp8} je         _jmp_addr_0x006dcc79                           // 0x006dcc6f    7408
_jmp_addr_0x006dcc71:    mov                esi, dword ptr [esi]                           // 0x006dcc71    8b36
                         cmp.s              esi, edi                                       // 0x006dcc73    3bf7
                         {disp8} jne        _jmp_addr_0x006dcc53                           // 0x006dcc75    75dc
                         {disp8} jmp        _jmp_addr_0x006dcc84                           // 0x006dcc77    eb0b
_jmp_addr_0x006dcc79:    {disp8} mov        esi, dword ptr [esi + 0x04]                    // 0x006dcc79    8b7604
                         cmp.s              esi, edi                                       // 0x006dcc7c    3bf7
                         {disp32} jne       _jmp_addr_0x006dcdc3                           // 0x006dcc7e    0f853f010000
_jmp_addr_0x006dcc84:    {disp32} mov       esi, dword ptr [data_bytes + 0x388ed8]         // 0x006dcc84    8b35d8eed400
                         cmp.s              esi, edi                                       // 0x006dcc8a    3bf7
                         {disp8} je         _jmp_addr_0x006dccb6                           // 0x006dcc8c    7428
_jmp_addr_0x006dcc8e:    {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dcc8e    8b4e04
                         mov                edx, dword ptr [ecx]                           // 0x006dcc91    8b11
                         call               dword ptr [edx + 0xb28]                        // 0x006dcc93    ff92280b0000
                         cmp.s              eax, ebx                                       // 0x006dcc99    3bc3
                         {disp8} jne        _jmp_addr_0x006dccb0                           // 0x006dcc9b    7513
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                    // 0x006dcc9d    8b4e04
                         mov                eax, dword ptr [ecx]                           // 0x006dcca0    8b01
                         call               dword ptr [eax + 0xb2c]                        // 0x006dcca2    ff902c0b0000
                         cmp.s              eax, ebp                                       // 0x006dcca8    3bc5
                         {disp32} je        _jmp_addr_0x006dcdb8                           // 0x006dccaa    0f8408010000
_jmp_addr_0x006dccb0:    mov                esi, dword ptr [esi]                           // 0x006dccb0    8b36
                         cmp.s              esi, edi                                       // 0x006dccb2    3bf7
                         {disp8} jne        _jmp_addr_0x006dcc8e                           // 0x006dccb4    75d8
_jmp_addr_0x006dccb6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x388f0c]         // 0x006dccb6    8b0d0cefd400
_jmp_addr_0x006dccbc:    cmp                dword ptr [data_bytes + 0x388f04], edi         // 0x006dccbc    393d04efd400
                         {disp32} je        _jmp_addr_0x006dcfad                           // 0x006dccc2    0f84e5020000
                         cmp.s              ecx, edi                                       // 0x006dccc8    3bcf
                         {disp8} je         _jmp_addr_0x006dccd8                           // 0x006dccca    740c
                         mov                eax, dword ptr [ecx]                           // 0x006dcccc    8b01
                         push               edi                                            // 0x006dccce    57
                         call               dword ptr [eax + 0xc]                          // 0x006dcccf    ff500c
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], edi         // 0x006dccd2    893d0cefd400
_jmp_addr_0x006dccd8:    {disp32} mov       esi, dword ptr [data_bytes + 0x388f04]         // 0x006dccd8    8b3504efd400
                         cmp.s              esi, edi                                       // 0x006dccde    3bf7
                         {disp32} je        _jmp_addr_0x006dcfa7                           // 0x006dcce0    0f84c1020000
                         mov                edx, dword ptr [esi]                           // 0x006dcce6    8b16
                         mov.s              ecx, esi                                       // 0x006dcce8    8bce
                         call               dword ptr [edx + 0xb28]                        // 0x006dccea    ff92280b0000
                         cmp.s              ebx, eax                                       // 0x006dccf0    3bd8
                         {disp8} jne        _jmp_addr_0x006dcd06                           // 0x006dccf2    7512
                         mov                eax, dword ptr [esi]                           // 0x006dccf4    8b06
                         mov.s              ecx, esi                                       // 0x006dccf6    8bce
                         call               dword ptr [eax + 0xb2c]                        // 0x006dccf8    ff902c0b0000
                         cmp.s              ebp, eax                                       // 0x006dccfe    3be8
                         {disp32} je        _jmp_addr_0x006dcfa7                           // 0x006dcd00    0f84a1020000
_jmp_addr_0x006dcd06:    mov                edx, dword ptr [esi]                           // 0x006dcd06    8b16
                         mov.s              ecx, esi                                       // 0x006dcd08    8bce
                         call               dword ptr [edx + 0xb38]                        // 0x006dcd0a    ff92380b0000
                         and                eax, 0x000000ff                                // 0x006dcd10    25ff000000
                         {disp32} mov       edi, dword ptr [eax * 0x8 + 0x00d4eed0]        // 0x006dcd15    8b3cc5d0eed400
                         test               edi, edi                                       // 0x006dcd1c    85ff
                         {disp32} lea       eax, dword ptr [eax * 0x8 + 0x00d4eed0]        // 0x006dcd1e    8d04c5d0eed400
                         {disp8} je         _jmp_addr_0x006dcd4f                           // 0x006dcd25    7428
_jmp_addr_0x006dcd27:    {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x006dcd27    8b4f04
                         mov                eax, dword ptr [ecx]                           // 0x006dcd2a    8b01
                         call               dword ptr [eax + 0xb28]                        // 0x006dcd2c    ff90280b0000
                         cmp.s              eax, ebx                                       // 0x006dcd32    3bc3
                         {disp8} jne        _jmp_addr_0x006dcd49                           // 0x006dcd34    7513
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x006dcd36    8b4f04
                         mov                edx, dword ptr [ecx]                           // 0x006dcd39    8b11
                         call               dword ptr [edx + 0xb2c]                        // 0x006dcd3b    ff922c0b0000
                         cmp.s              eax, ebp                                       // 0x006dcd41    3bc5
                         {disp32} je        _jmp_addr_0x006dce95                           // 0x006dcd43    0f844c010000
_jmp_addr_0x006dcd49:    mov                edi, dword ptr [edi]                           // 0x006dcd49    8b3f
                         test               edi, edi                                       // 0x006dcd4b    85ff
                         {disp8} jne        _jmp_addr_0x006dcd27                           // 0x006dcd4d    75d8
_jmp_addr_0x006dcd4f:    xor.s              eax, eax                                       // 0x006dcd4f    33c0
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x006dcd51    89442424
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x006dcd55    89442410
                         mov                eax, dword ptr [esi]                           // 0x006dcd59    8b06
                         mov.s              ecx, esi                                       // 0x006dcd5b    8bce
                         call               dword ptr [eax + 0xb38]                        // 0x006dcd5d    ff90380b0000
                         and                eax, 0x000000ff                                // 0x006dcd63    25ff000000
                         inc                eax                                            // 0x006dcd68    40
                         and                eax, 0x80000001                                // 0x006dcd69    2501000080
                         {disp8} jns        _jmp_addr_0x006dcd75                           // 0x006dcd6e    7905
                         dec                eax                                            // 0x006dcd70    48
                         or                 eax, -0x2                                      // 0x006dcd71    83c8fe
                         inc                eax                                            // 0x006dcd74    40
_jmp_addr_0x006dcd75:    {disp32} mov       edi, dword ptr [eax * 0x8 + 0x00d4eed0]        // 0x006dcd75    8b3cc5d0eed400
                         test               edi, edi                                       // 0x006dcd7c    85ff
                         {disp32} lea       eax, dword ptr [eax * 0x8 + 0x00d4eed0]        // 0x006dcd7e    8d04c5d0eed400
                         {disp32} je        _jmp_addr_0x006dce62                           // 0x006dcd85    0f84d7000000
_jmp_addr_0x006dcd8b:    {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x006dcd8b    8b4f04
                         mov                edx, dword ptr [ecx]                           // 0x006dcd8e    8b11
                         call               dword ptr [edx + 0xb28]                        // 0x006dcd90    ff92280b0000
                         cmp.s              eax, ebx                                       // 0x006dcd96    3bc3
                         {disp8} jne        _jmp_addr_0x006dcdad                           // 0x006dcd98    7513
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x006dcd9a    8b4f04
                         mov                eax, dword ptr [ecx]                           // 0x006dcd9d    8b01
                         call               dword ptr [eax + 0xb2c]                        // 0x006dcd9f    ff902c0b0000
                         cmp.s              eax, ebp                                       // 0x006dcda5    3bc5
                         {disp32} je        _jmp_addr_0x006dce3a                           // 0x006dcda7    0f848d000000
_jmp_addr_0x006dcdad:    mov                edi, dword ptr [edi]                           // 0x006dcdad    8b3f
                         test               edi, edi                                       // 0x006dcdaf    85ff
                         {disp8} jne        _jmp_addr_0x006dcd8b                           // 0x006dcdb1    75d8
                         {disp32} jmp       _jmp_addr_0x006dce62                           // 0x006dcdb3    e9aa000000
_jmp_addr_0x006dcdb8:    {disp8} mov        esi, dword ptr [esi + 0x04]                    // 0x006dcdb8    8b7604
                         cmp.s              esi, edi                                       // 0x006dcdbb    3bf7
                         {disp32} je        _jmp_addr_0x006dccb6                           // 0x006dcdbd    0f84f3feffff
_jmp_addr_0x006dcdc3:    mov                edx, dword ptr [esi]                           // 0x006dcdc3    8b16
                         mov.s              ecx, esi                                       // 0x006dcdc5    8bce
                         call               dword ptr [edx + 0x3c4]                        // 0x006dcdc7    ff92c4030000
                         test               eax, eax                                       // 0x006dcdcd    85c0
                         {disp32} je        _jmp_addr_0x006dccb6                           // 0x006dcdcf    0f84e1feffff
                         cmp                dword ptr [data_bytes + 0x388f04], edi         // 0x006dcdd5    393d04efd400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x388f0c]         // 0x006dcddb    8b0d0cefd400
                         {disp8} je         _jmp_addr_0x006dcdfe                           // 0x006dcde1    741b
                         cmp.s              ecx, edi                                       // 0x006dcde3    3bcf
                         {disp32} je        _jmp_addr_0x006dccbc                           // 0x006dcde5    0f84d1feffff
                         mov                eax, dword ptr [ecx]                           // 0x006dcdeb    8b01
                         push               edi                                            // 0x006dcded    57
                         call               dword ptr [eax + 0xc]                          // 0x006dcdee    ff500c
                         xor.s              ecx, ecx                                       // 0x006dcdf1    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], ecx         // 0x006dcdf3    890d0cefd400
                         {disp32} jmp       _jmp_addr_0x006dccbc                           // 0x006dcdf9    e9befeffff
_jmp_addr_0x006dcdfe:    cmp.s              ecx, edi                                       // 0x006dcdfe    3bcf
                         {disp8} je         _jmp_addr_0x006dce0e                           // 0x006dce00    740c
                         mov                edx, dword ptr [ecx]                           // 0x006dce02    8b11
                         push               edi                                            // 0x006dce04    57
                         call               dword ptr [edx + 0xc]                          // 0x006dce05    ff520c
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], edi         // 0x006dce08    893d0cefd400
_jmp_addr_0x006dce0e:    push               edi                                            // 0x006dce0e    57
                         push               0x3f800000                                     // 0x006dce0f    680000803f
                         {disp32} mov       dword ptr [data_bytes + 0x388f04], esi         // 0x006dce14    893504efd400
                         push               0xc                                            // 0x006dce1a    6a0c
                         add                esi, 0x14                                      // 0x006dce1c    83c614
                         push               esi                                            // 0x006dce1f    56
                         call               _jmp_addr_0x0063e540                           // 0x006dce20    e81b17f6ff
                         add                esp, 0x10                                      // 0x006dce25    83c410
                         pop                edi                                            // 0x006dce28    5f
                         pop                esi                                            // 0x006dce29    5e
                         pop                ebp                                            // 0x006dce2a    5d
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], eax         // 0x006dce2b    a30cefd400
                         mov                eax, 0x00000001                                // 0x006dce30    b801000000
                         pop                ebx                                            // 0x006dce35    5b
                         add                esp, 0x10                                      // 0x006dce36    83c410
                         ret                                                               // 0x006dce39    c3
_jmp_addr_0x006dce3a:    {disp32} mov       ecx, dword ptr [data_bytes + 0x388f0c]         // 0x006dce3a    8b0d0cefd400
                         test               ecx, ecx                                       // 0x006dce40    85c9
                         {disp8} je         _jmp_addr_0x006dce55                           // 0x006dce42    7411
                         mov                edx, dword ptr [ecx]                           // 0x006dce44    8b11
                         push               0x0                                            // 0x006dce46    6a00
                         call               dword ptr [edx + 0xc]                          // 0x006dce48    ff520c
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], 0x00000000  // 0x006dce4b    c7050cefd40000000000
_jmp_addr_0x006dce55:    {disp8} mov        edi, dword ptr [edi + 0x04]                    // 0x006dce55    8b7f04
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000001             // 0x006dce58    c744242401000000
                         {disp8} jmp        _jmp_addr_0x006dce66                           // 0x006dce60    eb04
_jmp_addr_0x006dce62:    {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x006dce62    8b7c2410
_jmp_addr_0x006dce66:    cmp                ebx, 0x07                                      // 0x006dce66    83fb07
                         {disp8} jg         _jmp_addr_0x006dce95                           // 0x006dce69    7f2a
                         cmp                ebp, 0x07                                      // 0x006dce6b    83fd07
                         {disp8} jg         _jmp_addr_0x006dce95                           // 0x006dce6e    7f25
                         cmp                dword ptr [esp + 0x24], 0x01                   // 0x006dce70    837c242401
                         {disp8} jne        _jmp_addr_0x006dce85                           // 0x006dce75    750e
                         mov                eax, dword ptr [esi]                           // 0x006dce77    8b06
                         push               ebp                                            // 0x006dce79    55
                         push               ebx                                            // 0x006dce7a    53
                         mov.s              ecx, esi                                       // 0x006dce7b    8bce
                         call               dword ptr [eax + 0xb20]                        // 0x006dce7d    ff90200b0000
                         {disp8} jmp        _jmp_addr_0x006dce91                           // 0x006dce83    eb0c
_jmp_addr_0x006dce85:    mov                edx, dword ptr [esi]                           // 0x006dce85    8b16
                         push               ebp                                            // 0x006dce87    55
                         push               ebx                                            // 0x006dce88    53
                         mov.s              ecx, esi                                       // 0x006dce89    8bce
                         call               dword ptr [edx + 0xb1c]                        // 0x006dce8b    ff921c0b0000
_jmp_addr_0x006dce91:    test               eax, eax                                       // 0x006dce91    85c0
                         {disp8} jne        _jmp_addr_0x006dceac                           // 0x006dce93    7517
_jmp_addr_0x006dce95:    pop                edi                                            // 0x006dce95    5f
                         pop                esi                                            // 0x006dce96    5e
                         pop                ebp                                            // 0x006dce97    5d
                         {disp32} mov       dword ptr [data_bytes + 0x388f04], 0x00000000  // 0x006dce98    c70504efd40000000000
                         mov                eax, 0x00000001                                // 0x006dcea2    b801000000
                         pop                ebx                                            // 0x006dcea7    5b
                         add                esp, 0x10                                      // 0x006dcea8    83c410
                         ret                                                               // 0x006dceab    c3
_jmp_addr_0x006dceac:    mov                eax, dword ptr [esi]                           // 0x006dceac    8b06
                         push               ebx                                            // 0x006dceae    53
                         mov.s              ecx, esi                                       // 0x006dceaf    8bce
                         call               dword ptr [eax + 0xb30]                        // 0x006dceb1    ff90300b0000
                         mov                edx, dword ptr [esi]                           // 0x006dceb7    8b16
                         push               ebp                                            // 0x006dceb9    55
                         mov.s              ecx, esi                                       // 0x006dceba    8bce
                         call               dword ptr [edx + 0xb34]                        // 0x006dcebc    ff92340b0000
                         mov                eax, dword ptr [esi]                           // 0x006dcec2    8b06
                         mov.s              ecx, esi                                       // 0x006dcec4    8bce
                         call               dword ptr [eax + 0xb2c]                        // 0x006dcec6    ff902c0b0000
                         mov                edx, dword ptr [esi]                           // 0x006dcecc    8b16
                         {disp8} lea        ecx, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dcece    8d4c0001
                         push               ecx                                            // 0x006dced2    51
                         mov.s              ecx, esi                                       // 0x006dced3    8bce
                         call               dword ptr [edx + 0xb28]                        // 0x006dced5    ff92280b0000
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dcedb    8d440001
                         push               eax                                            // 0x006dcedf    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x006dcee0    8d4c241c
                         push               ecx                                            // 0x006dcee4    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x388f08]         // 0x006dcee5    8b0d08efd400
                         call               _jmp_addr_0x006d9290                           // 0x006dceeb    e8a0c3ffff
                         mov                ecx, dword ptr [eax]                           // 0x006dcef0    8b08
                         {disp8} lea        edx, dword ptr [esi + 0x14]                    // 0x006dcef2    8d5614
                         mov                dword ptr [edx], ecx                           // 0x006dcef5    890a
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x006dcef7    8b4804
                         push               0x0                                            // 0x006dcefa    6a00
                         {disp8} mov        dword ptr [edx + 0x04], ecx                    // 0x006dcefc    894a04
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x006dceff    8b4008
                         push               0x3                                            // 0x006dcf02    6a03
                         push               0x3f800000                                     // 0x006dcf04    680000803f
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x006dcf09    894208
                         mov                edx, dword ptr [esi]                           // 0x006dcf0c    8b16
                         push               0xc                                            // 0x006dcf0e    6a0c
                         mov.s              ecx, esi                                       // 0x006dcf10    8bce
                         call               dword ptr [edx + 0xb2c]                        // 0x006dcf12    ff922c0b0000
                         mov                edx, dword ptr [esi]                           // 0x006dcf18    8b16
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dcf1a    8d440001
                         push               eax                                            // 0x006dcf1e    50
                         mov.s              ecx, esi                                       // 0x006dcf1f    8bce
                         call               dword ptr [edx + 0xb28]                        // 0x006dcf21    ff92280b0000
                         {disp8} lea        eax, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dcf27    8d440001
                         push               eax                                            // 0x006dcf2b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                    // 0x006dcf2c    8d4c242c
                         push               ecx                                            // 0x006dcf30    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x388f08]         // 0x006dcf31    8b0d08efd400
                         call               _jmp_addr_0x006d9290                           // 0x006dcf37    e854c3ffff
                         push               eax                                            // 0x006dcf3c    50
                         call               _jmp_addr_0x0063e580                           // 0x006dcf3d    e83e16f6ff
                         {disp32} mov       dword ptr [data_bytes + 0x388f0c], eax         // 0x006dcf42    a30cefd400
                         {disp8} mov        eax, dword ptr [esp + 0x38]                    // 0x006dcf47    8b442438
                         add                esp, 0x14                                      // 0x006dcf4b    83c414
                         test               eax, eax                                       // 0x006dcf4e    85c0
                         {disp8} je         _jmp_addr_0x006dcfa5                           // 0x006dcf50    7453
                         mov                edx, dword ptr [edi]                           // 0x006dcf52    8b17
                         push               0x0                                            // 0x006dcf54    6a00
                         mov.s              ecx, edi                                       // 0x006dcf56    8bcf
                         call               dword ptr [edx + 0xc]                          // 0x006dcf58    ff520c
                         mov                eax, dword ptr [edi]                           // 0x006dcf5b    8b07
                         mov.s              ecx, edi                                       // 0x006dcf5d    8bcf
                         call               dword ptr [eax + 0xb38]                        // 0x006dcf5f    ff90380b0000
                         xor.s              ebp, ebp                                       // 0x006dcf65    33ed
                         and                eax, 0x000000ff                                // 0x006dcf67    25ff000000
                         {disp32} lea       ebx, dword ptr [eax * 0x8 + 0x00d4eed0]        // 0x006dcf6c    8d1cc5d0eed400
                         mov                eax, dword ptr [ebx]                           // 0x006dcf73    8b03
                         test               eax, eax                                       // 0x006dcf75    85c0
                         {disp8} je         _jmp_addr_0x006dcfa5                           // 0x006dcf77    742c
_jmp_addr_0x006dcf79:    cmp                dword ptr [eax + 0x04], edi                    // 0x006dcf79    397804
                         mov                esi, dword ptr [eax]                           // 0x006dcf7c    8b30
                         {disp8} jne        _jmp_addr_0x006dcf9d                           // 0x006dcf7e    751d
                         cmp                eax, dword ptr [ebx]                           // 0x006dcf80    3b03
                         {disp8} jne        _jmp_addr_0x006dcf88                           // 0x006dcf82    7504
                         mov                dword ptr [ebx], esi                           // 0x006dcf84    8933
                         {disp8} jmp        _jmp_addr_0x006dcf8b                           // 0x006dcf86    eb03
_jmp_addr_0x006dcf88:    {disp8} mov        dword ptr [ebp + 0x00], esi                    // 0x006dcf88    897500
_jmp_addr_0x006dcf8b:    {disp8} mov        edx, dword ptr [ebx + 0x04]                    // 0x006dcf8b    8b5304
                         dec                edx                                            // 0x006dcf8e    4a
                         push               eax                                            // 0x006dcf8f    50
                         {disp8} mov        dword ptr [ebx + 0x04], edx                    // 0x006dcf90    895304
                         call               ??3@YAXPAX@Z                                   // 0x006dcf93    e8001f0d00
                         add                esp, 0x04                                      // 0x006dcf98    83c404
                         {disp8} jmp        _jmp_addr_0x006dcf9f                           // 0x006dcf9b    eb02
_jmp_addr_0x006dcf9d:    mov.s              ebp, eax                                       // 0x006dcf9d    8be8
_jmp_addr_0x006dcf9f:    test               esi, esi                                       // 0x006dcf9f    85f6
                         mov.s              eax, esi                                       // 0x006dcfa1    8bc6
                         {disp8} jne        _jmp_addr_0x006dcf79                           // 0x006dcfa3    75d4
_jmp_addr_0x006dcfa5:    xor.s              edi, edi                                       // 0x006dcfa5    33ff
_jmp_addr_0x006dcfa7:    {disp32} mov       dword ptr [data_bytes + 0x388f04], edi         // 0x006dcfa7    893d04efd400
_jmp_addr_0x006dcfad:    pop                edi                                            // 0x006dcfad    5f
                         pop                esi                                            // 0x006dcfae    5e
                         pop                ebp                                            // 0x006dcfaf    5d
                         mov                eax, 0x00000001                                // 0x006dcfb0    b801000000
                         pop                ebx                                            // 0x006dcfb5    5b
                         add                esp, 0x10                                      // 0x006dcfb6    83c410
                         ret                                                               // 0x006dcfb9    c3
                         nop                                                               // 0x006dcfba    90
                         nop                                                               // 0x006dcfbb    90
                         nop                                                               // 0x006dcfbc    90
                         nop                                                               // 0x006dcfbd    90
                         nop                                                               // 0x006dcfbe    90
                         nop                                                               // 0x006dcfbf    90
                         ret                                                               // 0x006dcfc0    c3
                         nop                                                               // 0x006dcfc1    90
                         nop                                                               // 0x006dcfc2    90
                         nop                                                               // 0x006dcfc3    90
                         nop                                                               // 0x006dcfc4    90
                         nop                                                               // 0x006dcfc5    90
                         nop                                                               // 0x006dcfc6    90
                         nop                                                               // 0x006dcfc7    90
                         nop                                                               // 0x006dcfc8    90
                         nop                                                               // 0x006dcfc9    90
                         nop                                                               // 0x006dcfca    90
                         nop                                                               // 0x006dcfcb    90
                         nop                                                               // 0x006dcfcc    90
                         nop                                                               // 0x006dcfcd    90
                         nop                                                               // 0x006dcfce    90
                         nop                                                               // 0x006dcfcf    90
_jmp_addr_0x006dcfd0:    sub                esp, 0x00000098                                // 0x006dcfd0    81ec98000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000a0]              // 0x006dcfd6    8b8424a0000000
                         push               ebx                                            // 0x006dcfdd    53
                         push               ebp                                            // 0x006dcfde    55
                         push               esi                                            // 0x006dcfdf    56
                         {disp8} lea        esi, dword ptr [eax + eax * 0x1 + 0x01]        // 0x006dcfe0    8d740001
                         movsx              eax, byte ptr [esp + 0x000000b4]               // 0x006dcfe4    0fbe8424b4000000
                         cmp                eax, 0x05                                      // 0x006dcfec    83f805
                         mov.s              ebp, ecx                                       // 0x006dcfef    8be9
                         {disp32} mov       ecx, dword ptr [esp + 0x000000b0]              // 0x006dcff1    8b8c24b0000000
                         push               edi                                            // 0x006dcff8    57
                         {disp8} lea        edi, dword ptr [ecx + ecx * 0x1 + 0x01]        // 0x006dcff9    8d7c0901
                         {disp8} mov        word ptr [esp + 0x14], 0x0200                  // 0x006dcffd    66c74424140002
                         {disp8} mov        word ptr [esp + 0x16], 0x0600                  // 0x006dd004    66c74424160006
                         {disp32} ja        _jmp_addr_0x006dd42c                           // 0x006dd00b    0f871b040000
                         jmp                dword ptr [eax*4 + 0x6dd43c]                   // 0x006dd011    ff24853cd46d00
                         push               0x00000e86                                     // 0x006dd018    68860e0000
                         push               0x00c09908                                     // 0x006dd01d    680899c000
                         push               0x00000154                                     // 0x006dd022    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd027    e8c496d5ff
                         mov.s              ebx, eax                                       // 0x006dd02c    8bd8
                         add                esp, 0x0c                                      // 0x006dd02e    83c40c
                         test               ebx, ebx                                       // 0x006dd031    85db
                         {disp8} je         _jmp_addr_0x006dd06d                           // 0x006dd033    7438
                         push               edi                                            // 0x006dd035    57
                         push               esi                                            // 0x006dd036    56
                         {disp32} lea       edx, dword ptr [esp + 0x00000080]              // 0x006dd037    8d942480000000
                         push               edx                                            // 0x006dd03e    52
                         mov.s              ecx, ebp                                       // 0x006dd03f    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd041    e84ac2ffff
                         push               0x14                                           // 0x006dd046    6a14
                         push               0x00c51350                                     // 0x006dd048    685013c500
                         push               eax                                            // 0x006dd04d    50
                         mov.s              ecx, ebx                                       // 0x006dd04e    8bcb
                         call               _jmp_addr_0x006dd4c0                           // 0x006dd050    e86b040000
                         push               0x40000000                                     // 0x006dd055    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd05a    8bcb
                         mov                dword ptr [ebx], 0x008f170c                    // 0x006dd05c    c7030c178f00
                         call               @SetScale__6ObjectFf@12                        // 0x006dd062    e899c1f5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd067    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd06f                           // 0x006dd06b    eb02
_jmp_addr_0x006dd06d:    xor.s              ebx, ebx                                       // 0x006dd06d    33db
_jmp_addr_0x006dd06f:    mov                edx, dword ptr [ebx]                           // 0x006dd06f    8b13
                         push               edi                                            // 0x006dd071    57
                         push               esi                                            // 0x006dd072    56
                         {disp8} lea        eax, dword ptr [esp + 0x38]                    // 0x006dd073    8d442438
                         push               eax                                            // 0x006dd077    50
                         mov.s              ecx, ebp                                       // 0x006dd078    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd07a    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd07e    e80dc2ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd083    8b542410
                         push               eax                                            // 0x006dd087    50
                         mov.s              ecx, ebx                                       // 0x006dd088    8bcb
                         call               dword ptr [edx + 0x658]                        // 0x006dd08a    ff9258060000
                         or                 byte ptr [ebx + 0x25], 0x40                    // 0x006dd090    804b2540
                         mov.s              eax, esi                                       // 0x006dd094    8bc6
                         movsx              esi, byte ptr [esp + 0x000000ac]               // 0x006dd096    0fbeb424ac000000
                         cdq                                                               // 0x006dd09e    99
                         sub.s              eax, edx                                       // 0x006dd09f    2bc2
                         sar                eax, 1                                         // 0x006dd0a1    d1f8
                         {disp32} mov       dword ptr [ebx + 0x00000148], eax              // 0x006dd0a3    898348010000
                         mov.s              eax, edi                                       // 0x006dd0a9    8bc7
                         cdq                                                               // 0x006dd0ab    99
                         sub.s              eax, edx                                       // 0x006dd0ac    2bc2
                         sar                eax, 1                                         // 0x006dd0ae    d1f8
                         {disp32} mov       dword ptr [ebx + 0x0000014c], eax              // 0x006dd0b0    89834c010000
                         xor.s              eax, eax                                       // 0x006dd0b6    33c0
                         {disp8} mov        ax, word ptr [esp + esi * 0x2 + 0x14]          // 0x006dd0b8    668b447414
                         {disp32} mov       dword ptr [ebx + 0x00000150], esi              // 0x006dd0bd    89b350010000
                         push               eax                                            // 0x006dd0c3    50
                         {disp32} jmp       _jmp_addr_0x006dd31a                           // 0x006dd0c4    e951020000
                         push               0x00000e90                                     // 0x006dd0c9    68900e0000
                         push               0x00c09908                                     // 0x006dd0ce    680899c000
                         push               0x00000154                                     // 0x006dd0d3    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd0d8    e81396d5ff
                         mov.s              ebx, eax                                       // 0x006dd0dd    8bd8
                         add                esp, 0x0c                                      // 0x006dd0df    83c40c
                         test               ebx, ebx                                       // 0x006dd0e2    85db
                         {disp8} je         _jmp_addr_0x006dd11e                           // 0x006dd0e4    7438
                         push               edi                                            // 0x006dd0e6    57
                         push               esi                                            // 0x006dd0e7    56
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]              // 0x006dd0e8    8d8c2498000000
                         push               ecx                                            // 0x006dd0ef    51
                         mov.s              ecx, ebp                                       // 0x006dd0f0    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd0f2    e899c1ffff
                         push               0x14                                           // 0x006dd0f7    6a14
                         push               0x00c51084                                     // 0x006dd0f9    688410c500
                         push               eax                                            // 0x006dd0fe    50
                         mov.s              ecx, ebx                                       // 0x006dd0ff    8bcb
                         call               _jmp_addr_0x006dd460                           // 0x006dd101    e85a030000
                         push               0x40000000                                     // 0x006dd106    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd10b    8bcb
                         mov                dword ptr [ebx], 0x008efeb4                    // 0x006dd10d    c703b4fe8e00
                         call               @SetScale__6ObjectFf@12                        // 0x006dd113    e8e8c0f5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd118    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd120                           // 0x006dd11c    eb02
_jmp_addr_0x006dd11e:    xor.s              ebx, ebx                                       // 0x006dd11e    33db
_jmp_addr_0x006dd120:    mov                edx, dword ptr [ebx]                           // 0x006dd120    8b13
                         push               edi                                            // 0x006dd122    57
                         push               esi                                            // 0x006dd123    56
                         {disp8} lea        eax, dword ptr [esp + 0x50]                    // 0x006dd124    8d442450
                         push               eax                                            // 0x006dd128    50
                         mov.s              ecx, ebp                                       // 0x006dd129    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd12b    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd12f    e85cc1ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd134    8b542410
                         push               eax                                            // 0x006dd138    50
                         mov.s              ecx, ebx                                       // 0x006dd139    8bcb
_jmp_addr_0x006dd13b:    call               dword ptr [edx + 0x658]                        // 0x006dd13b    ff9258060000
                         or                 byte ptr [ebx + 0x25], 0x40                    // 0x006dd141    804b2540
                         mov.s              eax, esi                                       // 0x006dd145    8bc6
                         movsx              esi, byte ptr [esp + 0x000000ac]               // 0x006dd147    0fbeb424ac000000
                         cdq                                                               // 0x006dd14f    99
                         sub.s              eax, edx                                       // 0x006dd150    2bc2
                         sar                eax, 1                                         // 0x006dd152    d1f8
                         {disp32} mov       dword ptr [ebx + 0x00000148], eax              // 0x006dd154    898348010000
                         mov.s              eax, edi                                       // 0x006dd15a    8bc7
                         cdq                                                               // 0x006dd15c    99
                         sub.s              eax, edx                                       // 0x006dd15d    2bc2
                         sar                eax, 1                                         // 0x006dd15f    d1f8
                         {disp32} mov       dword ptr [ebx + 0x0000014c], eax              // 0x006dd161    89834c010000
                         xor.s              eax, eax                                       // 0x006dd167    33c0
                         {disp8} mov        ax, word ptr [esp + esi * 0x2 + 0x14]          // 0x006dd169    668b447414
                         {disp32} mov       dword ptr [ebx + 0x00000150], esi              // 0x006dd16e    89b350010000
                         push               eax                                            // 0x006dd174    50
                         {disp32} jmp       _jmp_addr_0x006dd31a                           // 0x006dd175    e9a0010000
                         push               0x00000e9a                                     // 0x006dd17a    689a0e0000
                         push               0x00c09908                                     // 0x006dd17f    680899c000
                         push               0x00000154                                     // 0x006dd184    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd189    e86295d5ff
                         mov.s              ebx, eax                                       // 0x006dd18e    8bd8
                         add                esp, 0x0c                                      // 0x006dd190    83c40c
                         test               ebx, ebx                                       // 0x006dd193    85db
                         {disp8} je         _jmp_addr_0x006dd1cc                           // 0x006dd195    7435
                         push               edi                                            // 0x006dd197    57
                         push               esi                                            // 0x006dd198    56
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x006dd199    8d4c2420
                         push               ecx                                            // 0x006dd19d    51
                         mov.s              ecx, ebp                                       // 0x006dd19e    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd1a0    e8ebc0ffff
                         push               0x14                                           // 0x006dd1a5    6a14
                         push               0x00c4e95c                                     // 0x006dd1a7    685ce9c400
                         push               eax                                            // 0x006dd1ac    50
                         mov.s              ecx, ebx                                       // 0x006dd1ad    8bcb
                         call               _jmp_addr_0x006dd4f0                           // 0x006dd1af    e83c030000
                         push               0x40000000                                     // 0x006dd1b4    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd1b9    8bcb
                         mov                dword ptr [ebx], 0x0093cf90                    // 0x006dd1bb    c70390cf9300
                         call               @SetScale__6ObjectFf@12                        // 0x006dd1c1    e83ac0f5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd1c6    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd1ce                           // 0x006dd1ca    eb02
_jmp_addr_0x006dd1cc:    xor.s              ebx, ebx                                       // 0x006dd1cc    33db
_jmp_addr_0x006dd1ce:    mov                edx, dword ptr [ebx]                           // 0x006dd1ce    8b13
                         push               edi                                            // 0x006dd1d0    57
                         push               esi                                            // 0x006dd1d1    56
                         {disp8} lea        eax, dword ptr [esp + 0x68]                    // 0x006dd1d2    8d442468
                         push               eax                                            // 0x006dd1d6    50
                         mov.s              ecx, ebp                                       // 0x006dd1d7    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd1d9    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd1dd    e8aec0ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd1e2    8b542410
                         push               eax                                            // 0x006dd1e6    50
                         mov.s              ecx, ebx                                       // 0x006dd1e7    8bcb
                         {disp32} jmp       _jmp_addr_0x006dd13b                           // 0x006dd1e9    e94dffffff
                         push               0x00000ea4                                     // 0x006dd1ee    68a40e0000
                         push               0x00c09908                                     // 0x006dd1f3    680899c000
                         push               0x00000154                                     // 0x006dd1f8    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd1fd    e8ee94d5ff
                         mov.s              ebx, eax                                       // 0x006dd202    8bd8
                         add                esp, 0x0c                                      // 0x006dd204    83c40c
                         test               ebx, ebx                                       // 0x006dd207    85db
                         {disp8} je         _jmp_addr_0x006dd240                           // 0x006dd209    7435
                         push               edi                                            // 0x006dd20b    57
                         push               esi                                            // 0x006dd20c    56
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                    // 0x006dd20d    8d4c242c
                         push               ecx                                            // 0x006dd211    51
                         mov.s              ecx, ebp                                       // 0x006dd212    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd214    e877c0ffff
                         push               0x14                                           // 0x006dd219    6a14
                         push               0x00c4e690                                     // 0x006dd21b    6890e6c400
                         push               eax                                            // 0x006dd220    50
                         mov.s              ecx, ebx                                       // 0x006dd221    8bcb
                         call               _jmp_addr_0x0041d0b0                           // 0x006dd223    e888fed3ff
                         push               0x40000000                                     // 0x006dd228    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd22d    8bcb
                         mov                dword ptr [ebx], 0x0093c364                    // 0x006dd22f    c70364c39300
                         call               @SetScale__6ObjectFf@12                        // 0x006dd235    e8c6bff5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd23a    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd242                           // 0x006dd23e    eb02
_jmp_addr_0x006dd240:    xor.s              ebx, ebx                                       // 0x006dd240    33db
_jmp_addr_0x006dd242:    mov                edx, dword ptr [ebx]                           // 0x006dd242    8b13
                         push               edi                                            // 0x006dd244    57
                         push               esi                                            // 0x006dd245    56
                         {disp8} lea        eax, dword ptr [esp + 0x44]                    // 0x006dd246    8d442444
                         push               eax                                            // 0x006dd24a    50
                         mov.s              ecx, ebp                                       // 0x006dd24b    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd24d    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd251    e83ac0ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd256    8b542410
                         push               eax                                            // 0x006dd25a    50
                         mov.s              ecx, ebx                                       // 0x006dd25b    8bcb
                         {disp32} jmp       _jmp_addr_0x006dd13b                           // 0x006dd25d    e9d9feffff
                         push               0x00000eae                                     // 0x006dd262    68ae0e0000
                         push               0x00c09908                                     // 0x006dd267    680899c000
                         push               0x00000154                                     // 0x006dd26c    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd271    e87a94d5ff
                         mov.s              ebx, eax                                       // 0x006dd276    8bd8
                         add                esp, 0x0c                                      // 0x006dd278    83c40c
                         test               ebx, ebx                                       // 0x006dd27b    85db
                         {disp8} je         _jmp_addr_0x006dd2b4                           // 0x006dd27d    7435
                         push               edi                                            // 0x006dd27f    57
                         push               esi                                            // 0x006dd280    56
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                    // 0x006dd281    8d4c245c
                         push               ecx                                            // 0x006dd285    51
                         mov.s              ecx, ebp                                       // 0x006dd286    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd288    e803c0ffff
                         push               0x14                                           // 0x006dd28d    6a14
                         push               0x00c4e0f8                                     // 0x006dd28f    68f8e0c400
                         push               eax                                            // 0x006dd294    50
                         mov.s              ecx, ebx                                       // 0x006dd295    8bcb
                         call               _jmp_addr_0x0041d0b0                           // 0x006dd297    e814fed3ff
                         push               0x40000000                                     // 0x006dd29c    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd2a1    8bcb
                         mov                dword ptr [ebx], 0x0093b738                    // 0x006dd2a3    c70338b79300
                         call               @SetScale__6ObjectFf@12                        // 0x006dd2a9    e852bff5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd2ae    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd2b6                           // 0x006dd2b2    eb02
_jmp_addr_0x006dd2b4:    xor.s              ebx, ebx                                       // 0x006dd2b4    33db
_jmp_addr_0x006dd2b6:    mov                edx, dword ptr [ebx]                           // 0x006dd2b6    8b13
                         push               edi                                            // 0x006dd2b8    57
                         push               esi                                            // 0x006dd2b9    56
                         {disp8} lea        eax, dword ptr [esp + 0x74]                    // 0x006dd2ba    8d442474
                         push               eax                                            // 0x006dd2be    50
                         mov.s              ecx, ebp                                       // 0x006dd2bf    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd2c1    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd2c5    e8c6bfffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd2ca    8b542410
                         push               eax                                            // 0x006dd2ce    50
                         mov.s              ecx, ebx                                       // 0x006dd2cf    8bcb
                         call               dword ptr [edx + 0x658]                        // 0x006dd2d1    ff9258060000
                         or                 byte ptr [ebx + 0x25], 0x40                    // 0x006dd2d7    804b2540
                         mov.s              eax, esi                                       // 0x006dd2db    8bc6
                         movsx              esi, byte ptr [esp + 0x000000ac]               // 0x006dd2dd    0fbeb424ac000000
                         cdq                                                               // 0x006dd2e5    99
                         sub.s              eax, edx                                       // 0x006dd2e6    2bc2
                         sar                eax, 1                                         // 0x006dd2e8    d1f8
                         {disp32} mov       dword ptr [ebx + 0x00000148], eax              // 0x006dd2ea    898348010000
                         mov.s              eax, edi                                       // 0x006dd2f0    8bc7
                         cdq                                                               // 0x006dd2f2    99
                         sub.s              eax, edx                                       // 0x006dd2f3    2bc2
                         sar                eax, 1                                         // 0x006dd2f5    d1f8
                         {disp32} mov       dword ptr [ebx + 0x0000014c], eax              // 0x006dd2f7    89834c010000
                         mov                eax, dword ptr [ebx]                           // 0x006dd2fd    8b03
                         push               0x40000000                                     // 0x006dd2ff    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd304    8bcb
                         {disp32} mov       dword ptr [ebx + 0x00000150], esi              // 0x006dd306    89b350010000
                         call               dword ptr [eax + 0x124]                        // 0x006dd30c    ff9024010000
                         xor.s              ecx, ecx                                       // 0x006dd312    33c9
                         {disp8} mov        cx, word ptr [esp + esi * 0x2 + 0x14]          // 0x006dd314    668b4c7414
                         push               ecx                                            // 0x006dd319    51
_jmp_addr_0x006dd31a:    mov.s              ecx, ebx                                       // 0x006dd31a    8bcb
                         call               @SetGameAngle__13MobileWallHugFUs@10           // 0x006dd31c    e86f07f3ff
                         test               ebx, ebx                                       // 0x006dd321    85db
                         {disp32} je        _jmp_addr_0x006dd42c                           // 0x006dd323    0f8403010000
                         push               0x8                                            // 0x006dd329    6a08
                         call               ??2@YAPAXI@Z                                   // 0x006dd32b    e8be910e00
                         add                esp, 0x04                                      // 0x006dd330    83c404
                         test               eax, eax                                       // 0x006dd333    85c0
                         {disp32} je        _jmp_addr_0x006dd42c                           // 0x006dd335    0f84f1000000
                         {disp32} jmp       _jmp_addr_0x006dd408                           // 0x006dd33b    e9c8000000
                         push               0x00000eb9                                     // 0x006dd340    68b90e0000
                         push               0x00c09908                                     // 0x006dd345    680899c000
                         push               0x00000154                                     // 0x006dd34a    6854010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x006dd34f    e89c93d5ff
                         mov.s              ebx, eax                                       // 0x006dd354    8bd8
                         add                esp, 0x0c                                      // 0x006dd356    83c40c
                         test               ebx, ebx                                       // 0x006dd359    85db
                         {disp8} je         _jmp_addr_0x006dd395                           // 0x006dd35b    7438
                         push               edi                                            // 0x006dd35d    57
                         push               esi                                            // 0x006dd35e    56
                         {disp32} lea       edx, dword ptr [esp + 0x0000008c]              // 0x006dd35f    8d94248c000000
                         push               edx                                            // 0x006dd366    52
                         mov.s              ecx, ebp                                       // 0x006dd367    8bcd
                         call               _jmp_addr_0x006d9290                           // 0x006dd369    e822bfffff
                         push               0x14                                           // 0x006dd36e    6a14
                         push               0x00c4ec28                                     // 0x006dd370    6828ecc400
                         push               eax                                            // 0x006dd375    50
                         mov.s              ecx, ebx                                       // 0x006dd376    8bcb
                         call               _jmp_addr_0x0041d0b0                           // 0x006dd378    e833fdd3ff
                         push               0x40000000                                     // 0x006dd37d    6800000040
                         mov.s              ecx, ebx                                       // 0x006dd382    8bcb
                         mov                dword ptr [ebx], 0x0093ab0c                    // 0x006dd384    c7030cab9300
                         call               @SetScale__6ObjectFf@12                        // 0x006dd38a    e871bef5ff
                         or                 byte ptr [ebx + 0x25], 0x20                    // 0x006dd38f    804b2520
                         {disp8} jmp        _jmp_addr_0x006dd397                           // 0x006dd393    eb02
_jmp_addr_0x006dd395:    xor.s              ebx, ebx                                       // 0x006dd395    33db
_jmp_addr_0x006dd397:    mov                edx, dword ptr [ebx]                           // 0x006dd397    8b13
                         push               edi                                            // 0x006dd399    57
                         push               esi                                            // 0x006dd39a    56
                         {disp32} lea       eax, dword ptr [esp + 0x000000a4]              // 0x006dd39b    8d8424a4000000
                         push               eax                                            // 0x006dd3a2    50
                         mov.s              ecx, ebp                                       // 0x006dd3a3    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x006dd3a5    8954241c
                         call               _jmp_addr_0x006d9290                           // 0x006dd3a9    e8e2beffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x006dd3ae    8b542410
                         push               eax                                            // 0x006dd3b2    50
                         mov.s              ecx, ebx                                       // 0x006dd3b3    8bcb
                         call               dword ptr [edx + 0x658]                        // 0x006dd3b5    ff9258060000
                         or                 byte ptr [ebx + 0x25], 0x40                    // 0x006dd3bb    804b2540
                         mov.s              eax, esi                                       // 0x006dd3bf    8bc6
                         movsx              esi, byte ptr [esp + 0x000000ac]               // 0x006dd3c1    0fbeb424ac000000
                         cdq                                                               // 0x006dd3c9    99
                         sub.s              eax, edx                                       // 0x006dd3ca    2bc2
                         sar                eax, 1                                         // 0x006dd3cc    d1f8
                         {disp32} mov       dword ptr [ebx + 0x00000148], eax              // 0x006dd3ce    898348010000
                         mov.s              eax, edi                                       // 0x006dd3d4    8bc7
                         cdq                                                               // 0x006dd3d6    99
                         sub.s              eax, edx                                       // 0x006dd3d7    2bc2
                         sar                eax, 1                                         // 0x006dd3d9    d1f8
                         {disp32} mov       dword ptr [ebx + 0x0000014c], eax              // 0x006dd3db    89834c010000
                         xor.s              eax, eax                                       // 0x006dd3e1    33c0
                         {disp8} mov        ax, word ptr [esp + esi * 0x2 + 0x14]          // 0x006dd3e3    668b447414
                         mov.s              ecx, ebx                                       // 0x006dd3e8    8bcb
                         {disp32} mov       dword ptr [ebx + 0x00000150], esi              // 0x006dd3ea    89b350010000
                         push               eax                                            // 0x006dd3f0    50
                         call               @SetGameAngle__13MobileWallHugFUs@10           // 0x006dd3f1    e89a06f3ff
                         test               ebx, ebx                                       // 0x006dd3f6    85db
                         {disp8} je         _jmp_addr_0x006dd42c                           // 0x006dd3f8    7432
                         push               0x8                                            // 0x006dd3fa    6a08
                         call               ??2@YAPAXI@Z                                   // 0x006dd3fc    e8ed900e00
                         add                esp, 0x04                                      // 0x006dd401    83c404
                         test               eax, eax                                       // 0x006dd404    85c0
                         {disp8} je         _jmp_addr_0x006dd42c                           // 0x006dd406    7424
_jmp_addr_0x006dd408:    {disp32} mov       ecx, dword ptr [esi * 0x8 + 0x00d4eed0]        // 0x006dd408    8b0cf5d0eed400
                         {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x006dd40f    895804
                         mov                dword ptr [eax], ecx                           // 0x006dd412    8908
                         {disp32} mov       dword ptr [esi * 0x8 + 0x00d4eed0], eax        // 0x006dd414    8904f5d0eed400
                         {disp32} mov       ecx, dword ptr [esi * 0x8 + 0x00d4eed4]        // 0x006dd41b    8b0cf5d4eed400
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00d4eed4]        // 0x006dd422    8d04f5d4eed400
                         inc                ecx                                            // 0x006dd429    41
                         mov                dword ptr [eax], ecx                           // 0x006dd42a    8908
_jmp_addr_0x006dd42c:    pop                edi                                            // 0x006dd42c    5f
                         pop                esi                                            // 0x006dd42d    5e
                         pop                ebp                                            // 0x006dd42e    5d
                         pop                ebx                                            // 0x006dd42f    5b
                         add                esp, 0x00000098                                // 0x006dd430    81c498000000
                         ret                0x0010                                         // 0x006dd436    c21000

// Snippet: db, [0x006dd439, 0x006dd43c)
.byte 0x8d, 0x49, 0x00            // 0x006dd439

// Snippet: jmptbl, [0x006dd43c, 0x006dd454)
.byte 0x18, 0xd0, 0x6d, 0x00      // 0x006dd43c
.byte 0xc9, 0xd0, 0x6d, 0x00      // 0x006dd440
.byte 0x7a, 0xd1, 0x6d, 0x00      // 0x006dd444
.byte 0xee, 0xd1, 0x6d, 0x00      // 0x006dd448
.byte 0x62, 0xd2, 0x6d, 0x00      // 0x006dd44c
.byte 0x40, 0xd3, 0x6d, 0x00      // 0x006dd450

// Snippet: db, [0x006dd454, 0x006dd460)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd454
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd458
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd45c

