.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00405fa0
.extern _jmp_addr_0x00405fb0
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern _jmp_addr_0x0048f820
.extern _jmp_addr_0x004ea900
.extern _jmp_addr_0x0052fb50
.extern _GetTribe__5GGameF10TRIBE_TYPE@4
.extern @IsMultiplayerGame__5GGameCFv@4
.extern @MyInterface__5GGameFv@4
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x0056fef0
.extern @ToBeDeleted__6LivingFi@12
.extern @SetState__12LivingActionFUlUc@16
.extern _jmp_addr_0x005eccb0
.extern @SetAge__6LivingFUl@12
.extern _jmp_addr_0x005ef9c0
.extern @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13
.extern @SetTopState__6LivingFUc@12
.extern @SetCurrentAndDestinationState__6LivingFUcUc@16
.extern @SetState__6LivingFUlUc@16
.extern _jmp_addr_0x005fc4b0
.extern _jmp_addr_0x005fc4f0
.extern _jmp_addr_0x00602880
.extern @__pl__9MapCoordsCFRC9MapCoords@16
.extern _jmp_addr_0x006055c0
.extern _jmp_addr_0x0060a9f0
.extern @SetGameAngle__13MobileWallHugFUs@10
.extern ?IncreaseLife@Object@@UAEXM@Z
.extern _jmp_addr_0x0063e540
.extern _jmp_addr_0x0066c9d0
.extern _GameRand__5GRandFl
.extern _GameFloatRand__5GRandFf
.extern _CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri
.extern _jmp_addr_0x00715130
.extern _jmp_addr_0x00719610
.extern _jmp_addr_0x0071ed40
.extern @GetStoragePit__4TownFv@4
.extern _jmp_addr_0x0073bab0
.extern _jmp_addr_0x0073d7d0
.extern @RemoveVillager__4TownFP8Villager@12
.extern _jmp_addr_0x0073e4b0
.extern _jmp_addr_0x00747150
.extern @IsInStateOfEmergency__4TownFv@4
.extern _Get3DAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords
.extern _GetPosFromAngle__6GUtilsFff
.extern _jmp_addr_0x0074dc30
.extern _jmp_addr_0x0074dce0
.extern _jmp_addr_0x0074ecc0
.extern _jmp_addr_0x0074fb80
.extern @DeleteDependancys__8VillagerFv@4
.extern _jmp_addr_0x00750670
.extern _jmp_addr_0x007506c0
.extern @SetSpeed__8VillagerFli@16
.extern _jmp_addr_0x007513f0
.extern @GetChillOutPos__8VillagerFR9MapCoords@12
.extern _jmp_addr_0x00756530
.extern _jmp_addr_0x00761090
.extern _jmp_addr_0x00761400
.extern _jmp_addr_0x007621a0
.extern _jmp_addr_0x00763800
.extern _jmp_addr_0x0076a8d0
.extern @SetupPauseForASecond__8VillagerF15VILLAGER_STATES@12
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007c57d2
.extern _jmp_addr_0x007c5a19
.extern _jmp_addr_0x007c6ce0
.extern _fprintf__10LHFilePath
.extern _jmp_addr_0x007da710
.extern ___nw__FUl
.extern @GetAltitude__10LH3DIslandFRC13LH3DMapCoords@4
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x00833a00

.globl _GetInfoFromText__13GVillagerInfoFPc
.globl _jmp_addr_0x00751d20
.globl _jmp_addr_0x00751e50
.globl _jmp_addr_0x00751ea0
.globl _jmp_addr_0x00751ee0
.globl _jmp_addr_0x00751f10
.globl @GetVillagerAvailableState__8VillagerFv@4
.globl _jmp_addr_0x00751fa0
.globl _jmp_addr_0x00751fd0
.globl @CanPauseForASecond__8VillagerFUc@12
.globl @GetAbode__8VillagerFv@4
.globl @ToBeDeleted__8VillagerFi@12
.globl @CallState__8VillagerFv@4
.globl @IsPregnant__8VillagerFv@4
.globl _jmp_addr_0x00752240
.globl @IsVillagerAvailable__8VillagerFv@4
.globl _jmp_addr_0x007522c0
.globl _jmp_addr_0x007524d0
.globl _jmp_addr_0x007525b0
.globl @IsHungry__8VillagerFv@4
.globl _jmp_addr_0x00752620
.globl _Find__13GVillagerInfoF10TRIBE_TYPE15VILLAGER_NUMBER
.globl _jmp_addr_0x00752690
.globl _jmp_addr_0x00752760
.globl _jmp_addr_0x00752820
.globl _jmp_addr_0x00752860
.globl @SetAge__8VillagerFUl@12
.globl _jmp_addr_0x00752a90
.globl _jmp_addr_0x00752b80
.globl _jmp_addr_0x00753140
.globl _jmp_addr_0x007531a0
.globl _jmp_addr_0x007531d0
.globl _jmp_addr_0x00753340
.globl _jmp_addr_0x00753390
.globl @ProcessFoodSpeedup__8VillagerFv@4
.globl _jmp_addr_0x00753470
.globl @AdjustTownModifier__8VillagerF15VILLAGER_STATESi@16
.globl @SetState__8VillagerFUlUc@16
.globl _jmp_addr_0x00753760
.globl @SetupNothingToDo__8VillagerFv@4
.globl _CallEntryStateFunction__8VillagerFUcUc
.globl _SetState__8VillagerFUlUc
.globl _CallEntryStateFunction__8VillagerFUc
.globl _GetFinalState__8VillagerCFv
.globl _SetAge__8VillagerFUl
.globl _SetCurrentAndDestinationState__8VillagerFUcUc
.globl _ToBeDeleted__8VillagerFi
.globl _SetTopState__8VillagerFUc

start_0x00751970_0x00753c70:
// Snippet: asm, [0x00751970, 0x00753c57)
                         xor.s              eax, eax                                      // 0x00751970    33c0
                         ret                                                              // 0x00751972    c3
                         nop                                                              // 0x00751973    90
                         nop                                                              // 0x00751974    90
                         nop                                                              // 0x00751975    90
                         nop                                                              // 0x00751976    90
                         nop                                                              // 0x00751977    90
                         nop                                                              // 0x00751978    90
                         nop                                                              // 0x00751979    90
                         nop                                                              // 0x0075197a    90
                         nop                                                              // 0x0075197b    90
                         nop                                                              // 0x0075197c    90
                         nop                                                              // 0x0075197d    90
                         nop                                                              // 0x0075197e    90
                         nop                                                              // 0x0075197f    90
                         sub                esp, 0x0c                                     // 0x00751980    83ec0c
                         xor.s              eax, eax                                      // 0x00751983    33c0
                         push               esi                                           // 0x00751985    56
                         mov.s              esi, ecx                                      // 0x00751986    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00751988    89442404
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0075198c    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00751990    8944240c
                         mov                eax, dword ptr [esi]                          // 0x00751994    8b06
                         call               dword ptr [eax + 0x978]                       // 0x00751996    ff9078090000
                         test               eax, eax                                      // 0x0075199c    85c0
                         {disp8} je         _jmp_addr_0x007519d6                          // 0x0075199e    7436
                         {disp32} mov       edx, dword ptr [esi + 0x000000d8]             // 0x007519a0    8b96d8000000
                         {disp8} mov        eax, dword ptr [edx + 0x14]                   // 0x007519a6    8b4214
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x007519a9    8d4c2404
                         push               ecx                                           // 0x007519ad    51
                         add                eax, 0x14                                     // 0x007519ae    83c014
                         push               eax                                           // 0x007519b1    50
                         mov.s              ecx, esi                                      // 0x007519b2    8bce
                         call               _jmp_addr_0x005ef9c0                          // 0x007519b4    e807e0e9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007519b9    8b4c2414
                         push               ecx                                           // 0x007519bd    51
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007519be    8d542408
                         push               edx                                           // 0x007519c2    52
                         mov.s              ecx, esi                                      // 0x007519c3    8bce
                         call               _jmp_addr_0x00763800                          // 0x007519c5    e8361e0100
                         mov                eax, 0x00000001                               // 0x007519ca    b801000000
                         pop                esi                                           // 0x007519cf    5e
                         add                esp, 0x0c                                     // 0x007519d0    83c40c
                         ret                0x0004                                        // 0x007519d3    c20400
_jmp_addr_0x007519d6:    xor.s              eax, eax                                      // 0x007519d6    33c0
                         pop                esi                                           // 0x007519d8    5e
                         add                esp, 0x0c                                     // 0x007519d9    83c40c
                         ret                0x0004                                        // 0x007519dc    c20400
                         nop                                                              // 0x007519df    90
_GetInfoFromText__13GVillagerInfoFPc:    sub                esp, 0x08                                     // 0x007519e0    83ec08
                         push               ebx                                           // 0x007519e3    53
                         push               ebp                                           // 0x007519e4    55
                         push               esi                                           // 0x007519e5    56
                         push               edi                                           // 0x007519e6    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x007519e7    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00da6be8            // 0x007519ef    c7442410e86bda00
                         mov                ebp, 0x00da57b8                               // 0x007519f7    bdb857da00
_jmp_addr_0x007519fc:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x007519fc    8b4500
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00c22fdc]       // 0x007519ff    8b1485dc2fc200
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00751a06    8b5c241c
                         or                 ecx, 0xffffffff                               // 0x00751a0a    83c9ff
                         xor.s              eax, eax                                      // 0x00751a0d    33c0
                         mov.s              edi, edx                                      // 0x00751a0f    8bfa
                         repne scasb                                                      // 0x00751a11    f2ae
                         not                ecx                                           // 0x00751a13    f7d1
                         dec                ecx                                           // 0x00751a15    49
                         mov.s              edi, ecx                                      // 0x00751a16    8bf9
                         push               edi                                           // 0x00751a18    57
                         push               edx                                           // 0x00751a19    52
                         push               ebx                                           // 0x00751a1a    53
                         call               _jmp_addr_0x007da710                          // 0x00751a1b    e8f08c0800
                         add                esp, 0x0c                                     // 0x00751a20    83c40c
                         test               eax, eax                                      // 0x00751a23    85c0
                         {disp8} jne        _jmp_addr_0x00751a58                          // 0x00751a25    7531
                         cmp                byte ptr [edi + ebx * 0x1], 0x5f              // 0x00751a27    803c1f5f
                         {disp8} jne        _jmp_addr_0x00751a58                          // 0x00751a2b    752b
                         {disp8} lea        ebx, dword ptr [edi + ebx * 0x1 + 0x01]       // 0x00751a2d    8d5c1f01
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00751a31    8b7c2410
                         xor.s              esi, esi                                      // 0x00751a35    33f6
_jmp_addr_0x00751a37:    mov.s              ecx, edi                                      // 0x00751a37    8bcf
                         call               _jmp_addr_0x00751aa0                          // 0x00751a39    e862000000
                         push               eax                                           // 0x00751a3e    50
                         push               ebx                                           // 0x00751a3f    53
                         call               _jmp_addr_0x007c6ce0                          // 0x00751a40    e89b520700
                         add                esp, 0x08                                     // 0x00751a45    83c408
                         test               eax, eax                                      // 0x00751a48    85c0
                         {disp8} je         _jmp_addr_0x00751a87                          // 0x00751a4a    743b
                         inc                esi                                           // 0x00751a4c    46
                         add                edi, 0x000003a4                               // 0x00751a4d    81c7a4030000
                         cmp                esi, 0x07                                     // 0x00751a53    83fe07
                         .byte              0x72, 0xdf// {disp8} jb _jmp_addr_0x00751a37  // 0x00751a56    72df
_jmp_addr_0x00751a58:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00751a58    8b742414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00751a5c    8b4c2410
                         inc                esi                                           // 0x00751a60    46
                         add                ebp, 0x1c                                     // 0x00751a61    83c51c
                         add                ecx, 0x0000197c                               // 0x00751a64    81c17c190000
                         cmp                ebp, 0x00da58b4                               // 0x00751a6a    81fdb458da00
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00751a70    89742414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00751a74    894c2410
                         .byte              0x72, 0x82// {disp8} jb _jmp_addr_0x007519fc  // 0x00751a78    7282
                         pop                edi                                           // 0x00751a7a    5f
                         pop                esi                                           // 0x00751a7b    5e
                         pop                ebp                                           // 0x00751a7c    5d
                         mov                eax, 0x00000054                               // 0x00751a7d    b854000000
                         pop                ebx                                           // 0x00751a82    5b
                         add                esp, 0x08                                     // 0x00751a83    83c408
                         ret                                                              // 0x00751a86    c3
_jmp_addr_0x00751a87:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00751a87    8b4c2414
                         {disp32} lea       eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x00751a8b    8d04cd00000000
                         pop                edi                                           // 0x00751a92    5f
                         sub.s              eax, ecx                                      // 0x00751a93    2bc1
                         add.s              eax, esi                                      // 0x00751a95    03c6
                         pop                esi                                           // 0x00751a97    5e
                         pop                ebp                                           // 0x00751a98    5d
                         pop                ebx                                           // 0x00751a99    5b
                         add                esp, 0x08                                     // 0x00751a9a    83c408
                         ret                                                              // 0x00751a9d    c3
                         nop                                                              // 0x00751a9e    90
                         nop                                                              // 0x00751a9f    90
_jmp_addr_0x00751aa0:    {disp32} mov       eax, dword ptr [ecx + 0x000001fc]             // 0x00751aa0    8b81fc010000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00c23508]       // 0x00751aa6    8b04850835c200
                         ret                                                              // 0x00751aad    c3
                         nop                                                              // 0x00751aae    90
                         nop                                                              // 0x00751aaf    90
_jmp_addr_0x00751ab0:    push               esi                                           // 0x00751ab0    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x00751ab1    8b7128
                         push               edi                                           // 0x00751ab4    57
                         call               _jmp_addr_0x00751ee0                          // 0x00751ab5    e826040000
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x00751aba    8b4010
                         {disp32} mov       edi, dword ptr [eax * 0x4 + 0x00c22fdc]       // 0x00751abd    8b3c85dc2fc200
                         mov.s              ecx, esi                                      // 0x00751ac4    8bce
                         call               _jmp_addr_0x00751aa0                          // 0x00751ac6    e8d5ffffff
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00751acb    8b74240c
                         push               eax                                           // 0x00751acf    50
                         push               edi                                           // 0x00751ad0    57
                         push               0x009c8054                                    // 0x00751ad1    6854809c00
                         push               esi                                           // 0x00751ad6    56
                         call               _jmp_addr_0x007c57d2                          // 0x00751ad7    e8f63c0700
                         add                esp, 0x10                                     // 0x00751adc    83c410
                         pop                edi                                           // 0x00751adf    5f
                         mov.s              eax, esi                                      // 0x00751ae0    8bc6
                         pop                esi                                           // 0x00751ae2    5e
                         ret                0x0004                                        // 0x00751ae3    c20400
                         nop                                                              // 0x00751ae6    90
                         nop                                                              // 0x00751ae7    90
                         nop                                                              // 0x00751ae8    90
                         nop                                                              // 0x00751ae9    90
                         nop                                                              // 0x00751aea    90
                         nop                                                              // 0x00751aeb    90
                         nop                                                              // 0x00751aec    90
                         nop                                                              // 0x00751aed    90
                         nop                                                              // 0x00751aee    90
                         nop                                                              // 0x00751aef    90
                         sub                esp, 0x0000020c                               // 0x00751af0    81ec0c020000
                         push               ebx                                           // 0x00751af6    53
                         push               ebp                                           // 0x00751af7    55
                         push               esi                                           // 0x00751af8    56
                         push               edi                                           // 0x00751af9    57
                         mov.s              esi, ecx                                      // 0x00751afa    8bf1
                         call               _jmp_addr_0x0056fef0                          // 0x00751afc    e8efe3e1ff
                         mov.s              ebx, eax                                      // 0x00751b01    8bd8
                         test               ebx, ebx                                      // 0x00751b03    85db
                         {disp32} je        _jmp_addr_0x00751cdf                          // 0x00751b05    0f84d4010000
                         {disp32} mov       ebp, dword ptr [esp + 0x00000224]             // 0x00751b0b    8bac2424020000
                         test               ebp, ebp                                      // 0x00751b12    85ed
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00751b14    8d7e14
                         {disp8} je         _jmp_addr_0x00751b28                          // 0x00751b17    740f
                         push               ebp                                           // 0x00751b19    55
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00751b1a    8d442420
                         push               eax                                           // 0x00751b1e    50
                         mov.s              ecx, edi                                      // 0x00751b1f    8bcf
                         call               _jmp_addr_0x006055c0                          // 0x00751b21    e89a3aebff
                         {disp8} jmp        _jmp_addr_0x00751b2a                          // 0x00751b26    eb02
_jmp_addr_0x00751b28:    mov.s              eax, edi                                      // 0x00751b28    8bc7
_jmp_addr_0x00751b2a:    mov                ecx, dword ptr [eax]                          // 0x00751b2a    8b08
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00751b2c    894c2410
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00751b30    8b5004
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00751b33    8b4e28
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00751b36    89542414
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00751b3a    8b4008
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00751b3d    89442418
                         cmp                dword ptr [ecx + 0x000001f4], -0x01           // 0x00751b41    83b9f4010000ff
                         {disp8} jne        _jmp_addr_0x00751ba9                          // 0x00751b48    755f
                         mov                edx, dword ptr [esi]                          // 0x00751b4a    8b16
                         mov.s              ecx, esi                                      // 0x00751b4c    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00751b4e    ff5248
                         test               eax, eax                                      // 0x00751b51    85c0
                         {disp8} je         _jmp_addr_0x00751b64                          // 0x00751b53    740f
                         mov                eax, dword ptr [esi]                          // 0x00751b55    8b06
                         mov.s              ecx, esi                                      // 0x00751b57    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00751b59    ff5048
                         {disp32} mov       ebp, dword ptr [eax + 0x000005b4]             // 0x00751b5c    8ba8b4050000
                         {disp8} jmp        _jmp_addr_0x00751b67                          // 0x00751b62    eb03
_jmp_addr_0x00751b64:    or                 ebp, 0xffffffff                               // 0x00751b64    83cdff
_jmp_addr_0x00751b67:    mov                edx, dword ptr [esi]                          // 0x00751b67    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x00751b69    8b7e28
                         mov.s              ecx, esi                                      // 0x00751b6c    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x00751b6e    ff92d0080000
                         push               eax                                           // 0x00751b74    50
                         sub                edi, 0x00da6be8                               // 0x00751b75    81efe86bda00
                         mov                eax, 0x8ca29c05                               // 0x00751b7b    b8059ca28c
                         imul               edi                                           // 0x00751b80    f7ef
                         add.s              edx, edi                                      // 0x00751b82    03d7
                         sar                edx, 9                                        // 0x00751b84    c1fa09
                         mov.s              eax, edx                                      // 0x00751b87    8bc2
                         shr                eax, 0x1f                                     // 0x00751b89    c1e81f
                         add.s              edx, eax                                      // 0x00751b8c    03d0
                         push               edx                                           // 0x00751b8e    52
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f8]             // 0x00751b8f    8d8c24f8000000
                         push               ecx                                           // 0x00751b96    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00751b97    8d4c241c
                         call               _jmp_addr_0x00602880                          // 0x00751b9b    e8e00cebff
                         push               eax                                           // 0x00751ba0    50
                         push               ebp                                           // 0x00751ba1    55
                         push               0x11                                          // 0x00751ba2    6a11
                         {disp32} jmp       _jmp_addr_0x00751ca7                          // 0x00751ba4    e9fe000000
_jmp_addr_0x00751ba9:    mov.s              ecx, esi                                      // 0x00751ba9    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00751bab    e8b0050000
                         test               eax, eax                                      // 0x00751bb0    85c0
                         {disp32} je        _jmp_addr_0x00751c5a                          // 0x00751bb2    0f84a2000000
                         test               ebp, ebp                                      // 0x00751bb8    85ed
                         {disp32} jne       _jmp_addr_0x00751c5a                          // 0x00751bba    0f859a000000
                         mov.s              ecx, esi                                      // 0x00751bc0    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00751bc2    e899050000
                         mov                edx, dword ptr [eax]                          // 0x00751bc7    8b10
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00751bc9    8d4c241c
                         push               ecx                                           // 0x00751bcd    51
                         mov.s              ecx, eax                                      // 0x00751bce    8bc8
                         call               dword ptr [edx + 0x864]                       // 0x00751bd0    ff9264080000
                         mov                edx, dword ptr [eax]                          // 0x00751bd6    8b10
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00751bd8    89542410
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00751bdc    8b4804
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00751bdf    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00751be3    8b5008
                         mov                eax, dword ptr [esi]                          // 0x00751be6    8b06
                         mov.s              ecx, esi                                      // 0x00751be8    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00751bea    89542418
                         call               dword ptr [eax + 0x8d0]                       // 0x00751bee    ff90d0080000
                         push               eax                                           // 0x00751bf4    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000158]             // 0x00751bf5    8d8c2458010000
                         push               ecx                                           // 0x00751bfc    51
                         mov.s              ecx, esi                                      // 0x00751bfd    8bce
                         call               _jmp_addr_0x00751ab0                          // 0x00751bff    e8acfeffff
                         push               eax                                           // 0x00751c04    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001c0]             // 0x00751c05    8d9424c0010000
                         push               edx                                           // 0x00751c0c    52
                         mov.s              ecx, edi                                      // 0x00751c0d    8bcf
                         call               _jmp_addr_0x00602880                          // 0x00751c0f    e86c0cebff
                         push               eax                                           // 0x00751c14    50
                         {disp32} lea       eax, dword ptr [esp + 0x000000fc]             // 0x00751c15    8d8424fc000000
                         push               eax                                           // 0x00751c1c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00751c1d    8d4c2420
                         call               _jmp_addr_0x00602880                          // 0x00751c21    e85a0cebff
                         push               eax                                           // 0x00751c26    50
                         push               0x12                                          // 0x00751c27    6a12
                         call               _jmp_addr_0x00715130                          // 0x00751c29    e80235fcff
                         add                esp, 0x04                                     // 0x00751c2e    83c404
                         push               eax                                           // 0x00751c31    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x00751c32    8d4c243c
                         push               ecx                                           // 0x00751c36    51
                         call               _jmp_addr_0x007c57d2                          // 0x00751c37    e8963b0700
                         or                 ecx, 0xffffffff                               // 0x00751c3c    83c9ff
                         xor.s              eax, eax                                      // 0x00751c3f    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x40]                   // 0x00751c41    8d7c2440
                         repne scasb                                                      // 0x00751c45    f2ae
                         {disp32} mov       eax, dword ptr [esp + 0x00000238]             // 0x00751c47    8b842438020000
                         not                ecx                                           // 0x00751c4e    f7d1
                         dec                ecx                                           // 0x00751c50    49
                         push               ecx                                           // 0x00751c51    51
                         {disp8} lea        edx, dword ptr [esp + 0x44]                   // 0x00751c52    8d542444
                         push               edx                                           // 0x00751c56    52
                         push               eax                                           // 0x00751c57    50
                         {disp8} jmp        _jmp_addr_0x00751cd6                          // 0x00751c58    eb7c
_jmp_addr_0x00751c5a:    mov                edx, dword ptr [esi]                          // 0x00751c5a    8b16
                         mov.s              ecx, esi                                      // 0x00751c5c    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00751c5e    ff5248
                         test               eax, eax                                      // 0x00751c61    85c0
                         {disp8} je         _jmp_addr_0x00751c74                          // 0x00751c63    740f
                         mov                eax, dword ptr [esi]                          // 0x00751c65    8b06
                         mov.s              ecx, esi                                      // 0x00751c67    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00751c69    ff5048
                         {disp32} mov       edi, dword ptr [eax + 0x000005b4]             // 0x00751c6c    8bb8b4050000
                         {disp8} jmp        _jmp_addr_0x00751c77                          // 0x00751c72    eb03
_jmp_addr_0x00751c74:    or                 edi, 0xffffffff                               // 0x00751c74    83cfff
_jmp_addr_0x00751c77:    mov                edx, dword ptr [esi]                          // 0x00751c77    8b16
                         mov.s              ecx, esi                                      // 0x00751c79    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x00751c7b    ff92d0080000
                         push               eax                                           // 0x00751c81    50
                         {disp32} lea       eax, dword ptr [esp + 0x00000158]             // 0x00751c82    8d842458010000
                         push               eax                                           // 0x00751c89    50
                         mov.s              ecx, esi                                      // 0x00751c8a    8bce
                         call               _jmp_addr_0x00751ab0                          // 0x00751c8c    e81ffeffff
                         push               eax                                           // 0x00751c91    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f8]             // 0x00751c92    8d8c24f8000000
                         push               ecx                                           // 0x00751c99    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00751c9a    8d4c241c
                         call               _jmp_addr_0x00602880                          // 0x00751c9e    e8dd0bebff
                         push               eax                                           // 0x00751ca3    50
                         push               edi                                           // 0x00751ca4    57
                         push               0x10                                          // 0x00751ca5    6a10
_jmp_addr_0x00751ca7:    call               _jmp_addr_0x00715130                          // 0x00751ca7    e88434fcff
                         add                esp, 0x04                                     // 0x00751cac    83c404
                         push               eax                                           // 0x00751caf    50
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00751cb0    8d54243c
                         push               edx                                           // 0x00751cb4    52
                         call               _jmp_addr_0x007c57d2                          // 0x00751cb5    e8183b0700
                         or                 ecx, 0xffffffff                               // 0x00751cba    83c9ff
                         xor.s              eax, eax                                      // 0x00751cbd    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x40]                   // 0x00751cbf    8d7c2440
                         repne scasb                                                      // 0x00751cc3    f2ae
                         not                ecx                                           // 0x00751cc5    f7d1
                         dec                ecx                                           // 0x00751cc7    49
                         push               ecx                                           // 0x00751cc8    51
                         {disp32} mov       ecx, dword ptr [esp + 0x0000023c]             // 0x00751cc9    8b8c243c020000
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x00751cd0    8d442444
                         push               eax                                           // 0x00751cd4    50
                         push               ecx                                           // 0x00751cd5    51
_jmp_addr_0x00751cd6:    push               esi                                           // 0x00751cd6    56
                         call               _jmp_addr_0x00719610                          // 0x00751cd7    e83479fcff
                         add                esp, 0x28                                     // 0x00751cdc    83c428
_jmp_addr_0x00751cdf:    pop                edi                                           // 0x00751cdf    5f
                         pop                esi                                           // 0x00751ce0    5e
                         pop                ebp                                           // 0x00751ce1    5d
                         mov.s              eax, ebx                                      // 0x00751ce2    8bc3
                         pop                ebx                                           // 0x00751ce4    5b
                         add                esp, 0x0000020c                               // 0x00751ce5    81c40c020000
                         ret                0x0008                                        // 0x00751ceb    c20800
                         nop                                                              // 0x00751cee    90
                         nop                                                              // 0x00751cef    90
                         push               esi                                           // 0x00751cf0    56
                         mov.s              esi, ecx                                      // 0x00751cf1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00751cf3    8b06
                         call               dword ptr [eax + 0x2c]                        // 0x00751cf5    ff502c
                         cmp                eax, 0x01                                     // 0x00751cf8    83f801
                         {disp8} jne        _jmp_addr_0x00751d12                          // 0x00751cfb    7515
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]               // 0x00751cfd    8a868c000000
                         cmp                al, 0x0d                                      // 0x00751d03    3c0d
                         .byte              0x72, 0x4// {disp8} jb _jmp_addr_0x00751d0b   // 0x00751d05    7204
                         cmp                al, 0x0e                                      // 0x00751d07    3c0e
                         {disp8} jbe        _jmp_addr_0x00751d12                          // 0x00751d09    7607
_jmp_addr_0x00751d0b:    mov                eax, 0x00000001                               // 0x00751d0b    b801000000
                         pop                esi                                           // 0x00751d10    5e
                         ret                                                              // 0x00751d11    c3
_jmp_addr_0x00751d12:    xor.s              eax, eax                                      // 0x00751d12    33c0
                         pop                esi                                           // 0x00751d14    5e
                         ret                                                              // 0x00751d15    c3
                         nop                                                              // 0x00751d16    90
                         nop                                                              // 0x00751d17    90
                         nop                                                              // 0x00751d18    90
                         nop                                                              // 0x00751d19    90
                         nop                                                              // 0x00751d1a    90
                         nop                                                              // 0x00751d1b    90
                         nop                                                              // 0x00751d1c    90
                         nop                                                              // 0x00751d1d    90
                         nop                                                              // 0x00751d1e    90
                         nop                                                              // 0x00751d1f    90
_jmp_addr_0x00751d20:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00751d20    8b442404
                         and                eax, 0x000000ff                               // 0x00751d24    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00751d29    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x2]              // 0x00751d2c    8d1448
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00d19cc8]       // 0x00751d2f    8d04d5c89cd100
                         ret                0x0004                                        // 0x00751d36    c20400
                         nop                                                              // 0x00751d39    90
                         nop                                                              // 0x00751d3a    90
                         nop                                                              // 0x00751d3b    90
                         nop                                                              // 0x00751d3c    90
                         nop                                                              // 0x00751d3d    90
                         nop                                                              // 0x00751d3e    90
                         nop                                                              // 0x00751d3f    90
                         xor.s              eax, eax                                      // 0x00751d40    33c0
                         ret                                                              // 0x00751d42    c3
                         nop                                                              // 0x00751d43    90
                         nop                                                              // 0x00751d44    90
                         nop                                                              // 0x00751d45    90
                         nop                                                              // 0x00751d46    90
                         nop                                                              // 0x00751d47    90
                         nop                                                              // 0x00751d48    90
                         nop                                                              // 0x00751d49    90
                         nop                                                              // 0x00751d4a    90
                         nop                                                              // 0x00751d4b    90
                         nop                                                              // 0x00751d4c    90
                         nop                                                              // 0x00751d4d    90
                         nop                                                              // 0x00751d4e    90
                         nop                                                              // 0x00751d4f    90
                         test               byte ptr [ecx + 0x0a], 0x01                   // 0x00751d50    f6410a01
                         {disp8} jne        _jmp_addr_0x00751d68                          // 0x00751d54    7512
                         mov                eax, dword ptr [ecx]                          // 0x00751d56    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x00751d58    ff90040b0000
                         cmp                al, 0x0e                                      // 0x00751d5e    3c0e
                         {disp8} je         _jmp_addr_0x00751d68                          // 0x00751d60    7406
                         mov                eax, 0x00000001                               // 0x00751d62    b801000000
                         ret                                                              // 0x00751d67    c3
_jmp_addr_0x00751d68:    xor.s              eax, eax                                      // 0x00751d68    33c0
                         ret                                                              // 0x00751d6a    c3
                         nop                                                              // 0x00751d6b    90
                         nop                                                              // 0x00751d6c    90
                         nop                                                              // 0x00751d6d    90
                         nop                                                              // 0x00751d6e    90
                         nop                                                              // 0x00751d6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00751d70    8b442404
                         test               eax, eax                                      // 0x00751d74    85c0
                         {disp8} je         _jmp_addr_0x00751d98                          // 0x00751d76    7420
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x00751d78    d94014
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00751d7b    d81d98a38a00
                         fnstsw             ax                                            // 0x00751d81    dfe0
                         test               ah, 0x41                                      // 0x00751d83    f6c441
                         {disp8} jne        _jmp_addr_0x00751d98                          // 0x00751d86    7510
                         mov                eax, dword ptr [ecx]                          // 0x00751d88    8b01
                         call               dword ptr [eax + 0xaf4]                       // 0x00751d8a    ff90f40a0000
                         neg                eax                                           // 0x00751d90    f7d8
                         sbb.s              eax, eax                                      // 0x00751d92    1bc0
                         inc                eax                                           // 0x00751d94    40
                         ret                0x0004                                        // 0x00751d95    c20400
_jmp_addr_0x00751d98:    mov                edx, dword ptr [ecx]                          // 0x00751d98    8b11
                         call               dword ptr [edx + 0x530]                       // 0x00751d9a    ff9230050000
                         ret                0x0004                                        // 0x00751da0    c20400
                         nop                                                              // 0x00751da3    90
                         nop                                                              // 0x00751da4    90
                         nop                                                              // 0x00751da5    90
                         nop                                                              // 0x00751da6    90
                         nop                                                              // 0x00751da7    90
                         nop                                                              // 0x00751da8    90
                         nop                                                              // 0x00751da9    90
                         nop                                                              // 0x00751daa    90
                         nop                                                              // 0x00751dab    90
                         nop                                                              // 0x00751dac    90
                         nop                                                              // 0x00751dad    90
                         nop                                                              // 0x00751dae    90
                         nop                                                              // 0x00751daf    90
                         mov                eax, dword ptr [ecx]                          // 0x00751db0    8b01
                         call               dword ptr [eax + 0x48]                        // 0x00751db2    ff5048
                         test               eax, eax                                      // 0x00751db5    85c0
                         {disp8} je         _jmp_addr_0x00751dc7                          // 0x00751db7    740e
                         {disp8} mov        eax, dword ptr [eax + 0x2c]                   // 0x00751db9    8b402c
                         test               eax, eax                                      // 0x00751dbc    85c0
                         {disp8} je         _jmp_addr_0x00751dc7                          // 0x00751dbe    7407
                         {disp32} mov       eax, dword ptr [eax + 0x00000a48]             // 0x00751dc0    8b80480a0000
                         ret                                                              // 0x00751dc6    c3
_jmp_addr_0x00751dc7:    xor.s              eax, eax                                      // 0x00751dc7    33c0
                         ret                                                              // 0x00751dc9    c3
                         nop                                                              // 0x00751dca    90
                         nop                                                              // 0x00751dcb    90
                         nop                                                              // 0x00751dcc    90
                         nop                                                              // 0x00751dcd    90
                         nop                                                              // 0x00751dce    90
                         nop                                                              // 0x00751dcf    90
_GetFinalState__8VillagerCFv:
                         push               ecx                                           // 0x00751dd0    51
                         {disp32} mov       al, byte ptr [ecx + 0x0000008c]               // 0x00751dd1    8a818c000000
                         {disp8} mov        byte ptr [esp + 0x00], al                     // 0x00751dd7    88442400
                         {disp8} mov        edx, dword ptr [esp + 0x00]                   // 0x00751ddb    8b542400
                         push               esi                                           // 0x00751ddf    56
                         and                edx, 0x000000ff                               // 0x00751de0    81e2ff000000
                         lea                esi, dword ptr [edx + edx * 0x2]              // 0x00751de6    8d3452
                         shl                esi, 3                                        // 0x00751de9    c1e603
                         sub.s              esi, edx                                      // 0x00751dec    2bf2
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00751dee    8d1476
                         {disp32} mov       esi, dword ptr [edx * 0x4 + 0x00db9e84]       // 0x00751df1    8b3495849edb00
                         test               esi, esi                                      // 0x00751df8    85f6
                         pop                esi                                           // 0x00751dfa    5e
                         {disp8} jne        _jmp_addr_0x00751e03                          // 0x00751dfb    7506
                         {disp32} mov       al, byte ptr [ecx + 0x0000008d]               // 0x00751dfd    8a818d000000
_jmp_addr_0x00751e03:    pop                ecx                                           // 0x00751e03    59
                         ret                                                              // 0x00751e04    c3
                         nop                                                              // 0x00751e05    90
                         nop                                                              // 0x00751e06    90
                         nop                                                              // 0x00751e07    90
                         nop                                                              // 0x00751e08    90
                         nop                                                              // 0x00751e09    90
                         nop                                                              // 0x00751e0a    90
                         nop                                                              // 0x00751e0b    90
                         nop                                                              // 0x00751e0c    90
                         nop                                                              // 0x00751e0d    90
                         nop                                                              // 0x00751e0e    90
                         nop                                                              // 0x00751e0f    90
                         push               esi                                           // 0x00751e10    56
                         mov.s              esi, ecx                                      // 0x00751e11    8bf1
                         call               _jmp_addr_0x00751e50                          // 0x00751e13    e838000000
                         mov                eax, dword ptr [esi]                          // 0x00751e18    8b06
                         mov.s              ecx, esi                                      // 0x00751e1a    8bce
                         call               dword ptr [eax + 0xb04]                       // 0x00751e1c    ff90040b0000
                         and                eax, 0x000000ff                               // 0x00751e22    25ff000000
                         mov.s              ecx, eax                                      // 0x00751e27    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00751e29    8d0449
                         shl                eax, 3                                        // 0x00751e2c    c1e003
                         sub.s              eax, ecx                                      // 0x00751e2f    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00751e31    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f30]       // 0x00751e34    8b048d309fdb00
                         test               eax, eax                                      // 0x00751e3b    85c0
                         {disp8} je         _jmp_addr_0x00751e4e                          // 0x00751e3d    740f
                         mov                edx, dword ptr [esi]                          // 0x00751e3f    8b16
                         push               0x000000a3                                    // 0x00751e41    68a3000000
                         mov.s              ecx, esi                                      // 0x00751e46    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x00751e48    ff92e8080000
_jmp_addr_0x00751e4e:    pop                esi                                           // 0x00751e4e    5e
                         ret                                                              // 0x00751e4f    c3
_jmp_addr_0x00751e50:    push               esi                                           // 0x00751e50    56
                         mov.s              esi, ecx                                      // 0x00751e51    8bf1
                         mov                edx, dword ptr [esi]                          // 0x00751e53    8b16
                         xor.s              ecx, ecx                                      // 0x00751e55    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008e]               // 0x00751e57    8a8e8e000000
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00751e5d    8d0449
                         shl                eax, 3                                        // 0x00751e60    c1e003
                         sub.s              eax, ecx                                      // 0x00751e63    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00751e65    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e98]       // 0x00751e68    8b0485989edb00
                         push               eax                                           // 0x00751e6f    50
                         mov.s              ecx, esi                                      // 0x00751e70    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x00751e72    ff92e8080000
                         cmp                eax, 0x2e                                     // 0x00751e78    83f82e
                         {disp8} jne        _jmp_addr_0x00751e8f                          // 0x00751e7b    7512
                         push               0x000000a3                                    // 0x00751e7d    68a3000000
                         push               0x0                                           // 0x00751e82    6a00
                         {disp32} lea       ecx, dword ptr [esi + 0x0000008c]             // 0x00751e84    8d8e8c000000
                         call               @SetState__12LivingActionFUlUc@16             // 0x00751e8a    e801aee9ff
_jmp_addr_0x00751e8f:    push               0x0                                           // 0x00751e8f    6a00
                         push               0x2                                           // 0x00751e91    6a02
                         {disp32} lea       ecx, dword ptr [esi + 0x0000008c]             // 0x00751e93    8d8e8c000000
                         call               @SetState__12LivingActionFUlUc@16             // 0x00751e99    e8f2ade9ff
                         pop                esi                                           // 0x00751e9e    5e
                         ret                                                              // 0x00751e9f    c3
_jmp_addr_0x00751ea0:    {disp32} mov       eax, dword ptr [ecx + 0x0000011c]             // 0x00751ea0    8b811c010000
                         ret                                                              // 0x00751ea6    c3
                         nop                                                              // 0x00751ea7    90
                         nop                                                              // 0x00751ea8    90
                         nop                                                              // 0x00751ea9    90
                         nop                                                              // 0x00751eaa    90
                         nop                                                              // 0x00751eab    90
                         nop                                                              // 0x00751eac    90
                         nop                                                              // 0x00751ead    90
                         nop                                                              // 0x00751eae    90
                         nop                                                              // 0x00751eaf    90
                         mov                eax, dword ptr [ecx]                          // 0x00751eb0    8b01
                         push               0x0                                           // 0x00751eb2    6a00
                         push               0x00bfed78                                    // 0x00751eb4    6878edbf00
                         push               0x009c7f80                                    // 0x00751eb9    68807f9c00
                         push               0x0                                           // 0x00751ebe    6a00
                         push               0x3                                           // 0x00751ec0    6a03
                         call               dword ptr [eax + 0x48]                        // 0x00751ec2    ff5048
                         mov.s              ecx, eax                                      // 0x00751ec5    8bc8
                         call               _jmp_addr_0x0073d7d0                          // 0x00751ec7    e804b9feff
                         mov.s              ecx, eax                                      // 0x00751ecc    8bc8
                         call               _jmp_addr_0x0066c9d0                          // 0x00751ece    e8fdaaf1ff
                         push               eax                                           // 0x00751ed3    50
                         call               _jmp_addr_0x007c5a19                          // 0x00751ed4    e8403b0700
                         add                esp, 0x14                                     // 0x00751ed9    83c414
                         ret                                                              // 0x00751edc    c3
                         nop                                                              // 0x00751edd    90
                         nop                                                              // 0x00751ede    90
                         nop                                                              // 0x00751edf    90
_jmp_addr_0x00751ee0:    {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x00751ee0    8b4928
                         {disp32} mov       eax, dword ptr [ecx + 0x000001f4]             // 0x00751ee3    8b81f4010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00751ee9    8b0d5c19d000
                         push               eax                                           // 0x00751eef    50
                         call               _GetTribe__5GGameF10TRIBE_TYPE@4              // 0x00751ef0    e82b07e0ff
                         ret                                                              // 0x00751ef5    c3
                         nop                                                              // 0x00751ef6    90
                         nop                                                              // 0x00751ef7    90
                         nop                                                              // 0x00751ef8    90
                         nop                                                              // 0x00751ef9    90
                         nop                                                              // 0x00751efa    90
                         nop                                                              // 0x00751efb    90
                         nop                                                              // 0x00751efc    90
                         nop                                                              // 0x00751efd    90
                         nop                                                              // 0x00751efe    90
                         nop                                                              // 0x00751eff    90
                         {disp32} mov       eax, dword ptr [ecx + 0x0000012c]             // 0x00751f00    8b812c010000
                         ret                                                              // 0x00751f06    c3
                         nop                                                              // 0x00751f07    90
                         nop                                                              // 0x00751f08    90
                         nop                                                              // 0x00751f09    90
                         nop                                                              // 0x00751f0a    90
                         nop                                                              // 0x00751f0b    90
                         nop                                                              // 0x00751f0c    90
                         nop                                                              // 0x00751f0d    90
                         nop                                                              // 0x00751f0e    90
                         nop                                                              // 0x00751f0f    90
_jmp_addr_0x00751f10:    push               esi                                           // 0x00751f10    56
                         mov.s              esi, ecx                                      // 0x00751f11    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00751f13    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00751f15    ff5048
                         test               eax, eax                                      // 0x00751f18    85c0
                         {disp8} je         _jmp_addr_0x00751f2e                          // 0x00751f1a    7412
                         mov                edx, dword ptr [esi]                          // 0x00751f1c    8b16
                         mov.s              ecx, esi                                      // 0x00751f1e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00751f20    ff5248
                         mov.s              ecx, eax                                      // 0x00751f23    8bc8
                         call               @GetStoragePit__4TownFv@4                     // 0x00751f25    e88696feff
                         test               eax, eax                                      // 0x00751f2a    85c0
                         {disp8} jne        _jmp_addr_0x00751f35                          // 0x00751f2c    7507
_jmp_addr_0x00751f2e:    mov.s              ecx, esi                                      // 0x00751f2e    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00751f30    e82b020000
_jmp_addr_0x00751f35:    pop                esi                                           // 0x00751f35    5e
                         ret                                                              // 0x00751f36    c3
                         nop                                                              // 0x00751f37    90
                         nop                                                              // 0x00751f38    90
                         nop                                                              // 0x00751f39    90
                         nop                                                              // 0x00751f3a    90
                         nop                                                              // 0x00751f3b    90
                         nop                                                              // 0x00751f3c    90
                         nop                                                              // 0x00751f3d    90
                         nop                                                              // 0x00751f3e    90
                         nop                                                              // 0x00751f3f    90
@GetVillagerAvailableState__8VillagerFv@4:    mov                eax, dword ptr [ecx]                          // 0x00751f40    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x00751f42    ff90040b0000
                         and                eax, 0x000000ff                               // 0x00751f48    25ff000000
                         mov.s              ecx, eax                                      // 0x00751f4d    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00751f4f    8d0449
                         shl                eax, 3                                        // 0x00751f52    c1e003
                         sub.s              eax, ecx                                      // 0x00751f55    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00751f57    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f20]       // 0x00751f5a    8b048d209fdb00
                         ret                                                              // 0x00751f61    c3
                         nop                                                              // 0x00751f62    90
                         nop                                                              // 0x00751f63    90
                         nop                                                              // 0x00751f64    90
                         nop                                                              // 0x00751f65    90
                         nop                                                              // 0x00751f66    90
                         nop                                                              // 0x00751f67    90
                         nop                                                              // 0x00751f68    90
                         nop                                                              // 0x00751f69    90
                         nop                                                              // 0x00751f6a    90
                         nop                                                              // 0x00751f6b    90
                         nop                                                              // 0x00751f6c    90
                         nop                                                              // 0x00751f6d    90
                         nop                                                              // 0x00751f6e    90
                         nop                                                              // 0x00751f6f    90
                         mov                eax, dword ptr [ecx]                          // 0x00751f70    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x00751f72    ff90040b0000
                         and                eax, 0x000000ff                               // 0x00751f78    25ff000000
                         mov.s              ecx, eax                                      // 0x00751f7d    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00751f7f    8d0449
                         shl                eax, 3                                        // 0x00751f82    c1e003
                         sub.s              eax, ecx                                      // 0x00751f85    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x00751f87    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f28]       // 0x00751f8a    8b048d289fdb00
                         ret                                                              // 0x00751f91    c3
                         nop                                                              // 0x00751f92    90
                         nop                                                              // 0x00751f93    90
                         nop                                                              // 0x00751f94    90
                         nop                                                              // 0x00751f95    90
                         nop                                                              // 0x00751f96    90
                         nop                                                              // 0x00751f97    90
                         nop                                                              // 0x00751f98    90
                         nop                                                              // 0x00751f99    90
                         nop                                                              // 0x00751f9a    90
                         nop                                                              // 0x00751f9b    90
                         nop                                                              // 0x00751f9c    90
                         nop                                                              // 0x00751f9d    90
                         nop                                                              // 0x00751f9e    90
                         nop                                                              // 0x00751f9f    90
_jmp_addr_0x00751fa0:    push               esi                                           // 0x00751fa0    56
                         mov.s              esi, ecx                                      // 0x00751fa1    8bf1
                         call               @GetAbode__8VillagerFv@4                      // 0x00751fa3    e8b8010000
                         test               eax, eax                                      // 0x00751fa8    85c0
                         {disp8} je         _jmp_addr_0x00751fc1                          // 0x00751faa    7415
                         or                 byte ptr [esi + 0xe0], 4                      // 0x00751fac    808ee000000004
                         mov.s              ecx, esi                                      // 0x00751fb3    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00751fb5    e8a6010000
                         mov.s              ecx, eax                                      // 0x00751fba    8bc8
                         call               _jmp_addr_0x00405fa0                          // 0x00751fbc    e8df3fcbff
_jmp_addr_0x00751fc1:    pop                esi                                           // 0x00751fc1    5e
                         ret                                                              // 0x00751fc2    c3
                         nop                                                              // 0x00751fc3    90
                         nop                                                              // 0x00751fc4    90
                         nop                                                              // 0x00751fc5    90
                         nop                                                              // 0x00751fc6    90
                         nop                                                              // 0x00751fc7    90
                         nop                                                              // 0x00751fc8    90
                         nop                                                              // 0x00751fc9    90
                         nop                                                              // 0x00751fca    90
                         nop                                                              // 0x00751fcb    90
                         nop                                                              // 0x00751fcc    90
                         nop                                                              // 0x00751fcd    90
                         nop                                                              // 0x00751fce    90
                         nop                                                              // 0x00751fcf    90
_jmp_addr_0x00751fd0:    push               esi                                           // 0x00751fd0    56
                         mov.s              esi, ecx                                      // 0x00751fd1    8bf1
                         xor.s              eax, eax                                      // 0x00751fd3    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]               // 0x00751fd5    668b86e0000000
                         test               al, 0x04                                      // 0x00751fdc    a804
                         {disp8} je         _jmp_addr_0x00752003                          // 0x00751fde    7423
                         and                eax, 0x0000dffb                               // 0x00751fe0    25fbdf0000
                         {disp32} mov       word ptr [esi + 0x000000e0], ax               // 0x00751fe5    668986e0000000
                         call               @GetAbode__8VillagerFv@4                      // 0x00751fec    e86f010000
                         test               eax, eax                                      // 0x00751ff1    85c0
                         {disp8} je         _jmp_addr_0x00752003                          // 0x00751ff3    740e
                         mov.s              ecx, esi                                      // 0x00751ff5    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00751ff7    e864010000
                         mov.s              ecx, eax                                      // 0x00751ffc    8bc8
                         call               _jmp_addr_0x00405fb0                          // 0x00751ffe    e8ad3fcbff
_jmp_addr_0x00752003:    pop                esi                                           // 0x00752003    5e
                         ret                                                              // 0x00752004    c3
                         nop                                                              // 0x00752005    90
                         nop                                                              // 0x00752006    90
                         nop                                                              // 0x00752007    90
                         nop                                                              // 0x00752008    90
                         nop                                                              // 0x00752009    90
                         nop                                                              // 0x0075200a    90
                         nop                                                              // 0x0075200b    90
                         nop                                                              // 0x0075200c    90
                         nop                                                              // 0x0075200d    90
                         nop                                                              // 0x0075200e    90
                         nop                                                              // 0x0075200f    90
_SetTopState__8VillagerFUc:
                         push               esi                                           // 0x00752010    56
                         push               edi                                           // 0x00752011    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00752012    8b7c240c
                         mov.s              esi, ecx                                      // 0x00752016    8bf1
                         push               edi                                           // 0x00752018    57
                         call               @CanPauseForASecond__8VillagerFUc@12          // 0x00752019    e802010000
                         test               eax, eax                                      // 0x0075201e    85c0
                         {disp32} je        _jmp_addr_0x007520b5                          // 0x00752020    0f848f000000
                         mov                eax, dword ptr [esi]                          // 0x00752026    8b06
                         mov.s              ecx, esi                                      // 0x00752028    8bce
                         call               dword ptr [eax + 0x11c]                       // 0x0075202a    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00752030    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x00752034    8b16
                         mov.s              ecx, esi                                      // 0x00752036    8bce
                         call               dword ptr [edx + 0x4a4]                       // 0x00752038    ff92a4040000
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0075203e    d944240c
                         test               al, al                                        // 0x00752042    84c0
                         {disp8} je         _jmp_addr_0x0075204c                          // 0x00752044    7406
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00752046    d80db4a38a00
_jmp_addr_0x0075204c:    {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0075204c    d82d90a38a00
                         mov                eax, 0x00000002                               // 0x00752052    b802000000
                         fld                st(0)                                         // 0x00752057    d9c0
_jmp_addr_0x00752059:    dec                eax                                           // 0x00752059    48
                         fmul               st, st(1)                                     // 0x0075205a    d8c9
                         {disp8} jne        _jmp_addr_0x00752059                          // 0x0075205c    75fb
                         push               0x0000076b                                    // 0x0075205e    686b070000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752063    d95c2410
                         push               0x00c235dc                                    // 0x00752067    68dc35c200
                         push               0x3f800000                                    // 0x0075206c    680000803f
                         fstp               st(0)                                         // 0x00752071    ddd8
                         call               _GameFloatRand__5GRandFf                      // 0x00752073    e8b8c4f8ff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00752078    d9442418
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0075207c    d80db4a38a00
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00752082    8b4628
                         add                esp, 0x0c                                     // 0x00752085    83c40c
                         fsubp              st(1), st                                     // 0x00752088    dee9
                         {disp32} fcomp     dword ptr [eax + 0x00000368]                  // 0x0075208a    d89868030000
                         fnstsw             ax                                            // 0x00752090    dfe0
                         test               ah, 0x01                                      // 0x00752092    f6c401
                         {disp8} je         _jmp_addr_0x007520b5                          // 0x00752095    741e
                         mov.s              ecx, edi                                      // 0x00752097    8bcf
                         and                ecx, 0x000000ff                               // 0x00752099    81e1ff000000
                         push               ecx                                           // 0x0075209f    51
                         mov.s              ecx, esi                                      // 0x007520a0    8bce
                         call               @SetupPauseForASecond__8VillagerF15VILLAGER_STATES@12                          // 0x007520a2    e8e98f0100
                         test               eax, eax                                      // 0x007520a7    85c0
                         {disp8} je         _jmp_addr_0x007520b5                          // 0x007520a9    740a
                         pop                edi                                           // 0x007520ab    5f
                         mov                eax, 0x00000001                               // 0x007520ac    b801000000
                         pop                esi                                           // 0x007520b1    5e
                         ret                0x0004                                        // 0x007520b2    c20400
_jmp_addr_0x007520b5:    push               edi                                           // 0x007520b5    57
                         mov.s              ecx, esi                                      // 0x007520b6    8bce
                         call               @SetTopState__6LivingFUc@12                   // 0x007520b8    e82308eaff
                         mov.s              edi, eax                                      // 0x007520bd    8bf8
                         cmp                edi, 0x2f                                     // 0x007520bf    83ff2f
                         {disp8} jne        _jmp_addr_0x007520d3                          // 0x007520c2    750f
                         mov                edx, dword ptr [esi]                          // 0x007520c4    8b16
                         push               0x000000a3                                    // 0x007520c6    68a3000000
                         mov.s              ecx, esi                                      // 0x007520cb    8bce
                         call               dword ptr [edx + 0x90c]                       // 0x007520cd    ff920c090000
_jmp_addr_0x007520d3:    mov.s              eax, edi                                      // 0x007520d3    8bc7
                         pop                edi                                           // 0x007520d5    5f
                         pop                esi                                           // 0x007520d6    5e
                         ret                0x0004                                        // 0x007520d7    c20400
                         nop                                                              // 0x007520da    90
                         nop                                                              // 0x007520db    90
                         nop                                                              // 0x007520dc    90
                         nop                                                              // 0x007520dd    90
                         nop                                                              // 0x007520de    90
                         nop                                                              // 0x007520df    90
_SetCurrentAndDestinationState__8VillagerFUcUc:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007520e0    8b442408
                         push               esi                                           // 0x007520e4    56
                         push               edi                                           // 0x007520e5    57
                         mov.s              esi, ecx                                      // 0x007520e6    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x007520e8    8b4c240c
                         push               eax                                           // 0x007520ec    50
                         push               ecx                                           // 0x007520ed    51
                         mov.s              ecx, esi                                      // 0x007520ee    8bce
                         call               @SetCurrentAndDestinationState__6LivingFUcUc@16                          // 0x007520f0    e88b08eaff
                         mov.s              edi, eax                                      // 0x007520f5    8bf8
                         cmp                edi, 0x2f                                     // 0x007520f7    83ff2f
                         {disp8} jne        _jmp_addr_0x0075210b                          // 0x007520fa    750f
                         mov                edx, dword ptr [esi]                          // 0x007520fc    8b16
                         push               0x000000a3                                    // 0x007520fe    68a3000000
                         mov.s              ecx, esi                                      // 0x00752103    8bce
                         call               dword ptr [edx + 0x90c]                       // 0x00752105    ff920c090000
_jmp_addr_0x0075210b:    mov.s              eax, edi                                      // 0x0075210b    8bc7
                         pop                edi                                           // 0x0075210d    5f
                         pop                esi                                           // 0x0075210e    5e
                         ret                0x0008                                        // 0x0075210f    c20800
                         nop                                                              // 0x00752112    90
                         nop                                                              // 0x00752113    90
                         nop                                                              // 0x00752114    90
                         nop                                                              // 0x00752115    90
                         nop                                                              // 0x00752116    90
                         nop                                                              // 0x00752117    90
                         nop                                                              // 0x00752118    90
                         nop                                                              // 0x00752119    90
                         nop                                                              // 0x0075211a    90
                         nop                                                              // 0x0075211b    90
                         nop                                                              // 0x0075211c    90
                         nop                                                              // 0x0075211d    90
                         nop                                                              // 0x0075211e    90
                         nop                                                              // 0x0075211f    90
@CanPauseForASecond__8VillagerFUc@12:    cmp                byte ptr [ecx + 0x0000008c], -0x11            // 0x00752120    80b98c000000ef
                         {disp8} je         _jmp_addr_0x00752156                          // 0x00752127    742d
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00752129    8b442404
                         and                eax, 0x000000ff                               // 0x0075212d    25ff000000
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x00752132    8d1440
                         shl                edx, 3                                        // 0x00752135    c1e203
                         sub.s              edx, eax                                      // 0x00752138    2bd0
                         lea                eax, dword ptr [edx + edx * 0x2]              // 0x0075213a    8d0452
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00db9f3c]       // 0x0075213d    8b14853c9fdb00
                         test               edx, edx                                      // 0x00752144    85d2
                         {disp8} je         _jmp_addr_0x00752156                          // 0x00752146    740e
                         test               byte ptr [ecx + 0x25], 0x04                   // 0x00752148    f6412504
                         {disp8} jne        _jmp_addr_0x00752156                          // 0x0075214c    7508
                         mov                eax, 0x00000001                               // 0x0075214e    b801000000
                         ret                0x0004                                        // 0x00752153    c20400
_jmp_addr_0x00752156:    xor.s              eax, eax                                      // 0x00752156    33c0
                         ret                0x0004                                        // 0x00752158    c20400
                         nop                                                              // 0x0075215b    90
                         nop                                                              // 0x0075215c    90
                         nop                                                              // 0x0075215d    90
                         nop                                                              // 0x0075215e    90
                         nop                                                              // 0x0075215f    90
@GetAbode__8VillagerFv@4:{disp32} mov       eax, dword ptr [ecx + 0x00000128]             // 0x00752160    8b8128010000
                         ret                                                              // 0x00752166    c3
                         nop                                                              // 0x00752167    90
                         nop                                                              // 0x00752168    90
                         nop                                                              // 0x00752169    90
                         nop                                                              // 0x0075216a    90
                         nop                                                              // 0x0075216b    90
                         nop                                                              // 0x0075216c    90
                         nop                                                              // 0x0075216d    90
                         nop                                                              // 0x0075216e    90
                         nop                                                              // 0x0075216f    90
                         push               esi                                           // 0x00752170    56
                         mov.s              esi, ecx                                      // 0x00752171    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00752173    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00752175    ff5048
                         {disp8} mov        cx, word ptr [esi + 0x16]                     // 0x00752178    668b4e16
                         cmp                cx, word ptr [eax + 0x0000072a]               // 0x0075217c    663b882a070000
                         .byte              0x72, 0x26// {disp8} jb _jmp_addr_0x007521ab  // 0x00752183    7226
                         {disp8} mov        si, word ptr [esi + 0x1a]                     // 0x00752185    668b761a
                         cmp                si, word ptr [eax + 0x0000072e]               // 0x00752189    663bb02e070000
                         .byte              0x72, 0x19// {disp8} jb _jmp_addr_0x007521ab  // 0x00752190    7219
                         cmp                cx, word ptr [eax + 0x00000736]               // 0x00752192    663b8836070000
                         {disp8} ja         _jmp_addr_0x007521ab                          // 0x00752199    7710
                         cmp                si, word ptr [eax + 0x0000073a]               // 0x0075219b    663bb03a070000
                         {disp8} ja         _jmp_addr_0x007521ab                          // 0x007521a2    7707
                         mov                eax, 0x00000001                               // 0x007521a4    b801000000
                         pop                esi                                           // 0x007521a9    5e
                         ret                                                              // 0x007521aa    c3
_jmp_addr_0x007521ab:    xor.s              eax, eax                                      // 0x007521ab    33c0
                         pop                esi                                           // 0x007521ad    5e
                         ret                                                              // 0x007521ae    c3
                         nop                                                              // 0x007521af    90
_ToBeDeleted__8VillagerFi:
@ToBeDeleted__8VillagerFi@12:    push               esi                                           // 0x007521b0    56
                         mov.s              esi, ecx                                      // 0x007521b1    8bf1
                         call               @DeleteDependancys__8VillagerFv@4             // 0x007521b3    e8a8dbffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007521b8    8b442408
                         push               eax                                           // 0x007521bc    50
                         mov.s              ecx, esi                                      // 0x007521bd    8bce
                         call               @ToBeDeleted__6LivingFi@12                    // 0x007521bf    e8dc9ee9ff
                         pop                esi                                           // 0x007521c4    5e
                         ret                0x0004                                        // 0x007521c5    c20400
                         nop                                                              // 0x007521c8    90
                         nop                                                              // 0x007521c9    90
                         nop                                                              // 0x007521ca    90
                         nop                                                              // 0x007521cb    90
                         nop                                                              // 0x007521cc    90
                         nop                                                              // 0x007521cd    90
                         nop                                                              // 0x007521ce    90
                         nop                                                              // 0x007521cf    90
@CallState__8VillagerFv@4:    sub                esp, 0x10                                     // 0x007521d0    83ec10
                         xor.s              eax, eax                                      // 0x007521d3    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x0000008c]               // 0x007521d5    8a818c000000
                         push               esi                                           // 0x007521db    56
                         push               edi                                           // 0x007521dc    57
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x007521dd    8d04c0
                         shl                eax, 4                                        // 0x007521e0    c1e004
                         add                eax, 0x00d09198 /* _VillagerStateTable */     // 0x007521e3    059891d000
                         mov.s              esi, eax                                      // 0x007521e8    8bf0
                         mov                eax, dword ptr [esi]                          // 0x007521ea    8b06
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x007521ec    8b5604
                         {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x007521ef    8b7e08
                         {disp8} mov        esi, dword ptr [esi + 0x0c]                   // 0x007521f2    8b760c
                         add.s              ecx, edx                                      // 0x007521f5    03ca
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x007521f7    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x007521fb    89742414
                         call               eax                                           // 0x007521ff    ffd0
                         pop                edi                                           // 0x00752201    5f
                         pop                esi                                           // 0x00752202    5e
                         add                esp, 0x10                                     // 0x00752203    83c410
                         ret                                                              // 0x00752206    c3
                         nop                                                              // 0x00752207    90
                         nop                                                              // 0x00752208    90
                         nop                                                              // 0x00752209    90
                         nop                                                              // 0x0075220a    90
                         nop                                                              // 0x0075220b    90
                         nop                                                              // 0x0075220c    90
                         nop                                                              // 0x0075220d    90
                         nop                                                              // 0x0075220e    90
                         nop                                                              // 0x0075220f    90
@IsPregnant__8VillagerFv@4:    {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x00752210    8b5128
                         push               esi                                           // 0x00752213    56
                         {disp32} mov       esi, dword ptr [edx + 0x000001f8]             // 0x00752214    8bb2f8010000
                         mov                eax, 0x00000001                               // 0x0075221a    b801000000
                         cmp.s              esi, eax                                      // 0x0075221f    3bf0
                         pop                esi                                           // 0x00752221    5e
                         {disp8} jne        _jmp_addr_0x0075222e                          // 0x00752222    750a
                         cmp                word ptr [ecx + 0x000000f8], 0x00             // 0x00752224    6683b9f800000000
                         {disp8} jne        _jmp_addr_0x00752230                          // 0x0075222c    7502
_jmp_addr_0x0075222e:    xor.s              eax, eax                                      // 0x0075222e    33c0
_jmp_addr_0x00752230:    ret                                                              // 0x00752230    c3
                         nop                                                              // 0x00752231    90
                         nop                                                              // 0x00752232    90
                         nop                                                              // 0x00752233    90
                         nop                                                              // 0x00752234    90
                         nop                                                              // 0x00752235    90
                         nop                                                              // 0x00752236    90
                         nop                                                              // 0x00752237    90
                         nop                                                              // 0x00752238    90
                         nop                                                              // 0x00752239    90
                         nop                                                              // 0x0075223a    90
                         nop                                                              // 0x0075223b    90
                         nop                                                              // 0x0075223c    90
                         nop                                                              // 0x0075223d    90
                         nop                                                              // 0x0075223e    90
                         nop                                                              // 0x0075223f    90
_jmp_addr_0x00752240:    push               esi                                           // 0x00752240    56
                         mov.s              esi, ecx                                      // 0x00752241    8bf1
                         call               @IsPregnant__8VillagerFv@4                    // 0x00752243    e8c8ffffff
                         test               eax, eax                                      // 0x00752248    85c0
                         {disp8} je         _jmp_addr_0x0075227d                          // 0x0075224a    7431
                         xor.s              eax, eax                                      // 0x0075224c    33c0
                         {disp8} mov        ax, word ptr [esi + 0x24]                     // 0x0075224e    668b4624
                         not                ax                                            // 0x00752252    66f7d0
                         shr                eax, 0xa                                      // 0x00752255    c1e80a
                         test               al, 0x01                                      // 0x00752258    a801
                         {disp8} je         _jmp_addr_0x0075227d                          // 0x0075225a    7421
                         mov.s              ecx, esi                                      // 0x0075225c    8bce
                         call               _jmp_addr_0x00750670                          // 0x0075225e    e80de4ffff
                         sub                word ptr [esi + 0x000000f8], ax               // 0x00752263    662986f8000000
                         cmp                word ptr [esi + 0x000000f8], 0x00             // 0x0075226a    6683bef800000000
                         {disp8} jg         _jmp_addr_0x0075227d                          // 0x00752272    7f09
                         mov.s              ecx, esi                                      // 0x00752274    8bce
                         call               _jmp_addr_0x007621a0                          // 0x00752276    e825ff0000
                         pop                esi                                           // 0x0075227b    5e
                         ret                                                              // 0x0075227c    c3
_jmp_addr_0x0075227d:    xor.s              eax, eax                                      // 0x0075227d    33c0
                         pop                esi                                           // 0x0075227f    5e
                         ret                                                              // 0x00752280    c3
                         nop                                                              // 0x00752281    90
                         nop                                                              // 0x00752282    90
                         nop                                                              // 0x00752283    90
                         nop                                                              // 0x00752284    90
                         nop                                                              // 0x00752285    90
                         nop                                                              // 0x00752286    90
                         nop                                                              // 0x00752287    90
                         nop                                                              // 0x00752288    90
                         nop                                                              // 0x00752289    90
                         nop                                                              // 0x0075228a    90
                         nop                                                              // 0x0075228b    90
                         nop                                                              // 0x0075228c    90
                         nop                                                              // 0x0075228d    90
                         nop                                                              // 0x0075228e    90
                         nop                                                              // 0x0075228f    90
@IsVillagerAvailable__8VillagerFv@4:    push               esi                                           // 0x00752290    56
                         mov.s              esi, ecx                                      // 0x00752291    8bf1
                         test               byte ptr [esi + 0x25], 0x04                   // 0x00752293    f6462504
                         {disp8} jne        _jmp_addr_0x007522b1                          // 0x00752297    7518
                         mov                eax, dword ptr [esi]                          // 0x00752299    8b06
                         call               dword ptr [eax + 0x18c]                       // 0x0075229b    ff908c010000
                         test               eax, eax                                      // 0x007522a1    85c0
                         {disp8} je         _jmp_addr_0x007522b1                          // 0x007522a3    740c
                         mov.s              ecx, esi                                      // 0x007522a5    8bce
                         call               @GetVillagerAvailableState__8VillagerFv@4     // 0x007522a7    e894fcffff
                         and                eax, 0x01                                     // 0x007522ac    83e001
                         pop                esi                                           // 0x007522af    5e
                         ret                                                              // 0x007522b0    c3
_jmp_addr_0x007522b1:    xor.s              eax, eax                                      // 0x007522b1    33c0
                         pop                esi                                           // 0x007522b3    5e
                         ret                                                              // 0x007522b4    c3
                         nop                                                              // 0x007522b5    90
                         nop                                                              // 0x007522b6    90
                         nop                                                              // 0x007522b7    90
                         nop                                                              // 0x007522b8    90
                         nop                                                              // 0x007522b9    90
                         nop                                                              // 0x007522ba    90
                         nop                                                              // 0x007522bb    90
                         nop                                                              // 0x007522bc    90
                         nop                                                              // 0x007522bd    90
                         nop                                                              // 0x007522be    90
                         nop                                                              // 0x007522bf    90
_jmp_addr_0x007522c0:    push               esi                                           // 0x007522c0    56
                         mov.s              esi, ecx                                      // 0x007522c1    8bf1
                         mov                eax, dword ptr [esi]                          // 0x007522c3    8b06
                         call               dword ptr [eax + 0x978]                       // 0x007522c5    ff9078090000
                         test               eax, eax                                      // 0x007522cb    85c0
                         {disp8} jne        _jmp_addr_0x0075230e                          // 0x007522cd    753f
                         mov                edx, dword ptr [esi]                          // 0x007522cf    8b16
                         mov.s              ecx, esi                                      // 0x007522d1    8bce
                         call               dword ptr [edx + 0xaf8]                       // 0x007522d3    ff92f80a0000
                         test               eax, eax                                      // 0x007522d9    85c0
                         {disp8} jne        _jmp_addr_0x0075230e                          // 0x007522db    7531
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]               // 0x007522dd    668b86e0000000
                         shr                eax, 9                                        // 0x007522e4    c1e809
                         test               al, 0x01                                      // 0x007522e7    a801
                         {disp8} jne        _jmp_addr_0x0075230e                          // 0x007522e9    7523
                         mov                edx, dword ptr [esi]                          // 0x007522eb    8b16
                         push               edi                                           // 0x007522ed    57
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x007522ee    8b7e28
                         mov.s              ecx, esi                                      // 0x007522f1    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x007522f3    ff921c010000
                         {disp32} fcomp     dword ptr [edi + 0x0000035c]                  // 0x007522f9    d89f5c030000
                         pop                edi                                           // 0x007522ff    5f
                         fnstsw             ax                                            // 0x00752300    dfe0
                         test               ah, 0x41                                      // 0x00752302    f6c441
                         {disp8} jne        _jmp_addr_0x0075230e                          // 0x00752305    7507
                         mov                eax, 0x00000001                               // 0x00752307    b801000000
                         pop                esi                                           // 0x0075230c    5e
                         ret                                                              // 0x0075230d    c3
_jmp_addr_0x0075230e:    xor.s              eax, eax                                      // 0x0075230e    33c0
                         pop                esi                                           // 0x00752310    5e
                         ret                                                              // 0x00752311    c3
                         nop                                                              // 0x00752312    90
                         nop                                                              // 0x00752313    90
                         nop                                                              // 0x00752314    90
                         nop                                                              // 0x00752315    90
                         nop                                                              // 0x00752316    90
                         nop                                                              // 0x00752317    90
                         nop                                                              // 0x00752318    90
                         nop                                                              // 0x00752319    90
                         nop                                                              // 0x0075231a    90
                         nop                                                              // 0x0075231b    90
                         nop                                                              // 0x0075231c    90
                         nop                                                              // 0x0075231d    90
                         nop                                                              // 0x0075231e    90
                         nop                                                              // 0x0075231f    90
                         sub                esp, 0x08                                     // 0x00752320    83ec08
                         push               ebx                                           // 0x00752323    53
                         push               ebp                                           // 0x00752324    55
                         push               esi                                           // 0x00752325    56
                         mov.s              esi, ecx                                      // 0x00752326    8bf1
                         {disp32} mov       bl, byte ptr [esi + 0x0000008c]               // 0x00752328    8a9e8c000000
                         mov                eax, dword ptr [esi]                          // 0x0075232e    8b06
                         push               edi                                           // 0x00752330    57
                         {disp8} mov        byte ptr [esp + 0x14], bl                     // 0x00752331    885c2414
                         call               dword ptr [eax + 0xb04]                       // 0x00752335    ff90040b0000
                         {disp8} mov        byte ptr [esp + 0x10], al                     // 0x0075233b    88442410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0075233f    8b442414
                         and                eax, 0x000000ff                               // 0x00752343    25ff000000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00752348    8d04c0
                         shl                eax, 4                                        // 0x0075234b    c1e004
                         {disp32} mov       edx, dword ptr [eax + 0x00d091b8]             // 0x0075234e    8b90b891d000
                         test               edx, edx                                      // 0x00752354    85d2
                         mov                edi, 0x00000001                               // 0x00752356    bf01000000
                         mov.s              ebp, edi                                      // 0x0075235b    8bef
                         {disp8} je         _jmp_addr_0x00752370                          // 0x0075235d    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0075235f    8b4c241c
                         push               ecx                                           // 0x00752363    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091bc]             // 0x00752364    8b88bc91d000
                         add.s              ecx, esi                                      // 0x0075236a    03ce
                         call               edx                                           // 0x0075236c    ffd2
                         mov.s              edi, eax                                      // 0x0075236e    8bf8
_jmp_addr_0x00752370:    cmp                bl, byte ptr [esp + 0x10]                     // 0x00752370    3a5c2410
                         {disp8} je         _jmp_addr_0x007523a0                          // 0x00752374    742a
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00752376    8b442410
                         and                eax, 0x000000ff                               // 0x0075237a    25ff000000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x0075237f    8d04c0
                         shl                eax, 4                                        // 0x00752382    c1e004
                         {disp32} mov       edx, dword ptr [eax + 0x00d091b8]             // 0x00752385    8b90b891d000
                         test               edx, edx                                      // 0x0075238b    85d2
                         {disp8} je         _jmp_addr_0x007523a0                          // 0x0075238d    7411
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0075238f    8b4c241c
                         push               ecx                                           // 0x00752393    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091bc]             // 0x00752394    8b88bc91d000
                         add.s              ecx, esi                                      // 0x0075239a    03ce
                         call               edx                                           // 0x0075239c    ffd2
                         mov.s              ebp, eax                                      // 0x0075239e    8be8
_jmp_addr_0x007523a0:    cmp                edi, 0x01                                     // 0x007523a0    83ff01
                         {disp8} jne        _jmp_addr_0x007523b5                          // 0x007523a3    7510
                         cmp.s              ebp, edi                                      // 0x007523a5    3bef
                         {disp8} jne        _jmp_addr_0x007523b5                          // 0x007523a7    750c
                         mov.s              eax, edi                                      // 0x007523a9    8bc7
                         pop                edi                                           // 0x007523ab    5f
                         pop                esi                                           // 0x007523ac    5e
                         pop                ebp                                           // 0x007523ad    5d
                         pop                ebx                                           // 0x007523ae    5b
                         add                esp, 0x08                                     // 0x007523af    83c408
                         ret                0x0004                                        // 0x007523b2    c20400
_jmp_addr_0x007523b5:    pop                edi                                           // 0x007523b5    5f
                         pop                esi                                           // 0x007523b6    5e
                         pop                ebp                                           // 0x007523b7    5d
                         xor.s              eax, eax                                      // 0x007523b8    33c0
                         pop                ebx                                           // 0x007523ba    5b
                         add                esp, 0x08                                     // 0x007523bb    83c408
                         ret                0x0004                                        // 0x007523be    c20400
                         nop                                                              // 0x007523c1    90
                         nop                                                              // 0x007523c2    90
                         nop                                                              // 0x007523c3    90
                         nop                                                              // 0x007523c4    90
                         nop                                                              // 0x007523c5    90
                         nop                                                              // 0x007523c6    90
                         nop                                                              // 0x007523c7    90
                         nop                                                              // 0x007523c8    90
                         nop                                                              // 0x007523c9    90
                         nop                                                              // 0x007523ca    90
                         nop                                                              // 0x007523cb    90
                         nop                                                              // 0x007523cc    90
                         nop                                                              // 0x007523cd    90
                         nop                                                              // 0x007523ce    90
                         nop                                                              // 0x007523cf    90
_CallEntryStateFunction__8VillagerFUc:
                         push               ecx                                           // 0x007523d0    51
                         push               esi                                           // 0x007523d1    56
                         mov.s              esi, ecx                                      // 0x007523d2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x007523d4    8b06
                         push               edi                                           // 0x007523d6    57
                         call               dword ptr [eax + 0xb04]                       // 0x007523d7    ff90040b0000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x007523dd    8b7c2410
                         {disp8} mov        byte ptr [esp + 0x08], al                     // 0x007523e1    88442408
                         mov.s              eax, edi                                      // 0x007523e5    8bc7
                         and                eax, 0x000000ff                               // 0x007523e7    25ff000000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x007523ec    8d04c0
                         shl                eax, 4                                        // 0x007523ef    c1e004
                         {disp32} mov       edx, dword ptr [eax + 0x00d091a8]             // 0x007523f2    8b90a891d000
                         test               edx, edx                                      // 0x007523f8    85d2
                         {disp8} je         _jmp_addr_0x00752411                          // 0x007523fa    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007523fc    8b4c2408
                         push               edi                                           // 0x00752400    57
                         push               ecx                                           // 0x00752401    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091ac]             // 0x00752402    8b88ac91d000
                         add.s              ecx, esi                                      // 0x00752408    03ce
                         call               edx                                           // 0x0075240a    ffd2
                         cmp                eax, 0x01                                     // 0x0075240c    83f801
                         {disp8} jne        _jmp_addr_0x00752429                          // 0x0075240f    7518
_jmp_addr_0x00752411:    mov                edx, dword ptr [esi]                          // 0x00752411    8b16
                         push               edi                                           // 0x00752413    57
                         push               0x0                                           // 0x00752414    6a00
                         mov.s              ecx, esi                                      // 0x00752416    8bce
                         call               dword ptr [edx + 0x938]                       // 0x00752418    ff9238090000
                         pop                edi                                           // 0x0075241e    5f
                         mov                eax, 0x00000001                               // 0x0075241f    b801000000
                         pop                esi                                           // 0x00752424    5e
                         pop                ecx                                           // 0x00752425    59
                         ret                0x0004                                        // 0x00752426    c20400
_jmp_addr_0x00752429:    xor.s              ecx, ecx                                      // 0x00752429    33c9
                         cmp                eax, 0x23                                     // 0x0075242b    83f823
                         sete               cl                                            // 0x0075242e    0f94c1
                         pop                edi                                           // 0x00752431    5f
                         pop                esi                                           // 0x00752432    5e
                         mov.s              eax, ecx                                      // 0x00752433    8bc1
                         pop                ecx                                           // 0x00752435    59
                         ret                0x0004                                        // 0x00752436    c20400
                         nop                                                              // 0x00752439    90
                         nop                                                              // 0x0075243a    90
                         nop                                                              // 0x0075243b    90
                         nop                                                              // 0x0075243c    90
                         nop                                                              // 0x0075243d    90
                         nop                                                              // 0x0075243e    90
                         nop                                                              // 0x0075243f    90
_CallEntryStateFunction__8VillagerFUcUc:
                         push               ecx                                           // 0x00752440    51
                         push               esi                                           // 0x00752441    56
                         mov.s              esi, ecx                                      // 0x00752442    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00752444    8b06
                         push               edi                                           // 0x00752446    57
                         call               dword ptr [eax + 0xb04]                       // 0x00752447    ff90040b0000
                         mov                edx, dword ptr [esi]                          // 0x0075244d    8b16
                         {disp8} mov        byte ptr [esp + 0x08], al                     // 0x0075244f    88442408
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00752453    8b442410
                         push               eax                                           // 0x00752457    50
                         mov.s              ecx, esi                                      // 0x00752458    8bce
                         call               dword ptr [edx + 0x90c]                       // 0x0075245a    ff920c090000
                         test               eax, eax                                      // 0x00752460    85c0
                         {disp8} je         _jmp_addr_0x007524bc                          // 0x00752462    7458
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00752464    8b7c2414
                         mov.s              eax, edi                                      // 0x00752468    8bc7
                         and                eax, 0x000000ff                               // 0x0075246a    25ff000000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x0075246f    8d04c0
                         shl                eax, 4                                        // 0x00752472    c1e004
                         {disp32} mov       edx, dword ptr [eax + 0x00d091a8]             // 0x00752475    8b90a891d000
                         test               edx, edx                                      // 0x0075247b    85d2
                         {disp8} je         _jmp_addr_0x00752494                          // 0x0075247d    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0075247f    8b4c2408
                         push               edi                                           // 0x00752483    57
                         push               ecx                                           // 0x00752484    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091ac]             // 0x00752485    8b88ac91d000
                         add.s              ecx, esi                                      // 0x0075248b    03ce
                         call               edx                                           // 0x0075248d    ffd2
                         cmp                eax, 0x01                                     // 0x0075248f    83f801
                         {disp8} jne        _jmp_addr_0x007524ac                          // 0x00752492    7518
_jmp_addr_0x00752494:    mov                edx, dword ptr [esi]                          // 0x00752494    8b16
                         push               edi                                           // 0x00752496    57
                         push               0x1                                           // 0x00752497    6a01
                         mov.s              ecx, esi                                      // 0x00752499    8bce
                         call               dword ptr [edx + 0x938]                       // 0x0075249b    ff9238090000
                         pop                edi                                           // 0x007524a1    5f
                         mov                eax, 0x00000001                               // 0x007524a2    b801000000
                         pop                esi                                           // 0x007524a7    5e
                         pop                ecx                                           // 0x007524a8    59
                         ret                0x0008                                        // 0x007524a9    c20800
_jmp_addr_0x007524ac:    cmp                eax, 0x23                                     // 0x007524ac    83f823
                         {disp8} jne        _jmp_addr_0x007524bc                          // 0x007524af    750b
                         pop                edi                                           // 0x007524b1    5f
                         mov                eax, 0x00000001                               // 0x007524b2    b801000000
                         pop                esi                                           // 0x007524b7    5e
                         pop                ecx                                           // 0x007524b8    59
                         ret                0x0008                                        // 0x007524b9    c20800
_jmp_addr_0x007524bc:    pop                edi                                           // 0x007524bc    5f
                         xor.s              eax, eax                                      // 0x007524bd    33c0
                         pop                esi                                           // 0x007524bf    5e
                         pop                ecx                                           // 0x007524c0    59
                         ret                0x0008                                        // 0x007524c1    c20800
                         nop                                                              // 0x007524c4    90
                         nop                                                              // 0x007524c5    90
                         nop                                                              // 0x007524c6    90
                         nop                                                              // 0x007524c7    90
                         nop                                                              // 0x007524c8    90
                         nop                                                              // 0x007524c9    90
                         nop                                                              // 0x007524ca    90
                         nop                                                              // 0x007524cb    90
                         nop                                                              // 0x007524cc    90
                         nop                                                              // 0x007524cd    90
                         nop                                                              // 0x007524ce    90
                         nop                                                              // 0x007524cf    90
_jmp_addr_0x007524d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007524d0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007524d4    8b4c2408
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x007524d8    8d04c0
                         lea                ecx, dword ptr [ecx + ecx * 0x8]              // 0x007524db    8d0cc9
                         shl                eax, 4                                        // 0x007524de    c1e004
                         {disp32} mov       edx, dword ptr [eax + 0x00d091a8]             // 0x007524e1    8b90a891d000
                         shl                ecx, 4                                        // 0x007524e7    c1e104
                         cmp                edx, dword ptr [ecx + 0x00d091a8]             // 0x007524ea    3b91a891d000
                         {disp8} jne        _jmp_addr_0x00752528                          // 0x007524f0    7536
                         test               edx, edx                                      // 0x007524f2    85d2
                         {disp8} je         _jmp_addr_0x00752520                          // 0x007524f4    742a
                         {disp32} mov       edx, dword ptr [eax + 0x00d091ac]             // 0x007524f6    8b90ac91d000
                         cmp                edx, dword ptr [ecx + 0x00d091ac]             // 0x007524fc    3b91ac91d000
                         {disp8} jne        _jmp_addr_0x00752528                          // 0x00752502    7524
                         {disp32} mov       edx, dword ptr [eax + 0x00d091b0]             // 0x00752504    8b90b091d000
                         cmp                edx, dword ptr [ecx + 0x00d091b0]             // 0x0075250a    3b91b091d000
                         {disp8} jne        _jmp_addr_0x00752528                          // 0x00752510    7516
                         {disp32} mov       eax, dword ptr [eax + 0x00d091b4]             // 0x00752512    8b80b491d000
                         cmp                eax, dword ptr [ecx + 0x00d091b4]             // 0x00752518    3b81b491d000
                         {disp8} jne        _jmp_addr_0x00752528                          // 0x0075251e    7508
_jmp_addr_0x00752520:    mov                eax, 0x00000001                               // 0x00752520    b801000000
                         ret                0x0008                                        // 0x00752525    c20800
_jmp_addr_0x00752528:    xor.s              eax, eax                                      // 0x00752528    33c0
                         ret                0x0008                                        // 0x0075252a    c20800
                         nop                                                              // 0x0075252d    90
                         nop                                                              // 0x0075252e    90
                         nop                                                              // 0x0075252f    90
                         mov                eax, dword ptr [ecx]                          // 0x00752530    8b01
                         push               ebx                                           // 0x00752532    53
                         push               esi                                           // 0x00752533    56
                         push               edi                                           // 0x00752534    57
                         call               dword ptr [eax + 0xb04]                       // 0x00752535    ff90040b0000
                         and                eax, 0x000000ff                               // 0x0075253b    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x00752540    8d0cc0
                         shl                ecx, 4                                        // 0x00752543    c1e104
                         add                ecx, 0x00d091b8                               // 0x00752546    81c1b891d000
                         mov                edx, dword ptr [ecx]                          // 0x0075254c    8b11
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x0075254e    8b7104
                         {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x00752551    8b7908
                         {disp8} mov        ebx, dword ptr [ecx + 0x0c]                   // 0x00752554    8b590c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00752557    8b4c2410
                         lea                eax, dword ptr [ecx + ecx * 0x8]              // 0x0075255b    8d04c9
                         shl                eax, 4                                        // 0x0075255e    c1e004
                         cmp                edx, dword ptr [eax + 0x00d091b8]             // 0x00752561    3b90b891d000
                         {disp8} jne        _jmp_addr_0x00752585                          // 0x00752567    751c
                         test               edx, edx                                      // 0x00752569    85d2
                         {disp8} je         _jmp_addr_0x007525a3                          // 0x0075256b    7436
                         cmp                esi, dword ptr [eax + 0x00d091bc]             // 0x0075256d    3bb0bc91d000
                         {disp8} jne        _jmp_addr_0x00752585                          // 0x00752573    7510
                         cmp                edi, dword ptr [eax + 0x00d091c0]             // 0x00752575    3bb8c091d000
                         {disp8} jne        _jmp_addr_0x00752585                          // 0x0075257b    7508
                         cmp                ebx, dword ptr [eax + 0x00d091c4]             // 0x0075257d    3b98c491d000
                         {disp8} je         _jmp_addr_0x007525a3                          // 0x00752583    741e
_jmp_addr_0x00752585:    lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x00752585    8d0449
                         shl                eax, 3                                        // 0x00752588    c1e003
                         sub.s              eax, ecx                                      // 0x0075258b    2bc1
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x0075258d    8d1440
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e84]       // 0x00752590    8b0495849edb00
                         test               eax, eax                                      // 0x00752597    85c0
                         {disp8} je         _jmp_addr_0x007525a3                          // 0x00752599    7408
                         pop                edi                                           // 0x0075259b    5f
                         pop                esi                                           // 0x0075259c    5e
                         xor.s              eax, eax                                      // 0x0075259d    33c0
                         pop                ebx                                           // 0x0075259f    5b
                         ret                0x0004                                        // 0x007525a0    c20400
_jmp_addr_0x007525a3:    pop                edi                                           // 0x007525a3    5f
                         pop                esi                                           // 0x007525a4    5e
                         mov                eax, 0x00000001                               // 0x007525a5    b801000000
                         pop                ebx                                           // 0x007525aa    5b
                         ret                0x0004                                        // 0x007525ab    c20400
                         nop                                                              // 0x007525ae    90
                         nop                                                              // 0x007525af    90
_jmp_addr_0x007525b0:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007525b0    8b4c2404
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x007525b4    8d0449
                         shl                eax, 3                                        // 0x007525b7    c1e003
                         sub.s              eax, ecx                                      // 0x007525ba    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x007525bc    8d0440
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00db9f30]       // 0x007525bf    8b1485309fdb00
                         xor.s              ecx, ecx                                      // 0x007525c6    33c9
                         test               edx, edx                                      // 0x007525c8    85d2
                         setne              cl                                            // 0x007525ca    0f95c1
                         mov.s              eax, ecx                                      // 0x007525cd    8bc1
                         ret                                                              // 0x007525cf    c3
                         mov                eax, dword ptr [ecx]                          // 0x007525d0    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x007525d2    ff90040b0000
                         and                eax, 0x000000ff                               // 0x007525d8    25ff000000
                         mov.s              ecx, eax                                      // 0x007525dd    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x007525df    8d0449
                         shl                eax, 3                                        // 0x007525e2    c1e003
                         sub.s              eax, ecx                                      // 0x007525e5    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x007525e7    8d0c40
                         {disp32} lea       eax, dword ptr [ecx * 0x4 + 0x00db9ea0]       // 0x007525ea    8d048da09edb00
                         ret                                                              // 0x007525f1    c3
                         nop                                                              // 0x007525f2    90
                         nop                                                              // 0x007525f3    90
                         nop                                                              // 0x007525f4    90
                         nop                                                              // 0x007525f5    90
                         nop                                                              // 0x007525f6    90
                         nop                                                              // 0x007525f7    90
                         nop                                                              // 0x007525f8    90
                         nop                                                              // 0x007525f9    90
                         nop                                                              // 0x007525fa    90
                         nop                                                              // 0x007525fb    90
                         nop                                                              // 0x007525fc    90
                         nop                                                              // 0x007525fd    90
                         nop                                                              // 0x007525fe    90
                         nop                                                              // 0x007525ff    90
@IsHungry__8VillagerFv@4:{disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00752600    8b4128
                         {disp32} fld       dword ptr [ecx + 0x000000e8]                  // 0x00752603    d981e8000000
                         {disp32} fcomp     dword ptr [eax + 0x000002c0]                  // 0x00752609    d898c0020000
                         fnstsw             ax                                            // 0x0075260f    dfe0
                         test               ah, 0x41                                      // 0x00752611    f6c441
                         {disp8} je         _jmp_addr_0x0075261c                          // 0x00752614    7406
                         mov                eax, 0x00000001                               // 0x00752616    b801000000
                         ret                                                              // 0x0075261b    c3
_jmp_addr_0x0075261c:    xor.s              eax, eax                                      // 0x0075261c    33c0
                         ret                                                              // 0x0075261e    c3
                         nop                                                              // 0x0075261f    90
_jmp_addr_0x00752620:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00752620    8b4128
                         cmp                dword ptr [eax + 0x000001f8], 0x01            // 0x00752623    83b8f801000001
                         {disp8} jne        _jmp_addr_0x0075263e                          // 0x0075262a    7512
                         mov                edx, dword ptr [ecx]                          // 0x0075262c    8b11
                         call               dword ptr [edx + 0xaf8]                       // 0x0075262e    ff92f80a0000
                         test               eax, eax                                      // 0x00752634    85c0
                         {disp8} jne        _jmp_addr_0x0075263e                          // 0x00752636    7506
                         mov                eax, 0x00000001                               // 0x00752638    b801000000
                         ret                                                              // 0x0075263d    c3
_jmp_addr_0x0075263e:    xor.s              eax, eax                                      // 0x0075263e    33c0
                         ret                                                              // 0x00752640    c3
                         nop                                                              // 0x00752641    90
                         nop                                                              // 0x00752642    90
                         nop                                                              // 0x00752643    90
                         nop                                                              // 0x00752644    90
                         nop                                                              // 0x00752645    90
                         nop                                                              // 0x00752646    90
                         nop                                                              // 0x00752647    90
                         nop                                                              // 0x00752648    90
                         nop                                                              // 0x00752649    90
                         nop                                                              // 0x0075264a    90
                         nop                                                              // 0x0075264b    90
                         nop                                                              // 0x0075264c    90
                         nop                                                              // 0x0075264d    90
                         nop                                                              // 0x0075264e    90
                         nop                                                              // 0x0075264f    90
_Find__13GVillagerInfoF10TRIBE_TYPE15VILLAGER_NUMBER:    {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00752650    8b542408
                         push               esi                                           // 0x00752654    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00752655    8b742408
                         mov                eax, 0x00da6be8                               // 0x00752659    b8e86bda00
                         mov                ecx, 0x00da6de4                               // 0x0075265e    b9e46dda00
_jmp_addr_0x00752663:    cmp                dword ptr [ecx + -0x08], esi                  // 0x00752663    3971f8
                         {disp8} jne        _jmp_addr_0x0075266c                          // 0x00752666    7504
                         cmp                dword ptr [ecx], edx                          // 0x00752668    3911
                         {disp8} je         _jmp_addr_0x00752681                          // 0x0075266a    7415
_jmp_addr_0x0075266c:    add                ecx, 0x000003a4                               // 0x0075266c    81c1a4030000
                         add                eax, 0x000003a4                               // 0x00752672    05a4030000
                         cmp                ecx, 0x00db9fb4                               // 0x00752677    81f9b49fdb00
                         .byte              0x72, 0xe4// {disp8} jb _jmp_addr_0x00752663  // 0x0075267d    72e4
                         xor.s              eax, eax                                      // 0x0075267f    33c0
_jmp_addr_0x00752681:    pop                esi                                           // 0x00752681    5e
                         ret                                                              // 0x00752682    c3
                         nop                                                              // 0x00752683    90
                         nop                                                              // 0x00752684    90
                         nop                                                              // 0x00752685    90
                         nop                                                              // 0x00752686    90
                         nop                                                              // 0x00752687    90
                         nop                                                              // 0x00752688    90
                         nop                                                              // 0x00752689    90
                         nop                                                              // 0x0075268a    90
                         nop                                                              // 0x0075268b    90
                         nop                                                              // 0x0075268c    90
                         nop                                                              // 0x0075268d    90
                         nop                                                              // 0x0075268e    90
                         nop                                                              // 0x0075268f    90
_jmp_addr_0x00752690:    sub                esp, 0x18                                     // 0x00752690    83ec18
                         push               esi                                           // 0x00752693    56
                         mov.s              esi, ecx                                      // 0x00752694    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00752696    8b4c2428
                         mov                eax, dword ptr [esi]                          // 0x0075269a    8b06
                         push               edi                                           // 0x0075269c    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0075269d    8b7c2424
                         push               ecx                                           // 0x007526a1    51
                         push               edi                                           // 0x007526a2    57
                         mov.s              ecx, esi                                      // 0x007526a3    8bce
                         call               dword ptr [eax + 0x6b8]                       // 0x007526a5    ff90b8060000
                         test               eax, eax                                      // 0x007526ab    85c0
                         {disp8} je         _jmp_addr_0x007526db                          // 0x007526ad    742c
                         push               edi                                           // 0x007526af    57
                         mov.s              ecx, esi                                      // 0x007526b0    8bce
                         call               _jmp_addr_0x00752760                          // 0x007526b2    e8a9000000
                         push               esi                                           // 0x007526b7    56
                         mov.s              ecx, edi                                      // 0x007526b8    8bcf
                         call               _jmp_addr_0x00752760                          // 0x007526ba    e8a1000000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x007526bf    8b442428
                         mov                edx, dword ptr [esi]                          // 0x007526c3    8b16
                         push               eax                                           // 0x007526c5    50
                         mov.s              ecx, esi                                      // 0x007526c6    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x007526c8    ff92e8080000
                         pop                edi                                           // 0x007526ce    5f
                         mov                eax, 0x00000001                               // 0x007526cf    b801000000
                         pop                esi                                           // 0x007526d4    5e
                         add                esp, 0x18                                     // 0x007526d5    83c418
                         ret                0x000c                                        // 0x007526d8    c20c00
_jmp_addr_0x007526db:    {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x007526db    8b4c242c
                         push               ebx                                           // 0x007526df    53
                         push               ebp                                           // 0x007526e0    55
                         push               ecx                                           // 0x007526e1    51
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x007526e2    8d5f14
                         push               ebx                                           // 0x007526e5    53
                         {disp8} lea        ebp, dword ptr [esi + 0x14]                   // 0x007526e6    8d6e14
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x007526e9    8d542418
                         push               ebp                                           // 0x007526ed    55
                         push               edx                                           // 0x007526ee    52
                         call               _jmp_addr_0x0074ecc0                          // 0x007526ef    e8ccc5ffff
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x007526f4    8b442440
                         add                esp, 0x10                                     // 0x007526f8    83c410
                         push               eax                                           // 0x007526fb    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x007526fc    8d4c2414
                         push               ecx                                           // 0x00752700    51
                         mov.s              ecx, esi                                      // 0x00752701    8bce
                         call               _jmp_addr_0x00763800                          // 0x00752703    e8f8100100
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00752708    8b542434
                         push               edx                                           // 0x0075270c    52
                         push               ebp                                           // 0x0075270d    55
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0075270e    8d442424
                         push               ebx                                           // 0x00752712    53
                         push               eax                                           // 0x00752713    50
                         call               _jmp_addr_0x0074ecc0                          // 0x00752714    e8a7c5ffff
                         mov                ecx, dword ptr [eax]                          // 0x00752719    8b08
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0075271b    894c2420
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0075271f    8b5004
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00752722    8b4c2440
                         add                esp, 0x10                                     // 0x00752726    83c410
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00752729    89542414
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0075272d    8b4008
                         push               ecx                                           // 0x00752730    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00752731    8d542414
                         push               edx                                           // 0x00752735    52
                         mov.s              ecx, edi                                      // 0x00752736    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00752738    89442420
                         call               _jmp_addr_0x00763800                          // 0x0075273c    e8bf100100
                         pop                ebp                                           // 0x00752741    5d
                         {disp32} mov       dword ptr [edi + 0x00000118], esi             // 0x00752742    89b718010000
                         pop                ebx                                           // 0x00752748    5b
                         {disp32} mov       dword ptr [esi + 0x00000118], edi             // 0x00752749    89be18010000
                         pop                edi                                           // 0x0075274f    5f
                         xor.s              eax, eax                                      // 0x00752750    33c0
                         pop                esi                                           // 0x00752752    5e
                         add                esp, 0x18                                     // 0x00752753    83c418
                         ret                0x000c                                        // 0x00752756    c20c00
                         nop                                                              // 0x00752759    90
                         nop                                                              // 0x0075275a    90
                         nop                                                              // 0x0075275b    90
                         nop                                                              // 0x0075275c    90
                         nop                                                              // 0x0075275d    90
                         nop                                                              // 0x0075275e    90
                         nop                                                              // 0x0075275f    90
_jmp_addr_0x00752760:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00752760    8b442404
                         push               esi                                           // 0x00752764    56
                         mov.s              esi, ecx                                      // 0x00752765    8bf1
                         add                eax, 0x14                                     // 0x00752767    83c014
                         push               eax                                           // 0x0075276a    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0075276b    8d4e14
                         push               ecx                                           // 0x0075276e    51
                         call               _Get3DAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords                          // 0x0075276f    e8fcaaffff
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752774    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00752778    8b542410
                         push               edx                                           // 0x0075277c    52
                         call               _jmp_addr_0x0074dc30                          // 0x0075277d    e8aeb4ffff
                         add                esp, 0x0c                                     // 0x00752782    83c40c
                         push               eax                                           // 0x00752785    50
                         mov.s              ecx, esi                                      // 0x00752786    8bce
                         call               @SetGameAngle__13MobileWallHugFUs@10          // 0x00752788    e803b3ebff
                         mov                eax, 0x00000001                               // 0x0075278d    b801000000
                         pop                esi                                           // 0x00752792    5e
                         ret                0x0004                                        // 0x00752793    c20400
                         nop                                                              // 0x00752796    90
                         nop                                                              // 0x00752797    90
                         nop                                                              // 0x00752798    90
                         nop                                                              // 0x00752799    90
                         nop                                                              // 0x0075279a    90
                         nop                                                              // 0x0075279b    90
                         nop                                                              // 0x0075279c    90
                         nop                                                              // 0x0075279d    90
                         nop                                                              // 0x0075279e    90
                         nop                                                              // 0x0075279f    90
                         push               esi                                           // 0x007527a0    56
                         mov.s              esi, ecx                                      // 0x007527a1    8bf1
                         push               esi                                           // 0x007527a3    56
                         {disp8} lea        ecx, dword ptr [esi + 0x70]                   // 0x007527a4    8d4e70
                         call               _jmp_addr_0x0060a9f0                          // 0x007527a7    e84482ebff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007527ac    8b442408
                         and                eax, 0x000000ff                               // 0x007527b0    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x007527b5    8d0c40
                         shl                ecx, 3                                        // 0x007527b8    c1e103
                         sub.s              ecx, eax                                      // 0x007527bb    2bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x007527bd    8d0449
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f30]       // 0x007527c0    8b0c85309fdb00
                         test               ecx, ecx                                      // 0x007527c7    85c9
                         {disp8} jne        _jmp_addr_0x007527d5                          // 0x007527c9    750a
                         mov                edx, dword ptr [esi]                          // 0x007527cb    8b16
                         mov.s              ecx, esi                                      // 0x007527cd    8bce
                         call               dword ptr [edx + 0x998]                       // 0x007527cf    ff9298090000
_jmp_addr_0x007527d5:    mov                eax, 0x00000001                               // 0x007527d5    b801000000
                         pop                esi                                           // 0x007527da    5e
                         ret                0x0004                                        // 0x007527db    c20400
                         nop                                                              // 0x007527de    90
                         nop                                                              // 0x007527df    90
                         push               ebx                                           // 0x007527e0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x007527e1    8b5c2408
                         push               esi                                           // 0x007527e5    56
                         mov.s              esi, ecx                                      // 0x007527e6    8bf1
                         mov                eax, dword ptr [esi]                          // 0x007527e8    8b06
                         mov.s              ecx, ebx                                      // 0x007527ea    8bcb
                         and                ecx, 0x000000ff                               // 0x007527ec    81e1ff000000
                         push               ecx                                           // 0x007527f2    51
                         mov.s              ecx, esi                                      // 0x007527f3    8bce
                         call               dword ptr [eax + 0x96c]                       // 0x007527f5    ff906c090000
                         test               eax, eax                                      // 0x007527fb    85c0
                         {disp8} jne        _jmp_addr_0x00752810                          // 0x007527fd    7511
                         cmp                bl, 0x05                                      // 0x007527ff    80fb05
                         {disp8} je         _jmp_addr_0x00752810                          // 0x00752802    740c
                         mov                edx, dword ptr [esi]                          // 0x00752804    8b16
                         push               0x1                                           // 0x00752806    6a01
                         mov.s              ecx, esi                                      // 0x00752808    8bce
                         call               dword ptr [edx + 0xb08]                       // 0x0075280a    ff92080b0000
_jmp_addr_0x00752810:    pop                esi                                           // 0x00752810    5e
                         mov                eax, 0x00000001                               // 0x00752811    b801000000
                         pop                ebx                                           // 0x00752816    5b
                         ret                0x0004                                        // 0x00752817    c20400
                         nop                                                              // 0x0075281a    90
                         nop                                                              // 0x0075281b    90
                         nop                                                              // 0x0075281c    90
                         nop                                                              // 0x0075281d    90
                         nop                                                              // 0x0075281e    90
                         nop                                                              // 0x0075281f    90
_jmp_addr_0x00752820:    push               esi                                           // 0x00752820    56
                         mov.s              esi, ecx                                      // 0x00752821    8bf1
                         call               @IsVillagerAvailable__8VillagerFv@4           // 0x00752823    e868faffff
                         test               eax, eax                                      // 0x00752828    85c0
                         {disp8} je         _jmp_addr_0x00752858                          // 0x0075282a    742c
                         xor.s              eax, eax                                      // 0x0075282c    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]               // 0x0075282e    668b86e0000000
                         shr                eax, 9                                        // 0x00752835    c1e809
                         test               al, 0x01                                      // 0x00752838    a801
                         {disp8} je         _jmp_addr_0x00752844                          // 0x0075283a    7408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0075283c    8b442408
                         test               eax, eax                                      // 0x00752840    85c0
                         {disp8} je         _jmp_addr_0x00752858                          // 0x00752842    7414
_jmp_addr_0x00752844:    mov.s              ecx, esi                                      // 0x00752844    8bce
                         call               _jmp_addr_0x00752860                          // 0x00752846    e815000000
                         test               eax, eax                                      // 0x0075284b    85c0
                         {disp8} jne        _jmp_addr_0x00752858                          // 0x0075284d    7509
                         mov                eax, 0x00000001                               // 0x0075284f    b801000000
                         pop                esi                                           // 0x00752854    5e
                         ret                0x0004                                        // 0x00752855    c20400
_jmp_addr_0x00752858:    xor.s              eax, eax                                      // 0x00752858    33c0
                         pop                esi                                           // 0x0075285a    5e
                         ret                0x0004                                        // 0x0075285b    c20400
                         nop                                                              // 0x0075285e    90
                         nop                                                              // 0x0075285f    90
_jmp_addr_0x00752860:    push               esi                                           // 0x00752860    56
                         mov.s              esi, ecx                                      // 0x00752861    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00752863    8b06
                         call               dword ptr [eax + 0xb04]                       // 0x00752865    ff90040b0000
                         and                eax, 0x000000ff                               // 0x0075286b    25ff000000
                         cmp                eax, 0x000000c9                               // 0x00752870    3dc9000000
                         {disp8} je         _jmp_addr_0x00752885                          // 0x00752875    740e
                         cmp                eax, 0x000000ca                               // 0x00752877    3dca000000
                         {disp8} je         _jmp_addr_0x00752885                          // 0x0075287c    7407
                         cmp                eax, 0x000000fb                               // 0x0075287e    3dfb000000
                         {disp8} jne        _jmp_addr_0x0075288d                          // 0x00752883    7508
_jmp_addr_0x00752885:    xor.s              eax, eax                                      // 0x00752885    33c0
                         {disp32} mov       al, byte ptr [esi + 0x0000008e]               // 0x00752887    8a868e000000
_jmp_addr_0x0075288d:    test               byte ptr [esi + 0x000000e0], 0x02             // 0x0075288d    f686e000000002
                         pop                esi                                           // 0x00752894    5e
                         {disp8} jne        _jmp_addr_0x007528a4                          // 0x00752895    750d
                         cmp                eax, 0x3b                                     // 0x00752897    83f83b
                         {disp8} je         _jmp_addr_0x007528a4                          // 0x0075289a    7408
                         cmp                eax, 0x2e                                     // 0x0075289c    83f82e
                         {disp8} je         _jmp_addr_0x007528a4                          // 0x0075289f    7403
                         xor.s              eax, eax                                      // 0x007528a1    33c0
                         ret                                                              // 0x007528a3    c3
_jmp_addr_0x007528a4:    mov                eax, 0x00000001                               // 0x007528a4    b801000000
                         ret                                                              // 0x007528a9    c3
                         nop                                                              // 0x007528aa    90
                         nop                                                              // 0x007528ab    90
                         nop                                                              // 0x007528ac    90
                         nop                                                              // 0x007528ad    90
                         nop                                                              // 0x007528ae    90
                         nop                                                              // 0x007528af    90
                         mov                eax, dword ptr [ecx]                          // 0x007528b0    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x007528b2    ff90040b0000
                         ret                0x000c                                        // 0x007528b8    c20c00
                         nop                                                              // 0x007528bb    90
                         nop                                                              // 0x007528bc    90
                         nop                                                              // 0x007528bd    90
                         nop                                                              // 0x007528be    90
                         nop                                                              // 0x007528bf    90
_SetAge__8VillagerFUl:
@SetAge__8VillagerFUl@12:{disp32} mov       al, byte ptr [data_bytes + 0x3e0bcc]          // 0x007528c0    a0cc6bda00
                         test               al, 0x01                                      // 0x007528c5    a801
                         push               ebx                                           // 0x007528c7    53
                         push               ebp                                           // 0x007528c8    55
                         push               esi                                           // 0x007528c9    56
                         push               edi                                           // 0x007528ca    57
                         mov.s              esi, ecx                                      // 0x007528cb    8bf1
                         {disp8} jne        _jmp_addr_0x007528f6                          // 0x007528cd    7527
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x007528cf    8b0d34fee900
                         mov.s              bl, al                                        // 0x007528d5    8ad8
                         or                 bl, 1                                         // 0x007528d7    80cb01
                         {disp32} mov       byte ptr [data_bytes + 0x3e0bcc], bl          // 0x007528da    881dcc6bda00
                         mov                edx, dword ptr [ecx]                          // 0x007528e0    8b11
                         mov                eax, 0x000001ff                               // 0x007528e2    b8ff010000
                         cmp.s              edx, eax                                      // 0x007528e7    3bd0
                         {disp8} jg         _jmp_addr_0x007528ed                          // 0x007528e9    7f02
                         xor.s              eax, eax                                      // 0x007528eb    33c0
_jmp_addr_0x007528ed:    {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x007528ed    8b448104
                         {disp32} mov       dword ptr [data_bytes + 0x3e0bc8], eax        // 0x007528f1    a3c86bda00
_jmp_addr_0x007528f6:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x007528f6    8b4e28
                         {disp32} mov       edi, dword ptr [ecx + 0x00000138]             // 0x007528f9    8bb938010000
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x007528ff    8b5c2414
                         cmp.s              ebx, edi                                      // 0x00752903    3bdf
                         .byte              0x72, 0x12// {disp8} jb _jmp_addr_0x00752919  // 0x00752905    7212
                         cmp                ebx, 0x12                                     // 0x00752907    83fb12
                         {disp8} jae        _jmp_addr_0x00752911                          // 0x0075290a    7305
                         mov                ebx, 0x00000012                               // 0x0075290c    bb12000000
_jmp_addr_0x00752911:    cmp.s              ebx, edi                                      // 0x00752911    3bdf
                         {disp32} jae       _jmp_addr_0x007529b6                          // 0x00752913    0f839d000000
_jmp_addr_0x00752919:    mov                edx, dword ptr [esi]                          // 0x00752919    8b16
                         or                 byte ptr [esi + 0xe0], 8                      // 0x0075291b    808ee000000008
                         mov.s              ecx, esi                                      // 0x00752922    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x00752924    ff92d0080000
                         cmp.s              eax, edi                                      // 0x0075292a    3bc7
                         {disp32} jb        _jmp_addr_0x00752a62                          // 0x0075292c    0f8230010000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00752932    8b4640
                         test               eax, eax                                      // 0x00752935    85c0
                         {disp32} je        _jmp_addr_0x00752a62                          // 0x00752937    0f8425010000
                         mov                eax, dword ptr [esi]                          // 0x0075293d    8b06
                         mov.s              ecx, esi                                      // 0x0075293f    8bce
                         call               dword ptr [eax + 0x4a0]                       // 0x00752941    ff90a0040000
                         test               eax, eax                                      // 0x00752947    85c0
                         {disp8} je         _jmp_addr_0x00752963                          // 0x00752949    7418
_jmp_addr_0x0075294b:    {disp32} mov       edx, dword ptr [data_bytes + 0x3e0bc8]        // 0x0075294b    8b15c86bda00
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00752951    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00752954    8b01
                         push               edx                                           // 0x00752956    52
                         push               edx                                           // 0x00752957    52
                         call               dword ptr [eax + 0xf4]                        // 0x00752958    ff90f4000000
                         {disp32} jmp       _jmp_addr_0x00752a62                          // 0x0075295e    e9ff000000
_jmp_addr_0x00752963:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00752963    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + 0x0000020c]             // 0x00752966    8b810c020000
                         test               eax, eax                                      // 0x0075296c    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4d9e34]        // 0x0075296e    8b1534fee900
                         {disp8} jl         _jmp_addr_0x0075297a                          // 0x00752974    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00752976    3b02
                         {disp8} jl         _jmp_addr_0x0075297c                          // 0x00752978    7c02
_jmp_addr_0x0075297a:    xor.s              eax, eax                                      // 0x0075297a    33c0
_jmp_addr_0x0075297c:    {disp8} mov        eax, dword ptr [edx + eax * 0x4 + 0x04]       // 0x0075297c    8b448204
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00752980    89442414
                         {disp32} mov       eax, dword ptr [ecx + 0x00000208]             // 0x00752984    8b8108020000
                         test               eax, eax                                      // 0x0075298a    85c0
                         {disp8} jl         _jmp_addr_0x00752992                          // 0x0075298c    7c04
                         cmp                eax, dword ptr [edx]                          // 0x0075298e    3b02
                         {disp8} jl         _jmp_addr_0x00752994                          // 0x00752990    7c02
_jmp_addr_0x00752992:    xor.s              eax, eax                                      // 0x00752992    33c0
_jmp_addr_0x00752994:    {disp8} mov        edi, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00752994    8b7c8204
                         {disp32} mov       eax, dword ptr [ecx + 0x00000204]             // 0x00752998    8b8104020000
                         test               eax, eax                                      // 0x0075299e    85c0
                         {disp8} jl         _jmp_addr_0x007529a6                          // 0x007529a0    7c04
                         cmp                eax, dword ptr [edx]                          // 0x007529a2    3b02
                         {disp8} jl         _jmp_addr_0x007529a8                          // 0x007529a4    7c02
_jmp_addr_0x007529a6:    xor.s              eax, eax                                      // 0x007529a6    33c0
_jmp_addr_0x007529a8:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x007529a8    8b4e40
                         mov                ebp, dword ptr [ecx]                          // 0x007529ab    8b29
                         push               dword ptr [esp + 0x14]                        // 0x007529ad    ff742414
                         {disp32} jmp       _jmp_addr_0x00752a57                          // 0x007529b1    e9a1000000
_jmp_addr_0x007529b6:    mov                edx, dword ptr [esi]                          // 0x007529b6    8b16
                         .byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xf7, 0xff// and word ptr [esi + 0x000000e0], -0x0009 // 0x007529b8    6681a6e0000000f7ff
                         mov.s              ecx, esi                                      // 0x007529c1    8bce
                         call               dword ptr [edx + 0x8d0]                       // 0x007529c3    ff92d0080000
                         cmp.s              eax, edi                                      // 0x007529c9    3bc7
                         {disp32} jae       _jmp_addr_0x00752a62                          // 0x007529cb    0f8391000000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x007529d1    8b4640
                         test               eax, eax                                      // 0x007529d4    85c0
                         {disp32} je        _jmp_addr_0x00752a62                          // 0x007529d6    0f8486000000
                         mov                eax, dword ptr [esi]                          // 0x007529dc    8b06
                         mov.s              ecx, esi                                      // 0x007529de    8bce
                         call               dword ptr [eax + 0x4a0]                       // 0x007529e0    ff90a0040000
                         test               eax, eax                                      // 0x007529e6    85c0
                         {disp32} jne       _jmp_addr_0x0075294b                          // 0x007529e8    0f855dffffff
                         mov                edx, dword ptr [esi]                          // 0x007529ee    8b16
                         push               0x2                                           // 0x007529f0    6a02
                         mov.s              ecx, esi                                      // 0x007529f2    8bce
                         call               dword ptr [edx + 0x60c]                       // 0x007529f4    ff920c060000
                         test               eax, eax                                      // 0x007529fa    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x007529fc    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x00752a08                          // 0x00752a02    7c04
                         cmp                eax, dword ptr [ecx]                          // 0x00752a04    3b01
                         {disp8} jl         _jmp_addr_0x00752a0a                          // 0x00752a06    7c02
_jmp_addr_0x00752a08:    xor.s              eax, eax                                      // 0x00752a08    33c0
_jmp_addr_0x00752a0a:    {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x00752a0a    8b448104
                         mov                edx, dword ptr [esi]                          // 0x00752a0e    8b16
                         push               0x1                                           // 0x00752a10    6a01
                         mov.s              ecx, esi                                      // 0x00752a12    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00752a14    89442418
                         call               dword ptr [edx + 0x60c]                       // 0x00752a18    ff920c060000
                         test               eax, eax                                      // 0x00752a1e    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4d9e34]        // 0x00752a20    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x00752a2c                          // 0x00752a26    7c04
                         cmp                eax, dword ptr [ecx]                          // 0x00752a28    3b01
                         {disp8} jl         _jmp_addr_0x00752a2e                          // 0x00752a2a    7c02
_jmp_addr_0x00752a2c:    xor.s              eax, eax                                      // 0x00752a2c    33c0
_jmp_addr_0x00752a2e:    {disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x00752a2e    8b7c8104
                         mov                eax, dword ptr [esi]                          // 0x00752a32    8b06
                         push               0x0                                           // 0x00752a34    6a00
                         mov.s              ecx, esi                                      // 0x00752a36    8bce
                         call               dword ptr [eax + 0x60c]                       // 0x00752a38    ff900c060000
                         test               eax, eax                                      // 0x00752a3e    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4d9e34]        // 0x00752a40    8b1534fee900
                         {disp8} jl         _jmp_addr_0x00752a4c                          // 0x00752a46    7c04
                         cmp                eax, dword ptr [edx]                          // 0x00752a48    3b02
                         {disp8} jl         _jmp_addr_0x00752a4e                          // 0x00752a4a    7c02
_jmp_addr_0x00752a4c:    xor.s              eax, eax                                      // 0x00752a4c    33c0
_jmp_addr_0x00752a4e:    {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00752a4e    8b4e40
                         mov                ebp, dword ptr [ecx]                          // 0x00752a51    8b29
                         push               dword ptr [esp + 0x14]                        // 0x00752a53    ff742414
_jmp_addr_0x00752a57:    {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x00752a57    8b548204
                         push               edi                                           // 0x00752a5b    57
                         call               dword ptr [ebp + 0xf4]                        // 0x00752a5c    ff95f4000000
_jmp_addr_0x00752a62:    push               ebx                                           // 0x00752a62    53
                         mov.s              ecx, esi                                      // 0x00752a63    8bce
                         call               _jmp_addr_0x0074fb80                          // 0x00752a65    e816d1ffff
                         push               ebx                                           // 0x00752a6a    53
                         mov.s              ecx, esi                                      // 0x00752a6b    8bce
                         call               _jmp_addr_0x00752a90                          // 0x00752a6d    e81e000000
                         push               ebx                                           // 0x00752a72    53
                         mov.s              ecx, esi                                      // 0x00752a73    8bce
                         call               @SetAge__6LivingFUl@12                        // 0x00752a75    e846a8e9ff
                         pop                edi                                           // 0x00752a7a    5f
                         pop                esi                                           // 0x00752a7b    5e
                         pop                ebp                                           // 0x00752a7c    5d
                         pop                ebx                                           // 0x00752a7d    5b
                         ret                0x0004                                        // 0x00752a7e    c20400
                         nop                                                              // 0x00752a81    90
                         nop                                                              // 0x00752a82    90
                         nop                                                              // 0x00752a83    90
                         nop                                                              // 0x00752a84    90
                         nop                                                              // 0x00752a85    90
                         nop                                                              // 0x00752a86    90
                         nop                                                              // 0x00752a87    90
                         nop                                                              // 0x00752a88    90
                         nop                                                              // 0x00752a89    90
                         nop                                                              // 0x00752a8a    90
                         nop                                                              // 0x00752a8b    90
                         nop                                                              // 0x00752a8c    90
                         nop                                                              // 0x00752a8d    90
                         nop                                                              // 0x00752a8e    90
                         nop                                                              // 0x00752a8f    90
_jmp_addr_0x00752a90:    push               ebx                                           // 0x00752a90    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00752a91    8b5c2408
                         push               esi                                           // 0x00752a95    56
                         mov.s              esi, ecx                                      // 0x00752a96    8bf1
                         push               edi                                           // 0x00752a98    57
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x00752a99    8b7e28
                         cmp                ebx, dword ptr [edi + 0x00000138]             // 0x00752a9c    3b9f38010000
                         {disp8} jae        _jmp_addr_0x00752af5                          // 0x00752aa2    7351
                         mov                eax, dword ptr [esi]                          // 0x00752aa4    8b06
                         call               dword ptr [eax + 0x120]                       // 0x00752aa6    ff9020010000
                         {disp32} fsubr     dword ptr [edi + ebx * 0x4 + 0x000002ec]      // 0x00752aac    d8ac9fec020000
                         mov                edi, dword ptr [esi]                          // 0x00752ab3    8b3e
                         push               0x0000092f                                    // 0x00752ab5    682f090000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2274]              // 0x00752aba    d80d74b28a00
                         push               0x00c235dc                                    // 0x00752ac0    68dc35c200
                         push               ecx                                           // 0x00752ac5    51
                         fstp               dword ptr [esp]                               // 0x00752ac6    d91c24
                         call               _GameFloatRand__5GRandFf                      // 0x00752ac9    e862baf8ff
                         mov                edx, dword ptr [esi]                          // 0x00752ace    8b16
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00752ad0    d95c241c
                         add                esp, 0x0c                                     // 0x00752ad4    83c40c
                         mov.s              ecx, esi                                      // 0x00752ad7    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00752ad9    ff9220010000
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00752adf    d8442410
                         push               ecx                                           // 0x00752ae3    51
                         mov.s              ecx, esi                                      // 0x00752ae4    8bce
                         fstp               dword ptr [esp]                               // 0x00752ae6    d91c24
                         call               dword ptr [edi + 0x124]                       // 0x00752ae9    ff9724010000
                         pop                edi                                           // 0x00752aef    5f
                         pop                esi                                           // 0x00752af0    5e
                         pop                ebx                                           // 0x00752af1    5b
                         ret                0x0004                                        // 0x00752af2    c20400
_jmp_addr_0x00752af5:    push               0x00000933                                    // 0x00752af5    6833090000
                         push               0x00c235dc                                    // 0x00752afa    68dc35c200
                         push               0x3dcccccd                                    // 0x00752aff    68cdcccc3d
                         call               _GameFloatRand__5GRandFf                      // 0x00752b04    e827baf8ff
                         mov                eax, dword ptr [esi]                          // 0x00752b09    8b06
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x33f4]              // 0x00752b0b    d82df4c38a00
                         add                esp, 0x0c                                     // 0x00752b11    83c40c
                         mov.s              ecx, esi                                      // 0x00752b14    8bce
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00752b16    d80590a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752b1c    d95c2410
                         call               dword ptr [eax + 0x120]                       // 0x00752b20    ff9020010000
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00752b26    d85c2410
                         fnstsw             ax                                            // 0x00752b2a    dfe0
                         test               ah, 0x01                                      // 0x00752b2c    f6c401
                         {disp8} je         _jmp_addr_0x00752b56                          // 0x00752b2f    7425
                         push               0x00000933                                    // 0x00752b31    6833090000
                         push               0x00c235dc                                    // 0x00752b36    68dc35c200
                         push               0x3dcccccd                                    // 0x00752b3b    68cdcccc3d
                         call               _GameFloatRand__5GRandFf                      // 0x00752b40    e8ebb9f8ff
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x33f4]              // 0x00752b45    d82df4c38a00
                         add                esp, 0x0c                                     // 0x00752b4b    83c40c
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00752b4e    d80590a38a00
                         {disp8} jmp        _jmp_addr_0x00752b60                          // 0x00752b54    eb0a
_jmp_addr_0x00752b56:    mov                edx, dword ptr [esi]                          // 0x00752b56    8b16
                         mov.s              ecx, esi                                      // 0x00752b58    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00752b5a    ff9220010000
_jmp_addr_0x00752b60:    mov                eax, dword ptr [esi]                          // 0x00752b60    8b06
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752b62    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00752b66    8b4c2410
                         push               ecx                                           // 0x00752b6a    51
                         mov.s              ecx, esi                                      // 0x00752b6b    8bce
                         call               dword ptr [eax + 0x124]                       // 0x00752b6d    ff9024010000
                         pop                edi                                           // 0x00752b73    5f
                         pop                esi                                           // 0x00752b74    5e
                         pop                ebx                                           // 0x00752b75    5b
                         ret                0x0004                                        // 0x00752b76    c20400
                         nop                                                              // 0x00752b79    90
                         nop                                                              // 0x00752b7a    90
                         nop                                                              // 0x00752b7b    90
                         nop                                                              // 0x00752b7c    90
                         nop                                                              // 0x00752b7d    90
                         nop                                                              // 0x00752b7e    90
                         nop                                                              // 0x00752b7f    90
_jmp_addr_0x00752b80:    sub                esp, 0x0c                                     // 0x00752b80    83ec0c
                         push               esi                                           // 0x00752b83    56
                         mov.s              esi, ecx                                      // 0x00752b84    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00752b86    8b06
                         call               dword ptr [eax + 0x2c]                        // 0x00752b88    ff502c
                         test               eax, eax                                      // 0x00752b8b    85c0
                         {disp8} je         _jmp_addr_0x00752bc1                          // 0x00752b8d    7432
                         test               byte ptr [esi + 0x000000e0], 0x04             // 0x00752b8f    f686e000000004
                         {disp8} je         _jmp_addr_0x00752bc1                          // 0x00752b96    7429
                         push               0x0                                           // 0x00752b98    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00752b9a    8d4c2408
                         push               ecx                                           // 0x00752b9e    51
                         mov.s              ecx, esi                                      // 0x00752b9f    8bce
                         call               _jmp_addr_0x00753470                          // 0x00752ba1    e8ca080000
                         push               0x000000a3                                    // 0x00752ba6    68a3000000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00752bab    8d542408
                         push               edx                                           // 0x00752baf    52
                         mov.s              ecx, esi                                      // 0x00752bb0    8bce
                         call               _jmp_addr_0x00761400                          // 0x00752bb2    e849e80000
                         mov                eax, 0x00000001                               // 0x00752bb7    b801000000
                         pop                esi                                           // 0x00752bbc    5e
                         add                esp, 0x0c                                     // 0x00752bbd    83c40c
                         ret                                                              // 0x00752bc0    c3
_jmp_addr_0x00752bc1:    xor.s              eax, eax                                      // 0x00752bc1    33c0
                         pop                esi                                           // 0x00752bc3    5e
                         add                esp, 0x0c                                     // 0x00752bc4    83c40c
                         ret                                                              // 0x00752bc7    c3
                         nop                                                              // 0x00752bc8    90
                         nop                                                              // 0x00752bc9    90
                         nop                                                              // 0x00752bca    90
                         nop                                                              // 0x00752bcb    90
                         nop                                                              // 0x00752bcc    90
                         nop                                                              // 0x00752bcd    90
                         nop                                                              // 0x00752bce    90
                         nop                                                              // 0x00752bcf    90
                         push               esi                                           // 0x00752bd0    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00752bd1    8b74240c
                         push               edi                                           // 0x00752bd5    57
                         push               0x0                                           // 0x00752bd6    6a00
                         push               0x009c8ee8                                    // 0x00752bd8    68e88e9c00
                         push               0x009c7f50                                    // 0x00752bdd    68507f9c00
                         push               0x0                                           // 0x00752be2    6a00
                         push               esi                                           // 0x00752be4    56
                         mov.s              edi, ecx                                      // 0x00752be5    8bf9
                         call               _jmp_addr_0x007c5a19                          // 0x00752be7    e82d2e0700
                         add                esp, 0x14                                     // 0x00752bec    83c414
                         test               eax, eax                                      // 0x00752bef    85c0
                         {disp8} je         _jmp_addr_0x00752bfd                          // 0x00752bf1    740a
                         pop                edi                                           // 0x00752bf3    5f
                         mov                eax, 0x00000001                               // 0x00752bf4    b801000000
                         pop                esi                                           // 0x00752bf9    5e
                         ret                0x0008                                        // 0x00752bfa    c20800
_jmp_addr_0x00752bfd:    push               0x0                                           // 0x00752bfd    6a00
                         push               0x00be0360                                    // 0x00752bff    686003be00
                         push               0x009c7f50                                    // 0x00752c04    68507f9c00
                         push               0x0                                           // 0x00752c09    6a00
                         push               esi                                           // 0x00752c0b    56
                         call               _jmp_addr_0x007c5a19                          // 0x00752c0c    e8082e0700
                         add                esp, 0x14                                     // 0x00752c11    83c414
                         test               eax, eax                                      // 0x00752c14    85c0
                         {disp8} je         _jmp_addr_0x00752c2f                          // 0x00752c16    7417
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00752c18    8b4c240c
                         push               edi                                           // 0x00752c1c    57
                         push               ecx                                           // 0x00752c1d    51
                         mov.s              ecx, eax                                      // 0x00752c1e    8bc8
                         call               _jmp_addr_0x005fc4b0                          // 0x00752c20    e88b98eaff
                         cmp                eax, 0x01                                     // 0x00752c25    83f801
                         {disp8} jne        _jmp_addr_0x00752c2f                          // 0x00752c28    7505
                         pop                edi                                           // 0x00752c2a    5f
                         pop                esi                                           // 0x00752c2b    5e
                         ret                0x0008                                        // 0x00752c2c    c20800
_jmp_addr_0x00752c2f:    pop                edi                                           // 0x00752c2f    5f
                         xor.s              eax, eax                                      // 0x00752c30    33c0
                         pop                esi                                           // 0x00752c32    5e
                         ret                0x0008                                        // 0x00752c33    c20800
                         nop                                                              // 0x00752c36    90
                         nop                                                              // 0x00752c37    90
                         nop                                                              // 0x00752c38    90
                         nop                                                              // 0x00752c39    90
                         nop                                                              // 0x00752c3a    90
                         nop                                                              // 0x00752c3b    90
                         nop                                                              // 0x00752c3c    90
                         nop                                                              // 0x00752c3d    90
                         nop                                                              // 0x00752c3e    90
                         nop                                                              // 0x00752c3f    90
                         sub                esp, 0x00000198                               // 0x00752c40    81ec98010000
                         push               ebx                                           // 0x00752c46    53
                         push               ebp                                           // 0x00752c47    55
                         push               esi                                           // 0x00752c48    56
                         push               edi                                           // 0x00752c49    57
                         {disp32} mov       edi, dword ptr [esp + 0x000001b0]             // 0x00752c4a    8bbc24b0010000
                         push               0x0                                           // 0x00752c51    6a00
                         push               0x009c8ee8                                    // 0x00752c53    68e88e9c00
                         push               0x009c7f50                                    // 0x00752c58    68507f9c00
                         push               0x0                                           // 0x00752c5d    6a00
                         push               edi                                           // 0x00752c5f    57
                         mov.s              esi, ecx                                      // 0x00752c60    8bf1
                         call               _jmp_addr_0x007c5a19                          // 0x00752c62    e8b22d0700
                         mov.s              ebp, eax                                      // 0x00752c67    8be8
                         add                esp, 0x14                                     // 0x00752c69    83c414
                         test               ebp, ebp                                      // 0x00752c6c    85ed
                         {disp32} je        _jmp_addr_0x00752fc2                          // 0x00752c6e    0f844e030000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000100]             // 0x00752c74    8b8d00010000
                         mov                eax, dword ptr [ecx]                          // 0x00752c7a    8b01
                         call               dword ptr [eax + 0x890]                       // 0x00752c7c    ff9090080000
                         test               eax, eax                                      // 0x00752c82    85c0
                         {disp32} je        _jmp_addr_0x00752fb0                          // 0x00752c84    0f8426030000
                         xor.s              ecx, ecx                                      // 0x00752c8a    33c9
                         {disp8} mov        cx, word ptr [esi + 0x24]                     // 0x00752c8c    668b4e24
                         not                cx                                            // 0x00752c90    66f7d1
                         shr                ecx, 0xe                                      // 0x00752c93    c1e90e
                         test               cl, 0x01                                      // 0x00752c96    f6c101
                         {disp32} je        _jmp_addr_0x00752fb0                          // 0x00752c99    0f8411030000
                         mov                edx, dword ptr [esi]                          // 0x00752c9f    8b16
                         mov.s              ecx, esi                                      // 0x00752ca1    8bce
                         call               dword ptr [edx + 0x5c0]                       // 0x00752ca3    ff92c0050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752ca9    d95c2410
                         {disp32} mov       edi, dword ptr [esp + 0x000001ac]             // 0x00752cad    8bbc24ac010000
                         mov                eax, dword ptr [edi]                          // 0x00752cb4    8b07
                         {disp32} mov       ebx, dword ptr [ebp + 0x00000100]             // 0x00752cb6    8b9d00010000
                         mov.s              ecx, edi                                      // 0x00752cbc    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x00752cbe    ff501c
                         mov                edx, dword ptr [esi]                          // 0x00752cc1    8b16
                         mov.s              ecx, esi                                      // 0x00752cc3    8bce
                         call               dword ptr [edx + 0xaf8]                       // 0x00752cc5    ff92f80a0000
                         test               eax, eax                                      // 0x00752ccb    85c0
                         {disp8} je         _jmp_addr_0x00752cdd                          // 0x00752ccd    740e
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00752ccf    d9442410
                         {disp32} fmul      qword ptr [rdata_bytes + 0x18d8]              // 0x00752cd3    dc0dd8a88a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00752cd9    d95c2410
_jmp_addr_0x00752cdd:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00752cdd    d9442410
                         mov.s              ecx, edi                                      // 0x00752ce1    8bcf
                         {disp32} fadd      dword ptr [ebx + 0x000000f0]                  // 0x00752ce3    d883f0000000
                         {disp32} fstp      dword ptr [ebx + 0x000000f0]                  // 0x00752ce9    d99bf0000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00752cef    d9442410
                         {disp32} fadd      dword ptr [ebx + 0x000000f4]                  // 0x00752cf3    d883f4000000
                         {disp32} fstp      dword ptr [ebx + 0x000000f4]                  // 0x00752cf9    d99bf4000000
                         mov                eax, dword ptr [edi]                          // 0x00752cff    8b07
                         call               dword ptr [eax + 0x1c]                        // 0x00752d01    ff501c
                         test               eax, eax                                      // 0x00752d04    85c0
                         {disp8} je         _jmp_addr_0x00752d15                          // 0x00752d06    740d
                         push               0x0                                           // 0x00752d08    6a00
                         push               esi                                           // 0x00752d0a    56
                         push               0x28                                          // 0x00752d0b    6a28
                         push               edi                                           // 0x00752d0d    57
                         mov.s              ecx, eax                                      // 0x00752d0e    8bc8
                         call               _jmp_addr_0x004ea900                          // 0x00752d10    e8eb7bd9ff
_jmp_addr_0x00752d15:    test               edi, edi                                      // 0x00752d15    85ff
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00752d17    c744241400000000
                         {disp8} je         _jmp_addr_0x00752d2c                          // 0x00752d1f    740b
                         mov                edx, dword ptr [edi]                          // 0x00752d21    8b17
                         mov.s              ecx, edi                                      // 0x00752d23    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x00752d25    ff521c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00752d28    89442414
_jmp_addr_0x00752d2c:    mov                eax, dword ptr [esi]                          // 0x00752d2c    8b06
                         push               0x1                                           // 0x00752d2e    6a01
                         mov.s              ecx, esi                                      // 0x00752d30    8bce
                         call               dword ptr [eax + 0x11c]                       // 0x00752d32    ff901c010000
                         push               ecx                                           // 0x00752d38    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00752d39    8b4c241c
                         fstp               dword ptr [esp]                               // 0x00752d3d    d91c24
                         push               ecx                                           // 0x00752d40    51
                         push               0x7                                           // 0x00752d41    6a07
                         mov.s              ecx, esi                                      // 0x00752d43    8bce
                         call               _jmp_addr_0x007506c0                          // 0x00752d45    e876d9ffff
                         {disp8} lea        edx, dword ptr [ebp + 0x14]                   // 0x00752d4a    8d5514
                         mov                eax, dword ptr [edx]                          // 0x00752d4d    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x00752d4f    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00752d52    8b5208
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00752d55    89442424
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00752d59    8b4500
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00752d5c    894c2428
                         mov.s              ecx, ebp                                      // 0x00752d60    8bcd
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00752d62    8954242c
                         call               dword ptr [eax + 0x42c]                       // 0x00752d66    ff902c040000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00752d6c    d944242c
                         push               0x0                                           // 0x00752d70    6a00
                         fadd               st, st(1)                                     // 0x00752d72    d8c1
                         push               0x3f800000                                    // 0x00752d74    680000803f
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00752d79    8d4c242c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00752d7d    d95c2434
                         push               0x1b                                          // 0x00752d81    6a1b
                         push               ecx                                           // 0x00752d83    51
                         fstp               st(0)                                         // 0x00752d84    ddd8
                         call               _jmp_addr_0x0063e540                          // 0x00752d86    e8b5b7eeff
                         mov.s              ebp, eax                                      // 0x00752d8b    8be8
                         add                esp, 0x10                                     // 0x00752d8d    83c410
                         test               ebp, ebp                                      // 0x00752d90    85ed
                         {disp8} je         _jmp_addr_0x00752dac                          // 0x00752d92    7418
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00752d94    8b5500
                         mov                eax, dword ptr [ebx]                          // 0x00752d97    8b03
                         mov.s              ecx, ebx                                      // 0x00752d99    8bcb
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00752d9b    89542414
                         call               dword ptr [eax + 0x1c]                        // 0x00752d9f    ff501c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00752da2    8b542414
                         push               eax                                           // 0x00752da6    50
                         mov.s              ecx, ebp                                      // 0x00752da7    8bcd
                         call               dword ptr [edx + 0x20]                        // 0x00752da9    ff5220
_jmp_addr_0x00752dac:    test               edi, edi                                      // 0x00752dac    85ff
                         {disp32} je        _jmp_addr_0x00752eb5                          // 0x00752dae    0f8401010000
                         {disp32} mov       ecx, dword ptr [edi + 0x000000cc]             // 0x00752db4    8b8fcc000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000c8]             // 0x00752dba    8b87c8000000
                         {disp32} mov       edx, dword ptr [edi + 0x000000d0]             // 0x00752dc0    8b97d0000000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00752dc6    894c241c
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00752dca    8d4c2440
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00752dce    89442418
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00752dd2    89542420
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x00752dd6    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00752ddc    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x00752de2    8b81ac030000
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00752de8    8b542418
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00752dec    89442444
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00752df0    8b44241c
                         {disp8} mov        dword ptr [esp + 0x74], eax                   // 0x00752df4    89442474
                         {disp8} mov        dword ptr [esp + 0x70], edx                   // 0x00752df8    89542470
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00752dfc    8b542420
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00752e00    8d442440
                         mov                ebx, 0x00000001                               // 0x00752e04    bb01000000
                         push               eax                                           // 0x00752e09    50
                         {disp8} mov        dword ptr [esp + 0x68], 0x000000b3            // 0x00752e0a    c7442468b3000000
                         {disp8} mov        dword ptr [esp + 0x64], esi                   // 0x00752e12    89742464
                         {disp8} mov        dword ptr [esp + 0x4c], ebx                   // 0x00752e16    895c244c
                         {disp8} mov        dword ptr [esp + 0x7c], edx                   // 0x00752e1a    8954247c
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x00752e1e    c744245000000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x00752e26    e80570cdff
                         mov                edx, dword ptr [esi]                          // 0x00752e2b    8b16
                         mov.s              ecx, esi                                      // 0x00752e2d    8bce
                         call               dword ptr [edx + 0xaf8]                       // 0x00752e2f    ff92f80a0000
                         test               eax, eax                                      // 0x00752e35    85c0
                         {disp8} je         _jmp_addr_0x00752e65                          // 0x00752e37    742c
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00752e39    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003bc]             // 0x00752e3f    8b81bc030000
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00752e45    8d542440
                         push               edx                                           // 0x00752e49    52
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x00752e4a    89442448
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x00752e4e    e8dd6fcdff
                         push               0xa                                           // 0x00752e53    6a0a
                         push               0xd                                           // 0x00752e55    6a0d
                         call               _jmp_addr_0x0071ed40                          // 0x00752e57    e8e4befcff
                         add                esp, 0x08                                     // 0x00752e5c    83c408
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x00752e5f    89442464
                         {disp8} jmp        _jmp_addr_0x00752eab                          // 0x00752e63    eb46
_jmp_addr_0x00752e65:    {disp32} mov       eax, dword ptr [_global]                      // 0x00752e65    a1203bcd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003b0]             // 0x00752e6a    8b88b0030000
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x00752e70    8b5628
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x00752e73    894c2444
                         cmp                dword ptr [edx + 0x000001f8], ebx             // 0x00752e77    399af8010000
                         {disp8} jne        _jmp_addr_0x00752e88                          // 0x00752e7d    7509
                         push               0x6                                           // 0x00752e7f    6a06
                         push               0x00000218                                    // 0x00752e81    6818020000
                         {disp8} jmp        _jmp_addr_0x00752e8f                          // 0x00752e86    eb07
_jmp_addr_0x00752e88:    push               0x8                                           // 0x00752e88    6a08
                         push               0x000000dd                                    // 0x00752e8a    68dd000000
_jmp_addr_0x00752e8f:    call               _jmp_addr_0x0071ed40                          // 0x00752e8f    e8acbefcff
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00752e94    8b0d203bcd00
                         {disp8} mov        dword ptr [esp + 0x6c], eax                   // 0x00752e9a    8944246c
                         add                esp, 0x08                                     // 0x00752e9e    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00752ea1    8d442440
                         push               eax                                           // 0x00752ea5    50
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x00752ea6    e8856fcdff
_jmp_addr_0x00752eab:    {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00752eab    8d4c2440
                         call               dword ptr [rdata_bytes + 0x758]               // 0x00752eaf    ff1558978a00
_jmp_addr_0x00752eb5:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00752eb5    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x00752ebb    e8c029e0ff
                         cmp.s              edi, eax                                      // 0x00752ec0    3bf8
                         {disp32} jne       _jmp_addr_0x00752f95                          // 0x00752ec2    0f85cd000000
                         push               0x000009a6                                    // 0x00752ec8    68a6090000
                         push               0x00c235dc                                    // 0x00752ecd    68dc35c200
                         push               0x000000a0                                    // 0x00752ed2    68a0000000
                         call               ___nw__FUl                                    // 0x00752ed7    e8b4880800
                         xor.s              ebx, ebx                                      // 0x00752edc    33db
                         add                esp, 0x0c                                     // 0x00752ede    83c40c
                         cmp.s              eax, ebx                                      // 0x00752ee1    3bc3
                         {disp8} je         _jmp_addr_0x00752f01                          // 0x00752ee3    741c
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x00752ee5    895814
                         {disp8} mov        dword ptr [eax + 0x18], ebx                   // 0x00752ee8    895818
                         mov                dword ptr [eax], 0x008c589c                   // 0x00752eeb    c7009c588c00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5132e8]        // 0x00752ef1    8b0de892ed00
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00752ef7    894804
                         {disp32} mov       dword ptr [data_bytes + 0x5132e8], eax        // 0x00752efa    a3e892ed00
                         mov.s              ebx, eax                                      // 0x00752eff    8bd8
_jmp_addr_0x00752f01:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00752f01    d9442410
                         sub                esp, 0x08                                     // 0x00752f05    83ec08
                         fstp               qword ptr [esp]                               // 0x00752f08    dd1c24
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x00752f0b    8d542438
                         push               0x00bf3aa4                                    // 0x00752f0f    68a43abf00
                         push               edx                                           // 0x00752f14    52
                         call               _jmp_addr_0x007c57d2                          // 0x00752f15    e8b8280700
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00752f1a    8b0d5c19d000
                         add                esp, 0x10                                     // 0x00752f20    83c410
                         call               @MyInterface__5GGameFv@4                      // 0x00752f23    e82829e0ff
                         mov.s              edi, eax                                      // 0x00752f28    8bf8
                         {disp32} mov       eax, dword ptr [edi + 0x000003c0]             // 0x00752f2a    8b87c0030000
                         add                edi, 0x000003b8                               // 0x00752f30    81c7b8030000
                         mov.s              ecx, edi                                      // 0x00752f36    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00752f38    89442414
                         call               @GetAltitude__10LH3DIslandFRC13LH3DMapCoords@4// 0x00752f3c    e84f010b00
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x00752f41    d8442414
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00752f45    8d4c2410
                         mov                al, -0x01                                     // 0x00752f49    b0ff
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00752f4b    d95c241c
                         push               ecx                                           // 0x00752f4f    51
                         fild               dword ptr [edi]                               // 0x00752f50    db07
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x00752f52    8d542434
                         push               edx                                           // 0x00752f56    52
                         {disp8} mov        byte ptr [esp + 0x18], 0x00                   // 0x00752f57    c644241800
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00752f5c    d80da4a38a00
                         {disp8} mov        byte ptr [esp + 0x19], 0x00                   // 0x00752f62    c644241900
                         {disp8} mov        byte ptr [esp + 0x1a], al                     // 0x00752f67    8844241a
                         {disp8} mov        byte ptr [esp + 0x1b], al                     // 0x00752f6b    8844241b
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00752f6f    d95c2420
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00752f73    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00752f76    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00752f7c    d95c2428
                         call               _CHAR2WCHAR__FPc                              // 0x00752f80    e81bd10d00
                         add                esp, 0x04                                     // 0x00752f85    83c404
                         push               eax                                           // 0x00752f88    50
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x00752f89    8d442420
                         push               eax                                           // 0x00752f8d    50
                         mov.s              ecx, ebx                                      // 0x00752f8e    8bcb
                         call               _jmp_addr_0x00833a00                          // 0x00752f90    e86b0a0e00
_jmp_addr_0x00752f95:    mov                edx, dword ptr [esi]                          // 0x00752f95    8b16
                         push               0x0                                           // 0x00752f97    6a00
                         mov.s              ecx, esi                                      // 0x00752f99    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00752f9b    ff520c
                         pop                edi                                           // 0x00752f9e    5f
                         pop                esi                                           // 0x00752f9f    5e
                         pop                ebp                                           // 0x00752fa0    5d
                         mov                eax, 0x00000003                               // 0x00752fa1    b803000000
                         pop                ebx                                           // 0x00752fa6    5b
                         add                esp, 0x00000198                               // 0x00752fa7    81c498010000
                         ret                0x000c                                        // 0x00752fad    c20c00
_jmp_addr_0x00752fb0:    pop                edi                                           // 0x00752fb0    5f
                         pop                esi                                           // 0x00752fb1    5e
                         pop                ebp                                           // 0x00752fb2    5d
                         mov                eax, 0x00000017                               // 0x00752fb3    b817000000
                         pop                ebx                                           // 0x00752fb8    5b
                         add                esp, 0x00000198                               // 0x00752fb9    81c498010000
                         ret                0x000c                                        // 0x00752fbf    c20c00
_jmp_addr_0x00752fc2:    push               0x0                                           // 0x00752fc2    6a00
                         push               0x00be0360                                    // 0x00752fc4    686003be00
                         push               0x009c7f50                                    // 0x00752fc9    68507f9c00
                         push               0x0                                           // 0x00752fce    6a00
                         push               edi                                           // 0x00752fd0    57
                         call               _jmp_addr_0x007c5a19                          // 0x00752fd1    e8432a0700
                         mov.s              edi, eax                                      // 0x00752fd6    8bf8
                         add                esp, 0x14                                     // 0x00752fd8    83c414
                         test               edi, edi                                      // 0x00752fdb    85ff
                         {disp8} je         _jmp_addr_0x0075300a                          // 0x00752fdd    742b
                         {disp32} mov       ebx, dword ptr [esp + 0x000001ac]             // 0x00752fdf    8b9c24ac010000
                         push               esi                                           // 0x00752fe6    56
                         push               ebx                                           // 0x00752fe7    53
                         mov.s              ecx, edi                                      // 0x00752fe8    8bcf
                         call               _jmp_addr_0x005fc4b0                          // 0x00752fea    e8c194eaff
                         cmp                eax, 0x01                                     // 0x00752fef    83f801
                         {disp8} jne        _jmp_addr_0x0075300a                          // 0x00752ff2    7516
                         push               esi                                           // 0x00752ff4    56
                         push               ebx                                           // 0x00752ff5    53
                         mov.s              ecx, edi                                      // 0x00752ff6    8bcf
                         call               _jmp_addr_0x005fc4f0                          // 0x00752ff8    e8f394eaff
                         pop                edi                                           // 0x00752ffd    5f
                         pop                esi                                           // 0x00752ffe    5e
                         pop                ebp                                           // 0x00752fff    5d
                         pop                ebx                                           // 0x00753000    5b
                         add                esp, 0x00000198                               // 0x00753001    81c498010000
                         ret                0x000c                                        // 0x00753007    c20c00
_jmp_addr_0x0075300a:    pop                edi                                           // 0x0075300a    5f
                         pop                esi                                           // 0x0075300b    5e
                         pop                ebp                                           // 0x0075300c    5d
                         xor.s              eax, eax                                      // 0x0075300d    33c0
                         pop                ebx                                           // 0x0075300f    5b
                         add                esp, 0x00000198                               // 0x00753010    81c498010000
                         ret                0x000c                                        // 0x00753016    c20c00
                         nop                                                              // 0x00753019    90
                         nop                                                              // 0x0075301a    90
                         nop                                                              // 0x0075301b    90
                         nop                                                              // 0x0075301c    90
                         nop                                                              // 0x0075301d    90
                         nop                                                              // 0x0075301e    90
                         nop                                                              // 0x0075301f    90
                         mov                eax, dword ptr [ecx]                          // 0x00753020    8b01
                         call               dword ptr [eax + 0x458]                       // 0x00753022    ff9058040000
                         neg                eax                                           // 0x00753028    f7d8
                         sbb.s              eax, eax                                      // 0x0075302a    1bc0
                         neg                eax                                           // 0x0075302c    f7d8
                         add                eax, 0x04                                     // 0x0075302e    83c004
                         ret                                                              // 0x00753031    c3
                         nop                                                              // 0x00753032    90
                         nop                                                              // 0x00753033    90
                         nop                                                              // 0x00753034    90
                         nop                                                              // 0x00753035    90
                         nop                                                              // 0x00753036    90
                         nop                                                              // 0x00753037    90
                         nop                                                              // 0x00753038    90
                         nop                                                              // 0x00753039    90
                         nop                                                              // 0x0075303a    90
                         nop                                                              // 0x0075303b    90
                         nop                                                              // 0x0075303c    90
                         nop                                                              // 0x0075303d    90
                         nop                                                              // 0x0075303e    90
                         nop                                                              // 0x0075303f    90
                         push               esi                                           // 0x00753040    56
                         mov.s              esi, ecx                                      // 0x00753041    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00753043    8b4c2408
                         mov                eax, dword ptr [esi]                          // 0x00753047    8b06
                         push               ecx                                           // 0x00753049    51
                         mov.s              ecx, esi                                      // 0x0075304a    8bce
                         call               dword ptr [eax + 0x13c]                       // 0x0075304c    ff903c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00753052    d95c2408
                         mov                edx, dword ptr [esi]                          // 0x00753056    8b16
                         mov.s              ecx, esi                                      // 0x00753058    8bce
                         call               dword ptr [edx + 0x130]                       // 0x0075305a    ff9230010000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00753060    d85c2408
                         pop                esi                                           // 0x00753064    5e
                         fnstsw             ax                                            // 0x00753065    dfe0
                         test               ah, 0x41                                      // 0x00753067    f6c441
                         {disp8} jne        _jmp_addr_0x00753074                          // 0x0075306a    7508
                         mov                eax, 0x00000001                               // 0x0075306c    b801000000
                         ret                0x0004                                        // 0x00753071    c20400
_jmp_addr_0x00753074:    xor.s              eax, eax                                      // 0x00753074    33c0
                         ret                0x0004                                        // 0x00753076    c20400
                         nop                                                              // 0x00753079    90
                         nop                                                              // 0x0075307a    90
                         nop                                                              // 0x0075307b    90
                         nop                                                              // 0x0075307c    90
                         nop                                                              // 0x0075307d    90
                         nop                                                              // 0x0075307e    90
                         nop                                                              // 0x0075307f    90
                         push               esi                                           // 0x00753080    56
                         mov.s              esi, ecx                                      // 0x00753081    8bf1
                         or                 byte ptr [esi + 0xe0], 0x20                   // 0x00753083    808ee000000020
                         cmp                byte ptr [esi + 0x0000008d], 0x7b             // 0x0075308a    80be8d0000007b
                         push               edi                                           // 0x00753091    57
                         {disp8} jne        _jmp_addr_0x007530c0                          // 0x00753092    752c
                         {disp32} mov       eax, dword ptr [esi + 0x00000118]             // 0x00753094    8b8618010000
                         test               eax, eax                                      // 0x0075309a    85c0
                         {disp8} je         _jmp_addr_0x007530c0                          // 0x0075309c    7422
                         {disp32} mov       dword ptr [eax + 0x00000118], 0x00000000      // 0x0075309e    c7801801000000000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000118]             // 0x007530a8    8b8e18010000
                         mov                eax, dword ptr [ecx]                          // 0x007530ae    8b01
                         call               dword ptr [eax + 0x8c8]                       // 0x007530b0    ff90c8080000
                         {disp32} mov       dword ptr [esi + 0x00000118], 0x00000000      // 0x007530b6    c7861801000000000000
_jmp_addr_0x007530c0:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x007530c0    8b7c240c
                         mov                edx, dword ptr [edi]                          // 0x007530c4    8b17
                         push               ebp                                           // 0x007530c6    55
                         mov.s              ecx, edi                                      // 0x007530c7    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x007530c9    ff521c
                         mov.s              ebp, eax                                      // 0x007530cc    8be8
                         mov                eax, dword ptr [esi]                          // 0x007530ce    8b06
                         mov.s              ecx, esi                                      // 0x007530d0    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x007530d2    ff501c
                         cmp.s              eax, ebp                                      // 0x007530d5    3bc5
                         pop                ebp                                           // 0x007530d7    5d
                         {disp8} jne        _jmp_addr_0x007530fa                          // 0x007530d8    7520
                         mov.s              ecx, esi                                      // 0x007530da    8bce
                         call               _jmp_addr_0x00761090                          // 0x007530dc    e8afdf0000
                         test               eax, eax                                      // 0x007530e1    85c0
                         {disp8} je         _jmp_addr_0x007530fa                          // 0x007530e3    7415
                         mov                edx, dword ptr [edi]                          // 0x007530e5    8b17
                         push               0x0                                           // 0x007530e7    6a00
                         mov.s              ecx, edi                                      // 0x007530e9    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x007530eb    ff521c
                         push               eax                                           // 0x007530ee    50
                         push               0x20                                          // 0x007530ef    6a20
                         push               esi                                           // 0x007530f1    56
                         call               _CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri                          // 0x007530f2    e8790cf9ff
                         add                esp, 0x10                                     // 0x007530f7    83c410
_jmp_addr_0x007530fa:    push               edi                                           // 0x007530fa    57
                         mov.s              ecx, esi                                      // 0x007530fb    8bce
                         call               _jmp_addr_0x005eccb0                          // 0x007530fd    e8ae9be9ff
                         pop                edi                                           // 0x00753102    5f
                         pop                esi                                           // 0x00753103    5e
                         ret                0x0004                                        // 0x00753104    c20400
                         nop                                                              // 0x00753107    90
                         nop                                                              // 0x00753108    90
                         nop                                                              // 0x00753109    90
                         nop                                                              // 0x0075310a    90
                         nop                                                              // 0x0075310b    90
                         nop                                                              // 0x0075310c    90
                         nop                                                              // 0x0075310d    90
                         nop                                                              // 0x0075310e    90
                         nop                                                              // 0x0075310f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00753110    8b442408
                         push               esi                                           // 0x00753114    56
                         mov.s              esi, ecx                                      // 0x00753115    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00753117    8b4c2408
                         push               eax                                           // 0x0075311b    50
                         push               ecx                                           // 0x0075311c    51
                         call               _jmp_addr_0x0074dce0                          // 0x0075311d    e8beabffff
                         add                esp, 0x04                                     // 0x00753122    83c404
                         push               eax                                           // 0x00753125    50
                         mov.s              ecx, esi                                      // 0x00753126    8bce
                         call               @SetSpeed__8VillagerFli@16                    // 0x00753128    e8a3ddffff
                         pop                esi                                           // 0x0075312d    5e
                         ret                0x0008                                        // 0x0075312e    c20800
                         nop                                                              // 0x00753131    90
                         nop                                                              // 0x00753132    90
                         nop                                                              // 0x00753133    90
                         nop                                                              // 0x00753134    90
                         nop                                                              // 0x00753135    90
                         nop                                                              // 0x00753136    90
                         nop                                                              // 0x00753137    90
                         nop                                                              // 0x00753138    90
                         nop                                                              // 0x00753139    90
                         nop                                                              // 0x0075313a    90
                         nop                                                              // 0x0075313b    90
                         nop                                                              // 0x0075313c    90
                         nop                                                              // 0x0075313d    90
                         nop                                                              // 0x0075313e    90
                         nop                                                              // 0x0075313f    90
_jmp_addr_0x00753140:    push               ecx                                           // 0x00753140    51
                         mov                eax, dword ptr [ecx]                          // 0x00753141    8b01
                         call               dword ptr [eax + 0xb04]                       // 0x00753143    ff90040b0000
                         {disp8} mov        byte ptr [esp + 0x00], al                     // 0x00753149    88442400
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x0075314d    8b442400
                         and                eax, 0x000000ff                               // 0x00753151    25ff000000
                         lea                eax, dword ptr [eax + eax * 0x8]              // 0x00753156    8d04c0
                         shl                eax, 4                                        // 0x00753159    c1e004
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091b8]             // 0x0075315c    8b88b891d000
                         cmp                ecx, 0x007597b0                               // 0x00753162    81f9b0977500
                         {disp8} jne        _jmp_addr_0x00753190                          // 0x00753168    7526
                         test               ecx, ecx                                      // 0x0075316a    85c9
                         {disp8} je         _jmp_addr_0x0075318c                          // 0x0075316c    741e
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091bc]             // 0x0075316e    8b88bc91d000
                         test               ecx, ecx                                      // 0x00753174    85c9
                         {disp8} jne        _jmp_addr_0x00753190                          // 0x00753176    7518
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091c0]             // 0x00753178    8b88c091d000
                         test               ecx, ecx                                      // 0x0075317e    85c9
                         {disp8} jne        _jmp_addr_0x00753190                          // 0x00753180    750e
                         {disp32} mov       ecx, dword ptr [eax + 0x00d091c4]             // 0x00753182    8b88c491d000
                         test               ecx, ecx                                      // 0x00753188    85c9
                         {disp8} jne        _jmp_addr_0x00753190                          // 0x0075318a    7504
_jmp_addr_0x0075318c:    mov                al, 0x01                                      // 0x0075318c    b001
                         pop                ecx                                           // 0x0075318e    59
                         ret                                                              // 0x0075318f    c3
_jmp_addr_0x00753190:    xor.s              al, al                                        // 0x00753190    32c0
                         pop                ecx                                           // 0x00753192    59
                         ret                                                              // 0x00753193    c3
                         nop                                                              // 0x00753194    90
                         nop                                                              // 0x00753195    90
                         nop                                                              // 0x00753196    90
                         nop                                                              // 0x00753197    90
                         nop                                                              // 0x00753198    90
                         nop                                                              // 0x00753199    90
                         nop                                                              // 0x0075319a    90
                         nop                                                              // 0x0075319b    90
                         nop                                                              // 0x0075319c    90
                         nop                                                              // 0x0075319d    90
                         nop                                                              // 0x0075319e    90
                         nop                                                              // 0x0075319f    90
_jmp_addr_0x007531a0:    {disp32} mov       eax, dword ptr [_game]                        // 0x007531a0    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205bfc]             // 0x007531a5    8b80fc5b2000
                         test               eax, eax                                      // 0x007531ab    85c0
                         {disp8} je         _jmp_addr_0x007531bd                          // 0x007531ad    740e
_jmp_addr_0x007531af:    cmp.s              eax, ecx                                      // 0x007531af    3bc1
                         {disp8} je         _jmp_addr_0x007531bd                          // 0x007531b1    740a
                         {disp32} mov       eax, dword ptr [eax + 0x000000e4]             // 0x007531b3    8b80e4000000
                         test               eax, eax                                      // 0x007531b9    85c0
                         {disp8} jne        _jmp_addr_0x007531af                          // 0x007531bb    75f2
_jmp_addr_0x007531bd:    xor.s              ecx, ecx                                      // 0x007531bd    33c9
                         test               eax, eax                                      // 0x007531bf    85c0
                         setne              cl                                            // 0x007531c1    0f95c1
                         mov.s              eax, ecx                                      // 0x007531c4    8bc1
                         ret                                                              // 0x007531c6    c3
                         nop                                                              // 0x007531c7    90
                         nop                                                              // 0x007531c8    90
                         nop                                                              // 0x007531c9    90
                         nop                                                              // 0x007531ca    90
                         nop                                                              // 0x007531cb    90
                         nop                                                              // 0x007531cc    90
                         nop                                                              // 0x007531cd    90
                         nop                                                              // 0x007531ce    90
                         nop                                                              // 0x007531cf    90
_jmp_addr_0x007531d0:    push               ecx                                           // 0x007531d0    51
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007531d1    a15c19d000
                         push               esi                                           // 0x007531d6    56
                         mov.s              esi, ecx                                      // 0x007531d7    8bf1
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x007531d9    8b4814
                         test               ch, -0x80                                     // 0x007531dc    f6c580
                         {disp32} jne       _jmp_addr_0x00753335                          // 0x007531df    0f8550010000
                         {disp32} mov       eax, dword ptr [esi + 0x000000b8]             // 0x007531e5    8b86b8000000
                         test               eax, eax                                      // 0x007531eb    85c0
                         {disp8} je         _jmp_addr_0x00753209                          // 0x007531ed    741a
                         cmp                dword ptr [eax + 0x30], esi                   // 0x007531ef    397030
                         {disp8} jne        _jmp_addr_0x007531fb                          // 0x007531f2    7507
                         {disp8} mov        dword ptr [eax + 0x30], 0x00000000            // 0x007531f4    c7403000000000
_jmp_addr_0x007531fb:    {disp32} mov       ecx, dword ptr [esi + 0x000000b8]             // 0x007531fb    8b8eb8000000
                         push               0x0                                           // 0x00753201    6a00
                         push               esi                                           // 0x00753203    56
                         call               _jmp_addr_0x0052fb50                          // 0x00753204    e847c9ddff
_jmp_addr_0x00753209:    test               byte ptr [esi + 0x24], 0x44                   // 0x00753209    f6462444
                         mov                edx, dword ptr [esi]                          // 0x0075320d    8b16
                         mov.s              ecx, esi                                      // 0x0075320f    8bce
                         {disp32} jne       _jmp_addr_0x007532e6                          // 0x00753211    0f85cf000000
                         call               dword ptr [edx + 0x11c]                       // 0x00753217    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0075321d    d81d98a38a00
                         mov.s              ecx, esi                                      // 0x00753223    8bce
                         fnstsw             ax                                            // 0x00753225    dfe0
                         test               ah, 0x41                                      // 0x00753227    f6c441
                         mov                eax, dword ptr [esi]                          // 0x0075322a    8b06
                         {disp8} je         _jmp_addr_0x00753283                          // 0x0075322c    7455
                         call               dword ptr [eax + 0x6c]                        // 0x0075322e    ff506c
                         test               eax, eax                                      // 0x00753231    85c0
                         {disp8} je         _jmp_addr_0x0075323e                          // 0x00753233    7409
                         mov                edx, dword ptr [eax]                          // 0x00753235    8b10
                         mov.s              ecx, eax                                      // 0x00753237    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x00753239    ff521c
                         {disp8} jmp        _jmp_addr_0x00753240                          // 0x0075323c    eb02
_jmp_addr_0x0075323e:    xor.s              eax, eax                                      // 0x0075323e    33c0
_jmp_addr_0x00753240:    push               0x1                                           // 0x00753240    6a01
                         push               0x0                                           // 0x00753242    6a00
                         push               eax                                           // 0x00753244    50
                         push               0x0                                           // 0x00753245    6a00
                         mov.s              ecx, esi                                      // 0x00753247    8bce
                         call               _jmp_addr_0x007506c0                          // 0x00753249    e872d4ffff
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]               // 0x0075324e    8a868c000000
                         mov                edx, dword ptr [esi]                          // 0x00753254    8b16
                         {disp8} mov        byte ptr [esp + 0x04], al                     // 0x00753256    88442404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0075325a    8b442404
                         and                eax, 0x000000ff                               // 0x0075325e    25ff000000
                         push               eax                                           // 0x00753263    50
                         mov.s              ecx, esi                                      // 0x00753264    8bce
                         call               dword ptr [edx + 0x970]                       // 0x00753266    ff9270090000
                         test               eax, eax                                      // 0x0075326c    85c0
                         {disp32} jne       _jmp_addr_0x00753335                          // 0x0075326e    0f85c1000000
                         mov                edx, dword ptr [esi]                          // 0x00753274    8b16
                         push               0xf                                           // 0x00753276    6a0f
                         mov.s              ecx, esi                                      // 0x00753278    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x0075327a    ff92e8080000
                         pop                esi                                           // 0x00753280    5e
                         pop                ecx                                           // 0x00753281    59
                         ret                                                              // 0x00753282    c3
_jmp_addr_0x00753283:    call               dword ptr [eax + 0x48]                        // 0x00753283    ff5048
                         test               eax, eax                                      // 0x00753286    85c0
                         {disp8} je         _jmp_addr_0x00753297                          // 0x00753288    740d
                         mov                edx, dword ptr [esi]                          // 0x0075328a    8b16
                         mov.s              ecx, esi                                      // 0x0075328c    8bce
                         call               dword ptr [edx + 0x8c8]                       // 0x0075328e    ff92c8080000
                         pop                esi                                           // 0x00753294    5e
                         pop                ecx                                           // 0x00753295    59
                         ret                                                              // 0x00753296    c3
_jmp_addr_0x00753297:    {disp32} mov       eax, dword ptr [_game]                        // 0x00753297    a15c19d000
                         {disp32} lea       ecx, dword ptr [eax + 0x00205bfc]             // 0x0075329c    8d88fc5b2000
                         mov                eax, dword ptr [ecx]                          // 0x007532a2    8b01
                         test               eax, eax                                      // 0x007532a4    85c0
                         {disp8} je         _jmp_addr_0x007532bc                          // 0x007532a6    7414
_jmp_addr_0x007532a8:    cmp.s              eax, esi                                      // 0x007532a8    3bc6
                         {disp8} je         _jmp_addr_0x007532b8                          // 0x007532aa    740c
                         {disp32} mov       eax, dword ptr [eax + 0x000000e4]             // 0x007532ac    8b80e4000000
                         test               eax, eax                                      // 0x007532b2    85c0
                         {disp8} jne        _jmp_addr_0x007532a8                          // 0x007532b4    75f2
                         {disp8} jmp        _jmp_addr_0x007532bc                          // 0x007532b6    eb04
_jmp_addr_0x007532b8:    test               eax, eax                                      // 0x007532b8    85c0
                         {disp8} jne        _jmp_addr_0x007532cd                          // 0x007532ba    7511
_jmp_addr_0x007532bc:    mov                edx, dword ptr [ecx]                          // 0x007532bc    8b11
                         {disp32} mov       dword ptr [esi + 0x000000e4], edx             // 0x007532be    8996e4000000
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x007532c4    8b4104
                         inc                eax                                           // 0x007532c7    40
                         mov                dword ptr [ecx], esi                          // 0x007532c8    8931
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007532ca    894104
_jmp_addr_0x007532cd:    mov                eax, dword ptr [esi]                          // 0x007532cd    8b06
                         push               0x00000082                                    // 0x007532cf    6882000000
                         mov.s              ecx, esi                                      // 0x007532d4    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x007532d6    ff90e8080000
                         mov.s              ecx, esi                                      // 0x007532dc    8bce
                         call               _jmp_addr_0x0076a8d0                          // 0x007532de    e8ed750100
                         pop                esi                                           // 0x007532e3    5e
                         pop                ecx                                           // 0x007532e4    59
                         ret                                                              // 0x007532e5    c3
_jmp_addr_0x007532e6:    call               dword ptr [edx + 0x48]                        // 0x007532e6    ff5248
                         test               eax, eax                                      // 0x007532e9    85c0
                         {disp8} jne        _jmp_addr_0x00753335                          // 0x007532eb    7548
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007532ed    a15c19d000
                         {disp32} lea       ecx, dword ptr [eax + 0x00205bfc]             // 0x007532f2    8d88fc5b2000
                         mov                eax, dword ptr [ecx]                          // 0x007532f8    8b01
                         test               eax, eax                                      // 0x007532fa    85c0
                         {disp8} je         _jmp_addr_0x00753324                          // 0x007532fc    7426
_jmp_addr_0x007532fe:    cmp.s              eax, esi                                      // 0x007532fe    3bc6
                         {disp8} je         _jmp_addr_0x00753320                          // 0x00753300    741e
                         {disp32} mov       eax, dword ptr [eax + 0x000000e4]             // 0x00753302    8b80e4000000
                         test               eax, eax                                      // 0x00753308    85c0
                         {disp8} jne        _jmp_addr_0x007532fe                          // 0x0075330a    75f2
                         mov                edx, dword ptr [ecx]                          // 0x0075330c    8b11
                         {disp32} mov       dword ptr [esi + 0x000000e4], edx             // 0x0075330e    8996e4000000
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00753314    8b4104
                         inc                eax                                           // 0x00753317    40
                         mov                dword ptr [ecx], esi                          // 0x00753318    8931
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0075331a    894104
                         pop                esi                                           // 0x0075331d    5e
                         pop                ecx                                           // 0x0075331e    59
                         ret                                                              // 0x0075331f    c3
_jmp_addr_0x00753320:    test               eax, eax                                      // 0x00753320    85c0
                         {disp8} jne        _jmp_addr_0x00753335                          // 0x00753322    7511
_jmp_addr_0x00753324:    mov                edx, dword ptr [ecx]                          // 0x00753324    8b11
                         {disp32} mov       dword ptr [esi + 0x000000e4], edx             // 0x00753326    8996e4000000
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0075332c    8b4104
                         inc                eax                                           // 0x0075332f    40
                         mov                dword ptr [ecx], esi                          // 0x00753330    8931
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00753332    894104
_jmp_addr_0x00753335:    pop                esi                                           // 0x00753335    5e
                         pop                ecx                                           // 0x00753336    59
                         ret                                                              // 0x00753337    c3
                         nop                                                              // 0x00753338    90
                         nop                                                              // 0x00753339    90
                         nop                                                              // 0x0075333a    90
                         nop                                                              // 0x0075333b    90
                         nop                                                              // 0x0075333c    90
                         nop                                                              // 0x0075333d    90
                         nop                                                              // 0x0075333e    90
                         nop                                                              // 0x0075333f    90
_jmp_addr_0x00753340:    push               esi                                           // 0x00753340    56
                         mov.s              esi, ecx                                      // 0x00753341    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00753343    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00753345    ff5048
                         test               eax, eax                                      // 0x00753348    85c0
                         {disp8} je         _jmp_addr_0x0075336f                          // 0x0075334a    7423
                         mov                edx, dword ptr [esi]                          // 0x0075334c    8b16
                         push               esi                                           // 0x0075334e    56
                         mov.s              ecx, esi                                      // 0x0075334f    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00753351    ff5248
                         mov.s              ecx, eax                                      // 0x00753354    8bc8
                         call               @RemoveVillager__4TownFP8Villager@12          // 0x00753356    e8b5aefeff
                         push               0x0                                           // 0x0075335b    6a00
                         mov.s              ecx, esi                                      // 0x0075335d    8bce
                         call               _jmp_addr_0x00756530                          // 0x0075335f    e8cc310000
                         and                word ptr [esi + 0x000000b4], -0x0401          // 0x00753364    6681a6b4000000fffb
                         pop                esi                                           // 0x0075336d    5e
                         ret                                                              // 0x0075336e    c3
_jmp_addr_0x0075336f:    mov.s              ecx, esi                                      // 0x0075336f    8bce
                         call               _jmp_addr_0x007531d0                          // 0x00753371    e85afeffff
                         and                word ptr [esi + 0x000000b4], -0x0401          // 0x00753376    6681a6b4000000fffb
                         pop                esi                                           // 0x0075337f    5e
                         ret                                                              // 0x00753380    c3
                         nop                                                              // 0x00753381    90
                         nop                                                              // 0x00753382    90
                         nop                                                              // 0x00753383    90
                         nop                                                              // 0x00753384    90
                         nop                                                              // 0x00753385    90
                         nop                                                              // 0x00753386    90
                         nop                                                              // 0x00753387    90
                         nop                                                              // 0x00753388    90
                         nop                                                              // 0x00753389    90
                         nop                                                              // 0x0075338a    90
                         nop                                                              // 0x0075338b    90
                         nop                                                              // 0x0075338c    90
                         nop                                                              // 0x0075338d    90
                         nop                                                              // 0x0075338e    90
                         nop                                                              // 0x0075338f    90
_jmp_addr_0x00753390:    push               ebx                                           // 0x00753390    53
                         push               ebp                                           // 0x00753391    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00753392    8b6c2410
                         push               esi                                           // 0x00753396    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00753397    8b742410
                         mov                eax, dword ptr [esi]                          // 0x0075339b    8b06
                         push               edi                                           // 0x0075339d    57
                         mov.s              edi, ecx                                      // 0x0075339e    8bf9
                         movsx              ecx, word ptr [esp + 0x1c]                    // 0x007533a0    0fbf4c241c
                         push               0x0                                           // 0x007533a5    6a00
                         push               0x0                                           // 0x007533a7    6a00
                         push               ecx                                           // 0x007533a9    51
                         push               ebp                                           // 0x007533aa    55
                         mov.s              ecx, esi                                      // 0x007533ab    8bce
                         call               dword ptr [eax + 0xa0]                        // 0x007533ad    ff90a0000000
                         mov.s              ebx, eax                                      // 0x007533b3    8bd8
                         test               bx, bx                                        // 0x007533b5    6685db
                         {disp8} je         _jmp_addr_0x00753402                          // 0x007533b8    7448
                         mov                edx, dword ptr [esi]                          // 0x007533ba    8b16
                         mov.s              ecx, esi                                      // 0x007533bc    8bce
                         call               dword ptr [edx + 0x820]                       // 0x007533be    ff9220080000
                         push               eax                                           // 0x007533c4    50
                         push               ebx                                           // 0x007533c5    53
                         push               ebp                                           // 0x007533c6    55
                         mov.s              ecx, edi                                      // 0x007533c7    8bcf
                         call               _jmp_addr_0x007513f0                          // 0x007533c9    e822e0ffff
                         mov                eax, dword ptr [esi]                          // 0x007533ce    8b06
                         mov.s              ecx, esi                                      // 0x007533d0    8bce
                         call               dword ptr [eax + 0x4a8]                       // 0x007533d2    ff90a8040000
                         test               al, al                                        // 0x007533d8    84c0
                         {disp8} je         _jmp_addr_0x007533e8                          // 0x007533da    740c
                         mov                edx, dword ptr [edi]                          // 0x007533dc    8b17
                         push               0x1                                           // 0x007533de    6a01
                         mov.s              ecx, edi                                      // 0x007533e0    8bcf
                         call               dword ptr [edx + 0x878]                       // 0x007533e2    ff9278080000
_jmp_addr_0x007533e8:    mov                eax, dword ptr [esi]                          // 0x007533e8    8b06
                         mov.s              ecx, esi                                      // 0x007533ea    8bce
                         call               dword ptr [eax + 0x4a4]                       // 0x007533ec    ff90a4040000
                         test               al, al                                        // 0x007533f2    84c0
                         {disp8} je         _jmp_addr_0x00753402                          // 0x007533f4    740c
                         mov                edx, dword ptr [edi]                          // 0x007533f6    8b17
                         push               0x1                                           // 0x007533f8    6a01
                         mov.s              ecx, edi                                      // 0x007533fa    8bcf
                         call               dword ptr [edx + 0x69c]                       // 0x007533fc    ff929c060000
_jmp_addr_0x00753402:    pop                edi                                           // 0x00753402    5f
                         pop                esi                                           // 0x00753403    5e
                         pop                ebp                                           // 0x00753404    5d
                         mov.s              ax, bx                                        // 0x00753405    668bc3
                         pop                ebx                                           // 0x00753408    5b
                         ret                0x000c                                        // 0x00753409    c20c00
                         nop                                                              // 0x0075340c    90
                         nop                                                              // 0x0075340d    90
                         nop                                                              // 0x0075340e    90
                         nop                                                              // 0x0075340f    90
                         {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00753410    8a442404
                         test               al, al                                        // 0x00753414    84c0
                         {disp8} je         _jmp_addr_0x00753422                          // 0x00753416    740a
                         {disp32} mov       byte ptr [ecx + 0x000000f0], -0x01            // 0x00753418    c681f0000000ff
                         ret                0x0004                                        // 0x0075341f    c20400
_jmp_addr_0x00753422:    {disp32} mov       byte ptr [ecx + 0x000000f0], 0x00             // 0x00753422    c681f000000000
                         ret                0x0004                                        // 0x00753429    c20400
                         nop                                                              // 0x0075342c    90
                         nop                                                              // 0x0075342d    90
                         nop                                                              // 0x0075342e    90
                         nop                                                              // 0x0075342f    90
@ProcessFoodSpeedup__8VillagerFv@4:    push               esi                                           // 0x00753430    56
                         mov.s              esi, ecx                                      // 0x00753431    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00753433    8b06
                         call               dword ptr [eax + 0x87c]                       // 0x00753435    ff907c080000
                         test               al, al                                        // 0x0075343b    84c0
                         {disp8} je         _jmp_addr_0x0075345e                          // 0x0075343d    741f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0075343f    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a40]             // 0x00753445    8b81405a2000
                         xor.s              edx, edx                                      // 0x0075344b    33d2
                         mov                ecx, 0x0000000a                               // 0x0075344d    b90a000000
                         div                ecx                                           // 0x00753452    f7f1
                         test               edx, edx                                      // 0x00753454    85d2
                         {disp8} jne        _jmp_addr_0x0075345e                          // 0x00753456    7506
                         dec                byte ptr [esi + 0x000000f0]                   // 0x00753458    fe8ef0000000
_jmp_addr_0x0075345e:    pop                esi                                           // 0x0075345e    5e
                         ret                                                              // 0x0075345f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00753460    8b442404
                         push               eax                                           // 0x00753464    50
                         call               ?IncreaseLife@Object@@UAEXM@Z                 // 0x00753465    e80644eeff
                         ret                0x0004                                        // 0x0075346a    c20400
                         nop                                                              // 0x0075346d    90
                         nop                                                              // 0x0075346e    90
                         nop                                                              // 0x0075346f    90
_jmp_addr_0x00753470:    sub                esp, 0x28                                     // 0x00753470    83ec28
                         push               esi                                           // 0x00753473    56
                         {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x00753474    8b742434
                         test               esi, esi                                      // 0x00753478    85f6
                         {disp8} jne        _jmp_addr_0x00753483                          // 0x0075347a    7507
                         call               @GetAbode__8VillagerFv@4                      // 0x0075347c    e8dfecffff
                         mov.s              esi, eax                                      // 0x00753481    8bf0
_jmp_addr_0x00753483:    mov                eax, dword ptr [esi]                          // 0x00753483    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00753485    8d4c2414
                         push               ecx                                           // 0x00753489    51
                         mov.s              ecx, esi                                      // 0x0075348a    8bce
                         call               dword ptr [eax + 0x104]                       // 0x0075348c    ff9004010000
                         push               eax                                           // 0x00753492    50
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00753493    8d5614
                         push               edx                                           // 0x00753496    52
                         call               _Get3DAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords                          // 0x00753497    e8d49dffff
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0075349c    d95c243c
                         push               0x00000a96                                    // 0x007534a0    68960a0000
                         push               0x00c235dc                                    // 0x007534a5    68dc35c200
                         push               0x3fc00000                                    // 0x007534aa    680000c03f
                         call               _GameFloatRand__5GRandFf                      // 0x007534af    e87cb0f8ff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x224c]              // 0x007534b4    d8054cb28a00
                         push               0x00000a97                                    // 0x007534ba    68970a0000
                         push               0x00c235dc                                    // 0x007534bf    68dc35c200
                         push               0x3f490fdb                                    // 0x007534c4    68db0f493f
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007534c9    d95c2424
                         call               _GameFloatRand__5GRandFf                      // 0x007534cd    e85eb0f8ff
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x007534d2    8b442424
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1dca0]             // 0x007534d6    d82da06c8c00
                         push               eax                                           // 0x007534dc    50
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x007534dd    8d542438
                         {disp8} fadd       dword ptr [esp + 0x58]                        // 0x007534e1    d8442458
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x007534e5    d95c2458
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x007534e9    8b4c2458
                         push               ecx                                           // 0x007534ed    51
                         push               edx                                           // 0x007534ee    52
                         call               _GetPosFromAngle__6GUtilsFff                  // 0x007534ef    e88ca0ffff
                         mov                edx, dword ptr [esi]                          // 0x007534f4    8b16
                         add                esp, 0x2c                                     // 0x007534f6    83c42c
                         push               eax                                           // 0x007534f9    50
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x007534fa    8d44240c
                         push               eax                                           // 0x007534fe    50
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007534ff    8d442428
                         push               eax                                           // 0x00753503    50
                         mov.s              ecx, esi                                      // 0x00753504    8bce
                         call               dword ptr [edx + 0x104]                       // 0x00753506    ff9204010000
                         mov.s              ecx, eax                                      // 0x0075350c    8bc8
                         call               @__pl__9MapCoordsCFRC9MapCoords@16            // 0x0075350e    e80d20ebff
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00753513    8b442430
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00753517    8b542408
                         mov.s              ecx, eax                                      // 0x0075351b    8bc8
                         mov                dword ptr [ecx], edx                          // 0x0075351d    8911
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0075351f    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00753523    895104
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00753526    8b542410
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0075352a    895108
                         pop                esi                                           // 0x0075352d    5e
                         add                esp, 0x28                                     // 0x0075352e    83c428
                         ret                0x0008                                        // 0x00753531    c20800
                         nop                                                              // 0x00753534    90
                         nop                                                              // 0x00753535    90
                         nop                                                              // 0x00753536    90
                         nop                                                              // 0x00753537    90
                         nop                                                              // 0x00753538    90
                         nop                                                              // 0x00753539    90
                         nop                                                              // 0x0075353a    90
                         nop                                                              // 0x0075353b    90
                         nop                                                              // 0x0075353c    90
                         nop                                                              // 0x0075353d    90
                         nop                                                              // 0x0075353e    90
                         nop                                                              // 0x0075353f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc6c]        // 0x00753540    a16c3ccd00
                         test               eax, eax                                      // 0x00753545    85c0
                         push               esi                                           // 0x00753547    56
                         mov.s              esi, ecx                                      // 0x00753548    8bf1
                         {disp8} je         _jmp_addr_0x00753558                          // 0x0075354a    740c
                         mov                eax, dword ptr [esi]                          // 0x0075354c    8b06
                         call               dword ptr [eax + 0x48]                        // 0x0075354e    ff5048
                         mov.s              ecx, esi                                      // 0x00753551    8bce
                         call               @GetAbode__8VillagerFv@4                      // 0x00753553    e808ecffff
_jmp_addr_0x00753558:    pop                esi                                           // 0x00753558    5e
                         ret                                                              // 0x00753559    c3
                         nop                                                              // 0x0075355a    90
                         nop                                                              // 0x0075355b    90
                         nop                                                              // 0x0075355c    90
                         nop                                                              // 0x0075355d    90
                         nop                                                              // 0x0075355e    90
                         nop                                                              // 0x0075355f    90
@AdjustTownModifier__8VillagerF15VILLAGER_STATESi@16:    mov                eax, dword ptr [ecx]                          // 0x00753560    8b01
                         sub                esp, 0x00000408                               // 0x00753562    81ec08040000
                         push               esi                                           // 0x00753568    56
                         push               edi                                           // 0x00753569    57
                         call               dword ptr [eax + 0x48]                        // 0x0075356a    ff5048
                         mov.s              edi, eax                                      // 0x0075356d    8bf8
                         test               edi, edi                                      // 0x0075356f    85ff
                         {disp32} je        _jmp_addr_0x0075367c                          // 0x00753571    0f8405010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000414]             // 0x00753577    8b8c2414040000
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x0075357e    8d0449
                         shl                eax, 3                                        // 0x00753581    c1e003
                         sub.s              eax, ecx                                      // 0x00753584    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00753586    8d0440
                         shl                eax, 2                                        // 0x00753589    c1e002
                         {disp32} mov       esi, dword ptr [eax + 0x00db9e7c]             // 0x0075358c    8bb07c9edb00
                         cmp                esi, -0x01                                    // 0x00753592    83feff
                         {disp32} je        _jmp_addr_0x0075367c                          // 0x00753595    0f84e1000000
                         {disp32} fld       dword ptr [eax + 0x00db9e80]                  // 0x0075359b    d980809edb00
                         {disp32} mov       eax, dword ptr [esp + 0x00000418]             // 0x007535a1    8b842418040000
                         test               eax, eax                                      // 0x007535a8    85c0
                         {disp8} je         _jmp_addr_0x007535b4                          // 0x007535aa    7408
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x007535ac    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x007535ba                          // 0x007535b2    eb06
_jmp_addr_0x007535b4:    {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x007535b4    d90578b68a00
_jmp_addr_0x007535ba:    fld                st(0)                                         // 0x007535ba    d9c0
                         fmul               st, st(2)                                     // 0x007535bc    d8ca
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000510]      // 0x007535be    d884b710050000
                         {disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000510]      // 0x007535c5    d99cb710050000
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000554]      // 0x007535cc    d884b754050000
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x007535d3    d9542408
                         fstp               st(1)                                         // 0x007535d7    ddd9
                         {disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000554]      // 0x007535d9    d99cb754050000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]        // 0x007535e0    a1743ccd00
                         test               eax, eax                                      // 0x007535e5    85c0
                         {disp32} je        _jmp_addr_0x0075367c                          // 0x007535e7    0f848f000000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007535ed    8b4c2408
                         push               ecx                                           // 0x007535f1    51
                         call               _jmp_addr_0x0048f820                          // 0x007535f2    e829c2d3ff
                         {disp32} mov       edx, dword ptr [edi + esi * 0x4 + 0x00000510] // 0x007535f7    8b94b710050000
                         add                esp, 0x04                                     // 0x007535fe    83c404
                         push               eax                                           // 0x00753601    50
                         push               edx                                           // 0x00753602    52
                         call               _jmp_addr_0x0048f820                          // 0x00753603    e818c2d3ff
                         add                esp, 0x04                                     // 0x00753608    83c404
                         push               eax                                           // 0x0075360b    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0075360c    8d442414
                         push               0x00c2367c                                    // 0x00753610    687c36c200
                         push               eax                                           // 0x00753615    50
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x00753616    ff155c938a00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0075361c    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x002502d8]             // 0x00753622    8b91d8022500
                         add                esp, 0x10                                     // 0x00753628    83c410
                         push               eax                                           // 0x0075362b    50
                         push               edx                                           // 0x0075362c    52
                         call               _fprintf__10LHFilePath                        // 0x0075362d    e87e370700
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]        // 0x00753632    a1743ccd00
                         add                esp, 0x08                                     // 0x00753637    83c408
                         test               eax, eax                                      // 0x0075363a    85c0
                         {disp8} je         _jmp_addr_0x0075367c                          // 0x0075363c    743e
                         call               dword ptr [rdata_bytes + 0x354]               // 0x0075363e    ff1554938a00
                         push               eax                                           // 0x00753644    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00753645    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d8]             // 0x0075364a    8b88d8022500
                         push               ecx                                           // 0x00753650    51
                         call               _fprintf__10LHFilePath                        // 0x00753651    e85a370700
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]        // 0x00753656    a1743ccd00
                         add                esp, 0x08                                     // 0x0075365b    83c408
                         test               eax, eax                                      // 0x0075365e    85c0
                         {disp8} je         _jmp_addr_0x0075367c                          // 0x00753660    741a
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00753662    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x002502d8]             // 0x00753668    8b82d8022500
                         push               0x009cf590                                    // 0x0075366e    6890f59c00
                         push               eax                                           // 0x00753673    50
                         call               _fprintf__10LHFilePath                        // 0x00753674    e837370700
                         add                esp, 0x08                                     // 0x00753679    83c408
_jmp_addr_0x0075367c:    pop                edi                                           // 0x0075367c    5f
                         pop                esi                                           // 0x0075367d    5e
                         add                esp, 0x00000408                               // 0x0075367e    81c408040000
                         ret                0x0008                                        // 0x00753684    c20800
                         nop                                                              // 0x00753687    90
                         nop                                                              // 0x00753688    90
                         nop                                                              // 0x00753689    90
                         nop                                                              // 0x0075368a    90
                         nop                                                              // 0x0075368b    90
                         nop                                                              // 0x0075368c    90
                         nop                                                              // 0x0075368d    90
                         nop                                                              // 0x0075368e    90
                         nop                                                              // 0x0075368f    90
_SetState__8VillagerFUlUc:
@SetState__8VillagerFUlUc@16:    push               ebx                                           // 0x00753690    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00753691    8b5c2408
                         cmp                ebx, 0x02                                     // 0x00753695    83fb02
                         push               ebp                                           // 0x00753698    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00753699    8b6c2410
                         push               edi                                           // 0x0075369d    57
                         mov.s              edi, ecx                                      // 0x0075369e    8bf9
                         {disp8} jne        _jmp_addr_0x007536bf                          // 0x007536a0    751d
                         mov.s              eax, ebp                                      // 0x007536a2    8bc5
                         and                eax, 0x000000ff                               // 0x007536a4    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x007536a9    8d0c40
                         shl                ecx, 3                                        // 0x007536ac    c1e103
                         sub.s              ecx, eax                                      // 0x007536af    2bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x007536b1    8d0449
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9e88]       // 0x007536b4    8b0c85889edb00
                         test               ecx, ecx                                      // 0x007536bb    85c9
                         {disp8} jne        _jmp_addr_0x00753734                          // 0x007536bd    7575
_jmp_addr_0x007536bf:    xor.s              ecx, ecx                                      // 0x007536bf    33c9
                         {disp32} mov       cl, byte ptr [ebx + edi * 0x1 + 0x0000008c]   // 0x007536c1    8a8c3b8c000000
                         push               esi                                           // 0x007536c8    56
                         mov.s              esi, ebp                                      // 0x007536c9    8bf5
                         and                esi, 0x000000ff                               // 0x007536cb    81e6ff000000
                         lea                eax, dword ptr [ecx + ecx * 0x2]              // 0x007536d1    8d0449
                         shl                eax, 3                                        // 0x007536d4    c1e003
                         sub.s              eax, ecx                                      // 0x007536d7    2bc1
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x007536d9    8d1440
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e84]       // 0x007536dc    8b0495849edb00
                         test               eax, eax                                      // 0x007536e3    85c0
                         {disp8} je         _jmp_addr_0x007536f5                          // 0x007536e5    740e
                         test               ecx, ecx                                      // 0x007536e7    85c9
                         {disp8} je         _jmp_addr_0x007536f5                          // 0x007536e9    740a
                         push               0x0                                           // 0x007536eb    6a00
                         push               ecx                                           // 0x007536ed    51
                         mov.s              ecx, edi                                      // 0x007536ee    8bcf
                         call               @AdjustTownModifier__8VillagerF15VILLAGER_STATESi@16                          // 0x007536f0    e86bfeffff
_jmp_addr_0x007536f5:    lea                eax, dword ptr [esi + esi * 0x2]              // 0x007536f5    8d0476
                         shl                eax, 3                                        // 0x007536f8    c1e003
                         sub.s              eax, esi                                      // 0x007536fb    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x007536fd    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9e84]       // 0x00753700    8b0c85849edb00
                         test               ecx, ecx                                      // 0x00753707    85c9
                         {disp8} je         _jmp_addr_0x00753719                          // 0x00753709    740e
                         test               esi, esi                                      // 0x0075370b    85f6
                         {disp8} je         _jmp_addr_0x00753719                          // 0x0075370d    740a
                         push               0x1                                           // 0x0075370f    6a01
                         push               esi                                           // 0x00753711    56
                         mov.s              ecx, edi                                      // 0x00753712    8bcf
                         call               @AdjustTownModifier__8VillagerF15VILLAGER_STATESi@16                          // 0x00753714    e847feffff
_jmp_addr_0x00753719:    test               ebx, ebx                                      // 0x00753719    85db
                         pop                esi                                           // 0x0075371b    5e
                         {disp8} jne        _jmp_addr_0x0075372b                          // 0x0075371c    750d
                         mov                edx, dword ptr [edi]                          // 0x0075371e    8b17
                         push               ebx                                           // 0x00753720    53
                         push               0x1                                           // 0x00753721    6a01
                         mov.s              ecx, edi                                      // 0x00753723    8bcf
                         call               dword ptr [edx + 0x938]                       // 0x00753725    ff9238090000
_jmp_addr_0x0075372b:    push               ebp                                           // 0x0075372b    55
                         push               ebx                                           // 0x0075372c    53
                         mov.s              ecx, edi                                      // 0x0075372d    8bcf
                         call               @SetState__6LivingFUlUc@16                    // 0x0075372f    e84cf3e9ff
_jmp_addr_0x00753734:    pop                edi                                           // 0x00753734    5f
                         pop                ebp                                           // 0x00753735    5d
                         pop                ebx                                           // 0x00753736    5b
                         ret                0x0008                                        // 0x00753737    c20800
                         nop                                                              // 0x0075373a    90
                         nop                                                              // 0x0075373b    90
                         nop                                                              // 0x0075373c    90
                         nop                                                              // 0x0075373d    90
                         nop                                                              // 0x0075373e    90
                         nop                                                              // 0x0075373f    90
                         push               esi                                           // 0x00753740    56
                         mov.s              esi, ecx                                      // 0x00753741    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00753743    8b06
                         call               dword ptr [eax + 0xb04]                       // 0x00753745    ff90040b0000
                         mov.s              ecx, esi                                      // 0x0075374b    8bce
                         push               eax                                           // 0x0075374d    50
                         call               _jmp_addr_0x00753760                          // 0x0075374e    e80d000000
                         pop                esi                                           // 0x00753753    5e
                         ret                                                              // 0x00753754    c3
                         nop                                                              // 0x00753755    90
                         nop                                                              // 0x00753756    90
                         nop                                                              // 0x00753757    90
                         nop                                                              // 0x00753758    90
                         nop                                                              // 0x00753759    90
                         nop                                                              // 0x0075375a    90
                         nop                                                              // 0x0075375b    90
                         nop                                                              // 0x0075375c    90
                         nop                                                              // 0x0075375d    90
                         nop                                                              // 0x0075375e    90
                         nop                                                              // 0x0075375f    90
_jmp_addr_0x00753760:    sub                esp, 0x10                                     // 0x00753760    83ec10
                         push               esi                                           // 0x00753763    56
                         mov.s              esi, ecx                                      // 0x00753764    8bf1
                         test               byte ptr [esi + 0x25], 0x04                   // 0x00753766    f6462504
                         {disp32} jne       _jmp_addr_0x00753b48                          // 0x0075376a    0f85d8030000
                         mov                eax, dword ptr [esi]                          // 0x00753770    8b06
                         call               dword ptr [eax + 0x978]                       // 0x00753772    ff9078090000
                         test               eax, eax                                      // 0x00753778    85c0
                         {disp32} jne       _jmp_addr_0x00753b48                          // 0x0075377a    0f85c8030000
                         mov                edx, dword ptr [esi]                          // 0x00753780    8b16
                         push               ebx                                           // 0x00753782    53
                         push               ebp                                           // 0x00753783    55
                         push               edi                                           // 0x00753784    57
                         mov.s              ecx, esi                                      // 0x00753785    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00753787    ff5248
                         mov.s              edi, eax                                      // 0x0075378a    8bf8
                         mov                eax, dword ptr [esi]                          // 0x0075378c    8b06
                         mov.s              ecx, esi                                      // 0x0075378e    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x00753790    ff501c
                         mov.s              ecx, eax                                      // 0x00753793    8bc8
                         xor.s              ebp, ebp                                      // 0x00753795    33ed
                         cmp.s              ecx, ebp                                      // 0x00753797    3bcd
                         {disp8} je         _jmp_addr_0x007537be                          // 0x00753799    7423
                         {disp32} fld       dword ptr [ecx + 0x000000c8]                  // 0x0075379b    d981c8000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x222c]              // 0x007537a1    d81d2cb28a00
                         fnstsw             ax                                            // 0x007537a7    dfe0
                         test               ah, 0x41                                      // 0x007537a9    f6c441
                         {disp8} jne        _jmp_addr_0x007537b6                          // 0x007537ac    7508
                         {disp32} fld       dword ptr [ecx + 0x000000c8]                  // 0x007537ae    d981c8000000
                         {disp8} jmp        _jmp_addr_0x007537c4                          // 0x007537b4    eb0e
_jmp_addr_0x007537b6:    {disp32} fld       dword ptr [rdata_bytes + 0x222c]              // 0x007537b6    d9052cb28a00
                         {disp8} jmp        _jmp_addr_0x007537c4                          // 0x007537bc    eb06
_jmp_addr_0x007537be:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x007537be    d90590a38a00
_jmp_addr_0x007537c4:    cmp.s              edi, ebp                                      // 0x007537c4    3bfd
                         {disp32} fld       dword ptr [data_bytes + 0x354290]             // 0x007537c6    d90590a2d100
                         fmul               st, st(1)                                     // 0x007537cc    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007537ce    d95c2410
                         fstp               st(0)                                         // 0x007537d2    ddd8
                         {disp32} je        _jmp_addr_0x007538a7                          // 0x007537d4    0f84cd000000
                         cmp.s              ecx, ebp                                      // 0x007537da    3bcd
                         {disp32} je        _jmp_addr_0x007538a7                          // 0x007537dc    0f84c5000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007537e2    8b155c19d000
                         xor.s              eax, eax                                      // 0x007537e8    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a5b]               // 0x007537ea    8a825b5a2000
                         lea                ebx, dword ptr [eax + eax * 0x4]              // 0x007537f0    8d1c80
                         lea                ebx, dword ptr [eax + ebx * 0x8]              // 0x007537f3    8d1cd8
                         lea                eax, dword ptr [eax + ebx * 0x2]              // 0x007537f6    8d0458
                         shl                eax, 5                                        // 0x007537f9    c1e005
                         {disp8} lea        edx, dword ptr [eax + edx * 0x1 + 0x18]       // 0x007537fc    8d541018
                         cmp.s              ecx, edx                                      // 0x00753800    3bca
                         {disp32} je        _jmp_addr_0x007538a7                          // 0x00753802    0f849f000000
                         push               ecx                                           // 0x00753808    51
                         mov.s              ecx, edi                                      // 0x00753809    8bcf
                         call               _jmp_addr_0x0073bab0                          // 0x0075380b    e8a082feff
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00753810    d95c2414
                         mov.s              ecx, edi                                      // 0x00753814    8bcf
                         call               _jmp_addr_0x0073e4b0                          // 0x00753816    e895acfeff
                         {disp8} fsubr      dword ptr [esp + 0x14]                        // 0x0075381b    d86c2414
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0075381f    d81598a38a00
                         fnstsw             ax                                            // 0x00753825    dfe0
                         test               ah, 0x41                                      // 0x00753827    f6c441
                         {disp8} jne        _jmp_addr_0x00753838                          // 0x0075382a    750c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0075382c    d80d04c48a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00753832    d95c2414
                         {disp8} jmp        _jmp_addr_0x0075383a                          // 0x00753836    eb02
_jmp_addr_0x00753838:    fstp               st(0)                                         // 0x00753838    ddd8
_jmp_addr_0x0075383a:    {disp32} fld       dword ptr [data_bytes + 0x35429c]             // 0x0075383a    d9059ca2d100
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00753840    d81590a38a00
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00753846    d9542418
                         fnstsw             ax                                            // 0x0075384a    dfe0
                         test               ah, 0x40                                      // 0x0075384c    f6c440
                         {disp8} je         _jmp_addr_0x00753895                          // 0x0075384f    7444
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00753851    8b0d5c19d000
                         fstp               st(0)                                         // 0x00753857    ddd8
                         cmp                dword ptr [ecx + 0x00205a0c], ebp             // 0x00753859    39a90c5a2000
                         {disp8} jne        _jmp_addr_0x00753886                          // 0x0075385f    7525
                         call               @IsMultiplayerGame__5GGameCFv@4               // 0x00753861    e81af7dfff
                         test               eax, eax                                      // 0x00753866    85c0
                         {disp8} jne        _jmp_addr_0x00753886                          // 0x00753868    751c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0075386a    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a08]             // 0x0075386f    8b80085a2000
                         cmp                eax, 0x05                                     // 0x00753875    83f805
                         {disp8} ja         _jmp_addr_0x00753891                          // 0x00753878    7717
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x0075387a    8b4f28
                         {disp32} fld       dword ptr [ecx + eax * 0x4 + 0x00000170]      // 0x0075387d    d9848170010000
                         {disp8} jmp        _jmp_addr_0x00753895                          // 0x00753884    eb0f
_jmp_addr_0x00753886:    {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x00753886    8b5728
                         {disp32} fld       dword ptr [edx + 0x0000016c]                  // 0x00753889    d9826c010000
                         {disp8} jmp        _jmp_addr_0x00753895                          // 0x0075388f    eb04
_jmp_addr_0x00753891:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00753891    d9442418
_jmp_addr_0x00753895:    {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00753895    d84c2414
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00753899    d80590a38a00
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0075389f    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007538a3    d95c2410
_jmp_addr_0x007538a7:    mov                eax, dword ptr [esi]                          // 0x007538a7    8b06
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x007538a9    8b5e28
                         mov.s              ecx, esi                                      // 0x007538ac    8bce
                         call               dword ptr [eax + 0x11c]                       // 0x007538ae    ff901c010000
                         {disp32} fcomp     dword ptr [ebx + 0x00000380]                  // 0x007538b4    d89b80030000
                         fnstsw             ax                                            // 0x007538ba    dfe0
                         test               ah, 0x41                                      // 0x007538bc    f6c441
                         {disp8} je         _jmp_addr_0x007538f0                          // 0x007538bf    742f
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x007538c1    8b7e28
                         push               0x00000b18                                    // 0x007538c4    68180b0000
                         push               0x00c235dc                                    // 0x007538c9    68dc35c200
                         push               0x3e4ccccd                                    // 0x007538ce    68cdcc4c3e
                         call               _GameFloatRand__5GRandFf                      // 0x007538d3    e858acf8ff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1ea44]             // 0x007538d8    d805447a8c00
                         {disp32} fimul     dword ptr [edi + 0x00000114]                  // 0x007538de    da8f14010000
                         add                esp, 0x0c                                     // 0x007538e4    83c40c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x007538e7    d84c2410
                         {disp32} jmp       _jmp_addr_0x00753b36                          // 0x007538eb    e946020000
_jmp_addr_0x007538f0:    mov                edx, dword ptr [esi]                          // 0x007538f0    8b16
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x007538f2    8b5e28
                         mov.s              ecx, esi                                      // 0x007538f5    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x007538f7    ff921c010000
                         {disp32} fcomp     dword ptr [ebx + 0x0000037c]                  // 0x007538fd    d89b7c030000
                         fnstsw             ax                                            // 0x00753903    dfe0
                         test               ah, 0x41                                      // 0x00753905    f6c441
                         {disp8} je         _jmp_addr_0x00753939                          // 0x00753908    742f
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x0075390a    8b7e28
                         push               0x00000b1c                                    // 0x0075390d    681c0b0000
                         push               0x00c235dc                                    // 0x00753912    68dc35c200
                         push               0x3e800000                                    // 0x00753917    680000803e
                         call               _GameFloatRand__5GRandFf                      // 0x0075391c    e80facf8ff
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00753921    d805b4a38a00
                         {disp32} fimul     dword ptr [edi + 0x00000104]                  // 0x00753927    da8f04010000
                         add                esp, 0x0c                                     // 0x0075392d    83c40c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00753930    d84c2410
                         {disp32} jmp       _jmp_addr_0x00753b36                          // 0x00753934    e9fd010000
_jmp_addr_0x00753939:    cmp.s              edi, ebp                                      // 0x00753939    3bfd
                         {disp8} je         _jmp_addr_0x0075397b                          // 0x0075393b    743e
                         mov.s              ecx, edi                                      // 0x0075393d    8bcf
                         call               @IsInStateOfEmergency__4TownFv@4              // 0x0075393f    e82c40ffff
                         test               eax, eax                                      // 0x00753944    85c0
                         {disp8} je         _jmp_addr_0x0075397b                          // 0x00753946    7433
                         {disp8} mov        edi, dword ptr [esi + 0x28]                   // 0x00753948    8b7e28
                         push               0x00000b20                                    // 0x0075394b    68200b0000
                         push               0x00c235dc                                    // 0x00753950    68dc35c200
                         push               0x3f000000                                    // 0x00753955    680000003f
                         call               _GameFloatRand__5GRandFf                      // 0x0075395a    e8d1abf8ff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2274]              // 0x0075395f    d80574b28a00
                         {disp32} fimul     dword ptr [edi + 0x00000108]                  // 0x00753965    da8f08010000
                         add                esp, 0x0c                                     // 0x0075396b    83c40c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0075396e    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00753972    d95c2410
                         {disp32} jmp       _jmp_addr_0x00753b15                          // 0x00753976    e99a010000
_jmp_addr_0x0075397b:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0075397b    8b442424
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0075397f    d90590a38a00
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                   // 0x00753985    8b5e28
                         and                eax, 0x000000ff                               // 0x00753988    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0075398d    8d0c40
                         shl                ecx, 3                                        // 0x00753990    c1e103
                         sub.s              ecx, eax                                      // 0x00753993    2bc8
                         cmp.s              edi, ebp                                      // 0x00753995    3bfd
                         lea                edx, dword ptr [ecx + ecx * 0x2]              // 0x00753997    8d1449
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e9c]       // 0x0075399a    8b04959c9edb00
                         {disp32} mov       ecx, dword ptr [ebx + eax * 0x4 + 0x00000104] // 0x007539a1    8b8c8304010000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x007539a8    894c2414
                         {disp8} je         _jmp_addr_0x007539f8                          // 0x007539ac    744a
                         {disp32} mov       edx, dword ptr [ebx + 0x0000036c]             // 0x007539ae    8b936c030000
                         fstp               st(0)                                         // 0x007539b4    ddd8
                         {disp8} lea        ecx, dword ptr [edi + 0x34]                   // 0x007539b6    8d4f34
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x007539b9    89542424
                         call               _jmp_addr_0x00747150                          // 0x007539bd    e88e37ffff
                         {disp32} fdiv      dword ptr [ebx + 0x00000370]                  // 0x007539c2    d8b370030000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x007539c8    d81598a38a00
                         fnstsw             ax                                            // 0x007539ce    dfe0
                         test               ah, 0x01                                      // 0x007539d0    f6c401
                         {disp8} je         _jmp_addr_0x007539df                          // 0x007539d3    740a
                         fstp               st(0)                                         // 0x007539d5    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x007539d7    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x007539f4                          // 0x007539dd    eb15
_jmp_addr_0x007539df:    {disp32} fcom      dword ptr [_rdata_float0p5]                   // 0x007539df    d815b4a38a00
                         fnstsw             ax                                            // 0x007539e5    dfe0
                         test               ah, 0x41                                      // 0x007539e7    f6c441
                         {disp8} jne        _jmp_addr_0x007539f4                          // 0x007539ea    7508
                         fstp               st(0)                                         // 0x007539ec    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p5]                   // 0x007539ee    d905b4a38a00
_jmp_addr_0x007539f4:    {disp8} fadd       dword ptr [esp + 0x24]                        // 0x007539f4    d8442424
_jmp_addr_0x007539f8:    {disp32} mov       cl, byte ptr [esi + 0x000000f2]               // 0x007539f8    8a8ef2000000
                         cmp                cl, 0x09                                      // 0x007539fe    80f909
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00753a01    8b4628
                         {disp8} jne        _jmp_addr_0x00753a1a                          // 0x00753a04    7514
                         {disp32} mov       edx, dword ptr [eax + 0x00000278]             // 0x00753a06    8b9078020000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00753a0c    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00753a10    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00753a14    df6c2418
                         {disp8} jmp        _jmp_addr_0x00753a2c                          // 0x00753a18    eb12
_jmp_addr_0x00753a1a:    {disp32} mov       edx, dword ptr [eax + 0x00000268]             // 0x00753a1a    8b9068020000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00753a20    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00753a24    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00753a28    df6c2418
_jmp_addr_0x00753a2c:    cmp                cl, 0x09                                      // 0x00753a2c    80f909
                         {disp8} jne        _jmp_addr_0x00753a45                          // 0x00753a2f    7514
                         {disp32} mov       ecx, dword ptr [eax + 0x00000274]             // 0x00753a31    8b8874020000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00753a37    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00753a3b    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00753a3f    df6c2418
                         {disp8} jmp        _jmp_addr_0x00753a57                          // 0x00753a43    eb12
_jmp_addr_0x00753a45:    {disp32} mov       edx, dword ptr [eax + 0x00000264]             // 0x00753a45    8b9064020000
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00753a4b    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00753a4f    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00753a53    df6c2418
_jmp_addr_0x00753a57:    movsx              ecx, word ptr [esi + 0x000000f6]              // 0x00753a57    0fbf8ef6000000
                         {disp32} fld       dword ptr [eax + 0x00000374]                  // 0x00753a5e    d98074030000
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00753a64    d80590a38a00
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00753a6a    894c2424
                         movsx              edx, word ptr [esi + 0x000000f4]              // 0x00753a6e    0fbf96f4000000
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00753a75    db442424
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00753a79    89542418
                         fdiv               st, st(3)                                     // 0x00753a7d    d8f3
                         fsubp              st(1), st                                     // 0x00753a7f    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00753a81    d95c2424
                         {disp32} fld       dword ptr [eax + 0x00000378]                  // 0x00753a85    d98078030000
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00753a8b    d80590a38a00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x00753a91    db442418
                         fdiv               st, st(2)                                     // 0x00753a95    d8f2
                         fsubp              st(1), st                                     // 0x00753a97    dee9
                         fstp               st(2)                                         // 0x00753a99    ddda
                         fstp               st(0)                                         // 0x00753a9b    ddd8
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00753a9d    d9442424
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2274]              // 0x00753aa1    d81d74b28a00
                         fnstsw             ax                                            // 0x00753aa7    dfe0
                         test               ah, 0x01                                      // 0x00753aa9    f6c401
                         {disp8} je         _jmp_addr_0x00753ab8                          // 0x00753aac    740a
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f400000            // 0x00753aae    c74424240000403f
                         {disp8} jmp        _jmp_addr_0x00753ad1                          // 0x00753ab6    eb19
_jmp_addr_0x00753ab8:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x00753ab8    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00753abc    d81d90a38a00
                         fnstsw             ax                                            // 0x00753ac2    dfe0
                         test               ah, 0x41                                      // 0x00753ac4    f6c441
                         {disp8} jne        _jmp_addr_0x00753ad1                          // 0x00753ac7    7508
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f800000            // 0x00753ac9    c74424240000803f
_jmp_addr_0x00753ad1:    {disp32} fcom      dword ptr [rdata_bytes + 0x2274]              // 0x00753ad1    d81574b28a00
                         fnstsw             ax                                            // 0x00753ad7    dfe0
                         test               ah, 0x01                                      // 0x00753ad9    f6c401
                         {disp8} je         _jmp_addr_0x00753ae8                          // 0x00753adc    740a
                         fstp               st(0)                                         // 0x00753ade    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2274]              // 0x00753ae0    d90574b28a00
                         {disp8} jmp        _jmp_addr_0x00753afd                          // 0x00753ae6    eb15
_jmp_addr_0x00753ae8:    {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00753ae8    d81590a38a00
                         fnstsw             ax                                            // 0x00753aee    dfe0
                         test               ah, 0x41                                      // 0x00753af0    f6c441
                         {disp8} jne        _jmp_addr_0x00753afd                          // 0x00753af3    7508
                         fstp               st(0)                                         // 0x00753af5    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00753af7    d90590a38a00
_jmp_addr_0x00753afd:    {disp8} fild       dword ptr [esp + 0x14]                        // 0x00753afd    db442414
                         fmul               st, st(1)                                     // 0x00753b01    d8c9
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00753b03    d84c2424
                         fmul               st, st(2)                                     // 0x00753b07    d8ca
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00753b09    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00753b0d    d95c2410
                         fstp               st(0)                                         // 0x00753b11    ddd8
                         fstp               st(0)                                         // 0x00753b13    ddd8
_jmp_addr_0x00753b15:    mov                eax, dword ptr [esi]                          // 0x00753b15    8b06
                         mov.s              ecx, esi                                      // 0x00753b17    8bce
                         call               dword ptr [eax + 0x87c]                       // 0x00753b19    ff907c080000
                         test               al, al                                        // 0x00753b1f    84c0
                         {disp8} je         _jmp_addr_0x00753b32                          // 0x00753b21    740f
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00753b23    8b4e28
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00753b26    d9442410
                         {disp32} fmul      dword ptr [ecx + 0x0000039c]                  // 0x00753b2a    d8899c030000
                         {disp8} jmp        _jmp_addr_0x00753b36                          // 0x00753b30    eb04
_jmp_addr_0x00753b32:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00753b32    d9442410
_jmp_addr_0x00753b36:    push               0x1                                           // 0x00753b36    6a01
                         call               _jmp_addr_0x007a1400                          // 0x00753b38    e8c3d80400
                         push               eax                                           // 0x00753b3d    50
                         mov.s              ecx, esi                                      // 0x00753b3e    8bce
                         call               @SetSpeed__8VillagerFli@16                    // 0x00753b40    e88bd3ffff
                         pop                edi                                           // 0x00753b45    5f
                         pop                ebp                                           // 0x00753b46    5d
                         pop                ebx                                           // 0x00753b47    5b
_jmp_addr_0x00753b48:    pop                esi                                           // 0x00753b48    5e
                         add                esp, 0x10                                     // 0x00753b49    83c410
                         ret                0x0004                                        // 0x00753b4c    c20400
                         nop                                                              // 0x00753b4f    90
@SetupNothingToDo__8VillagerFv@4:    sub                esp, 0x0c                                     // 0x00753b50    83ec0c
                         push               ebx                                           // 0x00753b53    53
                         push               esi                                           // 0x00753b54    56
                         mov.s              esi, ecx                                      // 0x00753b55    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00753b57    8b06
                         push               edi                                           // 0x00753b59    57
                         call               dword ptr [eax + 0x48]                        // 0x00753b5a    ff5048
                         mov.s              ecx, esi                                      // 0x00753b5d    8bce
                         mov.s              ebx, eax                                      // 0x00753b5f    8bd8
                         call               @GetAbode__8VillagerFv@4                      // 0x00753b61    e8fae5ffff
                         push               0x00000b46                                    // 0x00753b66    68460b0000
                         push               0x00c235dc                                    // 0x00753b6b    68dc35c200
                         push               0x9                                           // 0x00753b70    6a09
                         mov.s              edi, eax                                      // 0x00753b72    8bf8
                         call               _GameRand__5GRandFl                           // 0x00753b74    e897a9f8ff
                         add                esp, 0x0c                                     // 0x00753b79    83c40c
                         cmp                eax, 0x08                                     // 0x00753b7c    83f808
                         {disp32} ja        _jmp_addr_0x00753c3f                          // 0x00753b7f    0f87ba000000
                         xor.s              ecx, ecx                                      // 0x00753b85    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00753c64]               // 0x00753b87    8a88643c7500
                         jmp                dword ptr [ecx*4 + 0x753c58]                  // 0x00753b8d    ff248d583c7500
                         test               edi, edi                                      // 0x00753b94    85ff
                         {disp8} je         _jmp_addr_0x00753ba6                          // 0x00753b96    740e
                         mov                edx, dword ptr [edi]                          // 0x00753b98    8b17
                         mov.s              ecx, edi                                      // 0x00753b9a    8bcf
                         call               dword ptr [edx + 0xd4]                        // 0x00753b9c    ff92d4000000
                         test               eax, eax                                      // 0x00753ba2    85c0
                         {disp8} jne        _jmp_addr_0x00753bbf                          // 0x00753ba4    7519
_jmp_addr_0x00753ba6:    push               0x00000b4b                                    // 0x00753ba6    684b0b0000
                         push               0x00c235dc                                    // 0x00753bab    68dc35c200
                         push               0x64                                          // 0x00753bb0    6a64
                         call               _GameRand__5GRandFl                           // 0x00753bb2    e859a9f8ff
                         add                esp, 0x0c                                     // 0x00753bb7    83c40c
                         cmp                eax, 0x0a                                     // 0x00753bba    83f80a
                         {disp8} jae        _jmp_addr_0x00753bd7                          // 0x00753bbd    7318
_jmp_addr_0x00753bbf:    mov                eax, dword ptr [esi]                          // 0x00753bbf    8b06
                         push               0x24                                          // 0x00753bc1    6a24
                         mov.s              ecx, esi                                      // 0x00753bc3    8bce
                         call               dword ptr [eax + 0x8e8]                       // 0x00753bc5    ff90e8080000
                         pop                edi                                           // 0x00753bcb    5f
                         pop                esi                                           // 0x00753bcc    5e
                         mov                eax, 0x00000001                               // 0x00753bcd    b801000000
                         pop                ebx                                           // 0x00753bd2    5b
                         add                esp, 0x0c                                     // 0x00753bd3    83c40c
                         ret                                                              // 0x00753bd6    c3
_jmp_addr_0x00753bd7:    test               edi, edi                                      // 0x00753bd7    85ff
                         {disp8} je         _jmp_addr_0x00753bf6                          // 0x00753bd9    741b
                         mov                edx, dword ptr [esi]                          // 0x00753bdb    8b16
                         push               0x000000f5                                    // 0x00753bdd    68f5000000
                         mov.s              ecx, esi                                      // 0x00753be2    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x00753be4    ff92e8080000
                         pop                edi                                           // 0x00753bea    5f
                         pop                esi                                           // 0x00753beb    5e
                         mov                eax, 0x00000001                               // 0x00753bec    b801000000
                         pop                ebx                                           // 0x00753bf1    5b
                         add                esp, 0x0c                                     // 0x00753bf2    83c40c
                         ret                                                              // 0x00753bf5    c3
_jmp_addr_0x00753bf6:    test               ebx, ebx                                      // 0x00753bf6    85db
                         {disp8} je         _jmp_addr_0x00753c3f                          // 0x00753bf8    7445
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00753bfa    8d44240c
                         push               eax                                           // 0x00753bfe    50
                         mov.s              ecx, esi                                      // 0x00753bff    8bce
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00753c01    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00753c09    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00753c11    c744241800000000
                         call               @GetChillOutPos__8VillagerFR9MapCoords@12     // 0x00753c19    e852000000
                         test               eax, eax                                      // 0x00753c1e    85c0
                         {disp8} je         _jmp_addr_0x00753c3f                          // 0x00753c20    741d
                         push               0x000000f6                                    // 0x00753c22    68f6000000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00753c27    8d4c2410
                         push               ecx                                           // 0x00753c2b    51
                         mov.s              ecx, esi                                      // 0x00753c2c    8bce
                         call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13// 0x00753c2e    e85dece9ff
                         pop                edi                                           // 0x00753c33    5f
                         pop                esi                                           // 0x00753c34    5e
                         mov                eax, 0x00000001                               // 0x00753c35    b801000000
                         pop                ebx                                           // 0x00753c3a    5b
                         add                esp, 0x0c                                     // 0x00753c3b    83c40c
                         ret                                                              // 0x00753c3e    c3
_jmp_addr_0x00753c3f:    mov                edx, dword ptr [esi]                          // 0x00753c3f    8b16
                         push               0x24                                          // 0x00753c41    6a24
                         mov.s              ecx, esi                                      // 0x00753c43    8bce
                         call               dword ptr [edx + 0x8e8]                       // 0x00753c45    ff92e8080000
                         pop                edi                                           // 0x00753c4b    5f
                         pop                esi                                           // 0x00753c4c    5e
                         mov                eax, 0x00000001                               // 0x00753c4d    b801000000
                         pop                ebx                                           // 0x00753c52    5b
                         add                esp, 0x0c                                     // 0x00753c53    83c40c
                         ret                                                              // 0x00753c56    c3

// Snippet: db, [0x00753c57, 0x00753c58)
.byte 0x90                        // 0x00753c57

// Snippet: jmptbl, [0x00753c58, 0x00753c64)
.byte 0x94, 0x3b, 0x75, 0x00      // 0x00753c58
.byte 0xd7, 0x3b, 0x75, 0x00      // 0x00753c5c
.byte 0xf6, 0x3b, 0x75, 0x00      // 0x00753c60

// Snippet: ijmptbl, [0x00753c64, 0x00753c6d)
.byte 0x00, 0x01, 0x01, 0x01      // 0x00753c64
.byte 0x02, 0x02, 0x02, 0x02      // 0x00753c68
.byte 0x02                        // 0x00753c6c

// Snippet: db, [0x00753c6d, 0x00753c70)
.byte 0x90, 0x90, 0x90            // 0x00753c6d

